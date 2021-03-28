lbl_80AC8898:
/* 80AC8898  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC889C  7C 08 02 A6 */	mflr r0
/* 80AC88A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC88A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AC88A8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AC88AC  41 82 00 10 */	beq lbl_80AC88BC
/* 80AC88B0  7C 80 07 35 */	extsh. r0, r4
/* 80AC88B4  40 81 00 08 */	ble lbl_80AC88BC
/* 80AC88B8  4B 80 64 84 */	b __dl__FPv
lbl_80AC88BC:
/* 80AC88BC  7F E3 FB 78 */	mr r3, r31
/* 80AC88C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AC88C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC88C8  7C 08 03 A6 */	mtlr r0
/* 80AC88CC  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC88D0  4E 80 00 20 */	blr 
