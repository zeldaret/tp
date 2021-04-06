lbl_80C4A84C:
/* 80C4A84C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C4A850  7C 08 02 A6 */	mflr r0
/* 80C4A854  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C4A858  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C4A85C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80C4A860  7C 7E 1B 78 */	mr r30, r3
/* 80C4A864  3C 80 80 C5 */	lis r4, lit_3775@ha /* 0x80C4D490@ha */
/* 80C4A868  3B E4 D4 90 */	addi r31, r4, lit_3775@l /* 0x80C4D490@l */
/* 80C4A86C  88 03 09 81 */	lbz r0, 0x981(r3)
/* 80C4A870  2C 00 00 01 */	cmpwi r0, 1
/* 80C4A874  41 82 00 90 */	beq lbl_80C4A904
/* 80C4A878  40 80 01 40 */	bge lbl_80C4A9B8
/* 80C4A87C  2C 00 00 00 */	cmpwi r0, 0
/* 80C4A880  40 80 00 08 */	bge lbl_80C4A888
/* 80C4A884  48 00 01 34 */	b lbl_80C4A9B8
lbl_80C4A888:
/* 80C4A888  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80C4A88C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80C4A890  3C 60 80 C5 */	lis r3, d_a_obj_kuwagata__stringBase0@ha /* 0x80C4D58C@ha */
/* 80C4A894  38 63 D5 8C */	addi r3, r3, d_a_obj_kuwagata__stringBase0@l /* 0x80C4D58C@l */
/* 80C4A898  38 80 00 07 */	li r4, 7
/* 80C4A89C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C4A8A0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C4A8A4  3C A5 00 02 */	addis r5, r5, 2
/* 80C4A8A8  38 C0 00 80 */	li r6, 0x80
/* 80C4A8AC  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C4A8B0  4B 3F 1A 3D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C4A8B4  7C 64 1B 78 */	mr r4, r3
/* 80C4A8B8  80 7E 0A 58 */	lwz r3, 0xa58(r30)
/* 80C4A8BC  38 A0 00 02 */	li r5, 2
/* 80C4A8C0  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80C4A8C4  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 80C4A8C8  FC 60 10 90 */	fmr f3, f2
/* 80C4A8CC  C0 9F 00 58 */	lfs f4, 0x58(r31)
/* 80C4A8D0  4B 3C 65 A1 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80C4A8D4  88 7E 09 81 */	lbz r3, 0x981(r30)
/* 80C4A8D8  38 03 00 01 */	addi r0, r3, 1
/* 80C4A8DC  98 1E 09 81 */	stb r0, 0x981(r30)
/* 80C4A8E0  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80C4A8E4  4B 61 D0 71 */	bl cM_rndF__Ff
/* 80C4A8E8  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80C4A8EC  EC 00 08 2A */	fadds f0, f0, f1
/* 80C4A8F0  FC 00 00 1E */	fctiwz f0, f0
/* 80C4A8F4  D8 01 00 08 */	stfd f0, 8(r1)
/* 80C4A8F8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80C4A8FC  B0 1E 09 82 */	sth r0, 0x982(r30)
/* 80C4A900  48 00 00 B8 */	b lbl_80C4A9B8
lbl_80C4A904:
/* 80C4A904  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C4A908  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C4A90C  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80C4A910  4B 3C FE D1 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80C4A914  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80C4A918  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C4A91C  40 80 00 9C */	bge lbl_80C4A9B8
/* 80C4A920  A8 7E 09 82 */	lha r3, 0x982(r30)
/* 80C4A924  38 03 FF FF */	addi r0, r3, -1
/* 80C4A928  B0 1E 09 82 */	sth r0, 0x982(r30)
/* 80C4A92C  A8 1E 09 82 */	lha r0, 0x982(r30)
/* 80C4A930  2C 00 00 00 */	cmpwi r0, 0
/* 80C4A934  41 81 00 0C */	bgt lbl_80C4A940
/* 80C4A938  38 00 00 00 */	li r0, 0
/* 80C4A93C  B0 1E 09 82 */	sth r0, 0x982(r30)
lbl_80C4A940:
/* 80C4A940  A8 1E 09 82 */	lha r0, 0x982(r30)
/* 80C4A944  2C 00 00 00 */	cmpwi r0, 0
/* 80C4A948  40 82 00 70 */	bne lbl_80C4A9B8
/* 80C4A94C  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80C4A950  4B 61 D0 05 */	bl cM_rndF__Ff
/* 80C4A954  FC 00 08 1E */	fctiwz f0, f1
/* 80C4A958  D8 01 00 08 */	stfd f0, 8(r1)
/* 80C4A95C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80C4A960  2C 00 00 28 */	cmpwi r0, 0x28
/* 80C4A964  40 80 00 18 */	bge lbl_80C4A97C
/* 80C4A968  38 00 00 02 */	li r0, 2
/* 80C4A96C  98 1E 09 80 */	stb r0, 0x980(r30)
/* 80C4A970  38 00 00 00 */	li r0, 0
/* 80C4A974  98 1E 09 81 */	stb r0, 0x981(r30)
/* 80C4A978  48 00 00 40 */	b lbl_80C4A9B8
lbl_80C4A97C:
/* 80C4A97C  2C 00 00 46 */	cmpwi r0, 0x46
/* 80C4A980  40 80 00 18 */	bge lbl_80C4A998
/* 80C4A984  38 00 00 01 */	li r0, 1
/* 80C4A988  98 1E 09 80 */	stb r0, 0x980(r30)
/* 80C4A98C  38 00 00 00 */	li r0, 0
/* 80C4A990  98 1E 09 81 */	stb r0, 0x981(r30)
/* 80C4A994  48 00 00 24 */	b lbl_80C4A9B8
lbl_80C4A998:
/* 80C4A998  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80C4A99C  4B 61 CF B9 */	bl cM_rndF__Ff
/* 80C4A9A0  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80C4A9A4  EC 00 08 2A */	fadds f0, f0, f1
/* 80C4A9A8  FC 00 00 1E */	fctiwz f0, f0
/* 80C4A9AC  D8 01 00 08 */	stfd f0, 8(r1)
/* 80C4A9B0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80C4A9B4  B0 1E 09 82 */	sth r0, 0x982(r30)
lbl_80C4A9B8:
/* 80C4A9B8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C4A9BC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80C4A9C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C4A9C4  7C 08 03 A6 */	mtlr r0
/* 80C4A9C8  38 21 00 20 */	addi r1, r1, 0x20
/* 80C4A9CC  4E 80 00 20 */	blr 
