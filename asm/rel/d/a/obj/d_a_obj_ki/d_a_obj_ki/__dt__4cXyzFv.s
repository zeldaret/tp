lbl_80C4408C:
/* 80C4408C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C44090  7C 08 02 A6 */	mflr r0
/* 80C44094  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C44098  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C4409C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C440A0  41 82 00 10 */	beq lbl_80C440B0
/* 80C440A4  7C 80 07 35 */	extsh. r0, r4
/* 80C440A8  40 81 00 08 */	ble lbl_80C440B0
/* 80C440AC  4B 68 AC 90 */	b __dl__FPv
lbl_80C440B0:
/* 80C440B0  7F E3 FB 78 */	mr r3, r31
/* 80C440B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C440B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C440BC  7C 08 03 A6 */	mtlr r0
/* 80C440C0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C440C4  4E 80 00 20 */	blr 
