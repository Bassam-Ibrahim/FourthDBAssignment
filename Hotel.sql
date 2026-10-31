use Hotel;
INSERT into dbo.Guests
values (1,'Bassam Abu Al-Saud', 'Egyptian', 'A12345678', '2005-07-06');

INSERT INTO dbo.Guests (GuestId,FullName, Nationality, PassportNumber, DateOfBirth)
VALUES 
    (2,'Cristiano Ronaldo', 'Portogal', 'C98765432', '1990-08-22'),
    (3,'Leo Messi', 'Argantina', 'L11223344', '1978-03-10'),
    (4,'Mohammed Salah', 'Egypt', 'M55667788', '1995-12-05'),
    (5,'Kai Havertiz', 'England', 'K99887766', '1982-11-30');


     update dbo.Rooms
     set DailyRate*=0.15
     where RoomType='suit'

    update dbo.Reservations
    set ReservationStatus = case
                                when CheckOutDate<GETDATE()then 'Completed'
                                when CheckOutDate>GETDATE()then 'Upcoming'
                                else 'Active'
                                end
