lbl_80C70554:
/* 80C70554  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C70558  7C 08 02 A6 */	mflr r0
/* 80C7055C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C70560  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C70564  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C70568  41 82 00 1C */	beq lbl_80C70584
/* 80C7056C  3C A0 80 C7 */	lis r5, __vt__12J3DFrameCtrl@ha
/* 80C70570  38 05 0B 24 */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 80C70574  90 1F 00 00 */	stw r0, 0(r31)
/* 80C70578  7C 80 07 35 */	extsh. r0, r4
/* 80C7057C  40 81 00 08 */	ble lbl_80C70584
/* 80C70580  4B 65 E7 BC */	b __dl__FPv
lbl_80C70584:
/* 80C70584  7F E3 FB 78 */	mr r3, r31
/* 80C70588  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C7058C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C70590  7C 08 03 A6 */	mtlr r0
/* 80C70594  38 21 00 10 */	addi r1, r1, 0x10
/* 80C70598  4E 80 00 20 */	blr 
