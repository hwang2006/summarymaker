# SummaryMaker

A Python command-line tool for text summarization that can process both text files and web articles.

## Project Structure
```
summarymaker/
├── .pytest_cache/            # Pytest cache directory (usually not committed to VCS)
├── CHANGELOG.md              # Changelog file detailing version history
├── LICENSE                   # License file for your package
├── MANIFEST.in              # Specifies source files to include in the package
├── README.md                # Project description and documentation
├── examples/                # Directory for example files
│   ├── test.txt
│   ├── test_article.md
│   └── test_article.txt
├── myvenv/                  # Virtual environment directory (usually not committed to VCS)
├── pyproject.toml           # Configuration for build tools
├── setup.py                 # Script for installing the package
├── src/                     # Source directory
│   └── summarizer/          # Main package directory
│       ├── __init__.py      # Initializes the package
│       ├── cli.py           # Command-line interface for the package
│       ├── summarizer.py    # Core summarization logic
│       └── utils.py         # Helper functions
└── tests/                   # Directory for test files
    ├── __init__.py          # Initializes the test package
    ├── conftest.py          # Configuration for pytest
    ├── test_cli.py         # Tests for the CLI
    ├── test_summarizer.py  # Tests for the summarization logic
    └── test_utils.py       # Tests for helper functions
```

## Features
- Summarize text from local files
- Extract and summarize content from web URLs
- Configurable summarization model selection
- Adjustable summary length
- Support for multiple text encodings

## Installation

### From PyPI
```bash
pip install summarymaker
```

### Development Installation
```bash
git clone https://github.com/hwang2006/summarymaker
cd summarymaker
pip install -e .
```

## Dependencies
- Python >= 3.7
- PyTorch
- Transformers
- Click
- BeautifulSoup4
- Requests

## Usage
```bash
# Summarize a text file
summarymaker --file examples/test.txt

# Summarize content from a URL
summarymaker --url https://example.com

# Customize the model and summary length
summarymaker --file examples/test_article.txt --model facebook/bart-large-cnn --max-length 200
```

## Command-Line Options
- `--file`: Path to a text file to summarize
- `--url`: URL of web content to summarize
- `--model`: Name of the transformer model to use (default: t5-small)
- `--max-length`: Maximum length of the summary in tokens (default: 180)

## Examples
```bash
# Basic file summarization
summarymaker --file examples/test.txt

# Web article summarization
summarymaker --url https://www.bbc.com/news/article

# Custom model and length
summarymaker --file examples/test_article.md --model facebook/bart-large-cnn --max-length 250
```

## Development
The project follows a standard Python package structure:
- Source code is located in `src/summarizer/`
- Tests are in the `tests/` directory
- Example files can be found in `examples/`
- Configuration files include `pyproject.toml` and `setup.py`

## Contributing

We welcome contributions from the community! Here's how you can help:

### Getting Started
1. Fork the repository
2. Create a new branch for your feature (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

### Development Guidelines
- Follow PEP 8 style guidelines for Python code
- Write tests for new features using pytest
- Update documentation to reflect any changes
- Add new examples if introducing new functionality
- Update the CHANGELOG.md file with your changes

### Running Tests
```bash
# Install development dependencies
pip install -e ".[dev]"

# Run tests
pytest tests/

# Run tests with coverage
coverage run -m pytest tests/
coverage report
```

### Documentation
- Update docstrings for any new functions or classes
- Keep the README.md updated with new features or changes
- Add inline comments for complex logic

### Code Review Process
1. Maintainers will review your Pull Request
2. Address any comments or requested changes
3. Once approved, your code will be merged
4. Your contribution will be added to the CHANGELOG.md

For major changes, please open an issue first to discuss what you would like to change. This ensures your time is well spent and your contribution aligns with the project's direction.

## License
Copyright (c) 2024 [Soonwook Hwang]

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.