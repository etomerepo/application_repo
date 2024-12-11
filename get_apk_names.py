import os
import json
import subprocess

def get_apk_name(apk_path):
    try:
        # Run aapt dump badging command to extract APK details
        result = subprocess.run(
            ['aapt2', 'dump', 'badging', apk_path],
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            text=True,
            encoding='utf-8',  # Ensure correct encoding
            errors='ignore'    # Ignore encoding errors gracefully
        )
        
        # Parse the output to find application name and package name
        if result.returncode == 0:
            output = result.stdout
            package_name = ""
            app_name = ""
            
            for line in output.splitlines():
                if line.startswith("package:"):
                    package_name = line.split("name='")[1].split("'")[0]
                elif line.startswith("application-label:"):
                    app_name = line.split("application-label:'")[1].split("'")[0]
            
            return package_name, app_name
        else:
            print(f"Error reading APK {apk_path}: {result.stderr}")
            return None, None
    except FileNotFoundError:
        print("Error: 'aapt2' tool not found. Ensure Android SDK is installed and 'aapt2' is in your PATH.")
        return None, None

def main():
    # Directory containing the script and APK files
    current_directory = os.getcwd()

    # Dictionary to store package names and their corresponding app names
    apk_mapping = {}

    # Iterate over files in the current directory
    for file_name in os.listdir(current_directory):
        if file_name.endswith(".apk"):
            apk_path = os.path.join(current_directory, file_name)
            print(f"Processing: {apk_path}")
            package_name, app_name = get_apk_name(apk_path)
            if package_name and app_name:
                apk_mapping[package_name] = app_name
            else:
                print(f"Skipping {file_name} due to missing data.")

    # Save the mapping to a JSON file
    output_file = os.path.join(current_directory, "apk_mapping.json")
    with open(output_file, "w") as json_file:
        json.dump(apk_mapping, json_file, indent=4)

    print(f"APK mapping saved to {output_file}")

if __name__ == "__main__":
    main()
