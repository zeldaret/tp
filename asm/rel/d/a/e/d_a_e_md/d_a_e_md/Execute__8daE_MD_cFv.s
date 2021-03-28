lbl_80709CFC:
/* 80709CFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80709D00  7C 08 02 A6 */	mflr r0
/* 80709D04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80709D08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80709D0C  7C 7F 1B 78 */	mr r31, r3
/* 80709D10  80 63 05 B4 */	lwz r3, 0x5b4(r3)
/* 80709D14  38 03 FF FF */	addi r0, r3, -1
/* 80709D18  90 1F 05 B4 */	stw r0, 0x5b4(r31)
/* 80709D1C  80 1F 05 B4 */	lwz r0, 0x5b4(r31)
/* 80709D20  2C 00 00 00 */	cmpwi r0, 0
/* 80709D24  41 81 00 0C */	bgt lbl_80709D30
/* 80709D28  38 00 00 00 */	li r0, 0
/* 80709D2C  90 1F 05 B4 */	stw r0, 0x5b4(r31)
lbl_80709D30:
/* 80709D30  7F E3 FB 78 */	mr r3, r31
/* 80709D34  4B FF FF 09 */	bl Action__8daE_MD_cFv
/* 80709D38  7F E3 FB 78 */	mr r3, r31
/* 80709D3C  48 00 00 6D */	bl setBaseMtx__8daE_MD_cFv
/* 80709D40  38 60 00 01 */	li r3, 1
/* 80709D44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80709D48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80709D4C  7C 08 03 A6 */	mtlr r0
/* 80709D50  38 21 00 10 */	addi r1, r1, 0x10
/* 80709D54  4E 80 00 20 */	blr 
