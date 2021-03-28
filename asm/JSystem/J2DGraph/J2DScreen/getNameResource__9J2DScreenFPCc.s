lbl_802F9640:
/* 802F9640  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F9644  7C 08 02 A6 */	mflr r0
/* 802F9648  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F964C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802F9650  7C 7F 1B 78 */	mr r31, r3
/* 802F9654  38 80 00 00 */	li r4, 0
/* 802F9658  4B FD AC 19 */	bl getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader
/* 802F965C  28 03 00 00 */	cmplwi r3, 0
/* 802F9660  40 82 00 1C */	bne lbl_802F967C
/* 802F9664  80 0D 90 10 */	lwz r0, mDataManage__9J2DScreen(r13)
/* 802F9668  28 00 00 00 */	cmplwi r0, 0
/* 802F966C  41 82 00 10 */	beq lbl_802F967C
/* 802F9670  7C 03 03 78 */	mr r3, r0
/* 802F9674  7F E4 FB 78 */	mr r4, r31
/* 802F9678  48 01 37 A1 */	bl get__13J2DDataManageFPCc
lbl_802F967C:
/* 802F967C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802F9680  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F9684  7C 08 03 A6 */	mtlr r0
/* 802F9688  38 21 00 10 */	addi r1, r1, 0x10
/* 802F968C  4E 80 00 20 */	blr 
