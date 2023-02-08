lbl_80756B78:
/* 80756B78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80756B7C  7C 08 02 A6 */	mflr r0
/* 80756B80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80756B84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80756B88  7C 7F 1B 79 */	or. r31, r3, r3
/* 80756B8C  41 82 00 1C */	beq lbl_80756BA8
/* 80756B90  3C A0 80 75 */	lis r5, __vt__8cM3dGSph@ha /* 0x80757DB4@ha */
/* 80756B94  38 05 7D B4 */	addi r0, r5, __vt__8cM3dGSph@l /* 0x80757DB4@l */
/* 80756B98  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80756B9C  7C 80 07 35 */	extsh. r0, r4
/* 80756BA0  40 81 00 08 */	ble lbl_80756BA8
/* 80756BA4  4B B7 81 99 */	bl __dl__FPv
lbl_80756BA8:
/* 80756BA8  7F E3 FB 78 */	mr r3, r31
/* 80756BAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80756BB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80756BB4  7C 08 03 A6 */	mtlr r0
/* 80756BB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80756BBC  4E 80 00 20 */	blr 
