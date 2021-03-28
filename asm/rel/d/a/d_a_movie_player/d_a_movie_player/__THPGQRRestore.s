lbl_80873D28:
/* 80873D28  3C 60 80 88 */	lis r3, __THPOldGQR5@ha
/* 80873D2C  80 03 9B A0 */	lwz r0, __THPOldGQR5@l(r3)
/* 80873D30  3C 60 80 88 */	lis r3, __THPOldGQR6@ha
/* 80873D34  38 63 9B A4 */	addi r3, r3, __THPOldGQR6@l
/* 80873D38  80 63 00 00 */	lwz r3, 0(r3)
/* 80873D3C  7C 15 E3 A6 */	mtspr 0x395, r0
/* 80873D40  7C 76 E3 A6 */	mtspr 0x396, r3
/* 80873D44  4E 80 00 20 */	blr 
