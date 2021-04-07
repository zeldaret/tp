lbl_801070DC:
/* 801070DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801070E0  7C 08 02 A6 */	mflr r0
/* 801070E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 801070E8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801070EC  7C 7F 1B 78 */	mr r31, r3
/* 801070F0  38 80 00 00 */	li r4, 0
/* 801070F4  4B FF EA 65 */	bl boardCommon__9daAlink_cFi
/* 801070F8  2C 03 00 00 */	cmpwi r3, 0
/* 801070FC  41 82 00 0C */	beq lbl_80107108
/* 80107100  38 60 00 01 */	li r3, 1
/* 80107104  48 00 01 00 */	b lbl_80107204
lbl_80107108:
/* 80107108  A8 1F 30 12 */	lha r0, 0x3012(r31)
/* 8010710C  2C 00 00 00 */	cmpwi r0, 0
/* 80107110  40 82 00 68 */	bne lbl_80107178
/* 80107114  80 7F 20 60 */	lwz r3, 0x2060(r31)
/* 80107118  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 8010711C  C0 02 93 88 */	lfs f0, lit_8782(r2)
/* 80107120  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80107124  40 80 00 DC */	bge lbl_80107200
/* 80107128  38 00 00 01 */	li r0, 1
/* 8010712C  B0 1F 30 12 */	sth r0, 0x3012(r31)
/* 80107130  7F E3 FB 78 */	mr r3, r31
/* 80107134  38 80 00 F7 */	li r4, 0xf7
/* 80107138  C0 22 93 2C */	lfs f1, lit_7624(r2)
/* 8010713C  A8 1F 1F D6 */	lha r0, 0x1fd6(r31)
/* 80107140  C8 42 92 B0 */	lfd f2, lit_6025(r2)
/* 80107144  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80107148  90 01 00 0C */	stw r0, 0xc(r1)
/* 8010714C  3C 00 43 30 */	lis r0, 0x4330
/* 80107150  90 01 00 08 */	stw r0, 8(r1)
/* 80107154  C8 01 00 08 */	lfd f0, 8(r1)
/* 80107158  EC 00 10 28 */	fsubs f0, f0, f2
/* 8010715C  EC 41 00 2A */	fadds f2, f1, f0
/* 80107160  3C A0 80 39 */	lis r5, m__19daAlinkHIO_board_c0@ha /* 0x8038E870@ha */
/* 80107164  38 A5 E8 70 */	addi r5, r5, m__19daAlinkHIO_board_c0@l /* 0x8038E870@l */
/* 80107168  A8 A5 00 14 */	lha r5, 0x14(r5)
/* 8010716C  C0 62 92 BC */	lfs f3, lit_6041(r2)
/* 80107170  4B FA 5E 9D */	bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsf
/* 80107174  48 00 00 8C */	b lbl_80107200
lbl_80107178:
/* 80107178  A8 1F 30 0A */	lha r0, 0x300a(r31)
/* 8010717C  2C 00 00 00 */	cmpwi r0, 0
/* 80107180  40 82 00 34 */	bne lbl_801071B4
/* 80107184  38 7F 1F D0 */	addi r3, r31, 0x1fd0
/* 80107188  C0 22 93 44 */	lfs f1, lit_7977(r2)
/* 8010718C  48 22 12 A1 */	bl checkPass__12J3DFrameCtrlFf
/* 80107190  2C 03 00 00 */	cmpwi r3, 0
/* 80107194  41 82 00 6C */	beq lbl_80107200
/* 80107198  C0 02 93 78 */	lfs f0, lit_8676(r2)
/* 8010719C  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 801071A0  7F E3 FB 78 */	mr r3, r31
/* 801071A4  4B FA D7 2D */	bl setJumpMode__9daAlink_cFv
/* 801071A8  38 00 00 01 */	li r0, 1
/* 801071AC  B0 1F 30 0A */	sth r0, 0x300a(r31)
/* 801071B0  48 00 00 50 */	b lbl_80107200
lbl_801071B4:
/* 801071B4  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 801071B8  A8 9F 30 10 */	lha r4, 0x3010(r31)
/* 801071BC  38 A0 00 05 */	li r5, 5
/* 801071C0  38 C0 1B 58 */	li r6, 0x1b58
/* 801071C4  38 E0 07 D0 */	li r7, 0x7d0
/* 801071C8  48 16 93 79 */	bl cLib_addCalcAngleS__FPsssss
/* 801071CC  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 801071D0  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 801071D4  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 801071D8  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 801071DC  40 82 00 1C */	bne lbl_801071F8
/* 801071E0  7F E3 FB 78 */	mr r3, r31
/* 801071E4  4B FF F5 09 */	bl setBoardLandAnime__9daAlink_cFv
/* 801071E8  7F E3 FB 78 */	mr r3, r31
/* 801071EC  38 80 00 00 */	li r4, 0
/* 801071F0  4B FF F8 49 */	bl procBoardWaitInit__9daAlink_cFP10fopAc_ac_c
/* 801071F4  48 00 00 0C */	b lbl_80107200
lbl_801071F8:
/* 801071F8  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 801071FC  B0 1F 04 DE */	sth r0, 0x4de(r31)
lbl_80107200:
/* 80107200  38 60 00 01 */	li r3, 1
lbl_80107204:
/* 80107204  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80107208  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8010720C  7C 08 03 A6 */	mtlr r0
/* 80107210  38 21 00 20 */	addi r1, r1, 0x20
/* 80107214  4E 80 00 20 */	blr 
