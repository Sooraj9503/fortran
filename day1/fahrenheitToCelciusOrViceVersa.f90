program temp
    implicit none
    real :: tempC, tempF
    character :: choice
    
    do while (choice != "0")
        print *, "Press 0: To EXIT"
        print *, "Press 1: To convert celsius to fahrenheit"
        print *, "Press 2: To Convert fahrenheit to celsius"
        print *, "Enter your choice: "

        read *, choice
        if (choice == '1') then
            print *, "Enter temperature in celsius: "
            read *, tempC
            tempF = (tempC * 9/5) + 32
            print *, "Temperature in fahrenheit is: ", tempF
        else if (choice == '2') then
            print *, "Enter temperature in fahrenheit: "
            read *, tempF
            tempC = (tempF - 32) * 5/9
            print *, "Temperature in celsius is: ", tempC
        else if (choice == '0') then
            stop
        else
            print *, "Invalid choice"
        end if
    end do
end program temp