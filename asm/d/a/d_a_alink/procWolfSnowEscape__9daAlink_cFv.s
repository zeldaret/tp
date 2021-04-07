lbl_8011D8F8:
/* 8011D8F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8011D8FC  7C 08 02 A6 */	mflr r0
/* 8011D900  90 01 00 24 */	stw r0, 0x24(r1)
/* 8011D904  39 61 00 20 */	addi r11, r1, 0x20
/* 8011D908  48 24 48 D5 */	bl _savegpr_29
/* 8011D90C  7C 7E 1B 78 */	mr r30, r3
/* 8011D910  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 8011D914  A8 03 30 0E */	lha r0, 0x300e(r3)
/* 8011D918  2C 00 00 00 */	cmpwi r0, 0
/* 8011D91C  41 82 00 20 */	beq lbl_8011D93C
/* 8011D920  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8011D924  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8011D928  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8011D92C  80 9E 31 84 */	lwz r4, 0x3184(r30)
/* 8011D930  4B F2 A8 4D */	bl cutEnd__16dEvent_manager_cFi
/* 8011D934  38 60 00 01 */	li r3, 1
/* 8011D938  48 00 01 B4 */	b lbl_8011DAEC
lbl_8011D93C:
/* 8011D93C  88 1E 2F 99 */	lbz r0, 0x2f99(r30)
/* 8011D940  28 00 00 0D */	cmplwi r0, 0xd
/* 8011D944  41 82 00 0C */	beq lbl_8011D950
/* 8011D948  38 00 00 05 */	li r0, 5
/* 8011D94C  98 1E 2F 99 */	stb r0, 0x2f99(r30)
lbl_8011D950:
/* 8011D950  C0 A2 93 14 */	lfs f5, lit_7307(r2)
/* 8011D954  C0 82 92 98 */	lfs f4, lit_5943(r2)
/* 8011D958  C0 7E 34 78 */	lfs f3, 0x3478(r30)
/* 8011D95C  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 8011D960  A8 1F 00 06 */	lha r0, 6(r31)
/* 8011D964  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 8011D968  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8011D96C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8011D970  3C 00 43 30 */	lis r0, 0x4330
/* 8011D974  90 01 00 08 */	stw r0, 8(r1)
/* 8011D978  C8 01 00 08 */	lfd f0, 8(r1)
/* 8011D97C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8011D980  EC 02 00 28 */	fsubs f0, f2, f0
/* 8011D984  EC 03 00 32 */	fmuls f0, f3, f0
/* 8011D988  EC 04 00 28 */	fsubs f0, f4, f0
/* 8011D98C  EC 25 00 32 */	fmuls f1, f5, f0
/* 8011D990  C0 02 92 BC */	lfs f0, lit_6041(r2)
/* 8011D994  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8011D998  40 80 00 08 */	bge lbl_8011D9A0
/* 8011D99C  FC 20 00 90 */	fmr f1, f0
lbl_8011D9A0:
/* 8011D9A0  3C 60 80 42 */	lis r3, l_wolfBaseAnime@ha /* 0x8042561C@ha */
/* 8011D9A4  3B A3 56 1C */	addi r29, r3, l_wolfBaseAnime@l /* 0x8042561C@l */
/* 8011D9A8  C0 1D 00 00 */	lfs f0, 0(r29)
/* 8011D9AC  EC 00 00 72 */	fmuls f0, f0, f1
/* 8011D9B0  D0 1E 35 88 */	stfs f0, 0x3588(r30)
/* 8011D9B4  C0 1D 00 08 */	lfs f0, 8(r29)
/* 8011D9B8  EC 00 00 72 */	fmuls f0, f0, f1
/* 8011D9BC  D0 1E 35 90 */	stfs f0, 0x3590(r30)
/* 8011D9C0  7F E3 FB 78 */	mr r3, r31
/* 8011D9C4  48 04 0B 09 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8011D9C8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8011D9CC  41 82 01 00 */	beq lbl_8011DACC
/* 8011D9D0  7F C3 F3 78 */	mr r3, r30
/* 8011D9D4  38 80 00 00 */	li r4, 0
/* 8011D9D8  38 A0 80 00 */	li r5, -32768
/* 8011D9DC  38 C0 00 00 */	li r6, 0
/* 8011D9E0  4B F9 01 99 */	bl setOldRootQuaternion__9daAlink_cFsss
/* 8011D9E4  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 8011D9E8  3C 63 00 01 */	addis r3, r3, 1
/* 8011D9EC  38 03 80 00 */	addi r0, r3, -32768
/* 8011D9F0  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 8011D9F4  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8011D9F8  B0 1E 2F E6 */	sth r0, 0x2fe6(r30)
/* 8011D9FC  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8011DA00  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 8011DA04  A8 1E 30 0C */	lha r0, 0x300c(r30)
/* 8011DA08  2C 00 00 00 */	cmpwi r0, 0
/* 8011DA0C  40 82 00 90 */	bne lbl_8011DA9C
/* 8011DA10  38 00 00 01 */	li r0, 1
/* 8011DA14  B0 1E 30 0C */	sth r0, 0x300c(r30)
/* 8011DA18  7F C3 F3 78 */	mr r3, r30
/* 8011DA1C  38 80 00 20 */	li r4, 0x20
/* 8011DA20  3C A0 80 39 */	lis r5, m__21daAlinkHIO_wlSlide_c0@ha /* 0x8038F3F0@ha */
/* 8011DA24  38 A5 F3 F0 */	addi r5, r5, m__21daAlinkHIO_wlSlide_c0@l /* 0x8038F3F0@l */
/* 8011DA28  48 00 BE 21 */	bl setSingleAnimeWolfParam__9daAlink_cFQ29daAlink_c12daAlink_WANMPC16daAlinkHIO_anm_c
/* 8011DA2C  3C 60 80 42 */	lis r3, l_wolfBaseAnime@ha /* 0x8042561C@ha */
/* 8011DA30  C4 03 56 1C */	lfsu f0, l_wolfBaseAnime@l(r3)  /* 0x8042561C@l */
/* 8011DA34  D0 1E 35 88 */	stfs f0, 0x3588(r30)
/* 8011DA38  C0 03 00 04 */	lfs f0, 4(r3)
/* 8011DA3C  D0 1E 35 8C */	stfs f0, 0x358c(r30)
/* 8011DA40  C0 1D 00 08 */	lfs f0, 8(r29)
/* 8011DA44  D0 1E 35 90 */	stfs f0, 0x3590(r30)
/* 8011DA48  C0 42 92 B8 */	lfs f2, lit_6040(r2)
/* 8011DA4C  A8 1F 00 08 */	lha r0, 8(r31)
/* 8011DA50  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 8011DA54  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8011DA58  90 01 00 0C */	stw r0, 0xc(r1)
/* 8011DA5C  3C 00 43 30 */	lis r0, 0x4330
/* 8011DA60  90 01 00 08 */	stw r0, 8(r1)
/* 8011DA64  C8 01 00 08 */	lfd f0, 8(r1)
/* 8011DA68  EC 00 08 28 */	fsubs f0, f0, f1
/* 8011DA6C  EC 02 00 24 */	fdivs f0, f2, f0
/* 8011DA70  D0 1E 34 78 */	stfs f0, 0x3478(r30)
/* 8011DA74  38 00 00 0D */	li r0, 0xd
/* 8011DA78  98 1E 2F 99 */	stb r0, 0x2f99(r30)
/* 8011DA7C  7F C3 F3 78 */	mr r3, r30
/* 8011DA80  3C 80 00 01 */	lis r4, 0x0001 /* 0x000100B0@ha */
/* 8011DA84  38 84 00 B0 */	addi r4, r4, 0x00B0 /* 0x000100B0@l */
/* 8011DA88  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 8011DA8C  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 8011DA90  7D 89 03 A6 */	mtctr r12
/* 8011DA94  4E 80 04 21 */	bctrl 
/* 8011DA98  48 00 00 50 */	b lbl_8011DAE8
lbl_8011DA9C:
/* 8011DA9C  7F C3 F3 78 */	mr r3, r30
/* 8011DAA0  38 80 00 00 */	li r4, 0
/* 8011DAA4  3C A0 80 39 */	lis r5, m__20daAlinkHIO_wlMove_c0@ha /* 0x8038EE28@ha */
/* 8011DAA8  38 A5 EE 28 */	addi r5, r5, m__20daAlinkHIO_wlMove_c0@l /* 0x8038EE28@l */
/* 8011DAAC  C0 25 00 70 */	lfs f1, 0x70(r5)
/* 8011DAB0  C0 42 92 C4 */	lfs f2, lit_6109(r2)
/* 8011DAB4  48 00 BC 25 */	bl setSingleAnimeWolfBaseSpeed__9daAlink_cFQ29daAlink_c12daAlink_WANMff
/* 8011DAB8  38 00 00 30 */	li r0, 0x30
/* 8011DABC  98 1E 2F 99 */	stb r0, 0x2f99(r30)
/* 8011DAC0  38 00 00 01 */	li r0, 1
/* 8011DAC4  B0 1E 30 0E */	sth r0, 0x300e(r30)
/* 8011DAC8  48 00 00 20 */	b lbl_8011DAE8
lbl_8011DACC:
/* 8011DACC  7F E3 FB 78 */	mr r3, r31
/* 8011DAD0  C0 22 93 1C */	lfs f1, lit_7448(r2)
/* 8011DAD4  48 20 A9 59 */	bl checkPass__12J3DFrameCtrlFf
/* 8011DAD8  2C 03 00 00 */	cmpwi r3, 0
/* 8011DADC  41 82 00 0C */	beq lbl_8011DAE8
/* 8011DAE0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8011DAE4  D0 1E 33 98 */	stfs f0, 0x3398(r30)
lbl_8011DAE8:
/* 8011DAE8  38 60 00 01 */	li r3, 1
lbl_8011DAEC:
/* 8011DAEC  39 61 00 20 */	addi r11, r1, 0x20
/* 8011DAF0  48 24 47 39 */	bl _restgpr_29
/* 8011DAF4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8011DAF8  7C 08 03 A6 */	mtlr r0
/* 8011DAFC  38 21 00 20 */	addi r1, r1, 0x20
/* 8011DB00  4E 80 00 20 */	blr 
