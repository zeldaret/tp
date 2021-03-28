lbl_80BE9360:
/* 80BE9360  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE9364  7C 08 02 A6 */	mflr r0
/* 80BE9368  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE936C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BE9370  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BE9374  41 82 00 1C */	beq lbl_80BE9390
/* 80BE9378  3C A0 80 BF */	lis r5, __vt__8cM3dGAab@ha
/* 80BE937C  38 05 9B FC */	addi r0, r5, __vt__8cM3dGAab@l
/* 80BE9380  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80BE9384  7C 80 07 35 */	extsh. r0, r4
/* 80BE9388  40 81 00 08 */	ble lbl_80BE9390
/* 80BE938C  4B 6E 59 B0 */	b __dl__FPv
lbl_80BE9390:
/* 80BE9390  7F E3 FB 78 */	mr r3, r31
/* 80BE9394  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BE9398  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE939C  7C 08 03 A6 */	mtlr r0
/* 80BE93A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE93A4  4E 80 00 20 */	blr 
