import os
import subprocess
import time

def run_bat_file(bat_file_path, input_text=None):
    """
    Execute a .bat file using subprocess and optionally send input text.
    """
    try:
        # Open the .bat file and send input if provided
        process = subprocess.Popen([bat_file_path], stdin=subprocess.PIPE, shell=True)
        
        # If input text is provided, send it to the bat file
        if input_text:
            time.sleep(1)  # Give the process some time to start
            process.communicate(input=f"{input_text}\n".encode())
        else:
            # Simulate pressing Enter to skip 'pause' in bat file
            process.communicate(input=b"\n")
        
        print(f"Successfully executed {bat_file_path}")
    except subprocess.CalledProcessError as e:
        print(f"Error executing {bat_file_path}: {e}")

# Define the paths for the folders and .bat files
aaa_superfolder = r"C:\Users\leywi\OneDrive\Documents\work\AAA SuperFolder"
application_repo = r"C:\Users\leywi\OneDrive\Documents\work\application_repo"

get_all_apps_bat = os.path.join(aaa_superfolder, "get_all_apps.bat")
get_changelog_bat = os.path.join(aaa_superfolder, "get_changelog.bat")
paste_apps_bat = os.path.join(application_repo, "paste_apps.bat")
push_to_cloud_bat = os.path.join(application_repo, "push_to_cloud.bat")

# Step 1: Change directory to AAA SuperFolder and run get_all_apps.bat
print(f"Changing directory to: {aaa_superfolder}")
os.chdir(aaa_superfolder)
run_bat_file(get_all_apps_bat)

# Step 2: Run get_changelog.bat in the same folder
run_bat_file(get_changelog_bat)

# Step 3: Change directory to application_repo and run paste_apps.bat
print(f"Changing directory to: {application_repo}")
os.chdir(application_repo)
run_bat_file(paste_apps_bat, input_text="2")  # Input "2" and Enter after running paste_apps.bat

# Step 4: Execute "push_to_cloud.bat"
run_bat_file(push_to_cloud_bat)