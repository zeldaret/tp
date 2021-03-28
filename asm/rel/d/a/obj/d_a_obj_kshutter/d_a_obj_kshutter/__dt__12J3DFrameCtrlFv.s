lbl_80C48008:
/* 80C48008  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C4800C  7C 08 02 A6 */	mflr r0
/* 80C48010  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C48014  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C48018  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C4801C  41 82 00 1C */	beq lbl_80C48038
/* 80C48020  3C A0 80 C5 */	lis r5, __vt__12J3DFrameCtrl@ha
/* 80C48024  38 05 A0 B0 */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 80C48028  90 1F 00 00 */	stw r0, 0(r31)
/* 80C4802C  7C 80 07 35 */	extsh. r0, r4
/* 80C48030  40 81 00 08 */	ble lbl_80C48038
/* 80C48034  4B 68 6D 08 */	b __dl__FPv
lbl_80C48038:
/* 80C48038  7F E3 FB 78 */	mr r3, r31
/* 80C4803C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C48040  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C48044  7C 08 03 A6 */	mtlr r0
/* 80C48048  38 21 00 10 */	addi r1, r1, 0x10
/* 80C4804C  4E 80 00 20 */	blr 
