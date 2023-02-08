lbl_8010F6F4:
/* 8010F6F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8010F6F8  7C 08 02 A6 */	mflr r0
/* 8010F6FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8010F700  39 61 00 20 */	addi r11, r1, 0x20
/* 8010F704  48 25 2A D9 */	bl _savegpr_29
/* 8010F708  7C 7E 1B 78 */	mr r30, r3
/* 8010F70C  7C 9F 23 78 */	mr r31, r4
/* 8010F710  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8010F714  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8010F718  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8010F71C  7F C4 F3 78 */	mr r4, r30
/* 8010F720  38 A0 00 00 */	li r5, 0
/* 8010F724  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 8010F728  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 8010F72C  4B F3 3A 41 */	bl compulsory__14dEvt_control_cFPvPCcUs
/* 8010F730  2C 03 00 00 */	cmpwi r3, 0
/* 8010F734  40 82 00 0C */	bne lbl_8010F740
/* 8010F738  38 60 00 00 */	li r3, 0
/* 8010F73C  48 00 01 90 */	b lbl_8010F8CC
lbl_8010F740:
/* 8010F740  38 00 00 05 */	li r0, 5
/* 8010F744  B0 1E 06 04 */	sth r0, 0x604(r30)
/* 8010F748  7F C3 F3 78 */	mr r3, r30
/* 8010F74C  38 80 00 B4 */	li r4, 0xb4
/* 8010F750  4B FB 28 1D */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8010F754  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8010F758  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 8010F75C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8010F760  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 8010F764  38 00 00 04 */	li r0, 4
/* 8010F768  98 1E 2F 98 */	stb r0, 0x2f98(r30)
/* 8010F76C  7F C3 F3 78 */	mr r3, r30
/* 8010F770  38 80 01 04 */	li r4, 0x104
/* 8010F774  3C A0 80 39 */	lis r5, m__20daAlinkHIO_bottle_c0@ha /* 0x8038E90C@ha */
/* 8010F778  38 A5 E9 0C */	addi r5, r5, m__20daAlinkHIO_bottle_c0@l /* 0x8038E90C@l */
/* 8010F77C  38 A5 00 28 */	addi r5, r5, 0x28
/* 8010F780  4B F9 D9 75 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 8010F784  7F C3 F3 78 */	mr r3, r30
/* 8010F788  4B FB 00 CD */	bl keepItemData__9daAlink_cFv
/* 8010F78C  7F C3 F3 78 */	mr r3, r30
/* 8010F790  7F E4 FB 78 */	mr r4, r31
/* 8010F794  4B FF EE 45 */	bl setBottleModel__9daAlink_cFUs
/* 8010F798  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8010F79C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8010F7A0  80 03 5F 1C */	lwz r0, 0x5f1c(r3)
/* 8010F7A4  60 00 40 00 */	ori r0, r0, 0x4000
/* 8010F7A8  90 03 5F 1C */	stw r0, 0x5f1c(r3)
/* 8010F7AC  38 00 00 00 */	li r0, 0
/* 8010F7B0  B0 1E 30 0A */	sth r0, 0x300a(r30)
/* 8010F7B4  38 00 FF FF */	li r0, -1
/* 8010F7B8  90 1E 32 CC */	stw r0, 0x32cc(r30)
/* 8010F7BC  38 00 00 01 */	li r0, 1
/* 8010F7C0  B0 1E 30 08 */	sth r0, 0x3008(r30)
/* 8010F7C4  A0 1E 2F DC */	lhz r0, 0x2fdc(r30)
/* 8010F7C8  28 00 00 6C */	cmplwi r0, 0x6c
/* 8010F7CC  40 82 00 10 */	bne lbl_8010F7DC
/* 8010F7D0  38 00 00 03 */	li r0, 3
/* 8010F7D4  90 1E 31 94 */	stw r0, 0x3194(r30)
/* 8010F7D8  48 00 00 50 */	b lbl_8010F828
lbl_8010F7DC:
/* 8010F7DC  38 00 00 02 */	li r0, 2
/* 8010F7E0  90 1E 31 94 */	stw r0, 0x3194(r30)
/* 8010F7E4  A0 1E 2F DC */	lhz r0, 0x2fdc(r30)
/* 8010F7E8  28 00 00 74 */	cmplwi r0, 0x74
/* 8010F7EC  40 82 00 3C */	bne lbl_8010F828
/* 8010F7F0  38 60 01 01 */	li r3, 0x101
/* 8010F7F4  38 80 00 02 */	li r4, 2
/* 8010F7F8  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8010F7FC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8010F800  7C 06 07 74 */	extsb r6, r0
/* 8010F804  38 E0 00 00 */	li r7, 0
/* 8010F808  39 00 00 00 */	li r8, 0
/* 8010F80C  39 20 FF FF */	li r9, -1
/* 8010F810  4B F0 A5 89 */	bl fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 8010F814  90 7E 32 CC */	stw r3, 0x32cc(r30)
/* 8010F818  38 00 00 00 */	li r0, 0
/* 8010F81C  B0 1E 30 08 */	sth r0, 0x3008(r30)
/* 8010F820  38 00 00 01 */	li r0, 1
/* 8010F824  B0 1E 30 0A */	sth r0, 0x300a(r30)
lbl_8010F828:
/* 8010F828  38 00 00 00 */	li r0, 0
/* 8010F82C  B0 1E 30 0E */	sth r0, 0x300e(r30)
/* 8010F830  28 1E 00 00 */	cmplwi r30, 0
/* 8010F834  41 82 00 0C */	beq lbl_8010F840
/* 8010F838  83 BE 00 04 */	lwz r29, 4(r30)
/* 8010F83C  48 00 00 08 */	b lbl_8010F844
lbl_8010F840:
/* 8010F840  3B A0 FF FF */	li r29, -1
lbl_8010F844:
/* 8010F844  48 07 1D FD */	bl dCam_getBody__Fv
/* 8010F848  38 80 00 12 */	li r4, 0x12
/* 8010F84C  7F A5 EB 78 */	mr r5, r29
/* 8010F850  3C C0 80 39 */	lis r6, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 8010F854  38 C6 20 94 */	addi r6, r6, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 8010F858  38 C6 00 43 */	addi r6, r6, 0x43
/* 8010F85C  38 E0 00 01 */	li r7, 1
/* 8010F860  39 1E 31 94 */	addi r8, r30, 0x3194
/* 8010F864  39 20 00 00 */	li r9, 0
/* 8010F868  4C C6 31 82 */	crclr 6
/* 8010F86C  4B F7 92 11 */	bl StartEventCamera__9dCamera_cFiie
/* 8010F870  38 00 00 00 */	li r0, 0
/* 8010F874  B0 1E 30 0C */	sth r0, 0x300c(r30)
/* 8010F878  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 8010F87C  C0 1E 05 98 */	lfs f0, 0x598(r30)
/* 8010F880  EC 01 00 2A */	fadds f0, f1, f0
/* 8010F884  B0 1E 27 CC */	sth r0, 0x27cc(r30)
/* 8010F888  B0 1E 27 CE */	sth r0, 0x27ce(r30)
/* 8010F88C  D0 1E 27 D0 */	stfs f0, 0x27d0(r30)
/* 8010F890  57 E0 04 3E */	clrlwi r0, r31, 0x10
/* 8010F894  28 00 00 67 */	cmplwi r0, 0x67
/* 8010F898  40 82 00 28 */	bne lbl_8010F8C0
/* 8010F89C  7F C3 F3 78 */	mr r3, r30
/* 8010F8A0  38 80 02 00 */	li r4, 0x200
/* 8010F8A4  38 A0 00 00 */	li r5, 0
/* 8010F8A8  38 C0 00 00 */	li r6, 0
/* 8010F8AC  38 E0 00 00 */	li r7, 0
/* 8010F8B0  39 00 00 00 */	li r8, 0
/* 8010F8B4  C0 22 92 E0 */	lfs f1, lit_6845(r2)
/* 8010F8B8  FC 40 08 90 */	fmr f2, f1
/* 8010F8BC  4B FC 1C 85 */	bl setCylAtParam__9daAlink_cFUl11dCcG_At_SplUcUciff
lbl_8010F8C0:
/* 8010F8C0  38 00 00 00 */	li r0, 0
/* 8010F8C4  B0 1E 30 10 */	sth r0, 0x3010(r30)
/* 8010F8C8  38 60 00 01 */	li r3, 1
lbl_8010F8CC:
/* 8010F8CC  39 61 00 20 */	addi r11, r1, 0x20
/* 8010F8D0  48 25 29 59 */	bl _restgpr_29
/* 8010F8D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8010F8D8  7C 08 03 A6 */	mtlr r0
/* 8010F8DC  38 21 00 20 */	addi r1, r1, 0x20
/* 8010F8E0  4E 80 00 20 */	blr 
