lbl_80873D48:
/* 80873D48  7C 15 E2 A6 */	mfspr r0, 0x395
/* 80873D4C  7C B6 E2 A6 */	mfspr r5, 0x396
/* 80873D50  3C 80 80 88 */	lis r4, __THPOldGQR5@ha
/* 80873D54  90 04 9B A0 */	stw r0, __THPOldGQR5@l(r4)
/* 80873D58  3C 80 80 88 */	lis r4, __THPOldGQR6@ha
/* 80873D5C  90 A4 9B A4 */	stw r5, __THPOldGQR6@l(r4)
/* 80873D60  38 60 00 07 */	li r3, 7
/* 80873D64  64 63 00 07 */	oris r3, r3, 7
/* 80873D68  7C 75 E3 A6 */	mtspr 0x395, r3
/* 80873D6C  38 60 3D 04 */	li r3, 0x3d04
/* 80873D70  64 63 3D 04 */	oris r3, r3, 0x3d04
/* 80873D74  7C 76 E3 A6 */	mtspr 0x396, r3
/* 80873D78  4E 80 00 20 */	blr 
