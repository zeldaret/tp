lbl_8021151C:
/* 8021151C  94 21 FE E0 */	stwu r1, -0x120(r1)
/* 80211520  7C 08 02 A6 */	mflr r0
/* 80211524  90 01 01 24 */	stw r0, 0x124(r1)
/* 80211528  DB E1 01 10 */	stfd f31, 0x110(r1)
/* 8021152C  F3 E1 01 18 */	psq_st f31, 280(r1), 0, 0 /* qr0 */
/* 80211530  DB C1 01 00 */	stfd f30, 0x100(r1)
/* 80211534  F3 C1 01 08 */	psq_st f30, 264(r1), 0, 0 /* qr0 */
/* 80211538  DB A1 00 F0 */	stfd f29, 0xf0(r1)
/* 8021153C  F3 A1 00 F8 */	psq_st f29, 248(r1), 0, 0 /* qr0 */
/* 80211540  DB 81 00 E0 */	stfd f28, 0xe0(r1)
/* 80211544  F3 81 00 E8 */	psq_st f28, 232(r1), 0, 0 /* qr0 */
/* 80211548  39 61 00 E0 */	addi r11, r1, 0xe0
/* 8021154C  48 15 0C 71 */	bl _savegpr_21
/* 80211550  7C 79 1B 78 */	mr r25, r3
/* 80211554  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80211558  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8021155C  82 A3 5F 50 */	lwz r21, 0x5f50(r3)
/* 80211560  7E A3 AB 78 */	mr r3, r21
/* 80211564  81 95 00 00 */	lwz r12, 0(r21)
/* 80211568  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8021156C  7D 89 03 A6 */	mtctr r12
/* 80211570  4E 80 04 21 */	bctrl 
/* 80211574  80 79 00 78 */	lwz r3, 0x78(r25)
/* 80211578  C0 22 AE 80 */	lfs f1, lit_4182(r2)
/* 8021157C  FC 40 08 90 */	fmr f2, f1
/* 80211580  7E A4 AB 78 */	mr r4, r21
/* 80211584  48 0E 79 51 */	bl draw__9J2DScreenFffPC14J2DGrafContext
/* 80211588  7F 23 CB 78 */	mr r3, r25
/* 8021158C  38 80 00 01 */	li r4, 1
/* 80211590  48 00 39 25 */	bl drawKanteraScreen__13dMeter2Draw_cFUc
/* 80211594  7F 23 CB 78 */	mr r3, r25
/* 80211598  38 80 00 02 */	li r4, 2
/* 8021159C  48 00 39 19 */	bl drawKanteraScreen__13dMeter2Draw_cFUc
/* 802115A0  3B 60 00 00 */	li r27, 0
/* 802115A4  3A E0 00 00 */	li r23, 0
/* 802115A8  3B 00 00 00 */	li r24, 0
/* 802115AC  3B 40 00 00 */	li r26, 0
lbl_802115B0:
/* 802115B0  3B 9A 03 2C */	addi r28, r26, 0x32c
/* 802115B4  7C 19 E0 2E */	lwzx r0, r25, r28
/* 802115B8  28 00 00 00 */	cmplwi r0, 0
/* 802115BC  41 82 01 24 */	beq lbl_802116E0
/* 802115C0  3B E0 00 00 */	li r31, 0
/* 802115C4  3A C0 00 00 */	li r22, 0
/* 802115C8  7F B9 C2 14 */	add r29, r25, r24
/* 802115CC  7F D9 BA 14 */	add r30, r25, r23
/* 802115D0  C3 E2 AE 90 */	lfs f31, lit_4921(r2)
/* 802115D4  C3 82 AE 94 */	lfs f28, lit_4922(r2)
/* 802115D8  CB A2 AE A0 */	lfd f29, lit_4925(r2)
/* 802115DC  3E A0 43 30 */	lis r21, 0x4330
lbl_802115E0:
/* 802115E0  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 802115E4  EF DF 00 32 */	fmuls f30, f31, f0
/* 802115E8  7C 79 E0 2E */	lwzx r3, r25, r28
/* 802115EC  80 83 00 04 */	lwz r4, 4(r3)
/* 802115F0  38 61 00 84 */	addi r3, r1, 0x84
/* 802115F4  38 A0 00 00 */	li r5, 0
/* 802115F8  48 0E 63 B1 */	bl getGlbVtx__7J2DPaneCFUc
/* 802115FC  80 61 00 84 */	lwz r3, 0x84(r1)
/* 80211600  80 01 00 88 */	lwz r0, 0x88(r1)
/* 80211604  90 61 00 9C */	stw r3, 0x9c(r1)
/* 80211608  90 01 00 A0 */	stw r0, 0xa0(r1)
/* 8021160C  80 01 00 8C */	lwz r0, 0x8c(r1)
/* 80211610  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80211614  7C 79 E0 2E */	lwzx r3, r25, r28
/* 80211618  80 83 00 04 */	lwz r4, 4(r3)
/* 8021161C  38 61 00 78 */	addi r3, r1, 0x78
/* 80211620  38 A0 00 03 */	li r5, 3
/* 80211624  48 0E 63 85 */	bl getGlbVtx__7J2DPaneCFUc
/* 80211628  80 61 00 78 */	lwz r3, 0x78(r1)
/* 8021162C  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 80211630  90 61 00 90 */	stw r3, 0x90(r1)
/* 80211634  90 01 00 94 */	stw r0, 0x94(r1)
/* 80211638  80 01 00 80 */	lwz r0, 0x80(r1)
/* 8021163C  90 01 00 98 */	stw r0, 0x98(r1)
/* 80211640  7C 79 E0 2E */	lwzx r3, r25, r28
/* 80211644  80 63 00 04 */	lwz r3, 4(r3)
/* 80211648  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 8021164C  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 80211650  EC 81 00 28 */	fsubs f4, f1, f0
/* 80211654  38 16 00 84 */	addi r0, r22, 0x84
/* 80211658  7C 7E 00 2E */	lwzx r3, r30, r0
/* 8021165C  C0 5D 00 14 */	lfs f2, 0x14(r29)
/* 80211660  C0 21 00 9C */	lfs f1, 0x9c(r1)
/* 80211664  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 80211668  EC 01 00 2A */	fadds f0, f1, f0
/* 8021166C  EC 3C 00 32 */	fmuls f1, f28, f0
/* 80211670  6F E0 80 00 */	xoris r0, r31, 0x8000
/* 80211674  90 01 00 AC */	stw r0, 0xac(r1)
/* 80211678  92 A1 00 A8 */	stw r21, 0xa8(r1)
/* 8021167C  C8 01 00 A8 */	lfd f0, 0xa8(r1)
/* 80211680  EC 00 E8 28 */	fsubs f0, f0, f29
/* 80211684  EC 1E 00 32 */	fmuls f0, f30, f0
/* 80211688  EC 01 00 2A */	fadds f0, f1, f0
/* 8021168C  EC 22 00 2A */	fadds f1, f2, f0
/* 80211690  C0 7D 00 18 */	lfs f3, 0x18(r29)
/* 80211694  C0 41 00 A0 */	lfs f2, 0xa0(r1)
/* 80211698  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 8021169C  EC 02 00 2A */	fadds f0, f2, f0
/* 802116A0  EC 1C 00 32 */	fmuls f0, f28, f0
/* 802116A4  EC 00 20 2A */	fadds f0, f0, f4
/* 802116A8  EC 43 00 2A */	fadds f2, f3, f0
/* 802116AC  FC 60 F0 90 */	fmr f3, f30
/* 802116B0  FC 80 F0 90 */	fmr f4, f30
/* 802116B4  38 80 00 00 */	li r4, 0
/* 802116B8  38 A0 00 00 */	li r5, 0
/* 802116BC  38 C0 00 00 */	li r6, 0
/* 802116C0  81 83 00 00 */	lwz r12, 0(r3)
/* 802116C4  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 802116C8  7D 89 03 A6 */	mtctr r12
/* 802116CC  4E 80 04 21 */	bctrl 
/* 802116D0  3B FF 00 01 */	addi r31, r31, 1
/* 802116D4  2C 1F 00 03 */	cmpwi r31, 3
/* 802116D8  3A D6 00 04 */	addi r22, r22, 4
/* 802116DC  41 80 FF 04 */	blt lbl_802115E0
lbl_802116E0:
/* 802116E0  3B 7B 00 01 */	addi r27, r27, 1
/* 802116E4  2C 1B 00 02 */	cmpwi r27, 2
/* 802116E8  3A F7 00 0C */	addi r23, r23, 0xc
/* 802116EC  3B 18 00 1C */	addi r24, r24, 0x1c
/* 802116F0  3B 5A 00 04 */	addi r26, r26, 4
/* 802116F4  41 80 FE BC */	blt lbl_802115B0
/* 802116F8  3A A0 00 00 */	li r21, 0
/* 802116FC  3A E0 00 00 */	li r23, 0
lbl_80211700:
/* 80211700  38 17 00 AC */	addi r0, r23, 0xac
/* 80211704  7C 79 00 2E */	lwzx r3, r25, r0
/* 80211708  80 63 00 04 */	lwz r3, 4(r3)
/* 8021170C  81 83 00 00 */	lwz r12, 0(r3)
/* 80211710  81 8C 00 08 */	lwz r12, 8(r12)
/* 80211714  7D 89 03 A6 */	mtctr r12
/* 80211718  4E 80 04 21 */	bctrl 
/* 8021171C  3A B5 00 01 */	addi r21, r21, 1
/* 80211720  2C 15 00 02 */	cmpwi r21, 2
/* 80211724  3A F7 00 04 */	addi r23, r23, 4
/* 80211728  41 80 FF D8 */	blt lbl_80211700
/* 8021172C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80211730  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80211734  88 03 5E B5 */	lbz r0, 0x5eb5(r3)
/* 80211738  28 00 00 00 */	cmplwi r0, 0
/* 8021173C  40 82 01 60 */	bne lbl_8021189C
/* 80211740  80 79 02 F8 */	lwz r3, 0x2f8(r25)
/* 80211744  48 04 40 E5 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80211748  C0 42 AE 80 */	lfs f2, lit_4182(r2)
/* 8021174C  FC 02 08 00 */	fcmpu cr0, f2, f1
/* 80211750  41 82 01 4C */	beq lbl_8021189C
/* 80211754  C0 19 06 08 */	lfs f0, 0x608(r25)
/* 80211758  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 8021175C  40 81 00 58 */	ble lbl_802117B4
/* 80211760  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 80211764  39 43 EB C8 */	addi r10, r3, g_drawHIO@l
/* 80211768  80 0A 04 88 */	lwz r0, 0x488(r10)
/* 8021176C  90 01 00 68 */	stw r0, 0x68(r1)
/* 80211770  80 0A 04 8C */	lwz r0, 0x48c(r10)
/* 80211774  90 01 00 6C */	stw r0, 0x6c(r1)
/* 80211778  80 0A 04 80 */	lwz r0, 0x480(r10)
/* 8021177C  90 01 00 70 */	stw r0, 0x70(r1)
/* 80211780  80 0A 04 84 */	lwz r0, 0x484(r10)
/* 80211784  90 01 00 74 */	stw r0, 0x74(r1)
/* 80211788  7F 23 CB 78 */	mr r3, r25
/* 8021178C  80 99 03 38 */	lwz r4, 0x338(r25)
/* 80211790  38 B9 06 08 */	addi r5, r25, 0x608
/* 80211794  C0 2A 03 C4 */	lfs f1, 0x3c4(r10)
/* 80211798  38 C1 00 74 */	addi r6, r1, 0x74
/* 8021179C  38 E1 00 70 */	addi r7, r1, 0x70
/* 802117A0  39 01 00 6C */	addi r8, r1, 0x6c
/* 802117A4  39 21 00 68 */	addi r9, r1, 0x68
/* 802117A8  C0 4A 04 90 */	lfs f2, 0x490(r10)
/* 802117AC  89 59 07 59 */	lbz r10, 0x759(r25)
/* 802117B0  48 00 28 41 */	bl drawPikari__13dMeter2Draw_cFP8CPaneMgrPffQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColorfUc
lbl_802117B4:
/* 802117B4  C0 39 06 0C */	lfs f1, 0x60c(r25)
/* 802117B8  C0 02 AE 80 */	lfs f0, lit_4182(r2)
/* 802117BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802117C0  40 81 00 58 */	ble lbl_80211818
/* 802117C4  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 802117C8  39 43 EB C8 */	addi r10, r3, g_drawHIO@l
/* 802117CC  80 0A 04 9C */	lwz r0, 0x49c(r10)
/* 802117D0  90 01 00 58 */	stw r0, 0x58(r1)
/* 802117D4  80 0A 04 A0 */	lwz r0, 0x4a0(r10)
/* 802117D8  90 01 00 5C */	stw r0, 0x5c(r1)
/* 802117DC  80 0A 04 94 */	lwz r0, 0x494(r10)
/* 802117E0  90 01 00 60 */	stw r0, 0x60(r1)
/* 802117E4  80 0A 04 98 */	lwz r0, 0x498(r10)
/* 802117E8  90 01 00 64 */	stw r0, 0x64(r1)
/* 802117EC  7F 23 CB 78 */	mr r3, r25
/* 802117F0  80 99 03 3C */	lwz r4, 0x33c(r25)
/* 802117F4  38 B9 06 0C */	addi r5, r25, 0x60c
/* 802117F8  C0 2A 03 C8 */	lfs f1, 0x3c8(r10)
/* 802117FC  38 C1 00 64 */	addi r6, r1, 0x64
/* 80211800  38 E1 00 60 */	addi r7, r1, 0x60
/* 80211804  39 01 00 5C */	addi r8, r1, 0x5c
/* 80211808  39 21 00 58 */	addi r9, r1, 0x58
/* 8021180C  C0 4A 04 A4 */	lfs f2, 0x4a4(r10)
/* 80211810  89 59 07 5A */	lbz r10, 0x75a(r25)
/* 80211814  48 00 27 DD */	bl drawPikari__13dMeter2Draw_cFP8CPaneMgrPffQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColorfUc
lbl_80211818:
/* 80211818  3A A0 00 00 */	li r21, 0
/* 8021181C  3A E0 00 00 */	li r23, 0
/* 80211820  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 80211824  3A C3 EB C8 */	addi r22, r3, g_drawHIO@l
/* 80211828  C3 C2 AE 80 */	lfs f30, lit_4182(r2)
lbl_8021182C:
/* 8021182C  7C B9 BA 14 */	add r5, r25, r23
/* 80211830  C0 05 06 20 */	lfs f0, 0x620(r5)
/* 80211834  FC 00 F0 40 */	fcmpo cr0, f0, f30
/* 80211838  40 81 00 54 */	ble lbl_8021188C
/* 8021183C  80 16 04 74 */	lwz r0, 0x474(r22)
/* 80211840  90 01 00 48 */	stw r0, 0x48(r1)
/* 80211844  80 16 04 78 */	lwz r0, 0x478(r22)
/* 80211848  90 01 00 4C */	stw r0, 0x4c(r1)
/* 8021184C  80 16 04 6C */	lwz r0, 0x46c(r22)
/* 80211850  90 01 00 50 */	stw r0, 0x50(r1)
/* 80211854  80 16 04 70 */	lwz r0, 0x470(r22)
/* 80211858  90 01 00 54 */	stw r0, 0x54(r1)
/* 8021185C  7F 23 CB 78 */	mr r3, r25
/* 80211860  80 85 03 40 */	lwz r4, 0x340(r5)
/* 80211864  38 A5 06 20 */	addi r5, r5, 0x620
/* 80211868  C0 36 03 DC */	lfs f1, 0x3dc(r22)
/* 8021186C  38 C1 00 54 */	addi r6, r1, 0x54
/* 80211870  38 E1 00 50 */	addi r7, r1, 0x50
/* 80211874  39 01 00 4C */	addi r8, r1, 0x4c
/* 80211878  39 21 00 48 */	addi r9, r1, 0x48
/* 8021187C  C0 56 04 7C */	lfs f2, 0x47c(r22)
/* 80211880  38 15 07 5C */	addi r0, r21, 0x75c
/* 80211884  7D 59 00 AE */	lbzx r10, r25, r0
/* 80211888  48 00 27 69 */	bl drawPikari__13dMeter2Draw_cFP8CPaneMgrPffQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColorfUc
lbl_8021188C:
/* 8021188C  3A B5 00 01 */	addi r21, r21, 1
/* 80211890  2C 15 00 02 */	cmpwi r21, 2
/* 80211894  3A F7 00 04 */	addi r23, r23, 4
/* 80211898  41 80 FF 94 */	blt lbl_8021182C
lbl_8021189C:
/* 8021189C  80 79 01 E0 */	lwz r3, 0x1e0(r25)
/* 802118A0  48 04 3F 89 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 802118A4  C0 42 AE 80 */	lfs f2, lit_4182(r2)
/* 802118A8  FC 02 08 00 */	fcmpu cr0, f2, f1
/* 802118AC  41 82 02 A4 */	beq lbl_80211B50
/* 802118B0  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 802118B4  38 83 EB C8 */	addi r4, r3, g_drawHIO@l
/* 802118B8  C3 84 0F 14 */	lfs f28, 0xf14(r4)
/* 802118BC  C3 A4 0E E4 */	lfs f29, 0xee4(r4)
/* 802118C0  A8 79 07 56 */	lha r3, 0x756(r25)
/* 802118C4  7C 60 07 35 */	extsh. r0, r3
/* 802118C8  41 80 00 E4 */	blt lbl_802119AC
/* 802118CC  C3 A4 0E E8 */	lfs f29, 0xee8(r4)
/* 802118D0  A8 04 0E CE */	lha r0, 0xece(r4)
/* 802118D4  1C A0 00 0F */	mulli r5, r0, 0xf
/* 802118D8  7C 03 28 00 */	cmpw r3, r5
/* 802118DC  41 81 00 4C */	bgt lbl_80211928
/* 802118E0  7C 83 03 D6 */	divw r4, r3, r0
/* 802118E4  7C 04 01 D6 */	mullw r0, r4, r0
/* 802118E8  7C 00 18 51 */	subf. r0, r0, r3
/* 802118EC  40 82 00 20 */	bne lbl_8021190C
/* 802118F0  54 80 10 3A */	slwi r0, r4, 2
/* 802118F4  7C 79 02 14 */	add r3, r25, r0
/* 802118F8  C0 03 06 2C */	lfs f0, 0x62c(r3)
/* 802118FC  FC 02 00 00 */	fcmpu cr0, f2, f0
/* 80211900  40 82 00 0C */	bne lbl_8021190C
/* 80211904  C0 02 AE 98 */	lfs f0, lit_4923(r2)
/* 80211908  D0 03 06 2C */	stfs f0, 0x62c(r3)
lbl_8021190C:
/* 8021190C  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 80211910  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 80211914  C3 83 0F 18 */	lfs f28, 0xf18(r3)
/* 80211918  A8 79 07 56 */	lha r3, 0x756(r25)
/* 8021191C  38 03 00 01 */	addi r0, r3, 1
/* 80211920  B0 19 07 56 */	sth r0, 0x756(r25)
/* 80211924  48 00 00 88 */	b lbl_802119AC
lbl_80211928:
/* 80211928  38 A5 00 01 */	addi r5, r5, 1
/* 8021192C  7C 03 28 00 */	cmpw r3, r5
/* 80211930  40 82 00 28 */	bne lbl_80211958
/* 80211934  C0 19 06 68 */	lfs f0, 0x668(r25)
/* 80211938  FC 02 00 00 */	fcmpu cr0, f2, f0
/* 8021193C  40 82 00 0C */	bne lbl_80211948
/* 80211940  38 03 00 01 */	addi r0, r3, 1
/* 80211944  B0 19 07 56 */	sth r0, 0x756(r25)
lbl_80211948:
/* 80211948  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 8021194C  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 80211950  C3 83 0F 18 */	lfs f28, 0xf18(r3)
/* 80211954  48 00 00 58 */	b lbl_802119AC
lbl_80211958:
/* 80211958  A8 04 0E D0 */	lha r0, 0xed0(r4)
/* 8021195C  7C 00 2A 14 */	add r0, r0, r5
/* 80211960  7C 03 00 00 */	cmpw r3, r0
/* 80211964  41 80 00 40 */	blt lbl_802119A4
/* 80211968  38 60 00 00 */	li r3, 0
/* 8021196C  C0 22 AE 98 */	lfs f1, lit_4923(r2)
/* 80211970  EC 41 E8 28 */	fsubs f2, f1, f29
/* 80211974  38 00 00 10 */	li r0, 0x10
/* 80211978  7C 09 03 A6 */	mtctr r0
lbl_8021197C:
/* 8021197C  7C B9 1A 14 */	add r5, r25, r3
/* 80211980  D0 45 06 2C */	stfs f2, 0x62c(r5)
/* 80211984  C0 04 0F 0C */	lfs f0, 0xf0c(r4)
/* 80211988  EC 01 00 28 */	fsubs f0, f1, f0
/* 8021198C  D0 05 06 6C */	stfs f0, 0x66c(r5)
/* 80211990  38 63 00 04 */	addi r3, r3, 4
/* 80211994  42 00 FF E8 */	bdnz lbl_8021197C
/* 80211998  38 00 FF FF */	li r0, -1
/* 8021199C  B0 19 07 56 */	sth r0, 0x756(r25)
/* 802119A0  48 00 00 0C */	b lbl_802119AC
lbl_802119A4:
/* 802119A4  38 03 00 01 */	addi r0, r3, 1
/* 802119A8  B0 19 07 56 */	sth r0, 0x756(r25)
lbl_802119AC:
/* 802119AC  3B 40 00 00 */	li r26, 0
/* 802119B0  3B 00 00 00 */	li r24, 0
/* 802119B4  3A E0 00 00 */	li r23, 0
/* 802119B8  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 802119BC  3B C3 EB C8 */	addi r30, r3, g_drawHIO@l
/* 802119C0  3B BE 0F 10 */	addi r29, r30, 0xf10
/* 802119C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 802119C8  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 802119CC  3B 9F 01 14 */	addi r28, r31, 0x114
/* 802119D0  C3 C2 AE 80 */	lfs f30, lit_4182(r2)
lbl_802119D4:
/* 802119D4  7F 79 BA 14 */	add r27, r25, r23
/* 802119D8  C0 1B 06 6C */	lfs f0, 0x66c(r27)
/* 802119DC  FC 00 F0 40 */	fcmpo cr0, f0, f30
/* 802119E0  40 81 00 A0 */	ble lbl_80211A80
/* 802119E4  80 1E 0F 00 */	lwz r0, 0xf00(r30)
/* 802119E8  90 01 00 38 */	stw r0, 0x38(r1)
/* 802119EC  80 1E 0F 08 */	lwz r0, 0xf08(r30)
/* 802119F0  90 01 00 3C */	stw r0, 0x3c(r1)
/* 802119F4  80 1E 0E F0 */	lwz r0, 0xef0(r30)
/* 802119F8  90 01 00 40 */	stw r0, 0x40(r1)
/* 802119FC  80 1E 0E F8 */	lwz r0, 0xef8(r30)
/* 80211A00  90 01 00 44 */	stw r0, 0x44(r1)
/* 80211A04  7F 23 CB 78 */	mr r3, r25
/* 80211A08  3A B8 01 F4 */	addi r21, r24, 0x1f4
/* 80211A0C  7C 99 A8 2E */	lwzx r4, r25, r21
/* 80211A10  7F A5 EB 78 */	mr r5, r29
/* 80211A14  C0 3E 0F 20 */	lfs f1, 0xf20(r30)
/* 80211A18  38 C1 00 44 */	addi r6, r1, 0x44
/* 80211A1C  38 E1 00 40 */	addi r7, r1, 0x40
/* 80211A20  39 01 00 3C */	addi r8, r1, 0x3c
/* 80211A24  39 21 00 38 */	addi r9, r1, 0x38
/* 80211A28  FC 40 F0 90 */	fmr f2, f30
/* 80211A2C  39 40 00 03 */	li r10, 3
/* 80211A30  48 00 25 C1 */	bl drawPikari__13dMeter2Draw_cFP8CPaneMgrPffQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColorfUc
/* 80211A34  80 1E 0E FC */	lwz r0, 0xefc(r30)
/* 80211A38  90 01 00 28 */	stw r0, 0x28(r1)
/* 80211A3C  80 1E 0F 04 */	lwz r0, 0xf04(r30)
/* 80211A40  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80211A44  80 1E 0E EC */	lwz r0, 0xeec(r30)
/* 80211A48  90 01 00 30 */	stw r0, 0x30(r1)
/* 80211A4C  80 1E 0E F4 */	lwz r0, 0xef4(r30)
/* 80211A50  90 01 00 34 */	stw r0, 0x34(r1)
/* 80211A54  7F 23 CB 78 */	mr r3, r25
/* 80211A58  7C 99 A8 2E */	lwzx r4, r25, r21
/* 80211A5C  38 BB 06 6C */	addi r5, r27, 0x66c
/* 80211A60  C0 3E 0F 1C */	lfs f1, 0xf1c(r30)
/* 80211A64  38 C1 00 34 */	addi r6, r1, 0x34
/* 80211A68  38 E1 00 30 */	addi r7, r1, 0x30
/* 80211A6C  39 01 00 2C */	addi r8, r1, 0x2c
/* 80211A70  39 21 00 28 */	addi r9, r1, 0x28
/* 80211A74  C0 5E 0F 0C */	lfs f2, 0xf0c(r30)
/* 80211A78  39 40 00 03 */	li r10, 3
/* 80211A7C  48 00 25 75 */	bl drawPikari__13dMeter2Draw_cFP8CPaneMgrPffQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColorfUc
lbl_80211A80:
/* 80211A80  88 1E 0F 24 */	lbz r0, 0xf24(r30)
/* 80211A84  28 00 00 00 */	cmplwi r0, 0
/* 80211A88  41 82 00 28 */	beq lbl_80211AB0
/* 80211A8C  7F 83 E3 78 */	mr r3, r28
/* 80211A90  88 9F 4E 0C */	lbz r4, 0x4e0c(r31)
/* 80211A94  4B E2 28 AD */	bl getLightDropNum__16dSv_light_drop_cCFUc
/* 80211A98  88 9F 5E A1 */	lbz r4, 0x5ea1(r31)
/* 80211A9C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80211AA0  7C 04 00 40 */	cmplw r4, r0
/* 80211AA4  41 82 00 0C */	beq lbl_80211AB0
/* 80211AA8  C0 02 AE 80 */	lfs f0, lit_4182(r2)
/* 80211AAC  D0 1B 06 6C */	stfs f0, 0x66c(r27)
lbl_80211AB0:
/* 80211AB0  3B 5A 00 01 */	addi r26, r26, 1
/* 80211AB4  2C 1A 00 10 */	cmpwi r26, 0x10
/* 80211AB8  3B 18 00 0C */	addi r24, r24, 0xc
/* 80211ABC  3A F7 00 04 */	addi r23, r23, 4
/* 80211AC0  41 80 FF 14 */	blt lbl_802119D4
/* 80211AC4  3A A0 00 00 */	li r21, 0
/* 80211AC8  3B 40 00 00 */	li r26, 0
/* 80211ACC  3B 60 00 00 */	li r27, 0
/* 80211AD0  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 80211AD4  3A C3 EB C8 */	addi r22, r3, g_drawHIO@l
/* 80211AD8  C3 C2 AE 80 */	lfs f30, lit_4182(r2)
lbl_80211ADC:
/* 80211ADC  7C B9 DA 14 */	add r5, r25, r27
/* 80211AE0  C0 05 06 2C */	lfs f0, 0x62c(r5)
/* 80211AE4  FC 00 F0 40 */	fcmpo cr0, f0, f30
/* 80211AE8  40 81 00 54 */	ble lbl_80211B3C
/* 80211AEC  80 16 0E DC */	lwz r0, 0xedc(r22)
/* 80211AF0  90 01 00 18 */	stw r0, 0x18(r1)
/* 80211AF4  80 16 0E E0 */	lwz r0, 0xee0(r22)
/* 80211AF8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80211AFC  80 16 0E D4 */	lwz r0, 0xed4(r22)
/* 80211B00  90 01 00 20 */	stw r0, 0x20(r1)
/* 80211B04  80 16 0E D8 */	lwz r0, 0xed8(r22)
/* 80211B08  90 01 00 24 */	stw r0, 0x24(r1)
/* 80211B0C  7F 23 CB 78 */	mr r3, r25
/* 80211B10  38 1A 01 F4 */	addi r0, r26, 0x1f4
/* 80211B14  7C 99 00 2E */	lwzx r4, r25, r0
/* 80211B18  38 A5 06 2C */	addi r5, r5, 0x62c
/* 80211B1C  FC 20 E0 90 */	fmr f1, f28
/* 80211B20  38 C1 00 24 */	addi r6, r1, 0x24
/* 80211B24  38 E1 00 20 */	addi r7, r1, 0x20
/* 80211B28  39 01 00 1C */	addi r8, r1, 0x1c
/* 80211B2C  39 21 00 18 */	addi r9, r1, 0x18
/* 80211B30  FC 40 E8 90 */	fmr f2, f29
/* 80211B34  89 59 07 5F */	lbz r10, 0x75f(r25)
/* 80211B38  48 00 24 B9 */	bl drawPikari__13dMeter2Draw_cFP8CPaneMgrPffQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColorfUc
lbl_80211B3C:
/* 80211B3C  3A B5 00 01 */	addi r21, r21, 1
/* 80211B40  2C 15 00 10 */	cmpwi r21, 0x10
/* 80211B44  3B 5A 00 0C */	addi r26, r26, 0xc
/* 80211B48  3B 7B 00 04 */	addi r27, r27, 4
/* 80211B4C  41 80 FF 90 */	blt lbl_80211ADC
lbl_80211B50:
/* 80211B50  C0 39 07 38 */	lfs f1, 0x738(r25)
/* 80211B54  C0 02 AE 80 */	lfs f0, lit_4182(r2)
/* 80211B58  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80211B5C  40 81 00 58 */	ble lbl_80211BB4
/* 80211B60  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 80211B64  39 43 EB C8 */	addi r10, r3, g_drawHIO@l
/* 80211B68  80 0A 04 EC */	lwz r0, 0x4ec(r10)
/* 80211B6C  90 01 00 08 */	stw r0, 8(r1)
/* 80211B70  80 0A 04 F0 */	lwz r0, 0x4f0(r10)
/* 80211B74  90 01 00 0C */	stw r0, 0xc(r1)
/* 80211B78  80 0A 04 E4 */	lwz r0, 0x4e4(r10)
/* 80211B7C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80211B80  80 0A 04 E8 */	lwz r0, 0x4e8(r10)
/* 80211B84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80211B88  7F 23 CB 78 */	mr r3, r25
/* 80211B8C  80 99 03 08 */	lwz r4, 0x308(r25)
/* 80211B90  38 B9 07 38 */	addi r5, r25, 0x738
/* 80211B94  C0 2A 03 E8 */	lfs f1, 0x3e8(r10)
/* 80211B98  38 C1 00 14 */	addi r6, r1, 0x14
/* 80211B9C  38 E1 00 10 */	addi r7, r1, 0x10
/* 80211BA0  39 01 00 0C */	addi r8, r1, 0xc
/* 80211BA4  39 21 00 08 */	addi r9, r1, 8
/* 80211BA8  C0 4A 04 F4 */	lfs f2, 0x4f4(r10)
/* 80211BAC  39 40 00 03 */	li r10, 3
/* 80211BB0  48 00 24 41 */	bl drawPikari__13dMeter2Draw_cFP8CPaneMgrPffQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColorfUc
lbl_80211BB4:
/* 80211BB4  E3 E1 01 18 */	psq_l f31, 280(r1), 0, 0 /* qr0 */
/* 80211BB8  CB E1 01 10 */	lfd f31, 0x110(r1)
/* 80211BBC  E3 C1 01 08 */	psq_l f30, 264(r1), 0, 0 /* qr0 */
/* 80211BC0  CB C1 01 00 */	lfd f30, 0x100(r1)
/* 80211BC4  E3 A1 00 F8 */	psq_l f29, 248(r1), 0, 0 /* qr0 */
/* 80211BC8  CB A1 00 F0 */	lfd f29, 0xf0(r1)
/* 80211BCC  E3 81 00 E8 */	psq_l f28, 232(r1), 0, 0 /* qr0 */
/* 80211BD0  CB 81 00 E0 */	lfd f28, 0xe0(r1)
/* 80211BD4  39 61 00 E0 */	addi r11, r1, 0xe0
/* 80211BD8  48 15 06 31 */	bl _restgpr_21
/* 80211BDC  80 01 01 24 */	lwz r0, 0x124(r1)
/* 80211BE0  7C 08 03 A6 */	mtlr r0
/* 80211BE4  38 21 01 20 */	addi r1, r1, 0x120
/* 80211BE8  4E 80 00 20 */	blr 
