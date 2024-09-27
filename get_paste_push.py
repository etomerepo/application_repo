import os
import subprocess

def run_bat_file(bat_file_path):
    """
    Execute a .bat file using subprocess.
    """
    try:
        subprocess.run([bat_file_path], check=True, shell=True)
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
run_bat_file(paste_apps_bat)

# Step 4: Execute "push_to_cloud.bat"
run_bat_file(push_to_cloud_bat)

# Step 5: Assuming the "2" in your code refers to a wait, you can add a delay here if necessary
