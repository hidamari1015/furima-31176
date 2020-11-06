function check(){
  const feeInput = document.getElementById("item-price");
  const addTaxDom = document.getElementById("add-tax-price");
  const profitDom = document.getElementById("profit");

  feeInput.addEventListener("input", () => {
    const inputValue = feeInput.value;
    addTaxDom.innerHTML = Math.floor(inputValue * 0.1).toLocaleString();
    profitDom.innerHTML = Math.floor(inputValue * 0.9).toLocaleString();
  })
}
window.addEventListener('load', check);