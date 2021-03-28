lbl_804E7B34:
/* 804E7B34  A8 83 06 D4 */	lha r4, 0x6d4(r3)
/* 804E7B38  A8 03 04 E6 */	lha r0, 0x4e6(r3)
/* 804E7B3C  7C 04 00 50 */	subf r0, r4, r0
/* 804E7B40  7C 00 07 34 */	extsh r0, r0
/* 804E7B44  2C 00 40 00 */	cmpwi r0, 0x4000
/* 804E7B48  41 81 00 14 */	bgt lbl_804E7B5C
/* 804E7B4C  2C 00 C0 00 */	cmpwi r0, -16384
/* 804E7B50  41 80 00 0C */	blt lbl_804E7B5C
/* 804E7B54  38 60 00 00 */	li r3, 0
/* 804E7B58  4E 80 00 20 */	blr 
lbl_804E7B5C:
/* 804E7B5C  7C 00 07 35 */	extsh. r0, r0
/* 804E7B60  40 80 00 0C */	bge lbl_804E7B6C
/* 804E7B64  38 60 00 01 */	li r3, 1
/* 804E7B68  4E 80 00 20 */	blr 
lbl_804E7B6C:
/* 804E7B6C  38 60 00 02 */	li r3, 2
/* 804E7B70  4E 80 00 20 */	blr 
