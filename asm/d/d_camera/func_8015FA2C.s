lbl_8015FA2C:
/* 8015FA2C  FC 01 18 40 */	fcmpo cr0, f1, f3
/* 8015FA30  40 81 00 0C */	ble lbl_8015FA3C
/* 8015FA34  FC 20 18 90 */	fmr f1, f3
/* 8015FA38  4E 80 00 20 */	blr 
lbl_8015FA3C:
/* 8015FA3C  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 8015FA40  4C 80 00 20 */	bgelr 
/* 8015FA44  FC 20 10 90 */	fmr f1, f2
/* 8015FA48  4E 80 00 20 */	blr 
