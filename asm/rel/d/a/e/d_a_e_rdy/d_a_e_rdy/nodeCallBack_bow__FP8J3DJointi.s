lbl_8076C484:
/* 8076C484  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8076C488  7C 08 02 A6 */	mflr r0
/* 8076C48C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8076C490  39 61 00 20 */	addi r11, r1, 0x20
/* 8076C494  4B BF 5D 49 */	bl _savegpr_29
/* 8076C498  2C 04 00 00 */	cmpwi r4, 0
/* 8076C49C  40 82 00 94 */	bne lbl_8076C530
/* 8076C4A0  A0 83 00 14 */	lhz r4, 0x14(r3)
/* 8076C4A4  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 8076C4A8  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 8076C4AC  83 E3 00 38 */	lwz r31, 0x38(r3)
/* 8076C4B0  83 BF 00 14 */	lwz r29, 0x14(r31)
/* 8076C4B4  28 1D 00 00 */	cmplwi r29, 0
/* 8076C4B8  41 82 00 78 */	beq lbl_8076C530
/* 8076C4BC  A8 1D 0A 78 */	lha r0, 0xa78(r29)
/* 8076C4C0  2C 00 00 00 */	cmpwi r0, 0
/* 8076C4C4  41 82 00 6C */	beq lbl_8076C530
/* 8076C4C8  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 8076C4CC  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8076C4D0  1F C4 00 30 */	mulli r30, r4, 0x30
/* 8076C4D4  7C 60 F2 14 */	add r3, r0, r30
/* 8076C4D8  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 8076C4DC  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 8076C4E0  80 84 00 00 */	lwz r4, 0(r4)
/* 8076C4E4  4B BD 9F CD */	bl PSMTXCopy
/* 8076C4E8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8076C4EC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8076C4F0  80 63 00 00 */	lwz r3, 0(r3)
/* 8076C4F4  A8 9D 0A 78 */	lha r4, 0xa78(r29)
/* 8076C4F8  4B 89 FF D5 */	bl mDoMtx_ZrotM__FPA4_fs
/* 8076C4FC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8076C500  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8076C504  80 63 00 00 */	lwz r3, 0(r3)
/* 8076C508  80 9F 00 84 */	lwz r4, 0x84(r31)
/* 8076C50C  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8076C510  7C 80 F2 14 */	add r4, r0, r30
/* 8076C514  4B BD 9F 9D */	bl PSMTXCopy
/* 8076C518  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8076C51C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8076C520  80 63 00 00 */	lwz r3, 0(r3)
/* 8076C524  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 8076C528  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 8076C52C  4B BD 9F 85 */	bl PSMTXCopy
lbl_8076C530:
/* 8076C530  38 60 00 01 */	li r3, 1
/* 8076C534  39 61 00 20 */	addi r11, r1, 0x20
/* 8076C538  4B BF 5C F1 */	bl _restgpr_29
/* 8076C53C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8076C540  7C 08 03 A6 */	mtlr r0
/* 8076C544  38 21 00 20 */	addi r1, r1, 0x20
/* 8076C548  4E 80 00 20 */	blr 
