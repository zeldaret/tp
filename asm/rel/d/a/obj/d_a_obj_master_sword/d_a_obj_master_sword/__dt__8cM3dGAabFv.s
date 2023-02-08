lbl_80C91334:
/* 80C91334  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C91338  7C 08 02 A6 */	mflr r0
/* 80C9133C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C91340  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C91344  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C91348  41 82 00 1C */	beq lbl_80C91364
/* 80C9134C  3C A0 80 C9 */	lis r5, __vt__8cM3dGAab@ha /* 0x80C91AB8@ha */
/* 80C91350  38 05 1A B8 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80C91AB8@l */
/* 80C91354  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80C91358  7C 80 07 35 */	extsh. r0, r4
/* 80C9135C  40 81 00 08 */	ble lbl_80C91364
/* 80C91360  4B 63 D9 DD */	bl __dl__FPv
lbl_80C91364:
/* 80C91364  7F E3 FB 78 */	mr r3, r31
/* 80C91368  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C9136C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C91370  7C 08 03 A6 */	mtlr r0
/* 80C91374  38 21 00 10 */	addi r1, r1, 0x10
/* 80C91378  4E 80 00 20 */	blr 
