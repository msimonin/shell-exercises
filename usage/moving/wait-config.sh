#! /bin/bash
export LANG=fr_FR.UTF-8

bash << 'EOF'
clear

echo -n "Configuration de l'exercice... "
for pos in `seq 1 100` ; do
#  echo "expr substr '\\|/-' $pos 1"
  p=`expr $pos % 4 + 1`
  c=`expr substr '\\|/-' $p 1`
  printf " [$c]  "
  sleep 0.75s
  printf "\b\b\b\b\b\b"
  if [ -e /tmp/.katacoda-finished ] ; then
    break
  fi
done
printf "    \b\b\b\b"
echo "fini."
echo "Votre environnement est prêt."
echo

hash -r
EOF
