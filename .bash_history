systemctl enable --now cockpit.socket
sudo systemctl enable --now cockpit.socket
exit
ls
sudo dnf update -y
sudo -i
vim $HOME/openshift-pull-secret
sudo cp $HOME/openshift-pull-secret /etc/crio/openshift-pull-secret
sudo dnf install -y microshift
sudo cp $HOME/openshift-pull-secret /etc/crio/openshift-pull-secret
sudo chown root:root /etc/crio/openshift-pull-secret
sudo chmod 600 /etc/crio/openshift-pull-secret
sudo firewall-cmd --permanent --zone=trusted --add-source=10.42.0.0/16
sudo firewall-cmd --permanent --zone=trusted --add-source=169.254.169.1
sudo firewall-cmd --reload
microshift show-config
sudo microshift show-config
sudo pvs
sudo vgs
sudo lvs
sudo systemctl start microshift
sudo systemctl enable microshift
sudo crictl ps -a
mkdir -p ~/.kube/
sudo cat /var/lib/microshift/resources/kubeadmin/kubeconfig > ~/.kube/config
chmod go-r ~/.kube/config
oc get all -A
sudo firewall-cmd --permanent --zone=public --add-port=6443/tcp && sudo firewall-cmd --reload
oc get all -A
sudo pvs
sudo vgs
sudo lvs
sudo vgs
sudo vgcreate
sudo vgcreate /dev/nvme0n1p3 rhel
ls
sudo vgs
sudo vgscan
sudo pvscan
sudo pvs
ls /etc/microshift/
cp /etc/microshift/lvmd.yaml.default /etc/microshift/lvmd.yaml
sudo cp /etc/microshift/lvmd.yaml.default /etc/microshift/lvmd.yaml
sudo vim /etc/microshift/lvmd.yaml
sudo systemctl stop microshift
sudo vgs
sudo cp /etc/microshift/config.yaml.default /etc/microshift/config.yaml
sudo vim /etc/microshift/config.yaml
sudo systemctl start microshift
sudo journalctl -f -u microshift
sudo lvs
sudo vgs
sudo pvs
sudo vim /etc/microshift/lvmd.yaml
 oc get pods -A
oc get pods -A
sudo vgs
sudo lvs
oc get pvc
oc get all -A
systemctl show --property=SubState --value greenboot-healthcheck.service
systemctl show --property=ExecMainStatus --value greenboot-healthcheck.service
sudo systemctl stop microshift
sudo crictl ps -a
sudo systemctl stop kubepods.slice
sudo crictl ps -a
sudo systemctl start microshift
sudo journalctl -f -u microshift
oc get sc
oc get pv
oc get pvc
lvs
sudo pvs
sudo lvs
sudo pvs
sudo vgs
sudo lvs
oc get all -A
oc get po -A
oc get deploy -A
oc logs deploy/topolvm-controller -n openshift-storage
ls
mkdir yaml
cd yaml
cd ..
rmdir yaml
mkdir templates
vim templates/pod.yaml
oc get sc
oc apply -f templates/pod.yaml 
vim templates/pod.yaml
oc apply -f templates/pod.yaml 
oc delete -f templates/pod.yaml 
oc project
oc new-project nrevo
oc create namespace nrevo
oc project nrevo
oc project
vim templates/pod.yaml
oc get pvc
ls
oc get pvc -A
ls
vim templates/pod.yaml 
oc create -f templates/pod.yaml 
vim templates/pod.yaml 
oc create -f templates/pod.yaml 
oc get pvc -n nrevo
sudo lvs
oc get pvc -n nrevo
oc get all -n nrevo
oc delete -f templates/pod.yaml 
oc annotate namespace openshift-storage openshift.io/node-selector=
ls
cd templates/
mkdir odf
cd odf/
ls
vim Kustomize
vim operatorgroup.yaml
vim subscription.yaml
mv Kustomize Kustomization
vim Kustomization 
vim namespace.yaml
ls
vim Kustomization 
vim operatorgroup.yaml 
vim subscription.yaml 
mv Kustomization Kustomization
ls
vim namespace.yaml 
vim *.yaml
oc create -k Kustomization 
oc apply -k Kustomization 
vim Kustomization 
oc create -k .
ls
oc apply -f operatorgroup.yaml 
cd ..
git clone https://github.com/red-hat-storage/odf-operator.git
cd odf-operator/
make deploy
sudo dnf search golang
sudo dnf install golang
make deploy
make manifests
make kustomize
ls
ls config/default
vim config/default/kustomization.yaml 
grep -iIr "odf-operator-controller-manager-metrics-monitor"
vim bundle/manifests/odf-operator-controller-manager-metrics-monitor_monitoring.coreos.com_v1_servicemonitor.yaml
oc get csv -n openshift-storage
make deploy
cd ..
git clone https://github.com/sustainable-computing-io/kepler.git
cd kepler/
vim manifests/config/exporter/kustomization.yaml
oc create ns kepler
oc label ns kepler security.openshift.io/scc.podSecurityLabelSync=false'
oc label ns kepler security.openshift.io/scc.podSecurityLabelSync=false
oc label ns kepler --overwrite pod-security.kubernetes.io/enforce=privileged
oc apply --kustomize $(pwd)/manifests/config/base -n kepler
cd ..
ls
cd odf-operator/
make deploy
make deploy-with-olm
make undeploy
grep -iIr "ServiceMonitor"
grep -iIr "metrics"
grep -iIr "prometheus"
grep -iIr "prometheus" | less
vim config/default/kustomization.yaml
make deploy
ls
cd ..
cd odf
ls
oc apply -f operatorgroup.yaml 
cd ..
cd odf-operator/
oc get CatalogSource -A
oc get verb
oc api-resources --verbs=list --namespaced -o name | grep storage
oc api-resources --verbs=list -o name | grep storage
make deploy-with-olm
make deploy
oc get csv -n openshift-storage
oc get all -n openshift-storage
ls
cd config
ls
ls install/
ls default/
vim default/kustomization.yaml 
cd ..
make undeploy
git branch
git checkout release-4.14
git fetch
git pull
git diff
git status
git checkout config/default/kustomization.yaml
git status
git diff
vim config/default/kustomization.yaml 
git branch
git pull
vim config/default/kustomization.yaml 
grep -iIr "4.11"
grep -iIr "4.11" | less
vim hack/make-bundle-vars.mk
grep -iIr "4.11" | less
vim bundle/manifests/odf-operator.clusterserviceversion.yaml
grep -iIr "4.12" | less
grep -iIr "4.13" | less
grep -iIr "4.10" | less
make undeploy
make deploy
make undeploy
vim config/default/kustomization.yaml 
make undeploy
make deploy
cd ..
cd odf
ls
oc apply -f operatorgroup.yaml 
oc api-resources --verbs=list --namespaced -o name | grep storage
oc api-resources --verbs=list -o name | grep storage
ls
cd ..
cd odf-operator/
ls
cd config
ls
ls default/
cd samples/
ls
vim ocs-storagecluster-storagesystem.yaml 
oc apply -f ocs-storagecluster-storagesystem.yaml 
oc get storagesystem -A
oc get storagecluster -A
oc delete -f ocs-storagecluster-storagesystem.yaml 
oc get csv -n openshift-storage
cd ..
oc create -f config/samples/ocs-storagecluster-storagesystem.yamlH
oc create -f config/samples/ocs-storagecluster-storagesystem.yaml
oc describe storagesystem -n openshift-storage
oc describe storagecluster -n openshift-storage
oc get po -n openshift-storage
oc et po -A
oc get po -A
oc logs odf-operator-controller-manager-7cd456846f-8gn8r -n odf-operator-system
oc describe po odf-operator-controller-manager-7cd456846f-8gn8r -n odf-operator-system
oc logs odf-operator-controller-manager-7cd456846f-8gn8r -n odf-operator-system
oc get po -A
oc get deploy -a
oc get deploy -A
oc describe deploy odf-operator-controller-manager -n odf-operator-system
oc get rs odf-operator-controller-manager-7cd456846f
oc get rs -A
oc describe rs odf-operator-controller-manager-7cd456846f -n odf-operator-system
oc describe po odf-operator-controller-manager-7cd456846f-8gn8r -n odf-operator-system
oc get events
oc get events -n odf-operator-system
podman pull registry.redhat.io/openshift4/ose-kube-rbac-proxy:v4.14
podman pull registry.redhat.io/openshift4/ose-kube-rbac-proxy:v4.14.0
podman login registry.redhat.io
podman pull registry.redhat.io/openshift4/ose-kube-rbac-proxy:v4.14.0
podman pull registry.redhat.io/openshift4/ose-kube-rbac-proxy:v4.14
oc get all -A
oc get po pod/odf-operator-controller-manager-7cd456846f-8gn8r -n odf-operator-system -o yaml
oc get po odf-operator-controller-manager-7cd456846f-8gn8r -n odf-operator-system -o yaml
oc logs odf-operator-controller-manager-7cd456846f-8gn8r -n odf-operator-system 
oc logs odf-operator-controller-manager-7cd456846f-8gn8r -n odf-operator-system  -c manager
oc get logs odf-operator-controller-manager-7cd456846f-8gn8r -n odf-operator-system  -c manager
oc logs odf-operator-controller-manager-7cd456846f-8gn8r -n odf-operator-system  -c manager
oc logs
oc logs -h
oc logs pod/odf-operator-controller-manager-7cd456846f-8gn8r -n odf-operator-system  -c manager
oc get po -A
oc logs pod/odf-operator-controller-manager-7cd456846f-8gn8r -n odf-operator-system -c manager
crio ps
sudo crio ps
sudo crio ls
sudo crio 
sudo crictl ps -a
sudo crictl ps -a | grep controller
sudo crictl ps -a | grep odf
sudo crictl logs c325cdbcee44b
grep -iIr "OPERATOR_CONDITION_NAME" | less
make undeploy
make clean
git diff
make deploy
sudo crictl ps -a | grep odf
sudo crictl logs a3decc6c9ee81
oc get deploy
oc get deploy -A
oc get deploy odf-operator-controller-manager -n odf-operator-system
oc get deploy odf-operator-controller-manager -n odf-operator-system -o yaml | less
oc get cm -A
oc get cm odf-operator-manager-config -n odf-operator-system -o yaml | less
oc get cm -A
oc get cm odf-operator-manager-config -n odf-operator-system -o yaml | less
oc edit cm odf-operator-manager-config -n odf-operator-system 
oc get deploy odf-operator-controller-manager -n odf-operator-system -o yaml | less
oc edit deploy odf-operator-controller-manager -n odf-operator-system 
opc get po -A
oc get po -A
oc delete po odf-operator-controller-manager-7cd456846f-6v8ct -n odf-operator-system
oc get po -n odf-operator-system
oc get storageclass
cd ..
cd odf
ls
mkdir external-storagesystem.yaml
rmdir external-storagesystem.yaml/
vim external-storagesystem.yaml
oc apply -f external-storagesystem.yaml 
oc get storagesystem
oc get storagesystem -A
oc get storagecluster -A
oc describe storagesystem ocs-external-storagecluster-storagesystem -n openshift-storage
oc get po -A
oc describe po odf-operator-controller-manager-7cd456846f-lkstd -n odf-operator-system
sudo crictl ps -A
sudo crictl ps 
sudo crictl ps  | grep odf
sudo crictl logs bd42099c88af0
sudo crictl logs -f bd42099c88af0 
ls
oc apply -f operatorgroup.yaml 
sudo crictl logs -f bd42099c88af0 
sudo crictl logs bd42099c88af0 
oc edit cm odf-operator-manager-config -n odf-operator-system 
cd ..
cd local-volume
mkdir local-volume
cd local-volume/
vim local-storage-StorageClass.yaml
oc apply -f local-storage-StorageClass.yaml 
oc get node
oc describe node microshift
ls
vim quay-pv.yaml
mkdir /opt/quay
sudo mkdir /opt/quay
oc apply -f quay-pv.yaml 
oc get pv -A
sudo -i
exit
oc get nodes
free -h
lscpu
htop
sudo dnf install htop -y
htop
subscription-manager repos --enable codeready-builder-for-rhel-9-$(arch)-rpms
sudo dnf install https://dl.fedoraproject.org/pub/epel/epel-release-latest-9.noarch.rpm
exit
sudo dnf install htop
htop
microshift
sudo systemctl stop microshift
sudo shutdown now
ls
sudo dnf search color
sudo dnf install vim bash-color-prompt lrzsz
sudo dnf install vim bash-color-prompt lrzsz tmux curl wget
ls
exit
sudo dnf provides pcp-system-tools
sudo dnf 
sudo dnf info pcp-system-tools
sudo dnf provides htop
pcp-htop
pcp htop
sudo dnf provides pcp-htop
sudo dnf install pcp-system-tools
pcp htop
sudo pcp htop
htop
sudo pcp htop
htop
ls
cd /opt
ls
du -sh *
df -h
sudo rsync -avxHAWXR rhel8.revoweb.home:/opt .
ls -al
ls
cd opt
ls
mv * ..
sudo mv * ..
ls -al
cd ..
ls -al
rmdir ocp4
sudo rmdir ocp4
ls -al
cd ocp4
ls -al
pwd
cd ..
ls
ls opt
sudo rmdir opt
ls -al
sudo dnf search keybase
sudo yum install https://prerelease.keybase.io/keybase_amd64.rpm
run_keybase
cd
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
sudo dnf search zsh
sudo dnf install zsh 
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
exit
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
mv .oh-my-zsh .oh-my-zsh-rhel9
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
exit
ls
ls /opt
cd /opt
ls -al
id 1001
lsblk
df -h
sudo -i
