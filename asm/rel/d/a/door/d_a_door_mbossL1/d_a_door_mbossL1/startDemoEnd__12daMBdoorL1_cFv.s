lbl_8067684C:
/* 8067684C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80676850  7C 08 02 A6 */	mflr r0
/* 80676854  90 01 00 54 */	stw r0, 0x54(r1)
/* 80676858  39 61 00 50 */	addi r11, r1, 0x50
/* 8067685C  4B CE B9 81 */	bl _savegpr_29
/* 80676860  7C 7F 1B 78 */	mr r31, r3
/* 80676864  3C 60 80 67 */	lis r3, l_staff_name@ha /* 0x80677558@ha */
/* 80676868  3B C3 75 58 */	addi r30, r3, l_staff_name@l /* 0x80677558@l */
/* 8067686C  80 7F 05 98 */	lwz r3, 0x598(r31)
/* 80676870  4B BF 19 65 */	bl ChkUsed__9cBgW_BgIdCFv
/* 80676874  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80676878  40 82 00 1C */	bne lbl_80676894
/* 8067687C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80676880  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80676884  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80676888  80 9F 05 98 */	lwz r4, 0x598(r31)
/* 8067688C  7F E5 FB 78 */	mr r5, r31
/* 80676890  4B 9F E1 79 */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
lbl_80676894:
/* 80676894  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80676898  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8067689C  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 806768A0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 806768A4  7C 64 02 14 */	add r3, r4, r0
/* 806768A8  C0 23 00 04 */	lfs f1, 4(r3)
/* 806768AC  7C 04 04 2E */	lfsx f0, r4, r0
/* 806768B0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806768B4  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 806768B8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 806768BC  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 806768C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806768C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806768C8  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 806768CC  38 61 00 08 */	addi r3, r1, 8
/* 806768D0  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 806768D4  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 806768D8  4B BF 02 5D */	bl __mi__4cXyzCFRC3Vec
/* 806768DC  C0 21 00 08 */	lfs f1, 8(r1)
/* 806768E0  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 806768E4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 806768E8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 806768EC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 806768F0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 806768F4  C0 C1 00 2C */	lfs f6, 0x2c(r1)
/* 806768F8  EC 21 01 B2 */	fmuls f1, f1, f6
/* 806768FC  C0 41 00 34 */	lfs f2, 0x34(r1)
/* 80676900  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80676904  EC 81 00 2A */	fadds f4, f1, f0
/* 80676908  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 8067690C  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80676910  40 80 00 0C */	bge lbl_8067691C
/* 80676914  C0 BE 00 B8 */	lfs f5, 0xb8(r30)
/* 80676918  48 00 00 08 */	b lbl_80676920
lbl_8067691C:
/* 8067691C  C0 BE 00 BC */	lfs f5, 0xbc(r30)
lbl_80676920:
/* 80676920  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 80676924  EC 05 00 B2 */	fmuls f0, f5, f2
/* 80676928  EC 61 00 28 */	fsubs f3, f1, f0
/* 8067692C  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80676930  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80676934  EC 05 01 B2 */	fmuls f0, f5, f6
/* 80676938  EC 01 00 28 */	fsubs f0, f1, f0
/* 8067693C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80676940  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80676944  D0 61 00 1C */	stfs f3, 0x1c(r1)
/* 80676948  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 8067694C  7C 06 07 74 */	extsb r6, r0
/* 80676950  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80676954  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80676958  38 63 0D B4 */	addi r3, r3, 0xdb4
/* 8067695C  38 81 00 14 */	addi r4, r1, 0x14
/* 80676960  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80676964  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80676968  40 81 00 0C */	ble lbl_80676974
/* 8067696C  A8 BF 04 DE */	lha r5, 0x4de(r31)
/* 80676970  48 00 00 14 */	b lbl_80676984
lbl_80676974:
/* 80676974  A8 BF 04 DE */	lha r5, 0x4de(r31)
/* 80676978  3C A5 00 01 */	addis r5, r5, 1
/* 8067697C  38 05 80 00 */	addi r0, r5, -32768
/* 80676980  7C 05 07 34 */	extsh r5, r0
lbl_80676984:
/* 80676984  4B 9B E5 FD */	bl setRoom__13dSv_restart_cFRC4cXyzsSc
/* 80676988  38 60 00 01 */	li r3, 1
/* 8067698C  39 61 00 50 */	addi r11, r1, 0x50
/* 80676990  4B CE B8 99 */	bl _restgpr_29
/* 80676994  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80676998  7C 08 03 A6 */	mtlr r0
/* 8067699C  38 21 00 50 */	addi r1, r1, 0x50
/* 806769A0  4E 80 00 20 */	blr 
