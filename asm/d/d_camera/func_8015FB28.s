lbl_8015FB28:
/* 8015FB28  C0 03 00 00 */	lfs f0, 0(r3)
/* 8015FB2C  C0 24 00 00 */	lfs f1, 0(r4)
/* 8015FB30  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8015FB34  4C 40 13 82 */	cror 2, 0, 2
/* 8015FB38  40 82 00 28 */	bne lbl_8015FB60
/* 8015FB3C  C0 45 00 00 */	lfs f2, 0(r5)
/* 8015FB40  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8015FB44  40 80 00 0C */	bge lbl_8015FB50
/* 8015FB48  38 60 00 00 */	li r3, 0
/* 8015FB4C  4E 80 00 20 */	blr 
lbl_8015FB50:
/* 8015FB50  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8015FB54  40 81 00 38 */	ble lbl_8015FB8C
/* 8015FB58  38 60 00 00 */	li r3, 0
/* 8015FB5C  4E 80 00 20 */	blr 
lbl_8015FB60:
/* 8015FB60  C0 45 00 00 */	lfs f2, 0(r5)
/* 8015FB64  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8015FB68  4C 40 13 82 */	cror 2, 0, 2
/* 8015FB6C  40 82 00 0C */	bne lbl_8015FB78
/* 8015FB70  38 60 00 00 */	li r3, 0
/* 8015FB74  4E 80 00 20 */	blr 
lbl_8015FB78:
/* 8015FB78  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8015FB7C  4C 41 13 82 */	cror 2, 1, 2
/* 8015FB80  40 82 00 0C */	bne lbl_8015FB8C
/* 8015FB84  38 60 00 00 */	li r3, 0
/* 8015FB88  4E 80 00 20 */	blr 
lbl_8015FB8C:
/* 8015FB8C  C0 03 00 08 */	lfs f0, 8(r3)
/* 8015FB90  C0 24 00 08 */	lfs f1, 8(r4)
/* 8015FB94  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8015FB98  4C 40 13 82 */	cror 2, 0, 2
/* 8015FB9C  40 82 00 28 */	bne lbl_8015FBC4
/* 8015FBA0  C0 45 00 08 */	lfs f2, 8(r5)
/* 8015FBA4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8015FBA8  40 80 00 0C */	bge lbl_8015FBB4
/* 8015FBAC  38 60 00 00 */	li r3, 0
/* 8015FBB0  4E 80 00 20 */	blr 
lbl_8015FBB4:
/* 8015FBB4  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8015FBB8  40 81 00 38 */	ble lbl_8015FBF0
/* 8015FBBC  38 60 00 00 */	li r3, 0
/* 8015FBC0  4E 80 00 20 */	blr 
lbl_8015FBC4:
/* 8015FBC4  C0 45 00 08 */	lfs f2, 8(r5)
/* 8015FBC8  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8015FBCC  4C 40 13 82 */	cror 2, 0, 2
/* 8015FBD0  40 82 00 0C */	bne lbl_8015FBDC
/* 8015FBD4  38 60 00 00 */	li r3, 0
/* 8015FBD8  4E 80 00 20 */	blr 
lbl_8015FBDC:
/* 8015FBDC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8015FBE0  4C 41 13 82 */	cror 2, 1, 2
/* 8015FBE4  40 82 00 0C */	bne lbl_8015FBF0
/* 8015FBE8  38 60 00 00 */	li r3, 0
/* 8015FBEC  4E 80 00 20 */	blr 
lbl_8015FBF0:
/* 8015FBF0  38 60 00 01 */	li r3, 1
/* 8015FBF4  4E 80 00 20 */	blr 
