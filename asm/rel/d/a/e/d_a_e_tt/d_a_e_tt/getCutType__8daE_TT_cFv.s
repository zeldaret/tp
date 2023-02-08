lbl_807BDC10:
/* 807BDC10  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807BDC14  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807BDC18  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 807BDC1C  88 03 05 68 */	lbz r0, 0x568(r3)
/* 807BDC20  2C 00 00 26 */	cmpwi r0, 0x26
/* 807BDC24  41 82 00 1C */	beq lbl_807BDC40
/* 807BDC28  40 80 00 20 */	bge lbl_807BDC48
/* 807BDC2C  2C 00 00 04 */	cmpwi r0, 4
/* 807BDC30  40 80 00 18 */	bge lbl_807BDC48
/* 807BDC34  2C 00 00 01 */	cmpwi r0, 1
/* 807BDC38  40 80 00 08 */	bge lbl_807BDC40
/* 807BDC3C  48 00 00 0C */	b lbl_807BDC48
lbl_807BDC40:
/* 807BDC40  38 60 00 00 */	li r3, 0
/* 807BDC44  4E 80 00 20 */	blr 
lbl_807BDC48:
/* 807BDC48  38 60 00 01 */	li r3, 1
/* 807BDC4C  4E 80 00 20 */	blr 
