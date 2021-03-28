lbl_8081CE6C:
/* 8081CE6C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8081CE70  7C 08 02 A6 */	mflr r0
/* 8081CE74  90 01 00 64 */	stw r0, 0x64(r1)
/* 8081CE78  39 61 00 60 */	addi r11, r1, 0x60
/* 8081CE7C  4B B4 53 54 */	b _savegpr_26
/* 8081CE80  7C 7D 1B 78 */	mr r29, r3
/* 8081CE84  3C 80 80 82 */	lis r4, lit_3791@ha
/* 8081CE88  3B E4 18 AC */	addi r31, r4, lit_3791@l
/* 8081CE8C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8081CE90  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8081CE94  83 C4 5D AC */	lwz r30, 0x5dac(r4)
/* 8081CE98  4B FF A3 E5 */	bl setDownWaitVoice__9daE_YMB_cFv
/* 8081CE9C  80 1D 06 B8 */	lwz r0, 0x6b8(r29)
/* 8081CEA0  2C 00 00 02 */	cmpwi r0, 2
/* 8081CEA4  41 82 00 E8 */	beq lbl_8081CF8C
/* 8081CEA8  40 80 00 14 */	bge lbl_8081CEBC
/* 8081CEAC  2C 00 00 00 */	cmpwi r0, 0
/* 8081CEB0  41 82 00 1C */	beq lbl_8081CECC
/* 8081CEB4  40 80 00 28 */	bge lbl_8081CEDC
/* 8081CEB8  48 00 06 08 */	b lbl_8081D4C0
lbl_8081CEBC:
/* 8081CEBC  2C 00 00 04 */	cmpwi r0, 4
/* 8081CEC0  41 82 03 94 */	beq lbl_8081D254
/* 8081CEC4  40 80 05 FC */	bge lbl_8081D4C0
/* 8081CEC8  48 00 01 7C */	b lbl_8081D044
lbl_8081CECC:
/* 8081CECC  38 00 00 01 */	li r0, 1
/* 8081CED0  90 1D 06 B8 */	stw r0, 0x6b8(r29)
/* 8081CED4  7F A3 EB 78 */	mr r3, r29
/* 8081CED8  4B FF FD 3D */	bl initDownToWater__9daE_YMB_cFv
lbl_8081CEDC:
/* 8081CEDC  7F A3 EB 78 */	mr r3, r29
/* 8081CEE0  4B FF FE 21 */	bl calcDownToWater__9daE_YMB_cFv
/* 8081CEE4  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 8081CEE8  C0 3D 06 CC */	lfs f1, 0x6cc(r29)
/* 8081CEEC  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 8081CEF0  EC 01 00 28 */	fsubs f0, f1, f0
/* 8081CEF4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8081CEF8  40 80 05 C8 */	bge lbl_8081D4C0
/* 8081CEFC  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007029D@ha */
/* 8081CF00  38 03 02 9D */	addi r0, r3, 0x029D /* 0x0007029D@l */
/* 8081CF04  90 01 00 10 */	stw r0, 0x10(r1)
/* 8081CF08  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 8081CF0C  38 81 00 10 */	addi r4, r1, 0x10
/* 8081CF10  38 A0 00 00 */	li r5, 0
/* 8081CF14  38 C0 FF FF */	li r6, -1
/* 8081CF18  81 9D 05 C4 */	lwz r12, 0x5c4(r29)
/* 8081CF1C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8081CF20  7D 89 03 A6 */	mtctr r12
/* 8081CF24  4E 80 04 21 */	bctrl 
/* 8081CF28  38 00 00 01 */	li r0, 1
/* 8081CF2C  98 1D 07 14 */	stb r0, 0x714(r29)
/* 8081CF30  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8081CF34  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8081CF38  38 00 00 02 */	li r0, 2
/* 8081CF3C  90 1D 06 B8 */	stw r0, 0x6b8(r29)
/* 8081CF40  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702BB@ha */
/* 8081CF44  38 03 02 BB */	addi r0, r3, 0x02BB /* 0x000702BB@l */
/* 8081CF48  90 01 00 0C */	stw r0, 0xc(r1)
/* 8081CF4C  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 8081CF50  38 81 00 0C */	addi r4, r1, 0xc
/* 8081CF54  38 A0 FF FF */	li r5, -1
/* 8081CF58  81 9D 05 C4 */	lwz r12, 0x5c4(r29)
/* 8081CF5C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8081CF60  7D 89 03 A6 */	mtctr r12
/* 8081CF64  4E 80 04 21 */	bctrl 
/* 8081CF68  7F A3 EB 78 */	mr r3, r29
/* 8081CF6C  38 80 00 0E */	li r4, 0xe
/* 8081CF70  38 A0 00 02 */	li r5, 2
/* 8081CF74  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 8081CF78  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8081CF7C  4B FF 9A 01 */	bl setBck__9daE_YMB_cFiUcff
/* 8081CF80  38 00 00 00 */	li r0, 0
/* 8081CF84  98 1D 07 17 */	stb r0, 0x717(r29)
/* 8081CF88  48 00 05 38 */	b lbl_8081D4C0
lbl_8081CF8C:
/* 8081CF8C  80 7D 07 98 */	lwz r3, 0x798(r29)
/* 8081CF90  28 03 00 00 */	cmplwi r3, 0
/* 8081CF94  41 82 00 28 */	beq lbl_8081CFBC
/* 8081CF98  4B A4 B2 3C */	b ChkUsed__9cBgW_BgIdCFv
/* 8081CF9C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8081CFA0  40 82 00 1C */	bne lbl_8081CFBC
/* 8081CFA4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8081CFA8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8081CFAC  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8081CFB0  80 9D 07 98 */	lwz r4, 0x798(r29)
/* 8081CFB4  7F A5 EB 78 */	mr r5, r29
/* 8081CFB8  4B 85 7A 50 */	b Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
lbl_8081CFBC:
/* 8081CFBC  38 7D 04 FC */	addi r3, r29, 0x4fc
/* 8081CFC0  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 8081CFC4  C0 5F 00 38 */	lfs f2, 0x38(r31)
/* 8081CFC8  4B A5 37 78 */	b cLib_chaseF__FPfff
/* 8081CFCC  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 8081CFD0  C0 3D 06 CC */	lfs f1, 0x6cc(r29)
/* 8081CFD4  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 8081CFD8  EC 01 00 28 */	fsubs f0, f1, f0
/* 8081CFDC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8081CFE0  40 81 04 E0 */	ble lbl_8081D4C0
/* 8081CFE4  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 8081CFE8  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8081CFEC  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 8081CFF0  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8081CFF4  38 00 00 03 */	li r0, 3
/* 8081CFF8  90 1D 06 B8 */	stw r0, 0x6b8(r29)
/* 8081CFFC  3C 60 80 82 */	lis r3, l_HIO@ha
/* 8081D000  38 63 1E 64 */	addi r3, r3, l_HIO@l
/* 8081D004  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8081D008  FC 00 00 1E */	fctiwz f0, f0
/* 8081D00C  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 8081D010  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8081D014  90 1D 06 FC */	stw r0, 0x6fc(r29)
/* 8081D018  38 00 00 01 */	li r0, 1
/* 8081D01C  90 1D 06 F4 */	stw r0, 0x6f4(r29)
/* 8081D020  38 00 00 00 */	li r0, 0
/* 8081D024  90 1D 06 F0 */	stw r0, 0x6f0(r29)
/* 8081D028  90 1D 07 00 */	stw r0, 0x700(r29)
/* 8081D02C  98 1D 07 18 */	stb r0, 0x718(r29)
/* 8081D030  38 60 00 01 */	li r3, 1
/* 8081D034  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 8081D038  7C 04 07 74 */	extsb r4, r0
/* 8081D03C  4B 81 0A 60 */	b dComIfGs_onOneZoneSwitch__Fii
/* 8081D040  48 00 04 80 */	b lbl_8081D4C0
lbl_8081D044:
/* 8081D044  88 1D 07 24 */	lbz r0, 0x724(r29)
/* 8081D048  28 00 00 00 */	cmplwi r0, 0
/* 8081D04C  41 82 00 10 */	beq lbl_8081D05C
/* 8081D050  38 00 00 01 */	li r0, 1
/* 8081D054  98 1D 07 16 */	stb r0, 0x716(r29)
/* 8081D058  48 00 00 0C */	b lbl_8081D064
lbl_8081D05C:
/* 8081D05C  38 00 00 00 */	li r0, 0
/* 8081D060  98 1D 07 16 */	stb r0, 0x716(r29)
lbl_8081D064:
/* 8081D064  7F A3 EB 78 */	mr r3, r29
/* 8081D068  4B FF F8 A1 */	bl setWolfLockEffect__9daE_YMB_cFv
/* 8081D06C  7F A3 EB 78 */	mr r3, r29
/* 8081D070  4B FF AB 69 */	bl setDownHamonEffect__9daE_YMB_cFv
/* 8081D074  80 1D 08 58 */	lwz r0, 0x858(r29)
/* 8081D078  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8081D07C  90 1D 08 58 */	stw r0, 0x858(r29)
/* 8081D080  80 1D 09 90 */	lwz r0, 0x990(r29)
/* 8081D084  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8081D088  90 1D 09 90 */	stw r0, 0x990(r29)
/* 8081D08C  80 1D 08 44 */	lwz r0, 0x844(r29)
/* 8081D090  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8081D094  90 1D 08 44 */	stw r0, 0x844(r29)
/* 8081D098  80 1D 09 7C */	lwz r0, 0x97c(r29)
/* 8081D09C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8081D0A0  90 1D 09 7C */	stw r0, 0x97c(r29)
/* 8081D0A4  3B 40 00 00 */	li r26, 0
/* 8081D0A8  3B E0 00 00 */	li r31, 0
/* 8081D0AC  3B 80 00 00 */	li r28, 0
lbl_8081D0B0:
/* 8081D0B0  7F 7D E2 14 */	add r27, r29, r28
/* 8081D0B4  80 1B 0C 00 */	lwz r0, 0xc00(r27)
/* 8081D0B8  60 00 00 01 */	ori r0, r0, 1
/* 8081D0BC  90 1B 0C 00 */	stw r0, 0xc00(r27)
/* 8081D0C0  38 1F 06 80 */	addi r0, r31, 0x680
/* 8081D0C4  7C 1D 00 2E */	lwzx r0, r29, r0
/* 8081D0C8  2C 00 00 00 */	cmpwi r0, 0
/* 8081D0CC  40 82 00 10 */	bne lbl_8081D0DC
/* 8081D0D0  80 1D 06 98 */	lwz r0, 0x698(r29)
/* 8081D0D4  2C 00 00 00 */	cmpwi r0, 0
/* 8081D0D8  41 82 00 14 */	beq lbl_8081D0EC
lbl_8081D0DC:
/* 8081D0DC  80 1B 0B EC */	lwz r0, 0xbec(r27)
/* 8081D0E0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8081D0E4  90 1B 0B EC */	stw r0, 0xbec(r27)
/* 8081D0E8  48 00 00 10 */	b lbl_8081D0F8
lbl_8081D0EC:
/* 8081D0EC  80 1B 0B EC */	lwz r0, 0xbec(r27)
/* 8081D0F0  60 00 00 01 */	ori r0, r0, 1
/* 8081D0F4  90 1B 0B EC */	stw r0, 0xbec(r27)
lbl_8081D0F8:
/* 8081D0F8  7F C3 F3 78 */	mr r3, r30
/* 8081D0FC  7F A4 EB 78 */	mr r4, r29
/* 8081D100  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 8081D104  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 8081D108  7D 89 03 A6 */	mtctr r12
/* 8081D10C  4E 80 04 21 */	bctrl 
/* 8081D110  2C 03 00 00 */	cmpwi r3, 0
/* 8081D114  41 82 00 10 */	beq lbl_8081D124
/* 8081D118  80 1B 0C 70 */	lwz r0, 0xc70(r27)
/* 8081D11C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8081D120  90 1B 0C 70 */	stw r0, 0xc70(r27)
lbl_8081D124:
/* 8081D124  3B 5A 00 01 */	addi r26, r26, 1
/* 8081D128  2C 1A 00 06 */	cmpwi r26, 6
/* 8081D12C  3B FF 00 04 */	addi r31, r31, 4
/* 8081D130  3B 9C 01 38 */	addi r28, r28, 0x138
/* 8081D134  41 80 FF 7C */	blt lbl_8081D0B0
/* 8081D138  80 7D 07 98 */	lwz r3, 0x798(r29)
/* 8081D13C  28 03 00 00 */	cmplwi r3, 0
/* 8081D140  41 82 00 28 */	beq lbl_8081D168
/* 8081D144  4B A4 B0 90 */	b ChkUsed__9cBgW_BgIdCFv
/* 8081D148  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8081D14C  40 82 00 1C */	bne lbl_8081D168
/* 8081D150  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8081D154  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8081D158  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8081D15C  80 9D 07 98 */	lwz r4, 0x798(r29)
/* 8081D160  7F A5 EB 78 */	mr r5, r29
/* 8081D164  4B 85 78 A4 */	b Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
lbl_8081D168:
/* 8081D168  38 7D 06 EA */	addi r3, r29, 0x6ea
/* 8081D16C  38 80 80 00 */	li r4, -32768
/* 8081D170  38 A0 00 08 */	li r5, 8
/* 8081D174  38 C0 10 00 */	li r6, 0x1000
/* 8081D178  38 E0 00 10 */	li r7, 0x10
/* 8081D17C  4B A5 33 C4 */	b cLib_addCalcAngleS__FPsssss
/* 8081D180  80 1D 06 FC */	lwz r0, 0x6fc(r29)
/* 8081D184  2C 00 00 00 */	cmpwi r0, 0
/* 8081D188  40 82 00 AC */	bne lbl_8081D234
/* 8081D18C  7F C3 F3 78 */	mr r3, r30
/* 8081D190  7F A4 EB 78 */	mr r4, r29
/* 8081D194  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 8081D198  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 8081D19C  7D 89 03 A6 */	mtctr r12
/* 8081D1A0  4E 80 04 21 */	bctrl 
/* 8081D1A4  2C 03 00 00 */	cmpwi r3, 0
/* 8081D1A8  40 82 00 8C */	bne lbl_8081D234
/* 8081D1AC  80 9D 07 98 */	lwz r4, 0x798(r29)
/* 8081D1B0  28 04 00 00 */	cmplwi r4, 0
/* 8081D1B4  41 82 00 14 */	beq lbl_8081D1C8
/* 8081D1B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8081D1BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8081D1C0  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8081D1C4  4B 85 70 8C */	b Release__4cBgSFP9dBgW_Base
lbl_8081D1C8:
/* 8081D1C8  38 60 00 00 */	li r3, 0
/* 8081D1CC  38 00 00 06 */	li r0, 6
/* 8081D1D0  7C 09 03 A6 */	mtctr r0
lbl_8081D1D4:
/* 8081D1D4  7C 9D 1A 14 */	add r4, r29, r3
/* 8081D1D8  80 04 0B EC */	lwz r0, 0xbec(r4)
/* 8081D1DC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8081D1E0  90 04 0B EC */	stw r0, 0xbec(r4)
/* 8081D1E4  80 04 0C 00 */	lwz r0, 0xc00(r4)
/* 8081D1E8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8081D1EC  90 04 0C 00 */	stw r0, 0xc00(r4)
/* 8081D1F0  38 63 01 38 */	addi r3, r3, 0x138
/* 8081D1F4  42 00 FF E0 */	bdnz lbl_8081D1D4
/* 8081D1F8  7F A3 EB 78 */	mr r3, r29
/* 8081D1FC  38 80 00 06 */	li r4, 6
/* 8081D200  38 A0 00 00 */	li r5, 0
/* 8081D204  4B FF 98 79 */	bl setActionMode__9daE_YMB_cFii
/* 8081D208  38 00 00 02 */	li r0, 2
/* 8081D20C  90 1D 06 EC */	stw r0, 0x6ec(r29)
/* 8081D210  38 00 00 00 */	li r0, 0
/* 8081D214  98 1D 07 16 */	stb r0, 0x716(r29)
/* 8081D218  90 1D 06 F4 */	stw r0, 0x6f4(r29)
/* 8081D21C  38 00 00 01 */	li r0, 1
/* 8081D220  98 1D 07 17 */	stb r0, 0x717(r29)
/* 8081D224  38 60 00 01 */	li r3, 1
/* 8081D228  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 8081D22C  7C 04 07 74 */	extsb r4, r0
/* 8081D230  4B 81 08 D0 */	b dComIfGs_offOneZoneSwitch__Fii
lbl_8081D234:
/* 8081D234  88 1E 05 68 */	lbz r0, 0x568(r30)
/* 8081D238  28 00 00 36 */	cmplwi r0, 0x36
/* 8081D23C  40 82 02 84 */	bne lbl_8081D4C0
/* 8081D240  38 00 00 04 */	li r0, 4
/* 8081D244  90 1D 06 B8 */	stw r0, 0x6b8(r29)
/* 8081D248  38 00 00 00 */	li r0, 0
/* 8081D24C  90 1D 06 FC */	stw r0, 0x6fc(r29)
/* 8081D250  48 00 02 70 */	b lbl_8081D4C0
lbl_8081D254:
/* 8081D254  7F A3 EB 78 */	mr r3, r29
/* 8081D258  4B FF A9 81 */	bl setDownHamonEffect__9daE_YMB_cFv
/* 8081D25C  80 1D 08 58 */	lwz r0, 0x858(r29)
/* 8081D260  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8081D264  90 1D 08 58 */	stw r0, 0x858(r29)
/* 8081D268  80 1D 09 90 */	lwz r0, 0x990(r29)
/* 8081D26C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8081D270  90 1D 09 90 */	stw r0, 0x990(r29)
/* 8081D274  80 1D 08 44 */	lwz r0, 0x844(r29)
/* 8081D278  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8081D27C  90 1D 08 44 */	stw r0, 0x844(r29)
/* 8081D280  80 1D 09 7C */	lwz r0, 0x97c(r29)
/* 8081D284  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8081D288  90 1D 09 7C */	stw r0, 0x97c(r29)
/* 8081D28C  80 1D 08 C8 */	lwz r0, 0x8c8(r29)
/* 8081D290  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8081D294  90 1D 08 C8 */	stw r0, 0x8c8(r29)
/* 8081D298  80 1D 0A 00 */	lwz r0, 0xa00(r29)
/* 8081D29C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8081D2A0  90 1D 0A 00 */	stw r0, 0xa00(r29)
/* 8081D2A4  38 60 00 00 */	li r3, 0
/* 8081D2A8  38 00 00 06 */	li r0, 6
/* 8081D2AC  7C 09 03 A6 */	mtctr r0
lbl_8081D2B0:
/* 8081D2B0  7C 9D 1A 14 */	add r4, r29, r3
/* 8081D2B4  80 04 0B EC */	lwz r0, 0xbec(r4)
/* 8081D2B8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8081D2BC  90 04 0B EC */	stw r0, 0xbec(r4)
/* 8081D2C0  80 04 0C 70 */	lwz r0, 0xc70(r4)
/* 8081D2C4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8081D2C8  90 04 0C 70 */	stw r0, 0xc70(r4)
/* 8081D2CC  80 04 0C 00 */	lwz r0, 0xc00(r4)
/* 8081D2D0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8081D2D4  90 04 0C 00 */	stw r0, 0xc00(r4)
/* 8081D2D8  38 63 01 38 */	addi r3, r3, 0x138
/* 8081D2DC  42 00 FF D4 */	bdnz lbl_8081D2B0
/* 8081D2E0  80 7D 07 98 */	lwz r3, 0x798(r29)
/* 8081D2E4  28 03 00 00 */	cmplwi r3, 0
/* 8081D2E8  41 82 00 24 */	beq lbl_8081D30C
/* 8081D2EC  4B A4 AE E8 */	b ChkUsed__9cBgW_BgIdCFv
/* 8081D2F0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8081D2F4  41 82 00 18 */	beq lbl_8081D30C
/* 8081D2F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8081D2FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8081D300  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8081D304  80 9D 07 98 */	lwz r4, 0x798(r29)
/* 8081D308  4B 85 6F 48 */	b Release__4cBgSFP9dBgW_Base
lbl_8081D30C:
/* 8081D30C  80 1D 06 FC */	lwz r0, 0x6fc(r29)
/* 8081D310  2C 00 00 00 */	cmpwi r0, 0
/* 8081D314  40 82 01 80 */	bne lbl_8081D494
/* 8081D318  7F A3 EB 78 */	mr r3, r29
/* 8081D31C  48 00 2E 0D */	bl getDownLockPoint__9daE_YMB_cFv
/* 8081D320  80 9D 05 BC */	lwz r4, 0x5bc(r29)
/* 8081D324  80 84 00 04 */	lwz r4, 4(r4)
/* 8081D328  80 84 00 84 */	lwz r4, 0x84(r4)
/* 8081D32C  80 84 00 0C */	lwz r4, 0xc(r4)
/* 8081D330  1C 03 00 30 */	mulli r0, r3, 0x30
/* 8081D334  7C 64 02 14 */	add r3, r4, r0
/* 8081D338  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8081D33C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8081D340  4B B2 91 70 */	b PSMTXCopy
/* 8081D344  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8081D348  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8081D34C  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 8081D350  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8081D354  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8081D358  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8081D35C  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8081D360  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8081D364  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8081D368  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 8081D36C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8081D370  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8081D374  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 8081D378  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8081D37C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8081D380  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8081D384  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 8081D388  38 61 00 14 */	addi r3, r1, 0x14
/* 8081D38C  38 81 00 20 */	addi r4, r1, 0x20
/* 8081D390  4B B2 A0 0C */	b PSVECSquareDistance
/* 8081D394  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8081D398  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8081D39C  40 81 00 58 */	ble lbl_8081D3F4
/* 8081D3A0  FC 00 08 34 */	frsqrte f0, f1
/* 8081D3A4  C8 9F 00 40 */	lfd f4, 0x40(r31)
/* 8081D3A8  FC 44 00 32 */	fmul f2, f4, f0
/* 8081D3AC  C8 7F 00 48 */	lfd f3, 0x48(r31)
/* 8081D3B0  FC 00 00 32 */	fmul f0, f0, f0
/* 8081D3B4  FC 01 00 32 */	fmul f0, f1, f0
/* 8081D3B8  FC 03 00 28 */	fsub f0, f3, f0
/* 8081D3BC  FC 02 00 32 */	fmul f0, f2, f0
/* 8081D3C0  FC 44 00 32 */	fmul f2, f4, f0
/* 8081D3C4  FC 00 00 32 */	fmul f0, f0, f0
/* 8081D3C8  FC 01 00 32 */	fmul f0, f1, f0
/* 8081D3CC  FC 03 00 28 */	fsub f0, f3, f0
/* 8081D3D0  FC 02 00 32 */	fmul f0, f2, f0
/* 8081D3D4  FC 44 00 32 */	fmul f2, f4, f0
/* 8081D3D8  FC 00 00 32 */	fmul f0, f0, f0
/* 8081D3DC  FC 01 00 32 */	fmul f0, f1, f0
/* 8081D3E0  FC 03 00 28 */	fsub f0, f3, f0
/* 8081D3E4  FC 02 00 32 */	fmul f0, f2, f0
/* 8081D3E8  FC 21 00 32 */	fmul f1, f1, f0
/* 8081D3EC  FC 20 08 18 */	frsp f1, f1
/* 8081D3F0  48 00 00 88 */	b lbl_8081D478
lbl_8081D3F4:
/* 8081D3F4  C8 1F 00 50 */	lfd f0, 0x50(r31)
/* 8081D3F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8081D3FC  40 80 00 10 */	bge lbl_8081D40C
/* 8081D400  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8081D404  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8081D408  48 00 00 70 */	b lbl_8081D478
lbl_8081D40C:
/* 8081D40C  D0 21 00 08 */	stfs f1, 8(r1)
/* 8081D410  80 81 00 08 */	lwz r4, 8(r1)
/* 8081D414  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8081D418  3C 00 7F 80 */	lis r0, 0x7f80
/* 8081D41C  7C 03 00 00 */	cmpw r3, r0
/* 8081D420  41 82 00 14 */	beq lbl_8081D434
/* 8081D424  40 80 00 40 */	bge lbl_8081D464
/* 8081D428  2C 03 00 00 */	cmpwi r3, 0
/* 8081D42C  41 82 00 20 */	beq lbl_8081D44C
/* 8081D430  48 00 00 34 */	b lbl_8081D464
lbl_8081D434:
/* 8081D434  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8081D438  41 82 00 0C */	beq lbl_8081D444
/* 8081D43C  38 00 00 01 */	li r0, 1
/* 8081D440  48 00 00 28 */	b lbl_8081D468
lbl_8081D444:
/* 8081D444  38 00 00 02 */	li r0, 2
/* 8081D448  48 00 00 20 */	b lbl_8081D468
lbl_8081D44C:
/* 8081D44C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8081D450  41 82 00 0C */	beq lbl_8081D45C
/* 8081D454  38 00 00 05 */	li r0, 5
/* 8081D458  48 00 00 10 */	b lbl_8081D468
lbl_8081D45C:
/* 8081D45C  38 00 00 03 */	li r0, 3
/* 8081D460  48 00 00 08 */	b lbl_8081D468
lbl_8081D464:
/* 8081D464  38 00 00 04 */	li r0, 4
lbl_8081D468:
/* 8081D468  2C 00 00 01 */	cmpwi r0, 1
/* 8081D46C  40 82 00 0C */	bne lbl_8081D478
/* 8081D470  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8081D474  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8081D478:
/* 8081D478  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 8081D47C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8081D480  40 80 00 14 */	bge lbl_8081D494
/* 8081D484  7F A3 EB 78 */	mr r3, r29
/* 8081D488  4B FF 96 01 */	bl setLastDamage__9daE_YMB_cFv
/* 8081D48C  38 00 00 03 */	li r0, 3
/* 8081D490  90 1D 06 FC */	stw r0, 0x6fc(r29)
lbl_8081D494:
/* 8081D494  88 1E 05 68 */	lbz r0, 0x568(r30)
/* 8081D498  28 00 00 36 */	cmplwi r0, 0x36
/* 8081D49C  41 82 00 24 */	beq lbl_8081D4C0
/* 8081D4A0  7F A3 EB 78 */	mr r3, r29
/* 8081D4A4  38 80 00 09 */	li r4, 9
/* 8081D4A8  38 A0 00 00 */	li r5, 0
/* 8081D4AC  4B FF 95 D1 */	bl setActionMode__9daE_YMB_cFii
/* 8081D4B0  38 60 00 01 */	li r3, 1
/* 8081D4B4  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 8081D4B8  7C 04 07 74 */	extsb r4, r0
/* 8081D4BC  4B 81 06 44 */	b dComIfGs_offOneZoneSwitch__Fii
lbl_8081D4C0:
/* 8081D4C0  39 61 00 60 */	addi r11, r1, 0x60
/* 8081D4C4  4B B4 4D 58 */	b _restgpr_26
/* 8081D4C8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8081D4CC  7C 08 03 A6 */	mtlr r0
/* 8081D4D0  38 21 00 60 */	addi r1, r1, 0x60
/* 8081D4D4  4E 80 00 20 */	blr 
