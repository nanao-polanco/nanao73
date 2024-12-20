window.onload = function() {
    // Function to update the HUD elements
    window.addEventListener('message', function(event) {
        if (event.data.type === 'updateHUD') {
            document.getElementById('player-name').innerText = 'Player: ' + event.data.playerName;
            document.getElementById('health').innerText = 'Health: ' + event.data.health;
            document.getElementById('armor').innerText = 'Armor: ' + event.data.armor;
            document.getElementById('money').innerText = 'Money: $' + event.data.money;
        }
    });
};