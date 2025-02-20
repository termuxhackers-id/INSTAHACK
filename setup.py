from setuptools import setup, find_packages

setup(
    name='ihack',
    version='3.0.6',
    author='Termux Hackers ID (@iqbalmh18)',
    author_email='termuxhackers.id@gmail.com',
    description='A python based tool for hacking instagram accounts',
    long_description='InstaHack: A python-based tool for hacking instagram accounts using brute force and dictionary attacks with private api from latest apk pinning',
    url='https://github.com/termuxhackers-id/instahack',
    packages=find_packages(),
    include_package_data=True,
    package_data={'instahack': ['ihack']},
    install_requires=['rich','beaupy','glickey','ihackpy','requests','prompt_toolkit'],
    entry_points={
        'console_scripts': [
            'ihack = instahack.main:main',
        ],
    },
    classifiers=[
         'Programming Language :: Python :: 3',
         'License :: OSI Approved :: MIT License',
         'Operating System :: OS Independent',
     ],
     python_requires='>=3.10,<3.11'
)
