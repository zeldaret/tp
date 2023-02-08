lbl_805B364C:
/* 805B364C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805B3650  7C 08 02 A6 */	mflr r0
/* 805B3654  90 01 00 24 */	stw r0, 0x24(r1)
/* 805B3658  39 61 00 20 */	addi r11, r1, 0x20
/* 805B365C  4B DA EB 7D */	bl _savegpr_28
/* 805B3660  2C 04 00 00 */	cmpwi r4, 0
/* 805B3664  40 82 01 24 */	bne lbl_805B3788
/* 805B3668  A3 A3 00 14 */	lhz r29, 0x14(r3)
/* 805B366C  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 805B3670  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 805B3674  83 E3 00 38 */	lwz r31, 0x38(r3)
/* 805B3678  83 9F 00 14 */	lwz r28, 0x14(r31)
/* 805B367C  28 1C 00 00 */	cmplwi r28, 0
/* 805B3680  41 82 01 08 */	beq lbl_805B3788
/* 805B3684  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 805B3688  80 03 00 0C */	lwz r0, 0xc(r3)
/* 805B368C  1F DD 00 30 */	mulli r30, r29, 0x30
/* 805B3690  7C 60 F2 14 */	add r3, r0, r30
/* 805B3694  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 805B3698  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 805B369C  80 84 00 00 */	lwz r4, 0(r4)
/* 805B36A0  4B D9 2E 11 */	bl PSMTXCopy
/* 805B36A4  38 1D FF D5 */	addi r0, r29, -43
/* 805B36A8  28 00 00 02 */	cmplwi r0, 2
/* 805B36AC  40 81 00 0C */	ble lbl_805B36B8
/* 805B36B0  2C 1D 00 2F */	cmpwi r29, 0x2f
/* 805B36B4  40 82 00 18 */	bne lbl_805B36CC
lbl_805B36B8:
/* 805B36B8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805B36BC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805B36C0  80 63 00 00 */	lwz r3, 0(r3)
/* 805B36C4  A8 9C 06 F4 */	lha r4, 0x6f4(r28)
/* 805B36C8  4B A5 8D 6D */	bl mDoMtx_YrotM__FPA4_fs
lbl_805B36CC:
/* 805B36CC  2C 1D 00 00 */	cmpwi r29, 0
/* 805B36D0  40 82 00 44 */	bne lbl_805B3714
/* 805B36D4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805B36D8  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805B36DC  80 63 00 00 */	lwz r3, 0(r3)
/* 805B36E0  38 80 00 00 */	li r4, 0
/* 805B36E4  4B A5 8C B9 */	bl mDoMtx_XrotM__FPA4_fs
/* 805B36E8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805B36EC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805B36F0  80 63 00 00 */	lwz r3, 0(r3)
/* 805B36F4  38 80 00 00 */	li r4, 0
/* 805B36F8  4B A5 8D 3D */	bl mDoMtx_YrotM__FPA4_fs
/* 805B36FC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805B3700  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805B3704  80 63 00 00 */	lwz r3, 0(r3)
/* 805B3708  38 80 00 00 */	li r4, 0
/* 805B370C  4B A5 8D C1 */	bl mDoMtx_ZrotM__FPA4_fs
/* 805B3710  48 00 00 44 */	b lbl_805B3754
lbl_805B3714:
/* 805B3714  40 82 00 40 */	bne lbl_805B3754
/* 805B3718  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805B371C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805B3720  80 63 00 00 */	lwz r3, 0(r3)
/* 805B3724  38 80 00 00 */	li r4, 0
/* 805B3728  4B A5 8C 75 */	bl mDoMtx_XrotM__FPA4_fs
/* 805B372C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805B3730  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805B3734  80 63 00 00 */	lwz r3, 0(r3)
/* 805B3738  38 80 00 00 */	li r4, 0
/* 805B373C  4B A5 8C F9 */	bl mDoMtx_YrotM__FPA4_fs
/* 805B3740  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805B3744  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805B3748  80 63 00 00 */	lwz r3, 0(r3)
/* 805B374C  38 80 00 00 */	li r4, 0
/* 805B3750  4B A5 8D 7D */	bl mDoMtx_ZrotM__FPA4_fs
lbl_805B3754:
/* 805B3754  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805B3758  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805B375C  80 63 00 00 */	lwz r3, 0(r3)
/* 805B3760  80 9F 00 84 */	lwz r4, 0x84(r31)
/* 805B3764  80 04 00 0C */	lwz r0, 0xc(r4)
/* 805B3768  7C 80 F2 14 */	add r4, r0, r30
/* 805B376C  4B D9 2D 45 */	bl PSMTXCopy
/* 805B3770  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805B3774  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805B3778  80 63 00 00 */	lwz r3, 0(r3)
/* 805B377C  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 805B3780  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 805B3784  4B D9 2D 2D */	bl PSMTXCopy
lbl_805B3788:
/* 805B3788  38 60 00 01 */	li r3, 1
/* 805B378C  39 61 00 20 */	addi r11, r1, 0x20
/* 805B3790  4B DA EA 95 */	bl _restgpr_28
/* 805B3794  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805B3798  7C 08 03 A6 */	mtlr r0
/* 805B379C  38 21 00 20 */	addi r1, r1, 0x20
/* 805B37A0  4E 80 00 20 */	blr 
