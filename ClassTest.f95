! Okunlola Faozee Bayo | 123456 | Mechanical Engineering
! Program Class Test

program ClassTest
    implicit none

    ! Declaration of Variables
    integer :: i, no_of_students, n = 0 ! n = number of sudents that passed
    real :: marks(10), summ
    real :: average_mark

    ! Format
    10 Format (f4.2)
    11 Format (i1)

    ! Opening & Reading External Files
    open(1, File="MARKS.txt")
    read(1, *) marks

    ! logicBlock
    summ = sum(marks)
    no_of_students = size(marks)
    average_mark = summ/no_of_students

    do i = 1, no_of_students
        if ( marks(i) >= 5) then
            n = n + 1
        end if
    end do

    ! Display Output
    open(2, File="Output.txt")
    write(2, *) "Average marks of students = "
    write(2, 10) average_mark
    write(2, *) "Number of students that passed = "
    write(2, 11) n
    
end program ClassTest