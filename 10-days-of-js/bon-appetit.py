# Complete the bonAppetit function below.
def bonAppetit(bill, k, b):
    counter = 0

    for i in range(len(bill)):
        if(i != k):
            counter += bill[i]

    cheque = counter//2

    if (cheque != b ):
        print(b - cheque)

    else:
        print("Bon Appetit")
