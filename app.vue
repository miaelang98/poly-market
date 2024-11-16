<template>
  <div class="app-container">
    <GnbGlobal/>
    <div class="divider"></div>
    <main class="main-content">
      <NuxtPage />
    </main>
  </div>
</template>

<script setup>
// 필요한 경우 여기에 스크립트를 추가하세요
import GnbGlobal from "~/pages/gnb/GnbGlobal.vue";
</script>

<style>
body {
  font-family: Arial, sans-serif;
  margin: 0;
  padding: 0;
  background-color: var(--colors-shadeWhite, #1D2B39);
  color: var(--colors-shadeBlack, #ffffff);
}

.app-container {
  display: flex;
  flex-direction: column;
  min-height: 100vh;
}

.gnb {
  background-color: var(--colors-shadeWhite, #1D2B39);
  color: var(--colors-shadeBlack, #ffffff);
  height: 64px;
  width: 100%;
  z-index: 6;
}

.gnb-container {
  max-width: 1200px;
  margin: 0 auto;
  padding: 0 20px;
  display: flex;
  justify-content: space-between;
  align-items: center;
  height: 100%;
}

.logo {
  display: flex;
  align-items: center;
}

.logo-image {
  height: 35px;
  width: auto;
}

.nav-menu ul {
  display: flex;
  list-style-type: none;
  margin: 0;
  padding: 0;
}

.nav-menu li {
  margin-left: 20px;
}

.nav-link {
  color: var(--colors-shadeBlack, #ffffff);
  text-decoration: none;
  font-size: 16px;
  font-weight: 500;
  transition: color 0.2s ease;
}

.nav-link:hover {
  color: var(--colors-polyBlue, #2D9CDB);
}

.main-content {
  flex-grow: 1;
  padding: 20px;
  max-width: 1200px;
  margin: 0 auto;
  width: 100%;
}
.divider {
  height: 1px;
  background-color: rgba(255, 255, 255, 0.1);
  width: 100%;
}
</style>