lbl_807817F0:
/* 807817F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807817F4  7C 08 02 A6 */	mflr r0
/* 807817F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 807817FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80781800  7C 7F 1B 78 */	mr r31, r3
/* 80781804  38 7F 08 E8 */	addi r3, r31, 0x8e8
/* 80781808  38 80 00 FE */	li r4, 0xfe
/* 8078180C  38 A0 00 FF */	li r5, 0xff
/* 80781810  7F E6 FB 78 */	mr r6, r31
/* 80781814  4B 90 20 4C */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80781818  38 7F 0A 5C */	addi r3, r31, 0xa5c
/* 8078181C  3C 80 80 78 */	lis r4, ccCylSrc@ha
/* 80781820  38 84 4D 94 */	addi r4, r4, ccCylSrc@l
/* 80781824  4B 90 30 90 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80781828  38 1F 08 E8 */	addi r0, r31, 0x8e8
/* 8078182C  90 1F 0A A0 */	stw r0, 0xaa0(r31)
/* 80781830  38 7F 0B 80 */	addi r3, r31, 0xb80
/* 80781834  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80781838  4B AE D9 A4 */	b SetC__8cM3dGCylFRC4cXyz
/* 8078183C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80781840  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80781844  7C 08 03 A6 */	mtlr r0
/* 80781848  38 21 00 10 */	addi r1, r1, 0x10
/* 8078184C  4E 80 00 20 */	blr 
