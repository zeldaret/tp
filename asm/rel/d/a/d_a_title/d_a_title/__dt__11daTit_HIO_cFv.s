lbl_80D67A08:
/* 80D67A08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D67A0C  7C 08 02 A6 */	mflr r0
/* 80D67A10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D67A14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D67A18  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D67A1C  41 82 00 1C */	beq lbl_80D67A38
/* 80D67A20  3C A0 80 D6 */	lis r5, __vt__11daTit_HIO_c@ha /* 0x80D67D68@ha */
/* 80D67A24  38 05 7D 68 */	addi r0, r5, __vt__11daTit_HIO_c@l /* 0x80D67D68@l */
/* 80D67A28  90 1F 00 00 */	stw r0, 0(r31)
/* 80D67A2C  7C 80 07 35 */	extsh. r0, r4
/* 80D67A30  40 81 00 08 */	ble lbl_80D67A38
/* 80D67A34  4B 56 73 09 */	bl __dl__FPv
lbl_80D67A38:
/* 80D67A38  7F E3 FB 78 */	mr r3, r31
/* 80D67A3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D67A40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D67A44  7C 08 03 A6 */	mtlr r0
/* 80D67A48  38 21 00 10 */	addi r1, r1, 0x10
/* 80D67A4C  4E 80 00 20 */	blr 
