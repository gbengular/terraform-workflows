  runs-on: ubuntu-latest
     steps:
       - name: checkout
         uses: actions/checkout@v3
       - name: setup terraform
         uses: hashicorp/setup-terraform@v2
         with:
           terraform_version: 1.1.9
        - name: terraform init
          run: terraform init
        - name: validate
          run: terraform validate
        - name: format
          run: terraform fmt -check
        - name: plan
          run: terraform plan