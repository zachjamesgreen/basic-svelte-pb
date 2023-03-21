<script lang="ts">
    $: count = 0
    $: numberStyleValue = `--value:${count}`
    const handleClick = () => {
        count = ++count
        console.log(count)
    }
</script>

<h1 class="text-3xl">Welcome to SvelteKit!</h1>
<p>Visit <a href="https://kit.svelte.dev">kit.svelte.dev</a> to read the documentation</p>
<span class="countdown font-mono text-6xl">
  <span style={numberStyleValue} ></span>
</span>
<button class="btn btn-xs sm:btn-sm md:btn-md lg:btn-lg" on:click={handleClick}>Add 1</button>
