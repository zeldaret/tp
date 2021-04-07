lbl_809BAB04:
/* 809BAB04  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 809BAB08  7C 08 02 A6 */	mflr r0
/* 809BAB0C  90 01 00 44 */	stw r0, 0x44(r1)
/* 809BAB10  39 61 00 40 */	addi r11, r1, 0x40
/* 809BAB14  4B 9A 76 C9 */	bl _savegpr_29
/* 809BAB18  7C 7F 1B 78 */	mr r31, r3
/* 809BAB1C  80 03 0A 98 */	lwz r0, 0xa98(r3)
/* 809BAB20  2C 00 00 10 */	cmpwi r0, 0x10
/* 809BAB24  40 80 00 1C */	bge lbl_809BAB40
/* 809BAB28  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 809BAB2C  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l /* 0x8042861C@l */
/* 809BAB30  1C 00 02 0C */	mulli r0, r0, 0x20c
/* 809BAB34  7C 63 02 14 */	add r3, r3, r0
/* 809BAB38  C0 03 02 08 */	lfs f0, 0x208(r3)
/* 809BAB3C  48 00 00 18 */	b lbl_809BAB54
lbl_809BAB40:
/* 809BAB40  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 809BAB44  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l /* 0x8042861C@l */
/* 809BAB48  1C 00 02 3C */	mulli r0, r0, 0x23c
/* 809BAB4C  7C 63 02 14 */	add r3, r3, r0
/* 809BAB50  C0 03 FF 38 */	lfs f0, -0xc8(r3)
lbl_809BAB54:
/* 809BAB54  D0 1F 08 40 */	stfs f0, 0x840(r31)
/* 809BAB58  80 1F 0A 98 */	lwz r0, 0xa98(r31)
/* 809BAB5C  38 7F 08 10 */	addi r3, r31, 0x810
/* 809BAB60  2C 00 00 10 */	cmpwi r0, 0x10
/* 809BAB64  40 80 00 1C */	bge lbl_809BAB80
/* 809BAB68  3C 80 80 43 */	lis r4, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 809BAB6C  38 84 86 1C */	addi r4, r4, l_Cd2_HIO@l /* 0x8042861C@l */
/* 809BAB70  1C 00 02 0C */	mulli r0, r0, 0x20c
/* 809BAB74  7C 84 02 14 */	add r4, r4, r0
/* 809BAB78  C0 24 02 0C */	lfs f1, 0x20c(r4)
/* 809BAB7C  48 00 00 18 */	b lbl_809BAB94
lbl_809BAB80:
/* 809BAB80  3C 80 80 43 */	lis r4, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 809BAB84  38 84 86 1C */	addi r4, r4, l_Cd2_HIO@l /* 0x8042861C@l */
/* 809BAB88  1C 00 02 3C */	mulli r0, r0, 0x23c
/* 809BAB8C  7C 84 02 14 */	add r4, r4, r0
/* 809BAB90  C0 24 FF 3C */	lfs f1, -0xc4(r4)
lbl_809BAB94:
/* 809BAB94  4B 6B B3 AD */	bl SetWallR__12dBgS_AcchCirFf
/* 809BAB98  88 1F 0A D8 */	lbz r0, 0xad8(r31)
/* 809BAB9C  28 00 00 00 */	cmplwi r0, 0
/* 809BABA0  41 82 00 14 */	beq lbl_809BABB4
/* 809BABA4  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 809BABA8  54 00 01 46 */	rlwinm r0, r0, 0, 5, 3
/* 809BABAC  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 809BABB0  48 00 00 18 */	b lbl_809BABC8
lbl_809BABB4:
/* 809BABB4  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 809BABB8  64 00 08 00 */	oris r0, r0, 0x800
/* 809BABBC  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 809BABC0  38 60 00 01 */	li r3, 1
/* 809BABC4  48 00 01 60 */	b lbl_809BAD24
lbl_809BABC8:
/* 809BABC8  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 809BABCC  C0 1F 05 30 */	lfs f0, 0x530(r31)
/* 809BABD0  EC 01 00 2A */	fadds f0, f1, f0
/* 809BABD4  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 809BABD8  C0 1F 04 FC */	lfs f0, 0x4fc(r31)
/* 809BABDC  C0 3F 05 34 */	lfs f1, 0x534(r31)
/* 809BABE0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 809BABE4  40 80 00 08 */	bge lbl_809BABEC
/* 809BABE8  D0 3F 04 FC */	stfs f1, 0x4fc(r31)
lbl_809BABEC:
/* 809BABEC  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 809BABF0  C0 1F 04 FC */	lfs f0, 0x4fc(r31)
/* 809BABF4  EC 01 00 2A */	fadds f0, f1, f0
/* 809BABF8  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 809BABFC  38 7F 06 38 */	addi r3, r31, 0x638
/* 809BAC00  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809BAC04  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809BAC08  3B A4 0F 38 */	addi r29, r4, 0xf38
/* 809BAC0C  7F A4 EB 78 */	mr r4, r29
/* 809BAC10  4B 6B BE 9D */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 809BAC14  3B C0 00 00 */	li r30, 0
/* 809BAC18  3C 60 80 9C */	lis r3, __vt__8cM3dGPla@ha /* 0x809BB490@ha */
/* 809BAC1C  38 03 B4 90 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x809BB490@l */
/* 809BAC20  90 01 00 24 */	stw r0, 0x24(r1)
/* 809BAC24  7F A3 EB 78 */	mr r3, r29
/* 809BAC28  38 9F 07 28 */	addi r4, r31, 0x728
/* 809BAC2C  38 A1 00 14 */	addi r5, r1, 0x14
/* 809BAC30  4B 6B 9B 15 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 809BAC34  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809BAC38  41 82 00 14 */	beq lbl_809BAC4C
/* 809BAC3C  38 61 00 14 */	addi r3, r1, 0x14
/* 809BAC40  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 809BAC44  4B 66 2F 95 */	bl fopAcM_getPolygonAngle__FPC8cM3dGPlas
/* 809BAC48  7C 7E 1B 78 */	mr r30, r3
lbl_809BAC4C:
/* 809BAC4C  7F C0 07 35 */	extsh. r0, r30
/* 809BAC50  41 82 00 0C */	beq lbl_809BAC5C
/* 809BAC54  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 809BAC58  D0 1F 0A D4 */	stfs f0, 0xad4(r31)
lbl_809BAC5C:
/* 809BAC5C  3B BF 0A D4 */	addi r29, r31, 0xad4
/* 809BAC60  7F A3 EB 78 */	mr r3, r29
/* 809BAC64  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 809BAC68  3C 80 80 9C */	lis r4, lit_4182@ha /* 0x809BB434@ha */
/* 809BAC6C  C0 44 B4 34 */	lfs f2, lit_4182@l(r4)  /* 0x809BB434@l */
/* 809BAC70  3C 80 80 9C */	lis r4, lit_4183@ha /* 0x809BB438@ha */
/* 809BAC74  C0 64 B4 38 */	lfs f3, lit_4183@l(r4)  /* 0x809BB438@l */
/* 809BAC78  4B 8B 4D C5 */	bl cLib_addCalc2__FPffff
/* 809BAC7C  3C 60 80 9C */	lis r3, __vt__8cM3dGPla@ha /* 0x809BB490@ha */
/* 809BAC80  38 03 B4 90 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x809BB490@l */
/* 809BAC84  90 01 00 24 */	stw r0, 0x24(r1)
/* 809BAC88  7F E3 FB 78 */	mr r3, r31
/* 809BAC8C  38 80 FF FF */	li r4, -1
/* 809BAC90  4B 79 E1 99 */	bl animation__10daNpcCd2_cFi
/* 809BAC94  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 809BAC98  C0 3D 00 00 */	lfs f1, 0(r29)
/* 809BAC9C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 809BACA0  D0 01 00 08 */	stfs f0, 8(r1)
/* 809BACA4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 809BACA8  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 809BACAC  38 7F 09 B0 */	addi r3, r31, 0x9b0
/* 809BACB0  38 81 00 08 */	addi r4, r1, 8
/* 809BACB4  4B 8B 45 29 */	bl SetC__8cM3dGCylFRC4cXyz
/* 809BACB8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809BACBC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809BACC0  38 63 23 3C */	addi r3, r3, 0x233c
/* 809BACC4  38 9F 08 8C */	addi r4, r31, 0x88c
/* 809BACC8  4B 8A 9E E1 */	bl Set__4cCcSFP8cCcD_Obj
/* 809BACCC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809BACD0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809BACD4  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 809BACD8  C0 5D 00 00 */	lfs f2, 0(r29)
/* 809BACDC  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 809BACE0  4B 98 BC 09 */	bl PSMTXTrans
/* 809BACE4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809BACE8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809BACEC  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 809BACF0  4B 65 17 45 */	bl mDoMtx_YrotM__FPA4_fs
/* 809BACF4  80 7F 05 8C */	lwz r3, 0x58c(r31)
/* 809BACF8  80 83 00 04 */	lwz r4, 4(r3)
/* 809BACFC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809BAD00  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809BAD04  38 84 00 24 */	addi r4, r4, 0x24
/* 809BAD08  4B 98 B7 A9 */	bl PSMTXCopy
/* 809BAD0C  80 7F 05 8C */	lwz r3, 0x58c(r31)
/* 809BAD10  4B 65 64 DD */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 809BAD14  7F E3 FB 78 */	mr r3, r31
/* 809BAD18  80 9F 0A 98 */	lwz r4, 0xa98(r31)
/* 809BAD1C  4B 79 D7 05 */	bl setAttention__10daNpcCd2_cFi
/* 809BAD20  38 60 00 01 */	li r3, 1
lbl_809BAD24:
/* 809BAD24  39 61 00 40 */	addi r11, r1, 0x40
/* 809BAD28  4B 9A 75 01 */	bl _restgpr_29
/* 809BAD2C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 809BAD30  7C 08 03 A6 */	mtlr r0
/* 809BAD34  38 21 00 40 */	addi r1, r1, 0x40
/* 809BAD38  4E 80 00 20 */	blr 
