<script setup>
import TheWelcome from '@/components/TheWelcome.vue'
import { onMounted } from 'vue';

onMounted(async () => {
  console.log('connecting with Rails...');
  try {
    const response = await fetch('http://localhost:3100/api');
    const data = await response.json();
    console.log('🎉 connected', data);
  } catch (err) {
    console.error(err);
    console.log('😞 no dice');
  }
});
</script>

<template>
  <main>
    <TheWelcome />
  </main>
</template>
