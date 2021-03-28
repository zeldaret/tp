lbl_80315628:
/* 80315628  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8031562C  7C 08 02 A6 */	mflr r0
/* 80315630  90 01 00 24 */	stw r0, 0x24(r1)
/* 80315634  39 61 00 20 */	addi r11, r1, 0x20
/* 80315638  48 04 CB A5 */	bl _savegpr_29
/* 8031563C  7C 7E 1B 78 */	mr r30, r3
/* 80315640  38 00 00 00 */	li r0, 0
/* 80315644  90 0D 90 50 */	stw r0, sOldVcdVatCmd__8J3DShape(r13)
/* 80315648  4B FF FC B9 */	bl loadPreDrawSetting__8J3DShapeCFv
/* 8031564C  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 80315650  54 00 F7 7E */	rlwinm r0, r0, 0x1e, 0x1d, 0x1f
/* 80315654  90 0D 90 28 */	stw r0, sCurrentPipeline__11J3DShapeMtx(r13)
/* 80315658  7F C3 F3 78 */	mr r3, r30
/* 8031565C  4B FF F8 91 */	bl loadVtxArray__8J3DShapeCFv
/* 80315660  A3 FE 00 0A */	lhz r31, 0xa(r30)
/* 80315664  3B A0 00 00 */	li r29, 0
/* 80315668  83 DE 00 3C */	lwz r30, 0x3c(r30)
/* 8031566C  48 00 00 1C */	b lbl_80315688
lbl_80315670:
/* 80315670  57 A0 13 BA */	rlwinm r0, r29, 2, 0xe, 0x1d
/* 80315674  7C 7E 00 2E */	lwzx r3, r30, r0
/* 80315678  28 03 00 00 */	cmplwi r3, 0
/* 8031567C  41 82 00 08 */	beq lbl_80315684
/* 80315680  4B FF F4 55 */	bl draw__12J3DShapeDrawCFv
lbl_80315684:
/* 80315684  3B BD 00 01 */	addi r29, r29, 1
lbl_80315688:
/* 80315688  57 A0 04 3E */	clrlwi r0, r29, 0x10
/* 8031568C  7C 00 F8 40 */	cmplw r0, r31
/* 80315690  41 80 FF E0 */	blt lbl_80315670
/* 80315694  39 61 00 20 */	addi r11, r1, 0x20
/* 80315698  48 04 CB 91 */	bl _restgpr_29
/* 8031569C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803156A0  7C 08 03 A6 */	mtlr r0
/* 803156A4  38 21 00 20 */	addi r1, r1, 0x20
/* 803156A8  4E 80 00 20 */	blr 
