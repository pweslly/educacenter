#Não esqueça
* De criar sua imagem e fazer push para docker hub 
* E depois colocar o link da imagem do docker hub na configuração do arquivo deployment.yaml que está na pasta k8s o link da imagem


### Sobre a instalação do Kubernete
* Baixe o arquivo  nome-do-cluster-kubeconfig.yaml fornecido pela Digital Ocean
* Zere path do kubeconfig se já tiver utilizado antes, caso seja primeira vez, baixe o kubectl, abra o terminal ctrl + alt + t entre modo sudo su e execute abaixo
```
export KUBECONFIG=
```
* Acesse a pasta cd ~/.kube
* Copie o arquivo nome-do-cluster-kubeconfig.yaml para pasta .kube
* Execute esse comando modo SUDO SU no terminado do linux 
``` 
export KUBECONFIG=$HOME/.kube/nome-do-cluster-kubeconfig.yaml
``` 
ou 
```
cd ~/.kube && kubectl --kubeconfig="educacenter-k8s-kubeconfig.yaml" get nodes
```
Observação $HOME vai pegar o caminho local onde está, por isso é preciso está na pasta .kube
para verificar o path KUBECONFIG pode digitar o seguintes comandos
```
printenv
```
Vai lista todos path e procure pelo kubeconfig

<h2> Para verificar o caminho do KUBECONFIG </h2>
Você pode digitar no terminal
```
echo $KUBECONFIG
```

<h2> Links pode ajudar na instalação do kubernete na Digital Ocean </h2>
[Schoolf of net](https://www.youtube.com/watch?v=SNwa5jWSWNg)


<h1> Para instalar dashboard do Kubernet </h1>

Segue o link 
[link](https://kubernetes.io/docs/tasks/access-application-cluster/web-ui-dashboard/)
Não esqueça de criar os arquivos dashboard-adminuser.yaml e cluster-bind.yaml

E para acessar o painel do kubernet dashboard
http://localhost:8001/api/v1/namespaces/kubernetes-dashboard/services/https:kubernetes-dashboard:/proxy/