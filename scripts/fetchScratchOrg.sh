#!/bin/bash
if [ -z $1 ]
  then
    echo "No argument for a branch name. Recommended format is <initials of developer>.<User story id>"
    exit 1
fi

# Fetch Scratch Org from Pool
sfdx sfpowerkit:pool:fetch -t dev

# Assign standard Sales User permission set to user
#sfdx force:user:permset:assign -u $1 -n SalesUserPsl

#push metadata
#sfdx force:source:push -f && echo "Succesfully pushed the metadata to the empty scratch org 😎" || {
#    echo "Not possible to push the metadata to your scratch Org ❌"
#    exit 1
#}

# Import data to scratch org
#sfdx force:data:tree:import -p ./data/plan.json --loglevel DEBUG && echo "Added some data to play around with 🐎" ||
    #echo "Not possible to insert the data records. However, you still have some standard data records in your scratch org."


# Reset tracking to avoid unnessesary changes like layouts being pulled
sfdx force:source:tracking:reset --noprompt

echo "All done! Now go on and develop into your newly created scratch org 🙌"

echo "Your new scratch org with open in your browser tab in a few secods 🎇"

# Opens the scratch Org in a browser Tab when the build is finished
sfdx force:org:open