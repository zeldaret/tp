lbl_8024389C:
/* 8024389C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802438A0  7C 08 02 A6 */	mflr r0
/* 802438A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802438A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802438AC  93 C1 00 08 */	stw r30, 8(r1)
/* 802438B0  7C 7F 1B 78 */	mr r31, r3
/* 802438B4  A8 83 21 28 */	lha r4, 0x2128(r3)
/* 802438B8  A8 03 21 36 */	lha r0, 0x2136(r3)
/* 802438BC  7C 04 00 00 */	cmpw r4, r0
/* 802438C0  40 80 00 20 */	bge lbl_802438E0
/* 802438C4  B0 9F 21 32 */	sth r4, 0x2132(r31)
/* 802438C8  A8 9F 21 28 */	lha r4, 0x2128(r31)
/* 802438CC  38 04 00 01 */	addi r0, r4, 1
/* 802438D0  B0 1F 21 28 */	sth r0, 0x2128(r31)
/* 802438D4  38 80 00 01 */	li r4, 1
/* 802438D8  48 00 04 F5 */	bl moveBaseLength__14dMsgScrnHowl_cFb
/* 802438DC  48 00 00 88 */	b lbl_80243964
lbl_802438E0:
/* 802438E0  A8 9F 21 2E */	lha r4, 0x212e(r31)
/* 802438E4  A0 7F 21 38 */	lhz r3, 0x2138(r31)
/* 802438E8  38 03 01 7C */	addi r0, r3, 0x17c
/* 802438EC  7C 04 00 00 */	cmpw r4, r0
/* 802438F0  40 80 00 0C */	bge lbl_802438FC
/* 802438F4  38 04 00 01 */	addi r0, r4, 1
/* 802438F8  B0 1F 21 2E */	sth r0, 0x212e(r31)
lbl_802438FC:
/* 802438FC  A8 1F 21 24 */	lha r0, 0x2124(r31)
/* 80243900  B0 1F 21 32 */	sth r0, 0x2132(r31)
/* 80243904  7F E3 FB 78 */	mr r3, r31
/* 80243908  A8 9F 21 24 */	lha r4, 0x2124(r31)
/* 8024390C  48 00 06 4D */	bl addCount__14dMsgScrnHowl_cFs
/* 80243910  B0 7F 21 24 */	sth r3, 0x2124(r31)
/* 80243914  7F E3 FB 78 */	mr r3, r31
/* 80243918  38 80 00 00 */	li r4, 0
/* 8024391C  48 00 02 C5 */	bl moveLineV__14dMsgScrnHowl_cFb
/* 80243920  7F E3 FB 78 */	mr r3, r31
/* 80243924  38 80 00 00 */	li r4, 0
/* 80243928  48 00 04 A5 */	bl moveBaseLength__14dMsgScrnHowl_cFb
/* 8024392C  38 60 00 00 */	li r3, 0
/* 80243930  C0 42 B2 50 */	lfs f2, lit_4427(r2)
/* 80243934  38 00 00 1E */	li r0, 0x1e
/* 80243938  7C 09 03 A6 */	mtctr r0
lbl_8024393C:
/* 8024393C  7C 9F 1A 14 */	add r4, r31, r3
/* 80243940  C0 04 1A 90 */	lfs f0, 0x1a90(r4)
/* 80243944  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80243948  40 81 00 14 */	ble lbl_8024395C
/* 8024394C  C0 24 19 A0 */	lfs f1, 0x19a0(r4)
/* 80243950  C0 1F 19 80 */	lfs f0, 0x1980(r31)
/* 80243954  EC 01 00 28 */	fsubs f0, f1, f0
/* 80243958  D0 04 19 A0 */	stfs f0, 0x19a0(r4)
lbl_8024395C:
/* 8024395C  38 63 00 04 */	addi r3, r3, 4
/* 80243960  42 00 FF DC */	bdnz lbl_8024393C
lbl_80243964:
/* 80243964  88 1F 27 98 */	lbz r0, 0x2798(r31)
/* 80243968  28 00 00 03 */	cmplwi r0, 3
/* 8024396C  41 82 00 74 */	beq lbl_802439E0
/* 80243970  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80243974  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 80243978  80 7E 5D B4 */	lwz r3, 0x5db4(r30)
/* 8024397C  38 63 2D 84 */	addi r3, r3, 0x2d84
/* 80243980  48 08 7C D1 */	bl getOnLineNum__13Z2WolfHowlMgrFv
/* 80243984  7C 60 07 75 */	extsb. r0, r3
/* 80243988  41 80 00 48 */	blt lbl_802439D0
/* 8024398C  A8 1F 21 2A */	lha r0, 0x212a(r31)
/* 80243990  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80243994  41 80 00 3C */	blt lbl_802439D0
/* 80243998  80 9E 5D B4 */	lwz r4, 0x5db4(r30)
/* 8024399C  80 04 2E 0C */	lwz r0, 0x2e0c(r4)
/* 802439A0  28 00 00 00 */	cmplwi r0, 0
/* 802439A4  41 82 00 2C */	beq lbl_802439D0
/* 802439A8  7C 60 07 74 */	extsb r0, r3
/* 802439AC  7C 9F 02 14 */	add r4, r31, r0
/* 802439B0  88 64 21 58 */	lbz r3, 0x2158(r4)
/* 802439B4  38 03 00 01 */	addi r0, r3, 1
/* 802439B8  98 04 21 58 */	stb r0, 0x2158(r4)
/* 802439BC  38 80 00 01 */	li r4, 1
/* 802439C0  A8 1F 21 2A */	lha r0, 0x212a(r31)
/* 802439C4  7C 7F 02 14 */	add r3, r31, r0
/* 802439C8  98 83 24 98 */	stb r4, 0x2498(r3)
/* 802439CC  48 00 00 14 */	b lbl_802439E0
lbl_802439D0:
/* 802439D0  38 80 00 00 */	li r4, 0
/* 802439D4  A8 1F 21 2A */	lha r0, 0x212a(r31)
/* 802439D8  7C 7F 02 14 */	add r3, r31, r0
/* 802439DC  98 83 24 98 */	stb r4, 0x2498(r3)
lbl_802439E0:
/* 802439E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 802439E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 802439E8  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 802439EC  81 83 06 28 */	lwz r12, 0x628(r3)
/* 802439F0  81 8C 02 98 */	lwz r12, 0x298(r12)
/* 802439F4  7D 89 03 A6 */	mtctr r12
/* 802439F8  4E 80 04 21 */	bctrl 
/* 802439FC  48 08 72 D1 */	bl getNowInputValue__13Z2WolfHowlMgrFv
/* 80243A00  FC 20 08 50 */	fneg f1, f1
/* 80243A04  7F E3 FB 78 */	mr r3, r31
/* 80243A08  48 00 05 8D */	bl getNowPlotPitch__14dMsgScrnHowl_cFf
/* 80243A0C  A8 1F 21 32 */	lha r0, 0x2132(r31)
/* 80243A10  54 00 10 3A */	slwi r0, r0, 2
/* 80243A14  7C 7F 02 14 */	add r3, r31, r0
/* 80243A18  D0 23 01 80 */	stfs f1, 0x180(r3)
/* 80243A1C  3C 60 80 43 */	lis r3, g_MsgObject_HIO_c@ha
/* 80243A20  38 63 02 8C */	addi r3, r3, g_MsgObject_HIO_c@l
/* 80243A24  A8 83 04 0C */	lha r4, 0x40c(r3)
/* 80243A28  A8 1F 21 32 */	lha r0, 0x2132(r31)
/* 80243A2C  54 00 08 3C */	slwi r0, r0, 1
/* 80243A30  7C 7F 02 14 */	add r3, r31, r0
/* 80243A34  B0 83 1B 14 */	sth r4, 0x1b14(r3)
/* 80243A38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80243A3C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80243A40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80243A44  7C 08 03 A6 */	mtlr r0
/* 80243A48  38 21 00 10 */	addi r1, r1, 0x10
/* 80243A4C  4E 80 00 20 */	blr 
