lbl_804A964C:
/* 804A964C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804A9650  7C 08 02 A6 */	mflr r0
/* 804A9654  90 01 00 24 */	stw r0, 0x24(r1)
/* 804A9658  39 61 00 20 */	addi r11, r1, 0x20
/* 804A965C  4B EB 8B 7D */	bl _savegpr_28
/* 804A9660  3C A0 80 4C */	lis r5, lit_3879@ha /* 0x804BB534@ha */
/* 804A9664  3B E5 B5 34 */	addi r31, r5, lit_3879@l /* 0x804BB534@l */
/* 804A9668  2C 04 00 00 */	cmpwi r4, 0
/* 804A966C  40 82 00 AC */	bne lbl_804A9718
/* 804A9670  A0 83 00 14 */	lhz r4, 0x14(r3)
/* 804A9674  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 804A9678  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 804A967C  83 C3 00 38 */	lwz r30, 0x38(r3)
/* 804A9680  83 9E 00 14 */	lwz r28, 0x14(r30)
/* 804A9684  28 1C 00 00 */	cmplwi r28, 0
/* 804A9688  41 82 00 90 */	beq lbl_804A9718
/* 804A968C  2C 04 00 01 */	cmpwi r4, 1
/* 804A9690  40 82 00 88 */	bne lbl_804A9718
/* 804A9694  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 804A9698  80 03 00 0C */	lwz r0, 0xc(r3)
/* 804A969C  1F A4 00 30 */	mulli r29, r4, 0x30
/* 804A96A0  7C 60 EA 14 */	add r3, r0, r29
/* 804A96A4  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 804A96A8  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 804A96AC  80 84 00 00 */	lwz r4, 0(r4)
/* 804A96B0  4B E9 CE 01 */	bl PSMTXCopy
/* 804A96B4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804A96B8  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804A96BC  80 63 00 00 */	lwz r3, 0(r3)
/* 804A96C0  A8 1C 0F F2 */	lha r0, 0xff2(r28)
/* 804A96C4  7C 00 00 D0 */	neg r0, r0
/* 804A96C8  7C 04 07 34 */	extsh r4, r0
/* 804A96CC  4B B6 2D 69 */	bl mDoMtx_YrotM__FPA4_fs
/* 804A96D0  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 804A96D4  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 804A96D8  C0 7F 00 28 */	lfs f3, 0x28(r31)
/* 804A96DC  38 60 00 01 */	li r3, 1
/* 804A96E0  4B DC 77 C5 */	bl MtxScale__FfffUc
/* 804A96E4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804A96E8  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804A96EC  80 63 00 00 */	lwz r3, 0(r3)
/* 804A96F0  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 804A96F4  80 04 00 0C */	lwz r0, 0xc(r4)
/* 804A96F8  7C 80 EA 14 */	add r4, r0, r29
/* 804A96FC  4B E9 CD B5 */	bl PSMTXCopy
/* 804A9700  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804A9704  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804A9708  80 63 00 00 */	lwz r3, 0(r3)
/* 804A970C  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 804A9710  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 804A9714  4B E9 CD 9D */	bl PSMTXCopy
lbl_804A9718:
/* 804A9718  38 60 00 01 */	li r3, 1
/* 804A971C  39 61 00 20 */	addi r11, r1, 0x20
/* 804A9720  4B EB 8B 05 */	bl _restgpr_28
/* 804A9724  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804A9728  7C 08 03 A6 */	mtlr r0
/* 804A972C  38 21 00 20 */	addi r1, r1, 0x20
/* 804A9730  4E 80 00 20 */	blr 
