// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

contract ProductVerification {

    struct Product {
        string productId;
        string productName;
        string manufacturer;
        bool isGenuine;
    }

    mapping(string => Product) public products;

    function addProduct(
        string memory _productId,
        string memory _productName,
        string memory _manufacturer
    ) public {
        products[_productId] = Product(
            _productId,
            _productName,
            _manufacturer,
            true
        );
    }

    function verifyProduct(string memory _productId)
        public
        view
        returns (
            string memory,
            string memory,
            string memory,
            bool
        )
    {
        Product memory product = products[_productId];

        return (
            product.productId,
            product.productName,
            product.manufacturer,
            product.isGenuine
        );
    }
}