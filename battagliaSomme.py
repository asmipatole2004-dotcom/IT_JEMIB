def battagliaSomme(numbers):
    even_sum = sum(n for n in numbers if n % 2 == 0)
    odd_sum = sum(n for n in numbers if n % 2 != 0)
    return abs(even_sum - odd_sum)


print(battagliaSomme([100, 240, 50, 75]))

def isComplex(password):
    if len(password) < 6:
        return False

    if not any(char.isdigit() for char in password):
        return False

    if not any(char.islower() for char in password):
        return False

    if not any(char.isupper() for char in password):
        return False

    if not any(not char.isalnum() for char in password):
        return False

    return True


print(isComplex("Ed1"))
print(isComplex("Ed1!"))
print(isComplex("Arrivederci1!"))