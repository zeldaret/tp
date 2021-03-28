lbl_80B41584:
/* 80B41584  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B41588  7C 08 02 A6 */	mflr r0
/* 80B4158C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B41590  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B41594  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B41598  41 82 00 1C */	beq lbl_80B415B4
/* 80B4159C  3C A0 80 B4 */	lis r5, __vt__12J3DFrameCtrl@ha
/* 80B415A0  38 05 2D 7C */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 80B415A4  90 1F 00 00 */	stw r0, 0(r31)
/* 80B415A8  7C 80 07 35 */	extsh. r0, r4
/* 80B415AC  40 81 00 08 */	ble lbl_80B415B4
/* 80B415B0  4B 78 D7 8C */	b __dl__FPv
lbl_80B415B4:
/* 80B415B4  7F E3 FB 78 */	mr r3, r31
/* 80B415B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B415BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B415C0  7C 08 03 A6 */	mtlr r0
/* 80B415C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B415C8  4E 80 00 20 */	blr 
