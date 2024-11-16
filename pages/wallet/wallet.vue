<template>
  <div class="container">
    <h1>폴리마켓 지갑</h1>
    <div class="wallet-info">
      <p>코인 잔액: <span>{{ coinBalance }}</span> POLY</p>
      <p>이더리움 가격: <span>{{ ethPrice }}</span> USD</p>
    </div>
    <input type="number" v-model="amount" placeholder="보낼 금액" />
    <button @click="sendCoins">전송하기</button>
  </div>
</template>

<script setup>
import { ref } from 'vue';

const coinBalance = ref(0.00);
const ethPrice = ref(0.00);
const amount = ref(null);

const sendCoins = () => {
  console.log(`전송할 금액: ${amount.value} POLY`);
};
</script>

<style scoped>
.container {
  max-width: 500px;
  margin: 0 auto;
  padding: 20px;
  border: 1px solid #cccccc;
  border-radius: 8px;
  box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
  background-color: #f9f9f9;
}

h1 {
  text-align: center;
  color: #111111;
}

.wallet-info {
  margin-bottom: 20px;
}

.wallet-info p {
  font-size: 18px;
}

input[type="number"] {
  width: 100%;
  padding: 10px;
  margin: 10px 0;
  border: 1px solid #cccccc;
  border-radius: 4px;
}

button {
  width: 100%;
  padding: 10px;
  background-color: #333333;
  color: white;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  font-size: 16px;
}

button:hover {
  background-color: #555555;
}
</style>