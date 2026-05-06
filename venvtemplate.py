
import os
import sys
import subprocess
import venv
import logging
import datetime

vdir = "./venvstuff" 
location = os.path.abspath(__file__)
run = 1
modules = [
    "pandas==1.5.3",
    "numpy==1.20.3",
    "isOdd==0.1"
    ]

def main():
    # Put your program here
    import subprocess
    import sys
    from isOdd import isOdd
    
    import numpy
    import pandas
    test = 1
    logger.info(isOdd(test))

def install(package):
    # result = subprocess.check_call([sys.executable, "-m", "pip", "install", package])

    # run the pip install and pipe to stdout for logging purposes
    # if it breaks just exit out for now and send email

    try:
        # has to be like this to get logged
        result = subprocess.run(
        [sys.executable, "-m", "pip", "install", package],
        stdout=subprocess.PIPE,
        stderr=subprocess.STDOUT,
        text=True,
        check=True
        )
        logger.info(result.stdout)
    except Exception as e:
        logger.error(e)
        sys.exit()

def create_venv(venv_dir):
    # If venv exists, make it otherwise don't
    if not os.path.exists(venv_dir):
        logger.info(f"Making {venv_dir}...")
        venv.create(venv_dir, with_pip=True)
    else:
        logger.info(f"Already exists lmao {venv_dir}")

def run_script_in_venv(venv_dir, script_path):

    # Find path like this for compatibility reasons or whatever
    python_path = os.path.join(venv_dir, 'bin', 'python') if sys.platform != 'win32' else os.path.join(venv_dir, 'Scripts', 'python.exe')
    # Run the script in the venv
    subprocess.run([python_path, script_path])

def check_venv():   
    if sys.prefix != sys.base_prefix:
        logger.info("Running in a virtual environment")
        
        return True
    else:
        logger.info("Not running in a virtual environment")

        return False
    
def venv_stuff(vdir):
    create_venv(vdir)
    if check_venv() == False:
        run_script_in_venv(vdir, location)
        sys.exit()
    else:
        pass

os.makedirs("logs", exist_ok=True)
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(levelname)s - %(message)s',
    stream=sys.stdout
)
logger = logging.getLogger(__name__)
formatter = logging.Formatter('%(asctime)s - %(levelname)s - %(message)s')

file_handler = logging.FileHandler(os.path.join("logs", os.path.basename(__file__) + " - " + datetime.datetime.now().strftime('%Y-%m-%d %H-%M-%S') + ".log"))
file_handler.setFormatter(formatter)
logger.addHandler(file_handler)


venv_stuff(vdir)

try: 
    main()
except ModuleNotFoundError as err:
    logger.error(err)
    # modules.append(err.name)
    logger.info("Nope!")
    run = 0

if run == 1:
    pass
else:
    try:
        
        # put imports here
        for package in modules:
            install(package)

        #Call itself now with the modules installed
        run_script_in_venv(vdir, location)
        # subprocess.call(["python", location])
    except Exception as e:
        #send_mail("test@saturnoil.com","Something went wrong","JYee@saturnoil.com")
        logger.error(e)

