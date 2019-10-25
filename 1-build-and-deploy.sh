./gradlew clean build
docker build -t hclcnlabs/skaffold-jib-spring-gradle:0.0.1 .
docker push hclcnlabs/skaffold-jib-spring-gradle:0.0.1
kubectl apply -f deploy.yaml

curl http://skaffold-jib-spring-gradle-skaffold-jib-spring-gradle.apps.ocp.uk.hclcnlabs.com/
