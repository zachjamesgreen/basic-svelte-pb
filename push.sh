#docker build . --no-cache -f Dockerfile.prod.svelte -t zachjamesgreen/blog-tut-svelte;
#docker build . --no-cache -f Dockerfile.pb -t zachjamesgreen/blog-tut-pb;
docker build . -f Dockerfile.prod.svelte -t zachjamesgreen/blog-tut-svelte;
docker build . -f Dockerfile.prob.pb -t zachjamesgreen/blog-tut-pb;
docker push zachjamesgreen/blog-tut-pb
docker push zachjamesgreen/blog-tut-svelte