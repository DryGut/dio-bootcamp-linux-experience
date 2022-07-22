#script para criação de usuários em lote
#!/bin/bash

for n in guest{1..10};
do
useradd $n -c "Usuario Convidado" -m -s /bin/bash -p $(openssl passwd -crypt senha123)
done

#utilizando um array nomes de usuários pré-definidos

#!/bin/bash

u=('nome1', 'nome2', 'nome3')

for n in ${u[@]};
do
echo useradd $n -c "Usuario Convidado" -m -s /bin/bash -p $(openssl passwd -crypt senha123)
done