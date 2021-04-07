lbl_802077EC:
/* 802077EC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802077F0  7C 08 02 A6 */	mflr r0
/* 802077F4  90 01 00 44 */	stw r0, 0x44(r1)
/* 802077F8  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 802077FC  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80207800  39 61 00 30 */	addi r11, r1, 0x30
/* 80207804  48 15 A9 D9 */	bl _savegpr_29
/* 80207808  7C 7F 1B 78 */	mr r31, r3
/* 8020780C  80 63 00 30 */	lwz r3, 0x30(r3)
/* 80207810  48 04 E0 19 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80207814  C0 02 AD 4C */	lfs f0, lit_4147(r2)
/* 80207818  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8020781C  41 82 00 B4 */	beq lbl_802078D0
/* 80207820  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80207824  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80207828  88 03 5E 4C */	lbz r0, 0x5e4c(r3)
/* 8020782C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80207830  41 82 00 20 */	beq lbl_80207850
/* 80207834  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 80207838  FC 20 00 90 */	fmr f1, f0
/* 8020783C  48 04 DF 95 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80207840  38 00 00 05 */	li r0, 5
/* 80207844  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 80207848  B0 03 00 16 */	sth r0, 0x16(r3)
/* 8020784C  48 00 00 2C */	b lbl_80207878
lbl_80207850:
/* 80207850  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 80207854  FC 20 00 90 */	fmr f1, f0
/* 80207858  48 04 DF 79 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 8020785C  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 80207860  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 80207864  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 80207868  80 63 01 0C */	lwz r3, 0x10c(r3)
/* 8020786C  80 9F 00 30 */	lwz r4, 0x30(r31)
/* 80207870  38 A0 00 05 */	li r5, 5
/* 80207874  48 01 32 31 */	bl setAlphaAnimeMax__13dMeter2Draw_cFP13CPaneMgrAlphas
lbl_80207878:
/* 80207878  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 8020787C  48 04 DF AD */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80207880  C0 42 AD 4C */	lfs f2, lit_4147(r2)
/* 80207884  FC 02 08 00 */	fcmpu cr0, f2, f1
/* 80207888  40 82 00 48 */	bne lbl_802078D0
/* 8020788C  88 1F 04 C5 */	lbz r0, 0x4c5(r31)
/* 80207890  28 00 00 00 */	cmplwi r0, 0
/* 80207894  40 82 00 3C */	bne lbl_802078D0
/* 80207898  38 00 00 56 */	li r0, 0x56
/* 8020789C  90 01 00 08 */	stw r0, 8(r1)
/* 802078A0  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 802078A4  38 81 00 08 */	addi r4, r1, 8
/* 802078A8  38 A0 00 00 */	li r5, 0
/* 802078AC  38 C0 00 00 */	li r6, 0
/* 802078B0  38 E0 00 00 */	li r7, 0
/* 802078B4  FC 20 10 90 */	fmr f1, f2
/* 802078B8  C0 62 AD 58 */	lfs f3, lit_4513(r2)
/* 802078BC  FC 80 18 90 */	fmr f4, f3
/* 802078C0  39 00 00 00 */	li r8, 0
/* 802078C4  48 0A 40 C1 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 802078C8  38 00 00 01 */	li r0, 1
/* 802078CC  98 1F 04 C5 */	stb r0, 0x4c5(r31)
lbl_802078D0:
/* 802078D0  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 802078D4  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 802078D8  A8 83 04 22 */	lha r4, 0x422(r3)
/* 802078DC  A8 A3 04 24 */	lha r5, 0x424(r3)
/* 802078E0  88 1F 04 DA */	lbz r0, 0x4da(r31)
/* 802078E4  28 00 00 00 */	cmplwi r0, 0
/* 802078E8  40 82 00 28 */	bne lbl_80207910
/* 802078EC  88 1F 04 DB */	lbz r0, 0x4db(r31)
/* 802078F0  28 00 00 00 */	cmplwi r0, 0
/* 802078F4  40 82 00 1C */	bne lbl_80207910
/* 802078F8  88 1F 04 DC */	lbz r0, 0x4dc(r31)
/* 802078FC  28 00 00 00 */	cmplwi r0, 0
/* 80207900  40 82 00 10 */	bne lbl_80207910
/* 80207904  88 1F 04 DD */	lbz r0, 0x4dd(r31)
/* 80207908  28 00 00 00 */	cmplwi r0, 0
/* 8020790C  41 82 00 A8 */	beq lbl_802079B4
lbl_80207910:
/* 80207910  A8 7F 04 B4 */	lha r3, 0x4b4(r31)
/* 80207914  38 03 00 01 */	addi r0, r3, 1
/* 80207918  B0 1F 04 B4 */	sth r0, 0x4b4(r31)
/* 8020791C  A8 1F 04 B4 */	lha r0, 0x4b4(r31)
/* 80207920  7C 64 2A 14 */	add r3, r4, r5
/* 80207924  7C 00 18 00 */	cmpw r0, r3
/* 80207928  41 80 00 0C */	blt lbl_80207934
/* 8020792C  38 00 00 00 */	li r0, 0
/* 80207930  B0 1F 04 B4 */	sth r0, 0x4b4(r31)
lbl_80207934:
/* 80207934  A8 1F 04 B4 */	lha r0, 0x4b4(r31)
/* 80207938  7C 00 20 00 */	cmpw r0, r4
/* 8020793C  40 80 00 3C */	bge lbl_80207978
/* 80207940  C8 42 AD 68 */	lfd f2, lit_4517(r2)
/* 80207944  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80207948  90 01 00 14 */	stw r0, 0x14(r1)
/* 8020794C  3C 60 43 30 */	lis r3, 0x4330
/* 80207950  90 61 00 10 */	stw r3, 0x10(r1)
/* 80207954  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80207958  EC 20 10 28 */	fsubs f1, f0, f2
/* 8020795C  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 80207960  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80207964  90 61 00 18 */	stw r3, 0x18(r1)
/* 80207968  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8020796C  EC 00 10 28 */	fsubs f0, f0, f2
/* 80207970  EF E1 00 24 */	fdivs f31, f1, f0
/* 80207974  48 00 00 48 */	b lbl_802079BC
lbl_80207978:
/* 80207978  7C 00 18 50 */	subf r0, r0, r3
/* 8020797C  C8 42 AD 68 */	lfd f2, lit_4517(r2)
/* 80207980  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80207984  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80207988  3C 60 43 30 */	lis r3, 0x4330
/* 8020798C  90 61 00 18 */	stw r3, 0x18(r1)
/* 80207990  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80207994  EC 20 10 28 */	fsubs f1, f0, f2
/* 80207998  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 8020799C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802079A0  90 61 00 10 */	stw r3, 0x10(r1)
/* 802079A4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802079A8  EC 00 10 28 */	fsubs f0, f0, f2
/* 802079AC  EF E1 00 24 */	fdivs f31, f1, f0
/* 802079B0  48 00 00 0C */	b lbl_802079BC
lbl_802079B4:
/* 802079B4  38 00 00 00 */	li r0, 0
/* 802079B8  B0 1F 04 B4 */	sth r0, 0x4b4(r31)
lbl_802079BC:
/* 802079BC  3B A0 00 00 */	li r29, 0
/* 802079C0  3B C0 00 00 */	li r30, 0
lbl_802079C4:
/* 802079C4  38 1E 00 FC */	addi r0, r30, 0xfc
/* 802079C8  7C 7F 00 2E */	lwzx r3, r31, r0
/* 802079CC  28 03 00 00 */	cmplwi r3, 0
/* 802079D0  41 82 00 28 */	beq lbl_802079F8
/* 802079D4  38 1D 04 DA */	addi r0, r29, 0x4da
/* 802079D8  7C 1F 00 AE */	lbzx r0, r31, r0
/* 802079DC  28 00 00 00 */	cmplwi r0, 0
/* 802079E0  41 82 00 10 */	beq lbl_802079F0
/* 802079E4  FC 20 F8 90 */	fmr f1, f31
/* 802079E8  48 04 DD E9 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 802079EC  48 00 00 0C */	b lbl_802079F8
lbl_802079F0:
/* 802079F0  C0 22 AD 48 */	lfs f1, lit_4146(r2)
/* 802079F4  48 04 DD DD */	bl setAlphaRate__13CPaneMgrAlphaFf
lbl_802079F8:
/* 802079F8  3B BD 00 01 */	addi r29, r29, 1
/* 802079FC  2C 1D 00 04 */	cmpwi r29, 4
/* 80207A00  3B DE 00 04 */	addi r30, r30, 4
/* 80207A04  41 80 FF C0 */	blt lbl_802079C4
/* 80207A08  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80207A0C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80207A10  39 61 00 30 */	addi r11, r1, 0x30
/* 80207A14  48 15 A8 15 */	bl _restgpr_29
/* 80207A18  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80207A1C  7C 08 03 A6 */	mtlr r0
/* 80207A20  38 21 00 40 */	addi r1, r1, 0x40
/* 80207A24  4E 80 00 20 */	blr 
