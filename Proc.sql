Create Proc spDSKHChuaDatVe
As
Begin
	select*
	from KhachHang
	where MaKH not in ( select distinct MaKH from ChiTietVeXe)
End
exec spDSKHChuaDatVe
 