export default {
  fetch(request, env, ctx) {
    console.log("Hello Cloudflare Workers!");

    return new Response("Hello World");
  },
};
