lbl_8052AFA0:
/* 8052AFA0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8052AFA4  7C 08 02 A6 */	mflr r0
/* 8052AFA8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8052AFAC  39 61 00 20 */	addi r11, r1, 0x20
/* 8052AFB0  4B E3 72 2D */	bl _savegpr_29
/* 8052AFB4  2C 04 00 00 */	cmpwi r4, 0
/* 8052AFB8  40 82 00 9C */	bne lbl_8052B054
/* 8052AFBC  A0 83 00 14 */	lhz r4, 0x14(r3)
/* 8052AFC0  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 8052AFC4  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 8052AFC8  83 E3 00 38 */	lwz r31, 0x38(r3)
/* 8052AFCC  83 BF 00 14 */	lwz r29, 0x14(r31)
/* 8052AFD0  28 1D 00 00 */	cmplwi r29, 0
/* 8052AFD4  41 82 00 80 */	beq lbl_8052B054
/* 8052AFD8  2C 04 00 01 */	cmpwi r4, 1
/* 8052AFDC  40 82 00 78 */	bne lbl_8052B054
/* 8052AFE0  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 8052AFE4  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8052AFE8  1F C4 00 30 */	mulli r30, r4, 0x30
/* 8052AFEC  7C 60 F2 14 */	add r3, r0, r30
/* 8052AFF0  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 8052AFF4  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 8052AFF8  80 84 00 00 */	lwz r4, 0(r4)
/* 8052AFFC  4B E1 B4 B5 */	bl PSMTXCopy
/* 8052B000  3C 60 80 53 */	lis r3, lit_3679@ha /* 0x80536168@ha */
/* 8052B004  C0 23 61 68 */	lfs f1, lit_3679@l(r3)  /* 0x80536168@l */
/* 8052B008  C0 1D 07 4C */	lfs f0, 0x74c(r29)
/* 8052B00C  EC 41 00 2A */	fadds f2, f1, f0
/* 8052B010  EC 21 10 24 */	fdivs f1, f1, f2
/* 8052B014  FC 60 10 90 */	fmr f3, f2
/* 8052B018  38 60 00 01 */	li r3, 1
/* 8052B01C  4B D4 5E 89 */	bl MtxScale__FfffUc
/* 8052B020  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8052B024  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8052B028  80 63 00 00 */	lwz r3, 0(r3)
/* 8052B02C  80 9F 00 84 */	lwz r4, 0x84(r31)
/* 8052B030  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8052B034  7C 80 F2 14 */	add r4, r0, r30
/* 8052B038  4B E1 B4 79 */	bl PSMTXCopy
/* 8052B03C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8052B040  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8052B044  80 63 00 00 */	lwz r3, 0(r3)
/* 8052B048  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 8052B04C  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 8052B050  4B E1 B4 61 */	bl PSMTXCopy
lbl_8052B054:
/* 8052B054  38 60 00 01 */	li r3, 1
/* 8052B058  39 61 00 20 */	addi r11, r1, 0x20
/* 8052B05C  4B E3 71 CD */	bl _restgpr_29
/* 8052B060  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8052B064  7C 08 03 A6 */	mtlr r0
/* 8052B068  38 21 00 20 */	addi r1, r1, 0x20
/* 8052B06C  4E 80 00 20 */	blr 
