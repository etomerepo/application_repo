import os
import shutil

def extract_base_name(file_name):
    """
    Extract the base name from the APK file name (the part before the version).
    """
    return file_name.split('-')[0]

def copy_apks(src_folder, dst_folder, app_names=None):
    """
    Copy APK files from the source folder to the destination folder, replacing old versions.
    Also copy the icons for the matched APKs into the /icons subfolder.
    """
    # Ensure the destination folder exists
    os.makedirs(dst_folder, exist_ok=True)

    # List all APK files in the source folder
    all_apks = [f for f in os.listdir(src_folder) if f.endswith('.apk') and f.startswith('com.')]
    print(f"Found APKs in source folder: {all_apks}")

    # Prepare a dictionary to keep track of APKs in the destination folder
    existing_apks = {}
    for file_name in os.listdir(dst_folder):
        if file_name.endswith('.apk'):
            base_name = extract_base_name(file_name)
            existing_apks[base_name] = os.path.join(dst_folder, file_name)

    # Ensure the icons folder exists
    icons_folder = os.path.join(dst_folder, 'icons')
    os.makedirs(icons_folder, exist_ok=True)

    # Iterate through all APK files in the source folder
    for file_name in all_apks:
        base_name = extract_base_name(file_name)
        print(f"Processing APK: {file_name}, Base name: {base_name}")

        # Check if the base name matches any of the provided app names
        if app_names:
            if any(app_name in base_name for app_name in app_names):
                # If an old version exists, delete it
                if base_name in existing_apks:
                    os.remove(existing_apks[base_name])
                    print(f"Deleted old version: {existing_apks[base_name]}")

                # Copy the new APK
                shutil.copy2(os.path.join(src_folder, file_name), os.path.join(dst_folder, file_name))
                print(f"Copied {file_name} to {dst_folder}")

                # Copy the icon if it exists
                icon_src_path = os.path.join(src_folder, 'icons', f"{base_name}.png")
                if os.path.exists(icon_src_path):
                    shutil.copy2(icon_src_path, os.path.join(icons_folder, f"{base_name}.png"))
                    print(f"Copied icon {icon_src_path} to {icons_folder}")
                else:
                    print(f"Icon not found for {base_name} in {icon_src_path}")
            else:
                print(f"Skipped {file_name}: does not match any app names")
        else:
            # If no app_names is provided, copy all matching APKs
            # Check if an old version exists, delete it
            if base_name in existing_apks:
                os.remove(existing_apks[base_name])
                print(f"Deleted old version: {existing_apks[base_name]}")

            # Copy the new APK
            shutil.copy2(os.path.join(src_folder, file_name), os.path.join(dst_folder, file_name))
            print(f"Copied {file_name} to {dst_folder}")

            # Copy the icon if it exists
            icon_src_path = os.path.join(src_folder, 'icons', f"{base_name}.png")
            if os.path.exists(icon_src_path):
                shutil.copy2(icon_src_path, os.path.join(icons_folder, f"{base_name}.png"))
                print(f"Copied icon {icon_src_path} to {icons_folder}")
            else:
                print(f"Icon not found for {base_name} in {icon_src_path}")

def get_app_names_from_txt(file_path):
    """
    Get a list of app names from the text file.
    """
    if os.path.exists(file_path):
        with open(file_path, 'r') as file:
            # Read and split the app names
            app_names = file.read().strip().split(',')
            # Clean up whitespace
            app_names = [name.strip() for name in app_names]
            print(f"App names from text file: {app_names}")
            return app_names
    else:
        print(f"File {file_path} not found.")
        return []

def main():
    # Define source and destination folders
    src_folder = r"C:\Users\leywi\OneDrive\Documents\work\AAA SuperFolder\apks"
    dst_folder = os.getcwd()  # Destination folder is the same as the script's directory

    # Define the path to the text file
    txt_file_path = os.path.join(dst_folder, 'choose_which_apps_to_paste.txt')

    # Ask user for option
    print("Press 1 to copy all apps")
    print("Press 2 to copy apps noted in choose_which_apps_to_paste.txt")
    choice = input("Enter your choice: ").strip()

    if choice == '1':
        copy_apks(src_folder, dst_folder)
    elif choice == '2':
        app_names = get_app_names_from_txt(txt_file_path)
        if app_names:
            copy_apks(src_folder, dst_folder, app_names)
        else:
            print("No app names found to copy.")
    else:
        print("Invalid choice. Please enter 1 or 2.")

if __name__ == "__main__":
    main()
