# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?
	Version control is a means of saving earlier versions of files for later review.  It's useful for reference as well as identifying problems in code that may manifest themselves long after the changes were made that caused them.
* What is a branch and why would you use one?
	A branch creates a copy of a file and it's contents which can then be manipulated independent of the original file.  Branches may be used for making specific changes apart from the master branch or focusing on the one file within the repository.  The branches can then be merged back into the master branch which will then reflect the work that was done.  Branches are also useful for group work on the same project.  
* What is a commit? What makes a good commit message?
	A commit is a command which saves the current version of a file or directory.  When we refer to a commit we're referring to a past or present version of a file which can be revisited later.  A good commit message is very specific about the changes that were made that are reflected in the commit.
* What is a merge conflict?
	A merge conflict occurs when there is a contradiction between the two files attempting to be merged.  This can occur if the same attribute of both versions of the file were altered in different ways.  For instance, on the same line in two pieces of code, one reads "five" while the other reads "four".  In this instance one has the option to choose either version or to create an entirely new version.