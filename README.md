# devops-metabase-aws

1. Dockerfile:

No dockerfile basicamente usamos a imagem padrão do metabase, expondo a porta 3000.

2. Terraform

main.tf - criação do cluster.

provider.tf - provider aws e varaiveis de ambiente para usar secret e access key.

keys.tfvars - access e secret keys do aws.

variables.tf - variaveis de ambiente do aws.


3. Worflow [CI/CD]

    1. JOB da pipeline [Terraform]

    comandos necessarios para criação do cluster no AWS (alem do cluster vamos precisar criar uma task definition e um service dentro do cluster no aws para que a aplicação do metabase possa rodar.)

    2. JOB da pipeline [build-and-push-ecr] 
    
    Buildar a aplicação do metabase e enviar para o ECR no aws, o repositorio no ECR onde a imagem vai ficar armazenada vamos ter que criar manualmente.

    3. JOB da pipeline [deploy-ecs]

    Deployar a aplicação no ECS etpada onde o service é atualizada a cada vez rodar esse job.


4. ROUTE53 + Loadbalance

 Para a aplicação ficar acessivel, vamos precisar configurar um DNS, podemos utilizar o proprio ROUTE53 do AWS e em conjunto com ele  vamos usar o loadbalance do aws, para definiar as regras de acesso.

