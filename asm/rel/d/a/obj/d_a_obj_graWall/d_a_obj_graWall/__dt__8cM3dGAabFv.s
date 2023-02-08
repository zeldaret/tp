lbl_80C10D90:
/* 80C10D90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C10D94  7C 08 02 A6 */	mflr r0
/* 80C10D98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C10D9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C10DA0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C10DA4  41 82 00 1C */	beq lbl_80C10DC0
/* 80C10DA8  3C A0 80 C1 */	lis r5, __vt__8cM3dGAab@ha /* 0x80C11058@ha */
/* 80C10DAC  38 05 10 58 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80C11058@l */
/* 80C10DB0  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80C10DB4  7C 80 07 35 */	extsh. r0, r4
/* 80C10DB8  40 81 00 08 */	ble lbl_80C10DC0
/* 80C10DBC  4B 6B DF 81 */	bl __dl__FPv
lbl_80C10DC0:
/* 80C10DC0  7F E3 FB 78 */	mr r3, r31
/* 80C10DC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C10DC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C10DCC  7C 08 03 A6 */	mtlr r0
/* 80C10DD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C10DD4  4E 80 00 20 */	blr 
