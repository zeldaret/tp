lbl_804A97F8:
/* 804A97F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804A97FC  7C 08 02 A6 */	mflr r0
/* 804A9800  90 01 00 24 */	stw r0, 0x24(r1)
/* 804A9804  39 61 00 20 */	addi r11, r1, 0x20
/* 804A9808  4B EB 89 D1 */	bl _savegpr_28
/* 804A980C  2C 04 00 00 */	cmpwi r4, 0
/* 804A9810  40 82 00 C8 */	bne lbl_804A98D8
/* 804A9814  A3 A3 00 14 */	lhz r29, 0x14(r3)
/* 804A9818  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 804A981C  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 804A9820  83 E3 00 38 */	lwz r31, 0x38(r3)
/* 804A9824  83 9F 00 14 */	lwz r28, 0x14(r31)
/* 804A9828  28 1C 00 00 */	cmplwi r28, 0
/* 804A982C  41 82 00 AC */	beq lbl_804A98D8
/* 804A9830  2C 1D 00 01 */	cmpwi r29, 1
/* 804A9834  41 82 00 0C */	beq lbl_804A9840
/* 804A9838  2C 1D 00 03 */	cmpwi r29, 3
/* 804A983C  40 82 00 9C */	bne lbl_804A98D8
lbl_804A9840:
/* 804A9840  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 804A9844  80 03 00 0C */	lwz r0, 0xc(r3)
/* 804A9848  1F DD 00 30 */	mulli r30, r29, 0x30
/* 804A984C  7C 60 F2 14 */	add r3, r0, r30
/* 804A9850  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 804A9854  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 804A9858  80 84 00 00 */	lwz r4, 0(r4)
/* 804A985C  4B E9 CC 55 */	bl PSMTXCopy
/* 804A9860  2C 1D 00 01 */	cmpwi r29, 1
/* 804A9864  40 82 00 24 */	bne lbl_804A9888
/* 804A9868  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804A986C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804A9870  80 63 00 00 */	lwz r3, 0(r3)
/* 804A9874  A8 1C 07 5C */	lha r0, 0x75c(r28)
/* 804A9878  7C 00 00 D0 */	neg r0, r0
/* 804A987C  7C 04 07 34 */	extsh r4, r0
/* 804A9880  4B B6 2B 1D */	bl mDoMtx_XrotM__FPA4_fs
/* 804A9884  48 00 00 20 */	b lbl_804A98A4
lbl_804A9888:
/* 804A9888  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804A988C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804A9890  80 63 00 00 */	lwz r3, 0(r3)
/* 804A9894  A8 1C 07 5C */	lha r0, 0x75c(r28)
/* 804A9898  54 00 08 3C */	slwi r0, r0, 1
/* 804A989C  7C 04 07 34 */	extsh r4, r0
/* 804A98A0  4B B6 2A FD */	bl mDoMtx_XrotM__FPA4_fs
lbl_804A98A4:
/* 804A98A4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804A98A8  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804A98AC  80 63 00 00 */	lwz r3, 0(r3)
/* 804A98B0  80 9F 00 84 */	lwz r4, 0x84(r31)
/* 804A98B4  80 04 00 0C */	lwz r0, 0xc(r4)
/* 804A98B8  7C 80 F2 14 */	add r4, r0, r30
/* 804A98BC  4B E9 CB F5 */	bl PSMTXCopy
/* 804A98C0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804A98C4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804A98C8  80 63 00 00 */	lwz r3, 0(r3)
/* 804A98CC  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 804A98D0  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 804A98D4  4B E9 CB DD */	bl PSMTXCopy
lbl_804A98D8:
/* 804A98D8  38 60 00 01 */	li r3, 1
/* 804A98DC  39 61 00 20 */	addi r11, r1, 0x20
/* 804A98E0  4B EB 89 45 */	bl _restgpr_28
/* 804A98E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804A98E8  7C 08 03 A6 */	mtlr r0
/* 804A98EC  38 21 00 20 */	addi r1, r1, 0x20
/* 804A98F0  4E 80 00 20 */	blr 
