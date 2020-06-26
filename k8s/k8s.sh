apiVersion: v1
items:
- apiVersion: apps/v1
  kind: Deployment
  metadata:
    annotations:
      deployment.kubernetes.io/revision: "1"
    creationTimestamp: "2020-06-26T05:42:13Z"
    generation: 1
    labels:
      run: myununtu
    name: myununtu
    namespace: default
    resourceVersion: "24821"
    selfLink: /apis/apps/v1/namespaces/default/deployments/myununtu
    uid: d2d69d0a-a8fe-48b3-ab97-1f35aab78113
  spec:
    progressDeadlineSeconds: 600
    replicas: 1
    revisionHistoryLimit: 10
    selector:
      matchLabels:
        run: myununtu
    strategy:
      rollingUpdate:
        maxSurge: 25%
        maxUnavailable: 25%
      type: RollingUpdate
    template:
      metadata:
        creationTimestamp: null
        labels:
          run: myununtu
      spec:
        containers:
        - image: leesh248/ubuntu
          imagePullPolicy: Always
          name: myununtu
          ports:
          - containerPort: 80
            protocol: TCP
          resources: {}
          terminationMessagePath: /dev/termination-log
          terminationMessagePolicy: File
        dnsPolicy: ClusterFirst
        restartPolicy: Always
        schedulerName: default-scheduler
        securityContext: {}
        terminationGracePeriodSeconds: 30
  status:
    conditions:
    - lastTransitionTime: "2020-06-26T05:42:13Z"
      lastUpdateTime: "2020-06-26T05:42:13Z"
      message: Deployment does not have minimum availability.
      reason: MinimumReplicasUnavailable
      status: "False"
      type: Available
    - lastTransitionTime: "2020-06-26T05:52:14Z"
      lastUpdateTime: "2020-06-26T05:52:14Z"
      message: ReplicaSet "myununtu-5d787c687f" has timed out progressing.
      reason: ProgressDeadlineExceeded
      status: "False"
      type: Progressing
    observedGeneration: 1
    replicas: 1
    unavailableReplicas: 1
    updatedReplicas: 1
- apiVersion: apps/v1
  kind: Deployment
  metadata:
    annotations:
      deployment.kubernetes.io/revision: "1"
    creationTimestamp: "2020-06-26T02:07:20Z"
    generation: 6
    labels:
      run: nginx
    name: nginx
    namespace: default
    resourceVersion: "17470"
    selfLink: /apis/apps/v1/namespaces/default/deployments/nginx
    uid: bb1d0a5e-9dba-4963-a338-6744c6311b07
  spec:
    progressDeadlineSeconds: 600
    replicas: 10
    revisionHistoryLimit: 10
    selector:
      matchLabels:
        run: nginx
    strategy:
      rollingUpdate:
        maxSurge: 25%
        maxUnavailable: 25%
      type: RollingUpdate
    template:
      metadata:
        creationTimestamp: null
        labels:
          run: nginx
      spec:
        containers:
        - image: nginx
          imagePullPolicy: Always
          name: nginx
          ports:
          - containerPort: 80
            protocol: TCP
          resources: {}
          terminationMessagePath: /dev/termination-log
          terminationMessagePolicy: File
        dnsPolicy: ClusterFirst
        restartPolicy: Always
        schedulerName: default-scheduler
        securityContext: {}
        terminationGracePeriodSeconds: 30
  status:
    availableReplicas: 10
    conditions:
    - lastTransitionTime: "2020-06-26T02:07:21Z"
      lastUpdateTime: "2020-06-26T02:07:28Z"
      message: ReplicaSet "nginx-5578584966" has successfully progressed.
      reason: NewReplicaSetAvailable
      status: "True"
      type: Progressing
    - lastTransitionTime: "2020-06-26T04:43:40Z"
      lastUpdateTime: "2020-06-26T04:43:40Z"
      message: Deployment has minimum availability.
      reason: MinimumReplicasAvailable
      status: "True"
      type: Available
    observedGeneration: 6
    readyReplicas: 10
    replicas: 10
    updatedReplicas: 10
- apiVersion: apps/v1
  kind: Deployment
  metadata:
    annotations:
      deployment.kubernetes.io/revision: "1"
    creationTimestamp: "2020-06-26T06:50:12Z"
    generation: 2
    labels:
      run: nginx2
    name: nginx2
    namespace: default
    resourceVersion: "31527"
    selfLink: /apis/apps/v1/namespaces/default/deployments/nginx2
    uid: 1b754f73-48dd-43e9-b0ac-cbb83c07bda0
  spec:
    progressDeadlineSeconds: 600
    replicas: 20
    revisionHistoryLimit: 10
    selector:
      matchLabels:
        run: nginx2
    strategy:
      rollingUpdate:
        maxSurge: 25%
        maxUnavailable: 25%
      type: RollingUpdate
    template:
      metadata:
        creationTimestamp: null
        labels:
          run: nginx2
      spec:
        containers:
        - image: leesh7248/ubuntu_nginx
          imagePullPolicy: Always
          name: nginx2
          ports:
          - containerPort: 80
            protocol: TCP
          resources: {}
          terminationMessagePath: /dev/termination-log
          terminationMessagePolicy: File
        dnsPolicy: ClusterFirst
        restartPolicy: Always
        schedulerName: default-scheduler
        securityContext: {}
        terminationGracePeriodSeconds: 30
  status:
    availableReplicas: 20
    conditions:
    - lastTransitionTime: "2020-06-26T06:50:12Z"
      lastUpdateTime: "2020-06-26T06:50:16Z"
      message: ReplicaSet "nginx2-6d49f84c7" has successfully progressed.
      reason: NewReplicaSetAvailable
      status: "True"
      type: Progressing
    - lastTransitionTime: "2020-06-26T06:53:57Z"
      lastUpdateTime: "2020-06-26T06:53:57Z"
      message: Deployment has minimum availability.
      reason: MinimumReplicasAvailable
      status: "True"
      type: Available
    observedGeneration: 2
    readyReplicas: 20
    replicas: 20
    updatedReplicas: 20
kind: List
metadata:
  resourceVersion: ""
  selfLink: ""
