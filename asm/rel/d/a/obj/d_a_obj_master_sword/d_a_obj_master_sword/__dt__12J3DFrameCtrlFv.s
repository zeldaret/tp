lbl_80C913D8:
/* 80C913D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C913DC  7C 08 02 A6 */	mflr r0
/* 80C913E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C913E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C913E8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C913EC  41 82 00 1C */	beq lbl_80C91408
/* 80C913F0  3C A0 80 C9 */	lis r5, __vt__12J3DFrameCtrl@ha
/* 80C913F4  38 05 1A C4 */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 80C913F8  90 1F 00 00 */	stw r0, 0(r31)
/* 80C913FC  7C 80 07 35 */	extsh. r0, r4
/* 80C91400  40 81 00 08 */	ble lbl_80C91408
/* 80C91404  4B 63 D9 38 */	b __dl__FPv
lbl_80C91408:
/* 80C91408  7F E3 FB 78 */	mr r3, r31
/* 80C9140C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C91410  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C91414  7C 08 03 A6 */	mtlr r0
/* 80C91418  38 21 00 10 */	addi r1, r1, 0x10
/* 80C9141C  4E 80 00 20 */	blr 
