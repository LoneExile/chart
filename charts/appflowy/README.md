# Note

```bash
le@master01:~$ helm install my-postgresql-ha bitnami/postgresql-ha --version 15.1.4 --values pg.values.yaml -n test --create-namespace
NAME: my-postgresql-ha
LAST DEPLOYED: Thu Dec 26 11:15:00 2024
NAMESPACE: test
STATUS: deployed
REVISION: 1
TEST SUITE: None
NOTES:
CHART NAME: postgresql-ha
CHART VERSION: 15.1.4
APP VERSION: 17.2.0

Did you know there are enterprise versions of the Bitnami catalog? For enhanced secure software supply chain features, unlimited pulls from Docker, LTS support, or application customization, see Bitnami Premium or Tanzu Application Catalog. See https://www.arrow.com/globalecs/na/vendors/bitnami for more information.
** Please be patient while the chart is being deployed **
PostgreSQL can be accessed through Pgpool via port 5432 on the following DNS name from within your cluster:

    my-postgresql-ha-pgpool.test.svc.cluster.local

Pgpool acts as a load balancer for PostgreSQL and forward read/write connections to the primary node while read-only connections are forwarded to standby nodes.

To get the password for "postgres" run:

    export POSTGRES_PASSWORD=$(kubectl get secret --namespace test my-postgresql-ha-postgresql -o jsonpath="{.data.password}" | base64 -d)

To get the password for "repmgr" run:

    export REPMGR_PASSWORD=$(kubectl get secret --namespace test my-postgresql-ha-postgresql -o jsonpath="{.data.repmgr-password}" | base64 -d)

To connect to your database run the following command:

    kubectl run my-postgresql-ha-client --rm --tty -i --restart='Never' --namespace test --image docker.io/loneexile/pgvector:17.2.0-debian-12-r6 --env="PGPASSWORD=$POSTGRES_PASSWORD"  \
        --command -- psql -h my-postgresql-ha-pgpool -p 5432 -U postgres -d postgres

To connect to your database from outside the cluster execute the following commands:

    kubectl port-forward --namespace test svc/my-postgresql-ha-pgpool 5432:5432 &
    psql -h 127.0.0.1 -p 5432 -U postgres -d postgres

WARNING: There are "resources" sections in the chart not set. Using "resourcesPreset" is not recommended for production. For production installations, please set the following values according to your workload needs:
  - pgpool.resources
  - postgresql.resources
  - witness.resources
+info https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/

⚠ SECURITY WARNING: Original containers have been substituted. This Helm chart was designed, tested, and validated on multiple platforms using a specific set of Bitnami and Tanzu Application Catalog containers. Substituting other containers is likely to cause degraded security and performance, broken chart features, and missing environment variables.

Substituted images detected:
  - docker.io/loneexile/pgvector:17.2.0-debian-12-r6

⚠ SECURITY WARNING: Verifying original container images was skipped. Please note this Helm chart was designed, tested, and validated on multiple platforms using a specific set of Bitnami and Tanzu Application Catalog containers. Substituting other containers is likely to cause degraded security and performance, broken chart features, and missing environment variables.
```
