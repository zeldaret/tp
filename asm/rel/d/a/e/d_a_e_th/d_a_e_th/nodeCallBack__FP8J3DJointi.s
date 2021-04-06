lbl_807B0550:
/* 807B0550  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 807B0554  7C 08 02 A6 */	mflr r0
/* 807B0558  90 01 00 24 */	stw r0, 0x24(r1)
/* 807B055C  39 61 00 20 */	addi r11, r1, 0x20
/* 807B0560  4B BB 1C 7D */	bl _savegpr_29
/* 807B0564  2C 04 00 00 */	cmpwi r4, 0
/* 807B0568  40 82 00 AC */	bne lbl_807B0614
/* 807B056C  A0 83 00 14 */	lhz r4, 0x14(r3)
/* 807B0570  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 807B0574  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 807B0578  83 E3 00 38 */	lwz r31, 0x38(r3)
/* 807B057C  83 BF 00 14 */	lwz r29, 0x14(r31)
/* 807B0580  28 1D 00 00 */	cmplwi r29, 0
/* 807B0584  41 82 00 90 */	beq lbl_807B0614
/* 807B0588  2C 04 00 03 */	cmpwi r4, 3
/* 807B058C  41 82 00 0C */	beq lbl_807B0598
/* 807B0590  2C 04 00 04 */	cmpwi r4, 4
/* 807B0594  40 82 00 80 */	bne lbl_807B0614
lbl_807B0598:
/* 807B0598  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 807B059C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 807B05A0  1F C4 00 30 */	mulli r30, r4, 0x30
/* 807B05A4  7C 60 F2 14 */	add r3, r0, r30
/* 807B05A8  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 807B05AC  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 807B05B0  80 84 00 00 */	lwz r4, 0(r4)
/* 807B05B4  4B B9 5E FD */	bl PSMTXCopy
/* 807B05B8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807B05BC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807B05C0  80 63 00 00 */	lwz r3, 0(r3)
/* 807B05C4  A8 9D 06 E6 */	lha r4, 0x6e6(r29)
/* 807B05C8  4B 85 BE 6D */	bl mDoMtx_YrotM__FPA4_fs
/* 807B05CC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807B05D0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807B05D4  80 63 00 00 */	lwz r3, 0(r3)
/* 807B05D8  A8 9D 06 E8 */	lha r4, 0x6e8(r29)
/* 807B05DC  4B 85 BE F1 */	bl mDoMtx_ZrotM__FPA4_fs
/* 807B05E0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807B05E4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807B05E8  80 63 00 00 */	lwz r3, 0(r3)
/* 807B05EC  80 9F 00 84 */	lwz r4, 0x84(r31)
/* 807B05F0  80 04 00 0C */	lwz r0, 0xc(r4)
/* 807B05F4  7C 80 F2 14 */	add r4, r0, r30
/* 807B05F8  4B B9 5E B9 */	bl PSMTXCopy
/* 807B05FC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807B0600  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807B0604  80 63 00 00 */	lwz r3, 0(r3)
/* 807B0608  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 807B060C  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 807B0610  4B B9 5E A1 */	bl PSMTXCopy
lbl_807B0614:
/* 807B0614  38 60 00 01 */	li r3, 1
/* 807B0618  39 61 00 20 */	addi r11, r1, 0x20
/* 807B061C  4B BB 1C 0D */	bl _restgpr_29
/* 807B0620  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807B0624  7C 08 03 A6 */	mtlr r0
/* 807B0628  38 21 00 20 */	addi r1, r1, 0x20
/* 807B062C  4E 80 00 20 */	blr 
