lbl_80D5A870:
/* 80D5A870  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5A874  7C 08 02 A6 */	mflr r0
/* 80D5A878  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5A87C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D5A880  93 C1 00 08 */	stw r30, 8(r1)
/* 80D5A884  7C 7E 1B 78 */	mr r30, r3
/* 80D5A888  4B FF FF 71 */	bl initBaseMtx__16daTagLightBall_cFv
/* 80D5A88C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80D5A890  54 1F 06 3E */	clrlwi r31, r0, 0x18
/* 80D5A894  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80D5A898  2C 00 00 07 */	cmpwi r0, 7
/* 80D5A89C  40 82 00 3C */	bne lbl_80D5A8D8
/* 80D5A8A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D5A8A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D5A8A8  38 80 00 46 */	li r4, 0x46
/* 80D5A8AC  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80D5A8B0  7C 05 07 74 */	extsb r5, r0
/* 80D5A8B4  4B 2D AA AC */	b isSwitch__10dSv_info_cCFii
/* 80D5A8B8  2C 03 00 00 */	cmpwi r3, 0
/* 80D5A8BC  40 82 00 1C */	bne lbl_80D5A8D8
/* 80D5A8C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D5A8C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D5A8C8  7F E4 FB 78 */	mr r4, r31
/* 80D5A8CC  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80D5A8D0  7C 05 07 74 */	extsb r5, r0
/* 80D5A8D4  4B 2D A9 DC */	b offSwitch__10dSv_info_cFii
lbl_80D5A8D8:
/* 80D5A8D8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80D5A8DC  D0 1E 05 68 */	stfs f0, 0x568(r30)
/* 80D5A8E0  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80D5A8E4  D0 1E 05 6C */	stfs f0, 0x56c(r30)
/* 80D5A8E8  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80D5A8EC  D0 1E 05 70 */	stfs f0, 0x570(r30)
/* 80D5A8F0  3C 60 80 D6 */	lis r3, lit_3682@ha
/* 80D5A8F4  C0 23 AC 78 */	lfs f1, lit_3682@l(r3)
/* 80D5A8F8  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 80D5A8FC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80D5A900  D0 1E 05 74 */	stfs f0, 0x574(r30)
/* 80D5A904  28 1F 00 FF */	cmplwi r31, 0xff
/* 80D5A908  41 82 00 78 */	beq lbl_80D5A980
/* 80D5A90C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80D5A910  54 00 C7 3E */	rlwinm r0, r0, 0x18, 0x1c, 0x1f
/* 80D5A914  28 00 00 0F */	cmplwi r0, 0xf
/* 80D5A918  40 82 00 38 */	bne lbl_80D5A950
/* 80D5A91C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D5A920  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D5A924  7F E4 FB 78 */	mr r4, r31
/* 80D5A928  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80D5A92C  7C 05 07 74 */	extsb r5, r0
/* 80D5A930  4B 2D AA 30 */	b isSwitch__10dSv_info_cCFii
/* 80D5A934  2C 03 00 00 */	cmpwi r3, 0
/* 80D5A938  41 82 00 48 */	beq lbl_80D5A980
/* 80D5A93C  38 7E 05 68 */	addi r3, r30, 0x568
/* 80D5A940  4B 44 CE D4 */	b dKy_dalkmist_inf_set__FP18DALKMIST_INFLUENCE
/* 80D5A944  38 00 00 01 */	li r0, 1
/* 80D5A948  98 1E 05 7D */	stb r0, 0x57d(r30)
/* 80D5A94C  48 00 00 34 */	b lbl_80D5A980
lbl_80D5A950:
/* 80D5A950  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D5A954  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D5A958  7F E4 FB 78 */	mr r4, r31
/* 80D5A95C  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80D5A960  7C 05 07 74 */	extsb r5, r0
/* 80D5A964  4B 2D A9 FC */	b isSwitch__10dSv_info_cCFii
/* 80D5A968  2C 03 00 00 */	cmpwi r3, 0
/* 80D5A96C  40 82 00 14 */	bne lbl_80D5A980
/* 80D5A970  38 7E 05 68 */	addi r3, r30, 0x568
/* 80D5A974  4B 44 CE A0 */	b dKy_dalkmist_inf_set__FP18DALKMIST_INFLUENCE
/* 80D5A978  38 00 00 01 */	li r0, 1
/* 80D5A97C  98 1E 05 7D */	stb r0, 0x57d(r30)
lbl_80D5A980:
/* 80D5A980  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D5A984  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D5A988  7F E4 FB 78 */	mr r4, r31
/* 80D5A98C  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80D5A990  7C 05 07 74 */	extsb r5, r0
/* 80D5A994  4B 2D A9 CC */	b isSwitch__10dSv_info_cCFii
/* 80D5A998  98 7E 05 7C */	stb r3, 0x57c(r30)
/* 80D5A99C  38 60 00 01 */	li r3, 1
/* 80D5A9A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D5A9A4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D5A9A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5A9AC  7C 08 03 A6 */	mtlr r0
/* 80D5A9B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5A9B4  4E 80 00 20 */	blr 
