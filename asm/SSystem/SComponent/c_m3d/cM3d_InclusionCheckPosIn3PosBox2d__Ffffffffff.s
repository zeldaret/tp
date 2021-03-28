lbl_80269D64:
/* 80269D64  C1 21 00 08 */	lfs f9, 8(r1)
/* 80269D68  FC 01 18 40 */	fcmpo cr0, f1, f3
/* 80269D6C  40 80 00 0C */	bge lbl_80269D78
/* 80269D70  FC 00 08 90 */	fmr f0, f1
/* 80269D74  48 00 00 0C */	b lbl_80269D80
lbl_80269D78:
/* 80269D78  FC 00 18 90 */	fmr f0, f3
/* 80269D7C  FC 60 08 90 */	fmr f3, f1
lbl_80269D80:
/* 80269D80  FC 00 28 40 */	fcmpo cr0, f0, f5
/* 80269D84  40 81 00 0C */	ble lbl_80269D90
/* 80269D88  FC 00 28 90 */	fmr f0, f5
/* 80269D8C  48 00 00 10 */	b lbl_80269D9C
lbl_80269D90:
/* 80269D90  FC 03 28 40 */	fcmpo cr0, f3, f5
/* 80269D94  40 80 00 08 */	bge lbl_80269D9C
/* 80269D98  FC 60 28 90 */	fmr f3, f5
lbl_80269D9C:
/* 80269D9C  EC 00 48 28 */	fsubs f0, f0, f9
/* 80269DA0  FC 00 38 40 */	fcmpo cr0, f0, f7
/* 80269DA4  41 81 00 10 */	bgt lbl_80269DB4
/* 80269DA8  EC 03 48 2A */	fadds f0, f3, f9
/* 80269DAC  FC 00 38 40 */	fcmpo cr0, f0, f7
/* 80269DB0  40 80 00 0C */	bge lbl_80269DBC
lbl_80269DB4:
/* 80269DB4  38 60 00 00 */	li r3, 0
/* 80269DB8  4E 80 00 20 */	blr 
lbl_80269DBC:
/* 80269DBC  FC 02 20 40 */	fcmpo cr0, f2, f4
/* 80269DC0  40 80 00 0C */	bge lbl_80269DCC
/* 80269DC4  FC 00 10 90 */	fmr f0, f2
/* 80269DC8  48 00 00 0C */	b lbl_80269DD4
lbl_80269DCC:
/* 80269DCC  FC 00 20 90 */	fmr f0, f4
/* 80269DD0  FC 80 10 90 */	fmr f4, f2
lbl_80269DD4:
/* 80269DD4  FC 00 30 40 */	fcmpo cr0, f0, f6
/* 80269DD8  40 81 00 0C */	ble lbl_80269DE4
/* 80269DDC  FC 00 30 90 */	fmr f0, f6
/* 80269DE0  48 00 00 10 */	b lbl_80269DF0
lbl_80269DE4:
/* 80269DE4  FC 04 30 40 */	fcmpo cr0, f4, f6
/* 80269DE8  40 80 00 08 */	bge lbl_80269DF0
/* 80269DEC  FC 80 30 90 */	fmr f4, f6
lbl_80269DF0:
/* 80269DF0  EC 00 48 28 */	fsubs f0, f0, f9
/* 80269DF4  FC 00 40 40 */	fcmpo cr0, f0, f8
/* 80269DF8  41 81 00 10 */	bgt lbl_80269E08
/* 80269DFC  EC 04 48 2A */	fadds f0, f4, f9
/* 80269E00  FC 00 40 40 */	fcmpo cr0, f0, f8
/* 80269E04  40 80 00 0C */	bge lbl_80269E10
lbl_80269E08:
/* 80269E08  38 60 00 00 */	li r3, 0
/* 80269E0C  4E 80 00 20 */	blr 
lbl_80269E10:
/* 80269E10  38 60 00 01 */	li r3, 1
/* 80269E14  4E 80 00 20 */	blr 
