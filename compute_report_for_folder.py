import sys
import pandas as pd
import os

def compute_stats(filename):
    try:
        # Load the CSV file into a DataFrame
        data = pd.read_csv(filename)

        # Columns to compute statistics for
        columns = ["wer", "cer", "wacc"]

        print(f"{filename}:")
        # Compute and display mean for each column
        for col in columns:
            if col in data.columns:
                mean = round(data[col].mean(), 2)
                print(f"{col.upper()} - Mean: {mean}")
            else:
                print(f"Column '{col}' not found in the file.")
        print()

    except Exception as e:
        print(f"An error occurred while processing {filename}: {e}")
        print()

def process_directory(directory):
    all_files = []
    for root, dirs, files in os.walk(directory):
        dirs.sort()  # Sort directories
        for file in sorted(files):  # Sort files
            if "default" in file and file.endswith(".csv"): # using "default" for selecting the right .csv; change the predicat if you want calculate a other value
                all_files.append(os.path.join(root, file))

    for file in all_files:
        compute_stats(file)

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: compute_report_for_folder.py <directory>")
    else:
        process_directory(sys.argv[1])