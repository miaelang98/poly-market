<template>
  <div class="container">
    <!-- 투표 진행 중인 섹션 추가 -->
    <div class="voting-section">
      <h2 class="section-title">진행 중인 투표</h2>
      <div class="voting-card">
        <div class="voting-card-header">
          <img :src="activeVote.icon" :alt="activeVote.title" class="voting-card-icon">
          <h3 class="voting-card-title">{{ activeVote.title }}</h3>
        </div>
        <div class="voting-card-body">
          <div v-for="(option, optionIndex) in activeVote.options" :key="optionIndex" class="voting-option">
            <span class="voting-option-name">{{ option.name }}</span>
            <div class="voting-progress-bar">
              <div class="voting-progress" :style="{ width: option.percentage + '%' }"></div>
            </div>
            <span class="voting-option-percentage">{{ option.percentage }}%</span>
            <button class="btn btn-vote">투표하기</button>
          </div>
        </div>
        <div class="voting-card-footer">
          <span class="voting-time-left">{{ activeVote.timeLeft }} 남음</span>
        </div>
      </div>
    </div>

    <div class="grid">
      <div v-for="(item, index) in items" :key="index" class="card">
        <div class="card-header">
          <img :src="item.icon" :alt="item.title" class="card-icon">
          <h2 class="card-title">{{ item.title }}</h2>
        </div>
        <div class="card-body">
          <div v-for="(option, optionIndex) in item.options" :key="optionIndex" class="option">
            <span class="option-name">{{ option.name }}</span>
            <span class="option-percentage">{{ option.percentage }}%</span>
            <div class="option-buttons">
              <button class="btn btn-yes">Yes</button>
              <button class="btn btn-no">No</button>
            </div>
          </div>
        </div>
        <div class="card-footer">
          <span class="volume">{{ item.volume }} Vol.</span>
          <span class="comments">{{ item.comments }} comments</span>
        </div>
      </div>
    </div>

  </div>
</template>

<script setup>
const activeVote = {
  icon: 'https://i.namu.wiki/i/u6i7DVoL_l46S9Hyhltbhn3zdi9gzSJUWFyY6mRHH89RmIYRUPEVSydgDFYmg_WalAqY-y03TcG3Pb3s-o1xSw.webp',
  title: '가장많이 오를것같은 코인은?',
  options: [
    { name: '비트코인', percentage: 45 },
    { name: '이더리움', percentage: 35 },
    { name: '솔라나', percentage: 20 },
    { name: '폴리곤', percentage: 20 },
    { name: '리플', percentage: 20 },
    { name: '도지코인', percentage: 20 },
    { name: '시바이누', percentage: 20 },
    { name: '아크', percentage: 20 },
  ],
  timeLeft: '3일'
};

const items = [
  // 여기에 8개의 아이템 데이터를 넣으세요
  {
    icon: 'https://polymarket.com/_next/image?url=https%3A%2F%2Fpolymarket-upload.s3.us-east-2.amazonaws.com%2Ftrump-pardons-M-H-ZTXh777o.jpg&w=96&q=75',
    title: 'Who will Trump pardon in first 100 days?',
    options: [
      { name: 'dance', percentage: 60 },
      { name: 'showing', percentage: 40 },
      { name: 'singing', percentage: 40 },
      { name: 'playing', percentage: 40 },
      { name: 'eating', percentage: 40 },
      { name: 'sleeping', percentage: 40 },
      { name: 'calling', percentage: 40 },
      { name: 'talking', percentage: 40 },
      { name: 'walking', percentage: 40 },
      { name: 'running', percentage: 40 },
      { name: 'jumping', percentage: 40 },
      { name: 'swimming', percentage: 40 },
      { name: 'flying', percentage: 40 },
      { name: 'driving', percentage: 40 },
      { name: 'riding', percentage: 40 },
      { name: 'cycling', percentage: 40 },
      { name: 'skating', percentage: 40 },
      { name: 'skiing', percentage: 40 },
      { name: 'snowboarding', percentage: 40 },
      { name: 'surfing', percentage: 40 },
      { name: 'diving', percentage: 40 },
      { name: 'fishing', percentage: 40 },
      { name: 'hunting', percentage: 40 },
      { name: 'shooting', percentage: 40 },
    ],
    volume: '$1.2m',
    comments: 120
  },
  {
    icon: 'https://polymarket.com/_next/image?url=https%3A%2F%2Fpolymarket-upload.s3.us-east-2.amazonaws.com%2Fchampions-league-winner-2025-F-QYbKsrHt_E.jpg&w=96&q=75',
    title: 'Champions League Winner',
    options: [
      { name: 'Manchester City', percentage: 60 },
      { name: 'Barcelona', percentage: 40 },
      { name: 'Real Madrid', percentage: 40 },
      { name: 'Arsenal', percentage: 40 },
    ],
    volume: '$1.2m',
    comments: 120
  },
  {
    icon: 'https://polymarket.com/_next/image?url=https%3A%2F%2Fpolymarket-upload.s3.us-east-2.amazonaws.com%2FRepetitive-markets%2Fpremier%2Bleague.jpg&w=96&q=75',
    title: 'Premier League Winner',
    options: [
      { name: 'Liverpool', percentage: 60 },
      { name: 'Manchester City', percentage: 40 },
      { name: 'Arsenal', percentage: 40 },
      { name: 'Chelsea', percentage: 40 },
      { name: 'Manchester United', percentage: 40 },
      { name: 'Tottenham Hotspur', percentage: 40 },
      { name: 'Leicester City', percentage: 40 },
      { name: 'Everton', percentage: 40 },
      { name: 'West Ham United', percentage: 40 },
      { name: 'Aston Villa', percentage: 40 },
      { name: 'Newcastle United', percentage: 40 },
      { name: 'Crystal Palace', percentage: 40 },
      { name: 'Southampton', percentage: 40 },
      { name: 'Burnley', percentage: 40 },
      { name: 'Fulham', percentage: 40 },
    ],
    volume: '$1.2m',
    comments: 120
  },{
    icon: '/path/to/icon1.png',
    title: 'Market Title 1',
    options: [
      { name: 'Option 1', percentage: 60 },
      { name: 'Option 2', percentage: 40 },
    ],
    volume: '$1.2m',
    comments: 120
  },
  {
    icon: '/path/to/icon1.png',
    title: 'Market Title 1',
    options: [
      { name: 'Option 1', percentage: 60 },
      { name: 'Option 2', percentage: 40 },
    ],
    volume: '$1.2m',
    comments: 120
  },
  {
    icon: '/path/to/icon1.png',
    title: 'Market Title 1',
    options: [
      { name: 'Option 1', percentage: 60 },
      { name: 'Option 2', percentage: 40 },
    ],
    volume: '$1.2m',
    comments: 120
  },
  {
    icon: '/path/to/icon1.png',
    title: 'Market Title 1',
    options: [
      { name: 'Option 1', percentage: 60 },
      { name: 'Option 2', percentage: 40 },
    ],
    volume: '$1.2m',
    comments: 120
  },
  {
    icon: '/path/to/icon1.png',
    title: 'Market Title 1',
    options: [
      { name: 'Option 1', percentage: 60 },
      { name: 'Option 2', percentage: 40 },
    ],
    volume: '$1.2m',
    comments: 120
  },
  // ... 7개 더 추가
];
</script>

<style scoped>
.container {
  max-width: 1200px;
  margin: 0 auto;
  padding: 20px;
}

.grid {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  gap: 20px;
}

.card {
  background-color: var(--colors-cardFill, #2C3F4F);
  border-radius: 8px;
  border: 1px solid var(--colors-cardBorder, #344452);
  box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
  overflow: hidden;
  display: flex;
  flex-direction: column;
  height: 300px; /* 카드의 고정 높이 설정 */
}

.card-header {
  padding: 12px;
  display: flex;
  align-items: center;
}

.card-icon {
  width: 38px;
  height: 38px;
  border-radius: 4px;
  margin-right: 12px;
}

.card-title {
  font-size: 16px;
  font-weight: bold;
  color: var(--colors-shadeBlack, #ffffff);
  margin: 0;
}

.card-body {
  flex-grow: 1;
  padding: 0 12px;
  overflow-y: auto; /* 세로 스크롤 추가 */
  max-height: 180px; /* 최대 높이 설정 */
}

.option {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 8px;
}

.option-name {
  font-size: 14px;
  color: var(--colors-shadeBlack, #ffffff);
}

.option-percentage {
  font-size: 14px;
  font-weight: 500;
  color: var(--colors-shadeBlack, #ffffff);
}

.option-buttons {
  display: flex;
  gap: 4px;
}

.btn {
  padding: 4px 8px;
  font-size: 12px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

.btn-yes {
  background-color: var(--colors-green2, #27AE60);
  color: white;
}

.btn-no {
  background-color: var(--colors-red, #E64800);
  color: white;
}

.card-footer {
  display: flex;
  justify-content: space-between;
  padding: 8px 12px;
  background-color: rgba(0, 0, 0, 0.1);
  font-size: 12px;
  color: var(--colors-shadeBlack, #ffffff);
}

/* 스크롤바 스타일링 (선택사항) */
.card-body::-webkit-scrollbar {
  width: 6px;
}

.card-body::-webkit-scrollbar-track {
  background: var(--colors-cardFill, #2C3F4F);
}

.card-body::-webkit-scrollbar-thumb {
  background-color: var(--colors-gray4, #425464);
  border-radius: 3px;
}

@media (max-width: 1200px) {
  .grid {
    grid-template-columns: repeat(3, 1fr);
  }
}

@media (max-width: 900px) {
  .grid {
    grid-template-columns: repeat(2, 1fr);
  }
}

@media (max-width: 600px) {
  .grid {
    grid-template-columns: 1fr;
  }
}

/* 추가 투표 섹션 스타일링 */
.container {
  max-width: 1200px;
  margin: 0 auto;
  padding: 20px;
}

.voting-section {
  margin-bottom: 40px; /* grid와의 간격 추가 */
}

.section-title {
  font-size: 24px;
  color: var(--colors-shadeBlack, #ffffff);
  margin-bottom: 20px;
}

.voting-card {
  background-color: var(--colors-cardFill, #2C3F4F);
  border-radius: 8px;
  border: 1px solid var(--colors-cardBorder, #344452);
  box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
  overflow: hidden;
}

.voting-card-header {
  padding: 12px;
  display: flex;
  align-items: center;
}

.voting-card-icon {
  width: 32px;
  height: 32px;
  border-radius: 4px;
  margin-right: 12px;
}

.voting-card-title {
  font-size: 18px;
  font-weight: bold;
  color: var(--colors-shadeBlack, #ffffff);
  margin: 0;
}

.voting-card-body {
  padding: 12px;
}

.voting-option {
  display: flex;
  align-items: center;
  margin-bottom: 12px;
}

.voting-option-name {
  flex: 1;
  font-size: 14px;
  color: var(--colors-shadeBlack, #ffffff);
}

.voting-progress-bar {
  flex: 2;
  height: 8px;
  background-color: var(--colors-gray5, #344452);
  border-radius: 4px;
  overflow: hidden;
  margin: 0 10px;
}

.voting-progress {
  height: 100%;
  background-color: var(--colors-polyBlue, #2D9CDB);
}

.voting-option-percentage {
  font-size: 12px;
  color: var(--colors-shadeMedium, #808080);
  width: 40px;
  text-align: right;
}

.btn-vote {
  background-color: var(--colors-polyBlue, #2D9CDB);
  color: white;
  border: none;
  padding: 4px 8px;
  border-radius: 4px;
  cursor: pointer;
  font-size: 12px;
  margin-left: 10px;
}

.voting-card-footer {
  padding: 12px;
  background-color: rgba(0, 0, 0, 0.1);
}

.voting-time-left {
  font-size: 14px;
  color: var(--colors-shadeMedium, #808080);
}

/* 기존 grid 및 card 스타일 유지 */
.grid {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  gap: 20px;
}

/* ... (나머지 기존 스타일) */

@media (max-width: 1200px) {
  .grid {
    grid-template-columns: repeat(3, 1fr);
  }
}

@media (max-width: 900px) {
  .grid {
    grid-template-columns: repeat(2, 1fr);
  }
}

@media (max-width: 600px) {
  .grid {
    grid-template-columns: 1fr;
  }
}
</style>