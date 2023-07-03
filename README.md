# AWS EC2 Instance List Script

This script retrieves a list of EC2 instances from different regions in your AWS account and saves the information to a text file.

## Prerequisites

- AWS CLI installed and configured with your AWS credentials. You can install the AWS CLI by following the instructions in the [AWS CLI User Guide](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-files.html).

## Usage

1. Clone the repository or download the `main.sh` file.

2. Make the shell script executable by running the following command:

   ```bash
   chmod +x main.sh
   
3. Modify the  `main.sh` file to specify the desired output file name if needed. By default, the output file name is set to  `instances.txt`.

4. Open a terminal or command prompt and navigate to the directory where the  `main.sh` file is located.

5. Run the script by executing the following command:
   ```bash
   ./instances.sh

6. The script will iterate through each AWS region, retrieve the list of EC2 instances, and display the instances for each region. The information will also be appended to the specified output file.

7. Once the script finishes running, you can find the generated output file with the list of instances in the same directory.

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.
