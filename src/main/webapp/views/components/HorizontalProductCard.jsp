<style>
    /* Additional custom styles */
    .product-card {
        flex: 0 0 auto;
        width: 280px;
        margin-right: 15px;
        background-color: gray;
        border: 1px solid red;
    }

    .product-card img {
        max-width: 100%;
        height: auto;
    }

    .product-card-title {
        font-size: 1.25rem;
    }

    .btn-scroll {
        font-size: 1.5rem;
        padding: 0.25rem 0.5rem;
        margin: 0.5rem;
    }

    .container {
        background-color: red;
    }

    #scrollLeft,
    #scrollRight {
        height: 100px;
        text-align: center;
        background-color: rgba(245, 245, 245, 0.608);
        /* border: 1px solid rgba(0, 0, 255, 0.571); */
        color: black;
    }
    #scrollLeft{
        position: absolute;
        left: 0;
    }
    #scrollRight{
        position: absolute;
        right: 0;
    }
</style>
<!-- <div class="container"> -->
<h2 class="my-4">Featured Products</h2>
<div class="d-flex overflow-hidden align-items-center">
    <button class="btn btn-secondary btn-scroll invisible" id="scrollLeft"><i class="fa fa-arrow-left"
            aria-hidden="true"></i></button>
    <div class="d-flex product-container overflow-hidden">
        <div class="product-card">
            <img src="<c:url value='/images/iphone13pro.png'/>" alt="Product 2">
            <div class="card-body">
                <h5 class="product-card-title">Product 2</h5>
                <p class="card-text">$149.99</p>
                <a href="#" class="btn btn-primary">Buy Now</a>
            </div>
        </div>
        <div class="product-card">
            <img src="<c:url value='/images/iphone13pro.png'/>" alt="Product 2">
            <div class="card-body">
                <h5 class="product-card-title">Product 2</h5>
                <p class="card-text">$149.99</p>
                <a href="#" class="btn btn-primary">Buy Now</a>
            </div>
        </div>
        <div class="product-card">
            <img src="<c:url value='/images/iphone13pro.png'/>" alt="Product 2">
            <div class="card-body">
                <h5 class="product-card-title">Product 2</h5>
                <p class="card-text">$149.99</p>
                <a href="#" class="btn btn-primary">Buy Now</a>
            </div>
        </div>
        <div class="product-card">
            <img src="<c:url value='/images/iphone13pro.png'/>" alt="Product 2">
            <div class="card-body">
                <h5 class="product-card-title">Product 2</h5>
                <p class="card-text">$149.99</p>
                <a href="#" class="btn btn-primary">Buy Now</a>
            </div>
        </div>
        <div class="product-card">
            <img src="<c:url value='/images/iphone13pro.png'/>" alt="Product 2">
            <div class="card-body">
                <h5 class="product-card-title">Product 2</h5>
                <p class="card-text">$149.99</p>
                <a href="#" class="btn btn-primary">Buy Now</a>
            </div>
        </div>
        <div class="product-card">
            <img src="<c:url value='/images/iphone13pro.png'/>" alt="Product 2">
            <div class="card-body">
                <h5 class="product-card-title">Product 2</h5>
                <p class="card-text">$149.99</p>
                <a href="#" class="btn btn-primary">Buy Now</a>
            </div>
        </div>
        <div class="product-card">
            <img src="<c:url value='/images/iphone13pro.png'/>" alt="Product 2">
            <div class="card-body">
                <h5 class="product-card-title">Product 2</h5>
                <p class="card-text">$149.99</p>
                <a href="#" class="btn btn-primary">Buy Now</a>
            </div>
        </div>
        <div class="product-card">
            <img src="<c:url value='/images/iphone13pro.png'/>" alt="Product 2">
            <div class="card-body">
                <h5 class="product-card-title">Product 2</h5>
                <p class="card-text">$149.99</p>
                <a href="#" class="btn btn-primary">Buy Now</a>
            </div>
        </div>
        <div class="product-card">
            <img src="<c:url value='/images/iphone13pro.png'/>" alt="Product 2">
            <div class="card-body">
                <h5 class="product-card-title">Product 2</h5>
                <p class="card-text">$149.99</p>
                <a href="#" class="btn btn-primary">Buy Now</a>
            </div>
        </div>
        <div class="product-card">
            <img src="<c:url value='/images/iphone13pro.png'/>" alt="Product 2">
            <div class="card-body">
                <h5 class="product-card-title">Product 2</h5>
                <p class="card-text">$149.99</p>
                <a href="#" class="btn btn-primary">Buy Now</a>
            </div>
        </div>
        <div class="product-card">
            <img src="<c:url value='/images/iphone13pro.png'/>" alt="Product 2">
            <div class="card-body">
                <h5 class="product-card-title">Product 2</h5>
                <p class="card-text">$149.99</p>
                <a href="#" class="btn btn-primary">Buy Now</a>
            </div>
        </div>
        <div class="product-card">
            <img src="<c:url value='/images/iphone13pro.png'/>" alt="Product 2">
            <div class="card-body">
                <h5 class="product-card-title">Product 2</h5>
                <p class="card-text">$149.99</p>
                <a href="#" class="btn btn-primary">Buy Now</a>
            </div>
        </div>
    </div>
    <button class="btn btn-secondary btn-scroll visible" id="scrollRight"><i class="fa fa-arrow-right"
            aria-hidden="true"></i></button>
</div>
<!-- </div> -->


<script>
    // JavaScript for scrolling functionality
    const productContainer = document.querySelector('.product-container');
    const scrollLeftBtn = document.getElementById('scrollLeft');
    const scrollRightBtn = document.getElementById('scrollRight');
    const scrollAmount = 300; // Adjust the scrolling amount as needed

    let totalWidth = productContainer.scrollWidth;
    scrollLeftBtn.addEventListener('click', () => {
        productContainer.scrollBy({
            left: -scrollAmount,
            behavior: 'smooth'
        });
        totalWidth -= scrollAmount;
        if (totalWidth != 5940) {
            scrollRightBtn.classList.replace("invisible", "visible")
        }
        if (totalWidth == 3540) {
            scrollLeftBtn.classList.replace("visible", "invisible");
        }
        console.log("left:" + totalWidth + "/" + productContainer.scrollWidth);
    });

    scrollRightBtn.addEventListener('click', () => {
        productContainer.scrollBy({
            left: scrollAmount,
            behavior: 'smooth'
        });
        totalWidth += scrollAmount;
        if (totalWidth == 5940) {
            scrollRightBtn.classList.replace("visible", "invisible");
        }
        if (totalWidth != 3540) {
            scrollLeftBtn.classList.replace("invisible", "visible");
        }
        console.log("right:" + totalWidth + "/" + productContainer.scrollWidth);
    });
</script>