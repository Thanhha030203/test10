var selectedLabel = null;

// Hàm chọn nhãn
function selectLabel(label) {
    if (selectedLabel) {
        selectedLabel.classList.remove("selected");
    }
    selectedLabel = label;
    selectedLabel.classList.add("selected");


    
}

// Hàm di chuyển từ bên trái sang bên phải
function moveToRight() {
    var rightBox = document.getElementById("rightBox");
    var leftBox = document.getElementById("leftBox");
    if (selectedLabel) {
        rightBox.appendChild(selectedLabel);
        selectedLabel.classList.remove("selected");
        selectedLabel = null;
        document.getElementById("prev").disabled = false;
    }
    if (leftBox.children.length === 0) {
        document.getElementById("nextb").disabled = true;
    }
}

// Hàm di chuyển nhãn lên trên
function moveUp() {
    if (selectedLabel) {
        var prevLabelContainer = selectedLabel.previousElementSibling;
        if (prevLabelContainer) {
            prevLabelContainer.before(selectedLabel);
            document.getElementById("upButton").disabled = false;
            updateUpButton();
            // Kích hoạt nút "Up" khi di chuyển
        }
    }
}

function updateUpButton() {
    var leftBoxLabels = document.getElementById("leftBox").querySelectorAll('.label');
    if (leftBoxLabels.length > 0 && leftBoxLabels[0] === selectedLabel) {
        document.getElementById("upButton").disabled = true; // Nếu label là đầu tiên, vô hiệu hóa nút "Up"
    } else {
        document.getElementById("upButton").disabled = false; // Ngược lại, kích hoạt nút "Up"
    }
    document.getElementById("downButton").disabled = false;
}

function updateDownButton() {
    var leftBoxLabels = document.getElementById("leftBox").querySelectorAll('.label');
    if (leftBoxLabels.length > 0 && leftBoxLabels[leftBoxLabels.length -1] === selectedLabel) {
        document.getElementById("downButton").disabled = true; // Nếu label là đầu tiên, vô hiệu hóa nút "Up"
    } else {
        document.getElementById("downButton").disabled = false; // Ngược lại, kích hoạt nút "Up"
    }
    document.getElementById("upButton").disabled = false;
}


function moveDown() {
    if (selectedLabel) {
        var prevLabelContainer = selectedLabel.nextElementSibling;
        if (prevLabelContainer) {
            prevLabelContainer.after(selectedLabel);
            document.getElementById("downButton").disabled = false;
            updateDownButton();
        }
    }
}

// Hàm di chuyển từ bên phải sang bên trái
function moveToLeft() {
    var leftBox = document.getElementById("leftBox");
    var rightBox = document.getElementById("rightBox");
    if (selectedLabel) {
        leftBox.appendChild(selectedLabel);
        selectedLabel.classList.remove("selected");
        selectedLabel = null;
        document.getElementById("nextb").disabled = false;
    }
    if (rightBox.children.length === 0) {
        document.getElementById("prev").disabled = true;
    }

}
