# Phing - Personal Build System



This is a Personal Build System using [Phing](http://phing.info) for web development and other projects. In it's current state it works similiar to yeoman's generators which serves as a tool to build the scaffolding for web sites/applications. It will be expanded as more build targets are developed and tested. 

## How to use it 
Get PHP and get Phing. Preferably the PEAR install. Create two directories (windows is assumed OS): `C:\work` and `C:\phing-repo`. Download the archive file and move the `build.xml` from simple-v2/ into C:\work. The contents of simple-v2/phing-repo are copied into C:\phing-repo. 

Open up a command prompt and cd to C:\work, type `phing`. The build process will start and it will list available project types to create. As of v2, it's limited to 2 types. simple and html. 


#### simple - project type
Simple is a placeholder for developing your own build process. It only creates two directories, copies build.xml and a project.properties file to a directory created with the project name. You will be prompted for the project name. 

#### html - project type
html is an example project type which copies the contents of the C:\phing-repo\types\html\ directory into the C:\work\project_name\ directory. This includes a build.xml file,version.txt,project.properties. The contents of html/ can be changed, edit,remove,add files as desired to create your standard HTML site. This will serve as the html template for you system. 

### Step Two
Once a project has been created, you `cd project_name` and run `phing` again. This will list the available 'targets' or collection of tasks available based on this build file. At this point, the files in this folder are unique and changes will not apply to future projects. Customize as desired and use the already defined 'targets' to perform some basic tasks like : create a release, zip or tar the src/dist folders or zip/tar the entire project, deploy the build to a local web server. Each of those options will be outlined if you type `phing` in the project directory. 

It is expected to modify the build.xml in the project directory to suit the specific build process. It is recommended to create new targets and use `<phingcall target="target_name">` in the existing targets. Set the `hidden` attribute to true if you do not want these to display in the help screen. 

### Create your own types
It's possible to add your own types in the work\build.xml file and to store the files in C:\phing-repo\types\ , create a build.xml, can name it whatever you like, type-build.xml is a good idea. Create a directory which matches the type name (again, doesn't have to be but it's a good practice). Store any files specific to the project type here. phing-repo\shared\ has some files common to all projects such as version.txt,robots.txt, mostly files which could be moved freely from project to project. 

### System Wide properties
Configuration properties(variables) for the build system are located in `phing-repo\shared\zero.properties` This includes the locations of the work and phing-repo directories. If you wish to use other locations, modify the files. It also includes author information, company information.  It is loaded by both simple and html project types, other project types is up to the creator. 











