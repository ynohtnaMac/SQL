SELECT count(distinct cust.acctnum),
avg(quantity*price)
FROM BIT_DB.FebSales feb
LEFT JOIN BIT_DB.customers cust
ON feb.orderID=cust.order_id
WHERE feb.Quantity > 2
AND length(orderid) =6
AND orderid <> 'Order ID'
