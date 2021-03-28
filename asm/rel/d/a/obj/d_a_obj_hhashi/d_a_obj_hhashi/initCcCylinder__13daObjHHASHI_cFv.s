lbl_8057F9B8:
/* 8057F9B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057F9BC  7C 08 02 A6 */	mflr r0
/* 8057F9C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057F9C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057F9C8  7C 7F 1B 78 */	mr r31, r3
/* 8057F9CC  38 7F 10 20 */	addi r3, r31, 0x1020
/* 8057F9D0  38 80 00 FF */	li r4, 0xff
/* 8057F9D4  38 A0 00 FF */	li r5, 0xff
/* 8057F9D8  7F E6 FB 78 */	mr r6, r31
/* 8057F9DC  4B B0 3E 84 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 8057F9E0  38 7F 10 5C */	addi r3, r31, 0x105c
/* 8057F9E4  3C 80 80 58 */	lis r4, ccCylSrc@ha
/* 8057F9E8  38 84 14 AC */	addi r4, r4, ccCylSrc@l
/* 8057F9EC  4B B0 4E C8 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 8057F9F0  38 1F 10 20 */	addi r0, r31, 0x1020
/* 8057F9F4  90 1F 10 A0 */	stw r0, 0x10a0(r31)
/* 8057F9F8  38 7F 11 80 */	addi r3, r31, 0x1180
/* 8057F9FC  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8057FA00  4B CE F7 DC */	b SetC__8cM3dGCylFRC4cXyz
/* 8057FA04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057FA08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057FA0C  7C 08 03 A6 */	mtlr r0
/* 8057FA10  38 21 00 10 */	addi r1, r1, 0x10
/* 8057FA14  4E 80 00 20 */	blr 
