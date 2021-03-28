lbl_801BDF6C:
/* 801BDF6C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 801BDF70  7C 08 02 A6 */	mflr r0
/* 801BDF74  90 01 00 74 */	stw r0, 0x74(r1)
/* 801BDF78  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 801BDF7C  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 801BDF80  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 801BDF84  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 801BDF88  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 801BDF8C  F3 A1 00 48 */	psq_st f29, 72(r1), 0, 0 /* qr0 */
/* 801BDF90  DB 81 00 30 */	stfd f28, 0x30(r1)
/* 801BDF94  F3 81 00 38 */	psq_st f28, 56(r1), 0, 0 /* qr0 */
/* 801BDF98  DB 61 00 20 */	stfd f27, 0x20(r1)
/* 801BDF9C  F3 61 00 28 */	psq_st f27, 40(r1), 0, 0 /* qr0 */
/* 801BDFA0  39 61 00 20 */	addi r11, r1, 0x20
/* 801BDFA4  48 1A 42 39 */	bl _savegpr_29
/* 801BDFA8  7C 7E 1B 78 */	mr r30, r3
/* 801BDFAC  8B A3 01 7E */	lbz r29, 0x17e(r3)
/* 801BDFB0  88 03 01 7B */	lbz r0, 0x17b(r3)
/* 801BDFB4  28 00 00 00 */	cmplwi r0, 0
/* 801BDFB8  41 82 00 10 */	beq lbl_801BDFC8
/* 801BDFBC  88 1E 01 83 */	lbz r0, 0x183(r30)
/* 801BDFC0  28 00 00 00 */	cmplwi r0, 0
/* 801BDFC4  40 82 00 50 */	bne lbl_801BE014
lbl_801BDFC8:
/* 801BDFC8  80 7E 00 04 */	lwz r3, 4(r30)
/* 801BDFCC  48 00 42 69 */	bl move__20dMenu_StageMapCtrl_cFv
/* 801BDFD0  80 7E 00 04 */	lwz r3, 4(r30)
/* 801BDFD4  88 03 00 EB */	lbz r0, 0xeb(r3)
/* 801BDFD8  7C 1F 07 74 */	extsb r31, r0
/* 801BDFDC  48 00 2F 05 */	bl getMapBlendPer__20dMenu_StageMapCtrl_cCFv
/* 801BDFE0  7F C3 F3 78 */	mr r3, r30
/* 801BDFE4  7F E4 FB 78 */	mr r4, r31
/* 801BDFE8  4B FF E8 61 */	bl getIconPos__12dMenu_Dmap_cFScf
/* 801BDFEC  80 7E 00 04 */	lwz r3, 4(r30)
/* 801BDFF0  88 03 00 EC */	lbz r0, 0xec(r3)
/* 801BDFF4  7C 1F 07 74 */	extsb r31, r0
/* 801BDFF8  48 00 2E E9 */	bl getMapBlendPer__20dMenu_StageMapCtrl_cCFv
/* 801BDFFC  C0 02 A5 EC */	lfs f0, lit_3963(r2)
/* 801BE000  EC 20 08 28 */	fsubs f1, f0, f1
/* 801BE004  7F C3 F3 78 */	mr r3, r30
/* 801BE008  7F E4 FB 78 */	mr r4, r31
/* 801BE00C  4B FF E8 3D */	bl getIconPos__12dMenu_Dmap_cFScf
/* 801BE010  48 00 02 D8 */	b lbl_801BE2E8
lbl_801BE014:
/* 801BE014  1C BD 00 0C */	mulli r5, r29, 0xc
/* 801BE018  3C 80 80 3C */	lis r4, map_move_process@ha
/* 801BE01C  38 04 CA 20 */	addi r0, r4, map_move_process@l
/* 801BE020  7D 80 2A 14 */	add r12, r0, r5
/* 801BE024  48 1A 40 61 */	bl __ptmf_scall
/* 801BE028  60 00 00 00 */	nop 
/* 801BE02C  88 1E 01 7E */	lbz r0, 0x17e(r30)
/* 801BE030  7C 00 E8 40 */	cmplw r0, r29
/* 801BE034  41 82 00 20 */	beq lbl_801BE054
/* 801BE038  7F C3 F3 78 */	mr r3, r30
/* 801BE03C  1C A0 00 0C */	mulli r5, r0, 0xc
/* 801BE040  3C 80 80 3C */	lis r4, map_init_process@ha
/* 801BE044  38 04 C9 D8 */	addi r0, r4, map_init_process@l
/* 801BE048  7D 80 2A 14 */	add r12, r0, r5
/* 801BE04C  48 1A 40 39 */	bl __ptmf_scall
/* 801BE050  60 00 00 00 */	nop 
lbl_801BE054:
/* 801BE054  3C 60 80 43 */	lis r3, g_fmapHIO@ha
/* 801BE058  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l
/* 801BE05C  C3 63 00 E0 */	lfs f27, 0xe0(r3)
/* 801BE060  C0 03 00 E4 */	lfs f0, 0xe4(r3)
/* 801BE064  FC 1B 00 40 */	fcmpo cr0, f27, f0
/* 801BE068  40 80 00 0C */	bge lbl_801BE074
/* 801BE06C  FF C0 D8 90 */	fmr f30, f27
/* 801BE070  48 00 00 08 */	b lbl_801BE078
lbl_801BE074:
/* 801BE074  FF C0 00 90 */	fmr f30, f0
lbl_801BE078:
/* 801BE078  FC 1B 00 40 */	fcmpo cr0, f27, f0
/* 801BE07C  40 81 00 08 */	ble lbl_801BE084
/* 801BE080  48 00 00 08 */	b lbl_801BE088
lbl_801BE084:
/* 801BE084  FF 60 00 90 */	fmr f27, f0
lbl_801BE088:
/* 801BE088  80 7E 00 F8 */	lwz r3, 0xf8(r30)
/* 801BE08C  81 83 00 00 */	lwz r12, 0(r3)
/* 801BE090  81 8C 00 08 */	lwz r12, 8(r12)
/* 801BE094  7D 89 03 A6 */	mtctr r12
/* 801BE098  4E 80 04 21 */	bctrl 
/* 801BE09C  FF E0 08 90 */	fmr f31, f1
/* 801BE0A0  80 7E 00 F8 */	lwz r3, 0xf8(r30)
/* 801BE0A4  81 83 00 00 */	lwz r12, 0(r3)
/* 801BE0A8  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801BE0AC  7D 89 03 A6 */	mtctr r12
/* 801BE0B0  4E 80 04 21 */	bctrl 
/* 801BE0B4  3B E0 00 00 */	li r31, 0
/* 801BE0B8  80 BE 00 04 */	lwz r5, 4(r30)
/* 801BE0BC  C3 A5 00 9C */	lfs f29, 0x9c(r5)
/* 801BE0C0  C3 85 00 A0 */	lfs f28, 0xa0(r5)
/* 801BE0C4  FC 1F F0 40 */	fcmpo cr0, f31, f30
/* 801BE0C8  4C 41 13 82 */	cror 2, 1, 2
/* 801BE0CC  40 82 00 90 */	bne lbl_801BE15C
/* 801BE0D0  88 1E 01 81 */	lbz r0, 0x181(r30)
/* 801BE0D4  28 00 00 02 */	cmplwi r0, 2
/* 801BE0D8  41 82 00 84 */	beq lbl_801BE15C
/* 801BE0DC  3B E0 00 01 */	li r31, 1
/* 801BE0E0  C0 0D 89 00 */	lfs f0, mAllSizeX__8dMpath_c(r13)
/* 801BE0E4  FC 40 00 90 */	fmr f2, f0
/* 801BE0E8  C0 2D 89 04 */	lfs f1, mAllSizeZ__8dMpath_c(r13)
/* 801BE0EC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 801BE0F0  40 80 00 08 */	bge lbl_801BE0F8
/* 801BE0F4  FC 40 08 90 */	fmr f2, f1
lbl_801BE0F8:
/* 801BE0F8  FC 1F D8 40 */	fcmpo cr0, f31, f27
/* 801BE0FC  40 80 00 14 */	bge lbl_801BE110
/* 801BE100  3C 80 80 43 */	lis r4, g_fmapHIO@ha
/* 801BE104  38 84 FC 60 */	addi r4, r4, g_fmapHIO@l
/* 801BE108  C0 24 00 DC */	lfs f1, 0xdc(r4)
/* 801BE10C  48 00 00 10 */	b lbl_801BE11C
lbl_801BE110:
/* 801BE110  3C 80 80 43 */	lis r4, g_fmapHIO@ha
/* 801BE114  38 84 FC 60 */	addi r4, r4, g_fmapHIO@l
/* 801BE118  C0 24 00 CC */	lfs f1, 0xcc(r4)
lbl_801BE11C:
/* 801BE11C  C0 02 A6 58 */	lfs f0, lit_6180(r2)
/* 801BE120  EC 01 00 24 */	fdivs f0, f1, f0
/* 801BE124  EC 20 00 B2 */	fmuls f1, f0, f2
/* 801BE128  3C 80 80 44 */	lis r4, sincosTable___5JMath@ha
/* 801BE12C  38 84 9A 20 */	addi r4, r4, sincosTable___5JMath@l
/* 801BE130  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 801BE134  7C 64 02 14 */	add r3, r4, r0
/* 801BE138  C0 03 00 04 */	lfs f0, 4(r3)
/* 801BE13C  EF 61 00 32 */	fmuls f27, f1, f0
/* 801BE140  7C A3 2B 78 */	mr r3, r5
/* 801BE144  7C 04 04 2E */	lfsx f0, r4, r0
/* 801BE148  EC 21 00 32 */	fmuls f1, f1, f0
/* 801BE14C  48 00 44 3D */	bl setPlusZoomCenterX__20dMenu_StageMapCtrl_cFf
/* 801BE150  80 7E 00 04 */	lwz r3, 4(r30)
/* 801BE154  FC 20 D8 90 */	fmr f1, f27
/* 801BE158  48 00 44 39 */	bl setPlusZoomCenterZ__20dMenu_StageMapCtrl_cFf
lbl_801BE15C:
/* 801BE15C  80 7E 00 04 */	lwz r3, 4(r30)
/* 801BE160  48 00 40 D5 */	bl move__20dMenu_StageMapCtrl_cFv
/* 801BE164  80 7E 00 04 */	lwz r3, 4(r30)
/* 801BE168  88 03 00 EB */	lbz r0, 0xeb(r3)
/* 801BE16C  7C 1D 07 74 */	extsb r29, r0
/* 801BE170  48 00 2D 71 */	bl getMapBlendPer__20dMenu_StageMapCtrl_cCFv
/* 801BE174  7F C3 F3 78 */	mr r3, r30
/* 801BE178  7F A4 EB 78 */	mr r4, r29
/* 801BE17C  4B FF E6 CD */	bl getIconPos__12dMenu_Dmap_cFScf
/* 801BE180  80 7E 00 04 */	lwz r3, 4(r30)
/* 801BE184  88 03 00 EC */	lbz r0, 0xec(r3)
/* 801BE188  7C 1D 07 74 */	extsb r29, r0
/* 801BE18C  48 00 2D 55 */	bl getMapBlendPer__20dMenu_StageMapCtrl_cCFv
/* 801BE190  C0 02 A5 EC */	lfs f0, lit_3963(r2)
/* 801BE194  EC 20 08 28 */	fsubs f1, f0, f1
/* 801BE198  7F C3 F3 78 */	mr r3, r30
/* 801BE19C  7F A4 EB 78 */	mr r4, r29
/* 801BE1A0  4B FF E6 A9 */	bl getIconPos__12dMenu_Dmap_cFScf
/* 801BE1A4  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 801BE1A8  41 82 00 54 */	beq lbl_801BE1FC
/* 801BE1AC  80 7E 00 04 */	lwz r3, 4(r30)
/* 801BE1B0  C0 03 00 9C */	lfs f0, 0x9c(r3)
/* 801BE1B4  FC 1D 00 00 */	fcmpu cr0, f29, f0
/* 801BE1B8  40 82 00 10 */	bne lbl_801BE1C8
/* 801BE1BC  C0 03 00 A0 */	lfs f0, 0xa0(r3)
/* 801BE1C0  FC 1C 00 00 */	fcmpu cr0, f28, f0
/* 801BE1C4  41 82 00 38 */	beq lbl_801BE1FC
lbl_801BE1C8:
/* 801BE1C8  38 00 00 BE */	li r0, 0xbe
/* 801BE1CC  90 01 00 08 */	stw r0, 8(r1)
/* 801BE1D0  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801BE1D4  38 81 00 08 */	addi r4, r1, 8
/* 801BE1D8  38 A0 00 00 */	li r5, 0
/* 801BE1DC  38 C0 00 00 */	li r6, 0
/* 801BE1E0  38 E0 00 00 */	li r7, 0
/* 801BE1E4  C0 22 A5 EC */	lfs f1, lit_3963(r2)
/* 801BE1E8  FC 40 08 90 */	fmr f2, f1
/* 801BE1EC  C0 62 A6 5C */	lfs f3, lit_6181(r2)
/* 801BE1F0  FC 80 18 90 */	fmr f4, f3
/* 801BE1F4  39 00 00 00 */	li r8, 0
/* 801BE1F8  48 0E E3 15 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_801BE1FC:
/* 801BE1FC  80 7E 00 08 */	lwz r3, 8(r30)
/* 801BE200  80 03 0D 30 */	lwz r0, 0xd30(r3)
/* 801BE204  28 00 00 00 */	cmplwi r0, 0
/* 801BE208  41 82 00 E0 */	beq lbl_801BE2E8
/* 801BE20C  7F C3 F3 78 */	mr r3, r30
/* 801BE210  4B FF F4 81 */	bl isMapMoveState__12dMenu_Dmap_cFv
/* 801BE214  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801BE218  41 82 00 D0 */	beq lbl_801BE2E8
/* 801BE21C  A0 1E 01 66 */	lhz r0, 0x166(r30)
/* 801BE220  28 00 03 7B */	cmplwi r0, 0x37b
/* 801BE224  41 82 00 0C */	beq lbl_801BE230
/* 801BE228  28 00 05 69 */	cmplwi r0, 0x569
/* 801BE22C  40 82 00 BC */	bne lbl_801BE2E8
lbl_801BE230:
/* 801BE230  38 00 00 00 */	li r0, 0
/* 801BE234  80 7E 00 08 */	lwz r3, 8(r30)
/* 801BE238  98 03 0D DA */	stb r0, 0xdda(r3)
/* 801BE23C  80 7E 00 04 */	lwz r3, 4(r30)
/* 801BE240  C0 03 00 C8 */	lfs f0, 0xc8(r3)
/* 801BE244  C0 23 00 9C */	lfs f1, 0x9c(r3)
/* 801BE248  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801BE24C  40 81 00 14 */	ble lbl_801BE260
/* 801BE250  80 7E 00 08 */	lwz r3, 8(r30)
/* 801BE254  88 03 0D DA */	lbz r0, 0xdda(r3)
/* 801BE258  60 00 00 01 */	ori r0, r0, 1
/* 801BE25C  98 03 0D DA */	stb r0, 0xdda(r3)
lbl_801BE260:
/* 801BE260  80 7E 00 04 */	lwz r3, 4(r30)
/* 801BE264  C0 03 00 CC */	lfs f0, 0xcc(r3)
/* 801BE268  C0 23 00 9C */	lfs f1, 0x9c(r3)
/* 801BE26C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801BE270  40 80 00 14 */	bge lbl_801BE284
/* 801BE274  80 7E 00 08 */	lwz r3, 8(r30)
/* 801BE278  88 03 0D DA */	lbz r0, 0xdda(r3)
/* 801BE27C  60 00 00 04 */	ori r0, r0, 4
/* 801BE280  98 03 0D DA */	stb r0, 0xdda(r3)
lbl_801BE284:
/* 801BE284  80 7E 00 04 */	lwz r3, 4(r30)
/* 801BE288  C0 03 00 D0 */	lfs f0, 0xd0(r3)
/* 801BE28C  C0 23 00 A0 */	lfs f1, 0xa0(r3)
/* 801BE290  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801BE294  40 81 00 14 */	ble lbl_801BE2A8
/* 801BE298  80 7E 00 08 */	lwz r3, 8(r30)
/* 801BE29C  88 03 0D DA */	lbz r0, 0xdda(r3)
/* 801BE2A0  60 00 00 08 */	ori r0, r0, 8
/* 801BE2A4  98 03 0D DA */	stb r0, 0xdda(r3)
lbl_801BE2A8:
/* 801BE2A8  80 7E 00 04 */	lwz r3, 4(r30)
/* 801BE2AC  C0 03 00 D4 */	lfs f0, 0xd4(r3)
/* 801BE2B0  C0 23 00 A0 */	lfs f1, 0xa0(r3)
/* 801BE2B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801BE2B8  40 80 00 14 */	bge lbl_801BE2CC
/* 801BE2BC  80 7E 00 08 */	lwz r3, 8(r30)
/* 801BE2C0  88 03 0D DA */	lbz r0, 0xdda(r3)
/* 801BE2C4  60 00 00 02 */	ori r0, r0, 2
/* 801BE2C8  98 03 0D DA */	stb r0, 0xdda(r3)
lbl_801BE2CC:
/* 801BE2CC  80 7E 00 08 */	lwz r3, 8(r30)
/* 801BE2D0  80 63 0D 30 */	lwz r3, 0xd30(r3)
/* 801BE2D4  38 80 00 00 */	li r4, 0
/* 801BE2D8  81 83 00 00 */	lwz r12, 0(r3)
/* 801BE2DC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801BE2E0  7D 89 03 A6 */	mtctr r12
/* 801BE2E4  4E 80 04 21 */	bctrl 
lbl_801BE2E8:
/* 801BE2E8  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 801BE2EC  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 801BE2F0  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 801BE2F4  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 801BE2F8  E3 A1 00 48 */	psq_l f29, 72(r1), 0, 0 /* qr0 */
/* 801BE2FC  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 801BE300  E3 81 00 38 */	psq_l f28, 56(r1), 0, 0 /* qr0 */
/* 801BE304  CB 81 00 30 */	lfd f28, 0x30(r1)
/* 801BE308  E3 61 00 28 */	psq_l f27, 40(r1), 0, 0 /* qr0 */
/* 801BE30C  CB 61 00 20 */	lfd f27, 0x20(r1)
/* 801BE310  39 61 00 20 */	addi r11, r1, 0x20
/* 801BE314  48 1A 3F 15 */	bl _restgpr_29
/* 801BE318  80 01 00 74 */	lwz r0, 0x74(r1)
/* 801BE31C  7C 08 03 A6 */	mtlr r0
/* 801BE320  38 21 00 70 */	addi r1, r1, 0x70
/* 801BE324  4E 80 00 20 */	blr 
