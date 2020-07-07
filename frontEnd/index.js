const allGamesUrl='http://localhost:3000/api/v1/games'
const userGameUrl='http://localhost:3000/api/v1/user_games'
const userUrl='http://localhost:3000/api/v1/users'

document.addEventListener('DOMContentLoaded', e=>{
    fetchAllGame()
})



const fetchAllGame=()=>{
    fetch(allGamesUrl)
    .then(res=>res.json())
    .then(allGames=>{
        allGames.forEach(game => {
            renderGame(game)
            
        });
        
    })
    .catch(error=>{
    console.log(error.message)
    })
}
const renderGame=game=>{
    console.log(game)
    const container=document.querySelector('#all-games-container')
    container.innerHTML +=`<div class="card" id='all-game-card' style="width: 18rem; ">
    <img src="${game.img_ur}" class="card-img-top" alt="${game.name} Poster">
    <div class="card-body">
      <h5 class="card-title">${game.name}</h5>
      <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
      <a href="#" class="btn btn-primary">Play Game</a>
    </div>
  </div>` 
}