lbl_80C7DCF0:
/* 80C7DCF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C7DCF4  7C 08 02 A6 */	mflr r0
/* 80C7DCF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C7DCFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C7DD00  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C7DD04  41 82 00 1C */	beq lbl_80C7DD20
/* 80C7DD08  3C A0 80 C8 */	lis r5, __vt__8cM3dGSph@ha /* 0x80C7E0E0@ha */
/* 80C7DD0C  38 05 E0 E0 */	addi r0, r5, __vt__8cM3dGSph@l /* 0x80C7E0E0@l */
/* 80C7DD10  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80C7DD14  7C 80 07 35 */	extsh. r0, r4
/* 80C7DD18  40 81 00 08 */	ble lbl_80C7DD20
/* 80C7DD1C  4B 65 10 21 */	bl __dl__FPv
lbl_80C7DD20:
/* 80C7DD20  7F E3 FB 78 */	mr r3, r31
/* 80C7DD24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C7DD28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C7DD2C  7C 08 03 A6 */	mtlr r0
/* 80C7DD30  38 21 00 10 */	addi r1, r1, 0x10
/* 80C7DD34  4E 80 00 20 */	blr 
