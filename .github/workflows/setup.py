from setuptools import setup

setup(
    name="instahack-cli",
    version="3.0.5",
    packages=["instahack"],
    install_requires=["rich","beaupy","ihackpy","glickey","requests","prompt_toolkit"],
    author="Moh Iqbal Hidayat",
    author_email="iqbalmh18.dev@gmail.com",
    description="A python-based tool for hacking instagram acccounts",
    long_description="**InstaHack**: A python-based tool for hacking instagram accounts using  brute force and dictionary attacks with private api from latest apk pinning",
    long_description_content_type="text/markdown",
    url="https://github.com/termuxhackers-id/instahack",
    python_requires=">=3.9",
    entry_points={
        "console_scripts": [
            "instahack=instahack.ihack:main",
        ],
    },
    classifiers=[
        "Programming Language :: Python :: 3",
        "License :: OSI Approved :: MIT License",
        "Operating System :: OS Independent",
    ],
    include_package_data=True,
    package_data={
        "instahack": ["data/*", "data/auth/*", "data/dump/*", "data/save/*"]
    }
)
