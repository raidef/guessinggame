# guessinggame

function compareNumbers {
  if [[ $1 -gt $2 ]]
  then
    echo 'Too high - try again with a lower number!'
  else
    echo 'Too low - try again with a higher number!'
  fi
}

filesInDir=$(ls -l | wc -l)
while 
    echo -n 'Guess the number of files in the current directory: '
    read  inputNumber
    compareNumbers $inputNumber $filesInDir
    [[ $inputNumber -ne  $filesInDir ]]
    do :; 
done

echo 'You guessed the correct number of files in directory:'
echo $(pwd)
