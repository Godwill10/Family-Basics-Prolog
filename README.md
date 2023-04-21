**Prolog Project FamilyBasics**

**Name: Godwill Afolabi**

**Purpose**

This Prolog program defines a family tree using facts and rules. The program consists of five files: family_facts.pl, second_family_facts.pl, family_rules.pl, questions.pl, and transcript.txt.

**Organization**

The program is organized into three files: family_facts.pl, family_rules.pl, and questions.pl. 

    family_facts.pl: file contains the facts about the family members, such as their parents, gender, and marital status. 
    second_family_facts.pl: file contains the facts about a family other than the one in family_facts.pl.
    family_rules.pl: file contains the rules that can be used to answer questions about the family relationships, such as who is someone's grandparent, sibling, or cousin. 
    questions.pl: file contains sample queries that can be used to test the rules and facts. 
    transcript.txt: text files to show a record that queries were tested using the prolog interpreter. 
    
This organization allows for clear separation between the data and the logic of the program, making it easier to modify and maintain.


**How to run/use**

To run this program, you will need to have a Prolog interpreter installed on your computer. Once you have a Prolog interpreter, you can load the family_facts.pl and family_rules.pl files into the interpreter using the following commands:

    consult('family_facts.pl').
    consult('family_rules.pl').

Once you have loaded the files, you can run the sample queries in the questions.pl file by loading it into the interpreter and running each query individually. For example:

    consult('questions.pl').
    cousin(mary, ahmed).

This will output whether or not Mary is Ahmed's cousin.

This program can be used to answer questions about a family tree and can be modified to include additional family members and relationships as needed.