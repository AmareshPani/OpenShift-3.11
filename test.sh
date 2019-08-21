export INTERACTIVE=${INTERACTIVE:="true"}
export PVS=${INTERACTIVE:="true"}
export RHUSER=${RHUSER:="$(whoami)"}
export RHPW=${RHPW:=password}
export IP=${IP:="$(ip route get 8.8.8.8 | awk '{print $NF; exit}')"}

## Make the script interactive to set the variables
if [ "$INTERACTIVE" = "true" ]; then

	read -rp "Red Hat Username: ($RHUSER): " choice;
	if [ "$choice" != "" ] ; then
		export RHUSER="$choice";
	fi

	read -rp "Red Hat Password: ($RHPW): " choice;
	if [ "$choice" != "" ] ; then
		export RHPW="$choice";
	fi

fi

echo "******"
echo "* Your DNS IP is $IP "
echo "* Your Red Hat username is $RHUSER "
echo "* Your Red Hat password is $RHPW "
echo "******"
