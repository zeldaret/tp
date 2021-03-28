lbl_8066CEC4:
/* 8066CEC4  94 21 FE D0 */	stwu r1, -0x130(r1)
/* 8066CEC8  7C 08 02 A6 */	mflr r0
/* 8066CECC  90 01 01 34 */	stw r0, 0x134(r1)
/* 8066CED0  39 61 01 30 */	addi r11, r1, 0x130
/* 8066CED4  4B CF 52 EC */	b _savegpr_22
/* 8066CED8  7C 7D 1B 78 */	mr r29, r3
/* 8066CEDC  3C 80 80 67 */	lis r4, lit_1109@ha
/* 8066CEE0  3B C4 F2 78 */	addi r30, r4, lit_1109@l
/* 8066CEE4  3C 80 80 67 */	lis r4, lit_3662@ha
/* 8066CEE8  3B E4 ED E8 */	addi r31, r4, lit_3662@l
/* 8066CEEC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8066CEF0  3B 04 61 C0 */	addi r24, r4, g_dComIfG_gameInfo@l
/* 8066CEF4  83 98 5D AC */	lwz r28, 0x5dac(r24)
/* 8066CEF8  C0 1F 01 88 */	lfs f0, 0x188(r31)
/* 8066CEFC  D0 03 05 30 */	stfs f0, 0x530(r3)
/* 8066CF00  80 98 5D AC */	lwz r4, 0x5dac(r24)
/* 8066CF04  4B 9A D8 DC */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8066CF08  D0 3D 05 C8 */	stfs f1, 0x5c8(r29)
/* 8066CF0C  80 78 5D AC */	lwz r3, 0x5dac(r24)
/* 8066CF10  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8066CF14  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 8066CF18  7D 89 03 A6 */	mtctr r12
/* 8066CF1C  4E 80 04 21 */	bctrl 
/* 8066CF20  28 03 00 00 */	cmplwi r3, 0
/* 8066CF24  41 82 00 14 */	beq lbl_8066CF38
/* 8066CF28  C0 3D 05 C8 */	lfs f1, 0x5c8(r29)
/* 8066CF2C  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8066CF30  EC 01 00 28 */	fsubs f0, f1, f0
/* 8066CF34  D0 1D 05 C8 */	stfs f0, 0x5c8(r29)
lbl_8066CF38:
/* 8066CF38  7F A3 EB 78 */	mr r3, r29
/* 8066CF3C  80 98 5D AC */	lwz r4, 0x5dac(r24)
/* 8066CF40  4B 9A D7 D0 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8066CF44  B0 7D 05 CC */	sth r3, 0x5cc(r29)
/* 8066CF48  C0 3C 05 3C */	lfs f1, 0x53c(r28)
/* 8066CF4C  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 8066CF50  EC 01 00 28 */	fsubs f0, f1, f0
/* 8066CF54  FC 00 02 10 */	fabs f0, f0
/* 8066CF58  FC 00 00 18 */	frsp f0, f0
/* 8066CF5C  D0 1D 06 58 */	stfs f0, 0x658(r29)
/* 8066CF60  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha
/* 8066CF64  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l
/* 8066CF68  80 03 00 30 */	lwz r0, 0x30(r3)
/* 8066CF6C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8066CF70  41 82 00 24 */	beq lbl_8066CF94
/* 8066CF74  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 8066CF78  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 8066CF7C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8066CF80  FC 00 02 10 */	fabs f0, f0
/* 8066CF84  FC 20 00 18 */	frsp f1, f0
/* 8066CF88  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 8066CF8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8066CF90  40 81 00 0C */	ble lbl_8066CF9C
lbl_8066CF94:
/* 8066CF94  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 8066CF98  D0 1D 06 58 */	stfs f0, 0x658(r29)
lbl_8066CF9C:
/* 8066CF9C  C0 3D 06 58 */	lfs f1, 0x658(r29)
/* 8066CFA0  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 8066CFA4  EC 01 00 32 */	fmuls f0, f1, f0
/* 8066CFA8  D0 1D 06 58 */	stfs f0, 0x658(r29)
/* 8066CFAC  3B 60 00 01 */	li r27, 1
/* 8066CFB0  3B 40 00 01 */	li r26, 1
/* 8066CFB4  3B 20 00 01 */	li r25, 1
/* 8066CFB8  80 1D 09 3C */	lwz r0, 0x93c(r29)
/* 8066CFBC  60 00 00 01 */	ori r0, r0, 1
/* 8066CFC0  90 1D 09 3C */	stw r0, 0x93c(r29)
/* 8066CFC4  C0 3D 06 08 */	lfs f1, 0x608(r29)
/* 8066CFC8  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8066CFCC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8066CFD0  40 80 01 AC */	bge lbl_8066D17C
/* 8066CFD4  38 00 00 00 */	li r0, 0
/* 8066CFD8  98 1D 0C 05 */	stb r0, 0xc05(r29)
/* 8066CFDC  A8 1D 05 F2 */	lha r0, 0x5f2(r29)
/* 8066CFE0  28 00 00 27 */	cmplwi r0, 0x27
/* 8066CFE4  41 81 01 98 */	bgt lbl_8066D17C
/* 8066CFE8  3C 60 80 67 */	lis r3, lit_5955@ha
/* 8066CFEC  38 63 F0 EC */	addi r3, r3, lit_5955@l
/* 8066CFF0  54 00 10 3A */	slwi r0, r0, 2
/* 8066CFF4  7C 03 00 2E */	lwzx r0, r3, r0
/* 8066CFF8  7C 09 03 A6 */	mtctr r0
/* 8066CFFC  4E 80 04 20 */	bctr 
lbl_8066D000:
/* 8066D000  7F A3 EB 78 */	mr r3, r29
/* 8066D004  4B FF BD 59 */	bl do_stay__FP8do_class
/* 8066D008  7F A3 EB 78 */	mr r3, r29
/* 8066D00C  4B FF B5 81 */	bl food_check__FP8do_class
/* 8066D010  38 00 00 01 */	li r0, 1
/* 8066D014  98 1D 0C 05 */	stb r0, 0xc05(r29)
/* 8066D018  48 00 01 64 */	b lbl_8066D17C
lbl_8066D01C:
/* 8066D01C  7F A3 EB 78 */	mr r3, r29
/* 8066D020  4B FF C0 31 */	bl do_walk__FP8do_class
/* 8066D024  7F A3 EB 78 */	mr r3, r29
/* 8066D028  4B FF B5 65 */	bl food_check__FP8do_class
/* 8066D02C  38 00 00 01 */	li r0, 1
/* 8066D030  98 1D 0C 05 */	stb r0, 0xc05(r29)
/* 8066D034  48 00 01 48 */	b lbl_8066D17C
lbl_8066D038:
/* 8066D038  7F A3 EB 78 */	mr r3, r29
/* 8066D03C  4B FF C7 01 */	bl do_walk_run__FP8do_class
/* 8066D040  7F A3 EB 78 */	mr r3, r29
/* 8066D044  4B FF B5 49 */	bl food_check__FP8do_class
/* 8066D048  38 00 00 01 */	li r0, 1
/* 8066D04C  98 1D 0C 05 */	stb r0, 0xc05(r29)
/* 8066D050  48 00 01 2C */	b lbl_8066D17C
lbl_8066D054:
/* 8066D054  7F A3 EB 78 */	mr r3, r29
/* 8066D058  4B FF C8 79 */	bl do_run__FP8do_class
/* 8066D05C  7F A3 EB 78 */	mr r3, r29
/* 8066D060  4B FF B5 2D */	bl food_check__FP8do_class
/* 8066D064  38 00 00 01 */	li r0, 1
/* 8066D068  98 1D 0C 05 */	stb r0, 0xc05(r29)
/* 8066D06C  48 00 01 10 */	b lbl_8066D17C
lbl_8066D070:
/* 8066D070  7F A3 EB 78 */	mr r3, r29
/* 8066D074  4B FF C9 A9 */	bl do_run_walk__FP8do_class
/* 8066D078  7F A3 EB 78 */	mr r3, r29
/* 8066D07C  4B FF B5 11 */	bl food_check__FP8do_class
/* 8066D080  38 00 00 01 */	li r0, 1
/* 8066D084  98 1D 0C 05 */	stb r0, 0xc05(r29)
/* 8066D088  48 00 00 F4 */	b lbl_8066D17C
lbl_8066D08C:
/* 8066D08C  7F A3 EB 78 */	mr r3, r29
/* 8066D090  4B FF DA E9 */	bl do_food__FP8do_class
/* 8066D094  38 00 00 01 */	li r0, 1
/* 8066D098  98 1D 0C 05 */	stb r0, 0xc05(r29)
/* 8066D09C  48 00 00 E0 */	b lbl_8066D17C
lbl_8066D0A0:
/* 8066D0A0  7F A3 EB 78 */	mr r3, r29
/* 8066D0A4  4B FF CA DD */	bl do_wait_1__FP8do_class
/* 8066D0A8  7F A3 EB 78 */	mr r3, r29
/* 8066D0AC  4B FF B4 E1 */	bl food_check__FP8do_class
/* 8066D0B0  38 00 00 01 */	li r0, 1
/* 8066D0B4  98 1D 0C 05 */	stb r0, 0xc05(r29)
/* 8066D0B8  48 00 00 C4 */	b lbl_8066D17C
lbl_8066D0BC:
/* 8066D0BC  7F A3 EB 78 */	mr r3, r29
/* 8066D0C0  4B FF D1 05 */	bl do_wait_2__FP8do_class
/* 8066D0C4  7F A3 EB 78 */	mr r3, r29
/* 8066D0C8  4B FF B4 C5 */	bl food_check__FP8do_class
/* 8066D0CC  38 00 00 01 */	li r0, 1
/* 8066D0D0  98 1D 0C 05 */	stb r0, 0xc05(r29)
/* 8066D0D4  48 00 00 A8 */	b lbl_8066D17C
lbl_8066D0D8:
/* 8066D0D8  7F A3 EB 78 */	mr r3, r29
/* 8066D0DC  4B FF D2 F5 */	bl do_sit__FP8do_class
/* 8066D0E0  7F A3 EB 78 */	mr r3, r29
/* 8066D0E4  4B FF B4 A9 */	bl food_check__FP8do_class
/* 8066D0E8  38 00 00 01 */	li r0, 1
/* 8066D0EC  98 1D 0C 05 */	stb r0, 0xc05(r29)
/* 8066D0F0  48 00 00 8C */	b lbl_8066D17C
lbl_8066D0F4:
/* 8066D0F4  7F A3 EB 78 */	mr r3, r29
/* 8066D0F8  4B FF F7 9D */	bl do_a_swim__FP8do_class
/* 8066D0FC  48 00 00 80 */	b lbl_8066D17C
lbl_8066D100:
/* 8066D100  7F A3 EB 78 */	mr r3, r29
/* 8066D104  4B FF E5 4D */	bl do_swim__FP8do_class
/* 8066D108  3B 20 00 00 */	li r25, 0
/* 8066D10C  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8066D110  38 9D 06 B0 */	addi r4, r29, 0x6b0
/* 8066D114  38 BD 06 B4 */	addi r5, r29, 0x6b4
/* 8066D118  C0 3F 01 14 */	lfs f1, 0x114(r31)
/* 8066D11C  4B 9B 00 D8 */	b fopAcM_riverStream__FP4cXyzPsPff
/* 8066D120  48 00 00 5C */	b lbl_8066D17C
lbl_8066D124:
/* 8066D124  7F A3 EB 78 */	mr r3, r29
/* 8066D128  4B FF E6 99 */	bl do_help__FP8do_class
/* 8066D12C  48 00 00 50 */	b lbl_8066D17C
lbl_8066D130:
/* 8066D130  7F A3 EB 78 */	mr r3, r29
/* 8066D134  4B FF EC 09 */	bl do_boat__FP8do_class
/* 8066D138  7C 7B 1B 78 */	mr r27, r3
/* 8066D13C  48 00 00 40 */	b lbl_8066D17C
lbl_8066D140:
/* 8066D140  7F A3 EB 78 */	mr r3, r29
/* 8066D144  4B FF D6 C9 */	bl do_hang__FP8do_class
/* 8066D148  48 00 00 34 */	b lbl_8066D17C
lbl_8066D14C:
/* 8066D14C  7F A3 EB 78 */	mr r3, r29
/* 8066D150  4B FF F9 59 */	bl do_carry__FP8do_class
/* 8066D154  7C 7B 1B 78 */	mr r27, r3
/* 8066D158  80 1D 09 3C */	lwz r0, 0x93c(r29)
/* 8066D15C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8066D160  90 1D 09 3C */	stw r0, 0x93c(r29)
/* 8066D164  3B 40 00 00 */	li r26, 0
/* 8066D168  48 00 00 14 */	b lbl_8066D17C
lbl_8066D16C:
/* 8066D16C  7F A3 EB 78 */	mr r3, r29
/* 8066D170  4B FF FC 7D */	bl do_message__FP8do_class
/* 8066D174  38 00 00 02 */	li r0, 2
/* 8066D178  98 1D 0C 05 */	stb r0, 0xc05(r29)
lbl_8066D17C:
/* 8066D17C  80 7D 06 80 */	lwz r3, 0x680(r29)
/* 8066D180  3C 03 00 01 */	addis r0, r3, 1
/* 8066D184  28 00 FF FF */	cmplwi r0, 0xffff
/* 8066D188  41 82 00 4C */	beq lbl_8066D1D4
/* 8066D18C  C0 5D 05 C8 */	lfs f2, 0x5c8(r29)
/* 8066D190  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 8066D194  C0 1D 06 7C */	lfs f0, 0x67c(r29)
/* 8066D198  EC 01 00 32 */	fmuls f0, f1, f0
/* 8066D19C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8066D1A0  40 80 00 34 */	bge lbl_8066D1D4
/* 8066D1A4  90 61 00 20 */	stw r3, 0x20(r1)
/* 8066D1A8  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 8066D1AC  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 8066D1B0  38 81 00 20 */	addi r4, r1, 0x20
/* 8066D1B4  4B 9A C6 44 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 8066D1B8  28 03 00 00 */	cmplwi r3, 0
/* 8066D1BC  41 82 00 08 */	beq lbl_8066D1C4
/* 8066D1C0  4B 9C AA 44 */	b endControl__8daItem_cFv
lbl_8066D1C4:
/* 8066D1C4  38 00 00 00 */	li r0, 0
/* 8066D1C8  98 1D 06 B8 */	stb r0, 0x6b8(r29)
/* 8066D1CC  38 00 FF FF */	li r0, -1
/* 8066D1D0  90 1D 06 80 */	stw r0, 0x680(r29)
lbl_8066D1D4:
/* 8066D1D4  88 7D 06 AE */	lbz r3, 0x6ae(r29)
/* 8066D1D8  7C 60 07 75 */	extsb. r0, r3
/* 8066D1DC  41 82 00 44 */	beq lbl_8066D220
/* 8066D1E0  38 03 FF FF */	addi r0, r3, -1
/* 8066D1E4  98 1D 06 AE */	stb r0, 0x6ae(r29)
/* 8066D1E8  88 1D 06 AE */	lbz r0, 0x6ae(r29)
/* 8066D1EC  7C 00 07 75 */	extsb. r0, r0
/* 8066D1F0  40 82 00 30 */	bne lbl_8066D220
/* 8066D1F4  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050013@ha */
/* 8066D1F8  38 03 00 13 */	addi r0, r3, 0x0013 /* 0x00050013@l */
/* 8066D1FC  90 01 00 28 */	stw r0, 0x28(r1)
/* 8066D200  38 7D 0B E4 */	addi r3, r29, 0xbe4
/* 8066D204  38 81 00 28 */	addi r4, r1, 0x28
/* 8066D208  38 A0 00 00 */	li r5, 0
/* 8066D20C  38 C0 FF FF */	li r6, -1
/* 8066D210  81 9D 0B F4 */	lwz r12, 0xbf4(r29)
/* 8066D214  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8066D218  7D 89 03 A6 */	mtctr r12
/* 8066D21C  4E 80 04 21 */	bctrl 
lbl_8066D220:
/* 8066D220  88 1D 0C 05 */	lbz r0, 0xc05(r29)
/* 8066D224  2C 00 00 01 */	cmpwi r0, 1
/* 8066D228  40 82 00 3C */	bne lbl_8066D264
/* 8066D22C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8066D230  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8066D234  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 8066D238  80 03 05 74 */	lwz r0, 0x574(r3)
/* 8066D23C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8066D240  41 82 00 24 */	beq lbl_8066D264
/* 8066D244  C0 3D 05 C8 */	lfs f1, 0x5c8(r29)
/* 8066D248  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 8066D24C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8066D250  40 80 00 14 */	bge lbl_8066D264
/* 8066D254  38 00 00 27 */	li r0, 0x27
/* 8066D258  B0 1D 05 F2 */	sth r0, 0x5f2(r29)
/* 8066D25C  38 00 00 00 */	li r0, 0
/* 8066D260  B0 1D 05 F6 */	sth r0, 0x5f6(r29)
lbl_8066D264:
/* 8066D264  7F 40 07 75 */	extsb. r0, r26
/* 8066D268  41 82 00 34 */	beq lbl_8066D29C
/* 8066D26C  C0 3C 05 2C */	lfs f1, 0x52c(r28)
/* 8066D270  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8066D274  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8066D278  40 80 00 24 */	bge lbl_8066D29C
/* 8066D27C  80 1D 05 5C */	lwz r0, 0x55c(r29)
/* 8066D280  60 00 00 10 */	ori r0, r0, 0x10
/* 8066D284  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 8066D288  7F A3 EB 78 */	mr r3, r29
/* 8066D28C  4B FF B3 61 */	bl do_carry_check__FP8do_class
/* 8066D290  2C 03 00 00 */	cmpwi r3, 0
/* 8066D294  41 82 00 14 */	beq lbl_8066D2A8
/* 8066D298  48 00 0A 98 */	b lbl_8066DD30
lbl_8066D29C:
/* 8066D29C  80 1D 05 5C */	lwz r0, 0x55c(r29)
/* 8066D2A0  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 8066D2A4  90 1D 05 5C */	stw r0, 0x55c(r29)
lbl_8066D2A8:
/* 8066D2A8  38 7D 04 DC */	addi r3, r29, 0x4dc
/* 8066D2AC  38 80 00 00 */	li r4, 0
/* 8066D2B0  38 A0 00 01 */	li r5, 1
/* 8066D2B4  38 C0 04 00 */	li r6, 0x400
/* 8066D2B8  4B C0 33 50 */	b cLib_addCalcAngleS2__FPssss
/* 8066D2BC  A8 1D 05 F2 */	lha r0, 0x5f2(r29)
/* 8066D2C0  2C 00 00 1E */	cmpwi r0, 0x1e
/* 8066D2C4  41 82 02 C0 */	beq lbl_8066D584
/* 8066D2C8  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8066D2CC  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8066D2D0  80 63 00 00 */	lwz r3, 0(r3)
/* 8066D2D4  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 8066D2D8  4B 99 F1 04 */	b mDoMtx_YrotS__FPA4_fs
/* 8066D2DC  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8066D2E0  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8066D2E4  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8066D2E8  38 7E 00 4C */	addi r3, r30, 0x4c
/* 8066D2EC  C0 43 00 08 */	lfs f2, 8(r3)
/* 8066D2F0  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 8066D2F4  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 8066D2F8  EC 21 00 32 */	fmuls f1, f1, f0
/* 8066D2FC  C0 1D 06 7C */	lfs f0, 0x67c(r29)
/* 8066D300  EC 01 00 32 */	fmuls f0, f1, f0
/* 8066D304  EC 02 00 32 */	fmuls f0, f2, f0
/* 8066D308  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 8066D30C  38 61 00 80 */	addi r3, r1, 0x80
/* 8066D310  38 81 00 74 */	addi r4, r1, 0x74
/* 8066D314  4B C0 3B D8 */	b MtxPosition__FP4cXyzP4cXyz
/* 8066D318  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 8066D31C  D0 1D 04 F8 */	stfs f0, 0x4f8(r29)
/* 8066D320  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 8066D324  D0 1D 05 00 */	stfs f0, 0x500(r29)
/* 8066D328  C0 3D 04 FC */	lfs f1, 0x4fc(r29)
/* 8066D32C  C0 1D 05 30 */	lfs f0, 0x530(r29)
/* 8066D330  EC 01 00 2A */	fadds f0, f1, f0
/* 8066D334  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 8066D338  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8066D33C  38 9D 04 F8 */	addi r4, r29, 0x4f8
/* 8066D340  7C 65 1B 78 */	mr r5, r3
/* 8066D344  4B CD 9D 4C */	b PSVECAdd
/* 8066D348  C0 3D 04 FC */	lfs f1, 0x4fc(r29)
/* 8066D34C  C0 1F 01 68 */	lfs f0, 0x168(r31)
/* 8066D350  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8066D354  40 80 00 08 */	bge lbl_8066D35C
/* 8066D358  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
lbl_8066D35C:
/* 8066D35C  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 8066D360  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 8066D364  40 82 00 38 */	bne lbl_8066D39C
/* 8066D368  34 7D 08 D4 */	addic. r3, r29, 0x8d4
/* 8066D36C  41 82 00 30 */	beq lbl_8066D39C
/* 8066D370  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 8066D374  C0 5F 01 3C */	lfs f2, 0x13c(r31)
/* 8066D378  C0 03 00 00 */	lfs f0, 0(r3)
/* 8066D37C  EC 02 00 32 */	fmuls f0, f2, f0
/* 8066D380  EC 01 00 2A */	fadds f0, f1, f0
/* 8066D384  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 8066D388  C0 3D 04 D8 */	lfs f1, 0x4d8(r29)
/* 8066D38C  C0 03 00 08 */	lfs f0, 8(r3)
/* 8066D390  EC 02 00 32 */	fmuls f0, f2, f0
/* 8066D394  EC 01 00 2A */	fadds f0, f1, f0
/* 8066D398  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
lbl_8066D39C:
/* 8066D39C  C0 3D 06 08 */	lfs f1, 0x608(r29)
/* 8066D3A0  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8066D3A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8066D3A8  40 81 00 64 */	ble lbl_8066D40C
/* 8066D3AC  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8066D3B0  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8066D3B4  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8066D3B8  FC 00 08 50 */	fneg f0, f1
/* 8066D3BC  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 8066D3C0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8066D3C4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8066D3C8  80 63 00 00 */	lwz r3, 0(r3)
/* 8066D3CC  A8 9D 06 0C */	lha r4, 0x60c(r29)
/* 8066D3D0  4B 99 F0 0C */	b mDoMtx_YrotS__FPA4_fs
/* 8066D3D4  38 61 00 80 */	addi r3, r1, 0x80
/* 8066D3D8  38 81 00 74 */	addi r4, r1, 0x74
/* 8066D3DC  4B C0 3B 10 */	b MtxPosition__FP4cXyzP4cXyz
/* 8066D3E0  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8066D3E4  38 81 00 74 */	addi r4, r1, 0x74
/* 8066D3E8  7C 65 1B 78 */	mr r5, r3
/* 8066D3EC  4B CD 9C A4 */	b PSVECAdd
/* 8066D3F0  38 7D 06 08 */	addi r3, r29, 0x608
/* 8066D3F4  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8066D3F8  C0 5F 01 8C */	lfs f2, 0x18c(r31)
/* 8066D3FC  4B C0 26 84 */	b cLib_addCalc0__FPfff
/* 8066D400  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8066D404  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8066D408  3B 60 00 01 */	li r27, 1
lbl_8066D40C:
/* 8066D40C  7F 60 07 75 */	extsb. r0, r27
/* 8066D410  41 82 01 E8 */	beq lbl_8066D5F8
/* 8066D414  C0 1D 06 08 */	lfs f0, 0x608(r29)
/* 8066D418  FC 00 02 10 */	fabs f0, f0
/* 8066D41C  FC 40 00 18 */	frsp f2, f0
/* 8066D420  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 8066D424  FC 00 02 10 */	fabs f0, f0
/* 8066D428  FC 00 00 18 */	frsp f0, f0
/* 8066D42C  38 7D 06 BC */	addi r3, r29, 0x6bc
/* 8066D430  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 8066D434  EC 00 10 2A */	fadds f0, f0, f2
/* 8066D438  EC 41 00 2A */	fadds f2, f1, f0
/* 8066D43C  4B A0 8B 1C */	b SetWall__12dBgS_AcchCirFff
/* 8066D440  38 7D 06 FC */	addi r3, r29, 0x6fc
/* 8066D444  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8066D448  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8066D44C  3B 04 0F 38 */	addi r24, r4, 0xf38
/* 8066D450  7F 04 C3 78 */	mr r4, r24
/* 8066D454  4B A0 96 58 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 8066D458  80 1D 07 28 */	lwz r0, 0x728(r29)
/* 8066D45C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8066D460  41 82 01 98 */	beq lbl_8066D5F8
/* 8066D464  88 1E 00 3D */	lbz r0, 0x3d(r30)
/* 8066D468  28 00 00 00 */	cmplwi r0, 0
/* 8066D46C  40 82 01 8C */	bne lbl_8066D5F8
/* 8066D470  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 8066D474  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 8066D478  40 82 01 80 */	bne lbl_8066D5F8
/* 8066D47C  38 61 00 8C */	addi r3, r1, 0x8c
/* 8066D480  4B A0 A0 FC */	b __ct__11dBgS_GndChkFv
/* 8066D484  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8066D488  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8066D48C  80 63 00 00 */	lwz r3, 0(r3)
/* 8066D490  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 8066D494  4B 99 EF 48 */	b mDoMtx_YrotS__FPA4_fs
/* 8066D498  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8066D49C  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8066D4A0  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8066D4A4  C0 3F 01 90 */	lfs f1, 0x190(r31)
/* 8066D4A8  C0 1D 06 7C */	lfs f0, 0x67c(r29)
/* 8066D4AC  EC 01 00 32 */	fmuls f0, f1, f0
/* 8066D4B0  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 8066D4B4  38 61 00 80 */	addi r3, r1, 0x80
/* 8066D4B8  38 81 00 74 */	addi r4, r1, 0x74
/* 8066D4BC  4B C0 3A 30 */	b MtxPosition__FP4cXyzP4cXyz
/* 8066D4C0  38 61 00 74 */	addi r3, r1, 0x74
/* 8066D4C4  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8066D4C8  7C 65 1B 78 */	mr r5, r3
/* 8066D4CC  4B CD 9B C4 */	b PSVECAdd
/* 8066D4D0  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 8066D4D4  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8066D4D8  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 8066D4DC  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 8066D4E0  EC 01 00 2A */	fadds f0, f1, f0
/* 8066D4E4  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8066D4E8  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 8066D4EC  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8066D4F0  38 61 00 8C */	addi r3, r1, 0x8c
/* 8066D4F4  38 81 00 68 */	addi r4, r1, 0x68
/* 8066D4F8  4B BF A8 14 */	b SetPos__11cBgS_GndChkFPC3Vec
/* 8066D4FC  7F 03 C3 78 */	mr r3, r24
/* 8066D500  38 81 00 8C */	addi r4, r1, 0x8c
/* 8066D504  4B A0 6F 9C */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 8066D508  D0 21 00 78 */	stfs f1, 0x78(r1)
/* 8066D50C  38 61 00 50 */	addi r3, r1, 0x50
/* 8066D510  38 81 00 74 */	addi r4, r1, 0x74
/* 8066D514  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 8066D518  4B BF 96 1C */	b __mi__4cXyzCFRC3Vec
/* 8066D51C  C0 21 00 50 */	lfs f1, 0x50(r1)
/* 8066D520  D0 21 00 80 */	stfs f1, 0x80(r1)
/* 8066D524  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 8066D528  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8066D52C  C0 41 00 58 */	lfs f2, 0x58(r1)
/* 8066D530  D0 41 00 88 */	stfs f2, 0x88(r1)
/* 8066D534  FC 00 02 10 */	fabs f0, f0
/* 8066D538  FC 60 00 18 */	frsp f3, f0
/* 8066D53C  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 8066D540  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8066D544  40 80 00 30 */	bge lbl_8066D574
/* 8066D548  EC 21 00 72 */	fmuls f1, f1, f1
/* 8066D54C  EC 02 00 B2 */	fmuls f0, f2, f2
/* 8066D550  EC 41 00 2A */	fadds f2, f1, f0
/* 8066D554  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8066D558  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8066D55C  40 81 00 0C */	ble lbl_8066D568
/* 8066D560  FC 00 10 34 */	frsqrte f0, f2
/* 8066D564  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8066D568:
/* 8066D568  C0 21 00 84 */	lfs f1, 0x84(r1)
/* 8066D56C  4B BF A1 08 */	b cM_atan2s__Fff
/* 8066D570  B0 7D 04 DC */	sth r3, 0x4dc(r29)
lbl_8066D574:
/* 8066D574  38 61 00 8C */	addi r3, r1, 0x8c
/* 8066D578  38 80 FF FF */	li r4, -1
/* 8066D57C  4B A0 A0 74 */	b __dt__11dBgS_GndChkFv
/* 8066D580  48 00 00 78 */	b lbl_8066D5F8
lbl_8066D584:
/* 8066D584  C0 3D 06 08 */	lfs f1, 0x608(r29)
/* 8066D588  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8066D58C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8066D590  40 80 00 68 */	bge lbl_8066D5F8
/* 8066D594  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8066D598  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8066D59C  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8066D5A0  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8066D5A4  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 8066D5A8  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8066D5AC  7F A3 EB 78 */	mr r3, r29
/* 8066D5B0  38 81 00 44 */	addi r4, r1, 0x44
/* 8066D5B4  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 8066D5B8  4B FF B2 B5 */	bl dansa_check__FP8do_class4cXyzf
/* 8066D5BC  7C 03 00 D0 */	neg r0, r3
/* 8066D5C0  7C 00 18 78 */	andc r0, r0, r3
/* 8066D5C4  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 8066D5C8  41 82 00 30 */	beq lbl_8066D5F8
/* 8066D5CC  7F A3 EB 78 */	mr r3, r29
/* 8066D5D0  4B FF D0 0D */	bl hang_set__FP8do_class
/* 8066D5D4  B0 7D 06 60 */	sth r3, 0x660(r29)
/* 8066D5D8  A8 1D 06 60 */	lha r0, 0x660(r29)
/* 8066D5DC  2C 00 0D CF */	cmpwi r0, 0xdcf
/* 8066D5E0  41 82 00 18 */	beq lbl_8066D5F8
/* 8066D5E4  38 00 00 1E */	li r0, 0x1e
/* 8066D5E8  B0 1D 05 F2 */	sth r0, 0x5f2(r29)
/* 8066D5EC  38 00 00 00 */	li r0, 0
/* 8066D5F0  B0 1D 05 F6 */	sth r0, 0x5f6(r29)
/* 8066D5F4  B0 1D 06 3C */	sth r0, 0x63c(r29)
lbl_8066D5F8:
/* 8066D5F8  7F A3 EB 78 */	mr r3, r29
/* 8066D5FC  4B FF B1 59 */	bl water_check__FP8do_class
/* 8066D600  7F 20 07 75 */	extsb. r0, r25
/* 8066D604  41 82 01 8C */	beq lbl_8066D790
/* 8066D608  A8 1D 05 F2 */	lha r0, 0x5f2(r29)
/* 8066D60C  2C 00 00 23 */	cmpwi r0, 0x23
/* 8066D610  41 82 01 C8 */	beq lbl_8066D7D8
/* 8066D614  A8 7D 06 3C */	lha r3, 0x63c(r29)
/* 8066D618  2C 03 00 00 */	cmpwi r3, 0
/* 8066D61C  41 82 00 28 */	beq lbl_8066D644
/* 8066D620  38 03 FF FF */	addi r0, r3, -1
/* 8066D624  B0 1D 06 3C */	sth r0, 0x63c(r29)
/* 8066D628  A8 1D 06 3C */	lha r0, 0x63c(r29)
/* 8066D62C  2C 00 00 00 */	cmpwi r0, 0
/* 8066D630  40 82 00 14 */	bne lbl_8066D644
/* 8066D634  38 00 00 0A */	li r0, 0xa
/* 8066D638  B0 1D 05 F2 */	sth r0, 0x5f2(r29)
/* 8066D63C  38 00 00 00 */	li r0, 0
/* 8066D640  B0 1D 05 F6 */	sth r0, 0x5f6(r29)
lbl_8066D644:
/* 8066D644  C0 3D 06 5C */	lfs f1, 0x65c(r29)
/* 8066D648  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8066D64C  EC 21 00 28 */	fsubs f1, f1, f0
/* 8066D650  C0 1F 01 48 */	lfs f0, 0x148(r31)
/* 8066D654  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8066D658  40 81 01 80 */	ble lbl_8066D7D8
/* 8066D65C  38 60 00 14 */	li r3, 0x14
/* 8066D660  B0 7D 05 F2 */	sth r3, 0x5f2(r29)
/* 8066D664  38 00 00 00 */	li r0, 0
/* 8066D668  B0 1D 05 F6 */	sth r0, 0x5f6(r29)
/* 8066D66C  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8066D670  D0 1D 06 08 */	stfs f0, 0x608(r29)
/* 8066D674  A8 1D 06 06 */	lha r0, 0x606(r29)
/* 8066D678  2C 00 00 00 */	cmpwi r0, 0
/* 8066D67C  40 82 01 5C */	bne lbl_8066D7D8
/* 8066D680  B0 7D 06 06 */	sth r3, 0x606(r29)
/* 8066D684  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8066D688  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8066D68C  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8066D690  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8066D694  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 8066D698  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8066D69C  C0 1D 06 5C */	lfs f0, 0x65c(r29)
/* 8066D6A0  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8066D6A4  88 1E 00 A4 */	lbz r0, 0xa4(r30)
/* 8066D6A8  7C 00 07 75 */	extsb. r0, r0
/* 8066D6AC  40 82 00 30 */	bne lbl_8066D6DC
/* 8066D6B0  C0 1F 01 4C */	lfs f0, 0x14c(r31)
/* 8066D6B4  D0 1E 00 A8 */	stfs f0, 0xa8(r30)
/* 8066D6B8  38 7E 00 A8 */	addi r3, r30, 0xa8
/* 8066D6BC  D0 03 00 04 */	stfs f0, 4(r3)
/* 8066D6C0  D0 03 00 08 */	stfs f0, 8(r3)
/* 8066D6C4  3C 80 80 67 */	lis r4, __dt__4cXyzFv@ha
/* 8066D6C8  38 84 81 34 */	addi r4, r4, __dt__4cXyzFv@l
/* 8066D6CC  38 BE 00 98 */	addi r5, r30, 0x98
/* 8066D6D0  4B FF A6 09 */	bl __register_global_object
/* 8066D6D4  38 00 00 01 */	li r0, 1
/* 8066D6D8  98 1E 00 A4 */	stb r0, 0xa4(r30)
lbl_8066D6DC:
/* 8066D6DC  3A C0 00 00 */	li r22, 0
/* 8066D6E0  3B 20 00 00 */	li r25, 0
/* 8066D6E4  3B 40 00 00 */	li r26, 0
/* 8066D6E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8066D6EC  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l
/* 8066D6F0  3C 60 80 67 */	lis r3, w_eff_id@ha
/* 8066D6F4  3B 63 F0 E4 */	addi r27, r3, w_eff_id@l
lbl_8066D6F8:
/* 8066D6F8  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 8066D6FC  38 00 00 FF */	li r0, 0xff
/* 8066D700  90 01 00 08 */	stw r0, 8(r1)
/* 8066D704  38 80 00 00 */	li r4, 0
/* 8066D708  90 81 00 0C */	stw r4, 0xc(r1)
/* 8066D70C  38 00 FF FF */	li r0, -1
/* 8066D710  90 01 00 10 */	stw r0, 0x10(r1)
/* 8066D714  90 81 00 14 */	stw r4, 0x14(r1)
/* 8066D718  90 81 00 18 */	stw r4, 0x18(r1)
/* 8066D71C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8066D720  3A FA 0B D4 */	addi r23, r26, 0xbd4
/* 8066D724  7C 9D B8 2E */	lwzx r4, r29, r23
/* 8066D728  38 A0 00 00 */	li r5, 0
/* 8066D72C  7C DB CA 2E */	lhzx r6, r27, r25
/* 8066D730  38 E1 00 5C */	addi r7, r1, 0x5c
/* 8066D734  39 1D 01 0C */	addi r8, r29, 0x10c
/* 8066D738  39 20 00 00 */	li r9, 0
/* 8066D73C  39 5E 00 A8 */	addi r10, r30, 0xa8
/* 8066D740  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8066D744  4B 9D FD 88 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8066D748  7C 7D B9 2E */	stwx r3, r29, r23
/* 8066D74C  3A D6 00 01 */	addi r22, r22, 1
/* 8066D750  2C 16 00 04 */	cmpwi r22, 4
/* 8066D754  3B 39 00 02 */	addi r25, r25, 2
/* 8066D758  3B 5A 00 04 */	addi r26, r26, 4
/* 8066D75C  41 80 FF 9C */	blt lbl_8066D6F8
/* 8066D760  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060031@ha */
/* 8066D764  38 03 00 31 */	addi r0, r3, 0x0031 /* 0x00060031@l */
/* 8066D768  90 01 00 24 */	stw r0, 0x24(r1)
/* 8066D76C  38 7D 0B E4 */	addi r3, r29, 0xbe4
/* 8066D770  38 81 00 24 */	addi r4, r1, 0x24
/* 8066D774  38 A0 00 00 */	li r5, 0
/* 8066D778  38 C0 FF FF */	li r6, -1
/* 8066D77C  81 9D 0B F4 */	lwz r12, 0xbf4(r29)
/* 8066D780  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8066D784  7D 89 03 A6 */	mtctr r12
/* 8066D788  4E 80 04 21 */	bctrl 
/* 8066D78C  48 00 00 4C */	b lbl_8066D7D8
lbl_8066D790:
/* 8066D790  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 8066D794  4B BF A1 C0 */	b cM_rndF__Ff
/* 8066D798  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8066D79C  EC 00 08 2A */	fadds f0, f0, f1
/* 8066D7A0  FC 00 00 1E */	fctiwz f0, f0
/* 8066D7A4  D8 01 00 E0 */	stfd f0, 0xe0(r1)
/* 8066D7A8  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 8066D7AC  B0 1D 06 3C */	sth r0, 0x63c(r29)
/* 8066D7B0  C0 3D 06 5C */	lfs f1, 0x65c(r29)
/* 8066D7B4  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8066D7B8  EC 21 00 28 */	fsubs f1, f1, f0
/* 8066D7BC  C0 1F 01 94 */	lfs f0, 0x194(r31)
/* 8066D7C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8066D7C4  40 80 00 14 */	bge lbl_8066D7D8
/* 8066D7C8  38 00 00 06 */	li r0, 6
/* 8066D7CC  B0 1D 05 F2 */	sth r0, 0x5f2(r29)
/* 8066D7D0  38 00 00 00 */	li r0, 0
/* 8066D7D4  B0 1D 05 F6 */	sth r0, 0x5f6(r29)
lbl_8066D7D8:
/* 8066D7D8  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 8066D7DC  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 8066D7E0  38 A0 00 02 */	li r5, 2
/* 8066D7E4  38 C0 20 00 */	li r6, 0x2000
/* 8066D7E8  4B C0 2E 20 */	b cLib_addCalcAngleS2__FPssss
/* 8066D7EC  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 8066D7F0  A8 9D 04 DC */	lha r4, 0x4dc(r29)
/* 8066D7F4  38 A0 00 04 */	li r5, 4
/* 8066D7F8  38 C0 10 00 */	li r6, 0x1000
/* 8066D7FC  4B C0 2E 0C */	b cLib_addCalcAngleS2__FPssss
/* 8066D800  A8 1D 04 E0 */	lha r0, 0x4e0(r29)
/* 8066D804  B0 1D 04 E8 */	sth r0, 0x4e8(r29)
/* 8066D808  3A C0 00 00 */	li r22, 0
/* 8066D80C  3B 20 00 00 */	li r25, 0
/* 8066D810  88 7D 06 16 */	lbz r3, 0x616(r29)
/* 8066D814  7C 60 07 75 */	extsb. r0, r3
/* 8066D818  40 82 00 10 */	bne lbl_8066D828
/* 8066D81C  A8 1D 06 24 */	lha r0, 0x624(r29)
/* 8066D820  2C 00 00 00 */	cmpwi r0, 0
/* 8066D824  41 82 01 6C */	beq lbl_8066D990
lbl_8066D828:
/* 8066D828  7C 60 07 74 */	extsb r0, r3
/* 8066D82C  2C 00 00 02 */	cmpwi r0, 2
/* 8066D830  40 82 00 20 */	bne lbl_8066D850
/* 8066D834  A8 1D 05 F0 */	lha r0, 0x5f0(r29)
/* 8066D838  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8066D83C  41 82 00 0C */	beq lbl_8066D848
/* 8066D840  3A C0 27 10 */	li r22, 0x2710
/* 8066D844  48 00 01 44 */	b lbl_8066D988
lbl_8066D848:
/* 8066D848  3A C0 D8 F0 */	li r22, -10000
/* 8066D84C  48 00 01 3C */	b lbl_8066D988
lbl_8066D850:
/* 8066D850  A8 7D 06 24 */	lha r3, 0x624(r29)
/* 8066D854  2C 03 00 00 */	cmpwi r3, 0
/* 8066D858  41 82 00 38 */	beq lbl_8066D890
/* 8066D85C  38 03 FF FF */	addi r0, r3, -1
/* 8066D860  B0 1D 06 24 */	sth r0, 0x624(r29)
/* 8066D864  38 61 00 38 */	addi r3, r1, 0x38
/* 8066D868  38 9D 06 18 */	addi r4, r29, 0x618
/* 8066D86C  38 BD 05 38 */	addi r5, r29, 0x538
/* 8066D870  4B BF 92 C4 */	b __mi__4cXyzCFRC3Vec
/* 8066D874  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8066D878  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8066D87C  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8066D880  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8066D884  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8066D888  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 8066D88C  48 00 00 2C */	b lbl_8066D8B8
lbl_8066D890:
/* 8066D890  38 61 00 2C */	addi r3, r1, 0x2c
/* 8066D894  38 9C 05 38 */	addi r4, r28, 0x538
/* 8066D898  38 BD 05 38 */	addi r5, r29, 0x538
/* 8066D89C  4B BF 92 98 */	b __mi__4cXyzCFRC3Vec
/* 8066D8A0  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8066D8A4  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8066D8A8  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8066D8AC  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8066D8B0  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8066D8B4  D0 01 00 88 */	stfs f0, 0x88(r1)
lbl_8066D8B8:
/* 8066D8B8  C0 41 00 84 */	lfs f2, 0x84(r1)
/* 8066D8BC  C0 3F 01 98 */	lfs f1, 0x198(r31)
/* 8066D8C0  C0 1D 06 7C */	lfs f0, 0x67c(r29)
/* 8066D8C4  EC 01 00 32 */	fmuls f0, f1, f0
/* 8066D8C8  EC 02 00 2A */	fadds f0, f2, f0
/* 8066D8CC  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8066D8D0  C0 21 00 80 */	lfs f1, 0x80(r1)
/* 8066D8D4  C0 41 00 88 */	lfs f2, 0x88(r1)
/* 8066D8D8  4B BF 9D 9C */	b cM_atan2s__Fff
/* 8066D8DC  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 8066D8E0  7C 00 18 50 */	subf r0, r0, r3
/* 8066D8E4  7C 16 07 34 */	extsh r22, r0
/* 8066D8E8  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 8066D8EC  EC 20 00 32 */	fmuls f1, f0, f0
/* 8066D8F0  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 8066D8F4  EC 00 00 32 */	fmuls f0, f0, f0
/* 8066D8F8  EC 41 00 2A */	fadds f2, f1, f0
/* 8066D8FC  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8066D900  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8066D904  40 81 00 0C */	ble lbl_8066D910
/* 8066D908  FC 00 10 34 */	frsqrte f0, f2
/* 8066D90C  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8066D910:
/* 8066D910  C0 21 00 84 */	lfs f1, 0x84(r1)
/* 8066D914  4B BF 9D 60 */	b cM_atan2s__Fff
/* 8066D918  A8 1D 04 E4 */	lha r0, 0x4e4(r29)
/* 8066D91C  7C 00 1A 14 */	add r0, r0, r3
/* 8066D920  7C 19 07 34 */	extsh r25, r0
/* 8066D924  A8 1D 06 24 */	lha r0, 0x624(r29)
/* 8066D928  2C 00 00 00 */	cmpwi r0, 0
/* 8066D92C  40 82 00 18 */	bne lbl_8066D944
/* 8066D930  2C 16 5D C0 */	cmpwi r22, 0x5dc0
/* 8066D934  41 81 00 0C */	bgt lbl_8066D940
/* 8066D938  2C 16 A2 40 */	cmpwi r22, -24000
/* 8066D93C  40 80 00 08 */	bge lbl_8066D944
lbl_8066D940:
/* 8066D940  3A C0 00 00 */	li r22, 0
lbl_8066D944:
/* 8066D944  7E C0 07 34 */	extsh r0, r22
/* 8066D948  2C 00 2E E0 */	cmpwi r0, 0x2ee0
/* 8066D94C  40 81 00 0C */	ble lbl_8066D958
/* 8066D950  3A C0 2E E0 */	li r22, 0x2ee0
/* 8066D954  48 00 00 10 */	b lbl_8066D964
lbl_8066D958:
/* 8066D958  2C 00 D1 20 */	cmpwi r0, -12000
/* 8066D95C  40 80 00 08 */	bge lbl_8066D964
/* 8066D960  3A C0 D1 20 */	li r22, -12000
lbl_8066D964:
/* 8066D964  2C 19 2E E0 */	cmpwi r25, 0x2ee0
/* 8066D968  40 81 00 0C */	ble lbl_8066D974
/* 8066D96C  3B 20 2E E0 */	li r25, 0x2ee0
/* 8066D970  48 00 00 10 */	b lbl_8066D980
lbl_8066D974:
/* 8066D974  2C 19 D1 20 */	cmpwi r25, -12000
/* 8066D978  40 80 00 08 */	bge lbl_8066D980
/* 8066D97C  3B 20 D1 20 */	li r25, -12000
lbl_8066D980:
/* 8066D980  A8 1D 06 14 */	lha r0, 0x614(r29)
/* 8066D984  7E D6 02 14 */	add r22, r22, r0
lbl_8066D988:
/* 8066D988  38 00 00 00 */	li r0, 0
/* 8066D98C  98 1D 06 16 */	stb r0, 0x616(r29)
lbl_8066D990:
/* 8066D990  38 7D 06 10 */	addi r3, r29, 0x610
/* 8066D994  7E C0 07 34 */	extsh r0, r22
/* 8066D998  7C 00 0E 70 */	srawi r0, r0, 1
/* 8066D99C  7C 00 01 94 */	addze r0, r0
/* 8066D9A0  7C 04 07 34 */	extsh r4, r0
/* 8066D9A4  38 A0 00 04 */	li r5, 4
/* 8066D9A8  38 C0 20 00 */	li r6, 0x2000
/* 8066D9AC  4B C0 2C 5C */	b cLib_addCalcAngleS2__FPssss
/* 8066D9B0  38 7D 06 0E */	addi r3, r29, 0x60e
/* 8066D9B4  7F 20 07 34 */	extsh r0, r25
/* 8066D9B8  7C 00 0E 70 */	srawi r0, r0, 1
/* 8066D9BC  7C 00 01 94 */	addze r0, r0
/* 8066D9C0  7C 04 07 34 */	extsh r4, r0
/* 8066D9C4  38 A0 00 04 */	li r5, 4
/* 8066D9C8  38 C0 20 00 */	li r6, 0x2000
/* 8066D9CC  4B C0 2C 3C */	b cLib_addCalcAngleS2__FPssss
/* 8066D9D0  38 7D 06 14 */	addi r3, r29, 0x614
/* 8066D9D4  38 80 00 00 */	li r4, 0
/* 8066D9D8  38 A0 00 02 */	li r5, 2
/* 8066D9DC  38 C0 03 00 */	li r6, 0x300
/* 8066D9E0  4B C0 2C 28 */	b cLib_addCalcAngleS2__FPssss
/* 8066D9E4  38 7D 06 28 */	addi r3, r29, 0x628
/* 8066D9E8  A8 9D 06 2E */	lha r4, 0x62e(r29)
/* 8066D9EC  38 A0 00 04 */	li r5, 4
/* 8066D9F0  38 C0 04 00 */	li r6, 0x400
/* 8066D9F4  4B C0 2C 14 */	b cLib_addCalcAngleS2__FPssss
/* 8066D9F8  38 7D 06 2A */	addi r3, r29, 0x62a
/* 8066D9FC  A8 9D 06 30 */	lha r4, 0x630(r29)
/* 8066DA00  38 A0 00 04 */	li r5, 4
/* 8066DA04  38 C0 04 00 */	li r6, 0x400
/* 8066DA08  4B C0 2C 00 */	b cLib_addCalcAngleS2__FPssss
/* 8066DA0C  C0 1C 05 2C */	lfs f0, 0x52c(r28)
/* 8066DA10  FC 00 02 10 */	fabs f0, f0
/* 8066DA14  FC 00 00 18 */	frsp f0, f0
/* 8066DA18  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 8066DA1C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8066DA20  40 80 00 B4 */	bge lbl_8066DAD4
/* 8066DA24  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 8066DA28  FC 00 02 10 */	fabs f0, f0
/* 8066DA2C  FC 00 00 18 */	frsp f0, f0
/* 8066DA30  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8066DA34  40 80 00 A0 */	bge lbl_8066DAD4
/* 8066DA38  A8 7D 06 32 */	lha r3, 0x632(r29)
/* 8066DA3C  2C 03 00 00 */	cmpwi r3, 0
/* 8066DA40  41 82 00 C0 */	beq lbl_8066DB00
/* 8066DA44  38 03 FF FF */	addi r0, r3, -1
/* 8066DA48  B0 1D 06 32 */	sth r0, 0x632(r29)
/* 8066DA4C  A8 1D 06 32 */	lha r0, 0x632(r29)
/* 8066DA50  2C 00 00 00 */	cmpwi r0, 0
/* 8066DA54  40 82 00 AC */	bne lbl_8066DB00
/* 8066DA58  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 8066DA5C  4B BF 9E F8 */	b cM_rndF__Ff
/* 8066DA60  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 8066DA64  EC 00 08 2A */	fadds f0, f0, f1
/* 8066DA68  FC 00 00 1E */	fctiwz f0, f0
/* 8066DA6C  D8 01 00 E0 */	stfd f0, 0xe0(r1)
/* 8066DA70  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 8066DA74  B0 1D 06 32 */	sth r0, 0x632(r29)
/* 8066DA78  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8066DA7C  4B BF 9E D8 */	b cM_rndF__Ff
/* 8066DA80  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 8066DA84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8066DA88  40 80 00 1C */	bge lbl_8066DAA4
/* 8066DA8C  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 8066DA90  4B BF 9E FC */	b cM_rndFX__Ff
/* 8066DA94  FC 00 08 1E */	fctiwz f0, f1
/* 8066DA98  D8 01 00 E0 */	stfd f0, 0xe0(r1)
/* 8066DA9C  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 8066DAA0  B0 1D 06 2E */	sth r0, 0x62e(r29)
lbl_8066DAA4:
/* 8066DAA4  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8066DAA8  4B BF 9E AC */	b cM_rndF__Ff
/* 8066DAAC  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 8066DAB0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8066DAB4  40 80 00 4C */	bge lbl_8066DB00
/* 8066DAB8  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 8066DABC  4B BF 9E D0 */	b cM_rndFX__Ff
/* 8066DAC0  FC 00 08 1E */	fctiwz f0, f1
/* 8066DAC4  D8 01 00 E0 */	stfd f0, 0xe0(r1)
/* 8066DAC8  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 8066DACC  B0 1D 06 30 */	sth r0, 0x630(r29)
/* 8066DAD0  48 00 00 30 */	b lbl_8066DB00
lbl_8066DAD4:
/* 8066DAD4  38 00 00 00 */	li r0, 0
/* 8066DAD8  B0 1D 06 30 */	sth r0, 0x630(r29)
/* 8066DADC  B0 1D 06 2E */	sth r0, 0x62e(r29)
/* 8066DAE0  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 8066DAE4  4B BF 9E 70 */	b cM_rndF__Ff
/* 8066DAE8  C0 1F 01 9C */	lfs f0, 0x19c(r31)
/* 8066DAEC  EC 00 08 2A */	fadds f0, f0, f1
/* 8066DAF0  FC 00 00 1E */	fctiwz f0, f0
/* 8066DAF4  D8 01 00 E0 */	stfd f0, 0xe0(r1)
/* 8066DAF8  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 8066DAFC  B0 1D 06 32 */	sth r0, 0x632(r29)
lbl_8066DB00:
/* 8066DB00  C0 3D 06 34 */	lfs f1, 0x634(r29)
/* 8066DB04  C0 1F 01 74 */	lfs f0, 0x174(r31)
/* 8066DB08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8066DB0C  4C 41 13 82 */	cror 2, 1, 2
/* 8066DB10  40 82 00 84 */	bne lbl_8066DB94
/* 8066DB14  38 7E 00 4C */	addi r3, r30, 0x4c
/* 8066DB18  A8 03 00 1E */	lha r0, 0x1e(r3)
/* 8066DB1C  2C 00 00 00 */	cmpwi r0, 0
/* 8066DB20  41 82 00 68 */	beq lbl_8066DB88
/* 8066DB24  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 8066DB28  EC 40 00 72 */	fmuls f2, f0, f1
/* 8066DB2C  A8 1D 05 F0 */	lha r0, 0x5f0(r29)
/* 8066DB30  1C 00 55 F0 */	mulli r0, r0, 0x55f0
/* 8066DB34  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8066DB38  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8066DB3C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8066DB40  7C 03 04 2E */	lfsx f0, r3, r0
/* 8066DB44  C0 3F 01 14 */	lfs f1, 0x114(r31)
/* 8066DB48  EC 02 00 32 */	fmuls f0, f2, f0
/* 8066DB4C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8066DB50  FC 00 00 1E */	fctiwz f0, f0
/* 8066DB54  D8 01 00 E0 */	stfd f0, 0xe0(r1)
/* 8066DB58  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 8066DB5C  B0 1D 06 10 */	sth r0, 0x610(r29)
/* 8066DB60  A8 1D 05 F0 */	lha r0, 0x5f0(r29)
/* 8066DB64  1C 00 61 A8 */	mulli r0, r0, 0x61a8
/* 8066DB68  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8066DB6C  7C 03 04 2E */	lfsx f0, r3, r0
/* 8066DB70  EC 02 00 32 */	fmuls f0, f2, f0
/* 8066DB74  FC 00 00 1E */	fctiwz f0, f0
/* 8066DB78  D8 01 00 E8 */	stfd f0, 0xe8(r1)
/* 8066DB7C  80 01 00 EC */	lwz r0, 0xec(r1)
/* 8066DB80  B0 1D 06 12 */	sth r0, 0x612(r29)
/* 8066DB84  48 00 00 10 */	b lbl_8066DB94
lbl_8066DB88:
/* 8066DB88  38 00 00 00 */	li r0, 0
/* 8066DB8C  B0 1D 06 12 */	sth r0, 0x612(r29)
/* 8066DB90  B0 1D 06 10 */	sth r0, 0x610(r29)
lbl_8066DB94:
/* 8066DB94  38 7D 06 34 */	addi r3, r29, 0x634
/* 8066DB98  C0 3D 06 38 */	lfs f1, 0x638(r29)
/* 8066DB9C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8066DBA0  C0 7F 01 44 */	lfs f3, 0x144(r31)
/* 8066DBA4  4B C0 1E 98 */	b cLib_addCalc2__FPffff
/* 8066DBA8  38 7D 06 38 */	addi r3, r29, 0x638
/* 8066DBAC  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8066DBB0  C0 5F 01 A0 */	lfs f2, 0x1a0(r31)
/* 8066DBB4  4B C0 1E CC */	b cLib_addCalc0__FPfff
/* 8066DBB8  C0 1D 06 4C */	lfs f0, 0x64c(r29)
/* 8066DBBC  FC 00 00 1E */	fctiwz f0, f0
/* 8066DBC0  D8 01 00 E8 */	stfd f0, 0xe8(r1)
/* 8066DBC4  80 01 00 EC */	lwz r0, 0xec(r1)
/* 8066DBC8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8066DBCC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8066DBD0  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8066DBD4  7C 23 04 2E */	lfsx f1, r3, r0
/* 8066DBD8  C0 1D 06 44 */	lfs f0, 0x644(r29)
/* 8066DBDC  EC 00 00 72 */	fmuls f0, f0, f1
/* 8066DBE0  FC 00 00 1E */	fctiwz f0, f0
/* 8066DBE4  D8 01 00 E0 */	stfd f0, 0xe0(r1)
/* 8066DBE8  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 8066DBEC  B0 1D 06 40 */	sth r0, 0x640(r29)
/* 8066DBF0  C0 1D 06 50 */	lfs f0, 0x650(r29)
/* 8066DBF4  FC 00 00 1E */	fctiwz f0, f0
/* 8066DBF8  D8 01 00 F0 */	stfd f0, 0xf0(r1)
/* 8066DBFC  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 8066DC00  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8066DC04  7C 43 04 2E */	lfsx f2, r3, r0
/* 8066DC08  C0 3F 01 14 */	lfs f1, 0x114(r31)
/* 8066DC0C  C0 1D 06 44 */	lfs f0, 0x644(r29)
/* 8066DC10  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8066DC14  EC 01 00 32 */	fmuls f0, f1, f0
/* 8066DC18  FC 00 00 1E */	fctiwz f0, f0
/* 8066DC1C  D8 01 00 F8 */	stfd f0, 0xf8(r1)
/* 8066DC20  80 01 00 FC */	lwz r0, 0xfc(r1)
/* 8066DC24  B0 1D 06 3E */	sth r0, 0x63e(r29)
/* 8066DC28  C0 5D 06 4C */	lfs f2, 0x64c(r29)
/* 8066DC2C  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 8066DC30  C0 1D 06 44 */	lfs f0, 0x644(r29)
/* 8066DC34  EC 01 00 32 */	fmuls f0, f1, f0
/* 8066DC38  EC 02 00 2A */	fadds f0, f2, f0
/* 8066DC3C  D0 1D 06 4C */	stfs f0, 0x64c(r29)
/* 8066DC40  C0 3D 06 4C */	lfs f1, 0x64c(r29)
/* 8066DC44  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 8066DC48  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8066DC4C  40 81 00 0C */	ble lbl_8066DC58
/* 8066DC50  EC 01 00 28 */	fsubs f0, f1, f0
/* 8066DC54  D0 1D 06 4C */	stfs f0, 0x64c(r29)
lbl_8066DC58:
/* 8066DC58  C0 5D 06 50 */	lfs f2, 0x650(r29)
/* 8066DC5C  C0 3F 00 C4 */	lfs f1, 0xc4(r31)
/* 8066DC60  C0 1D 06 44 */	lfs f0, 0x644(r29)
/* 8066DC64  EC 01 00 32 */	fmuls f0, f1, f0
/* 8066DC68  EC 02 00 2A */	fadds f0, f2, f0
/* 8066DC6C  D0 1D 06 50 */	stfs f0, 0x650(r29)
/* 8066DC70  C0 3D 06 50 */	lfs f1, 0x650(r29)
/* 8066DC74  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 8066DC78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8066DC7C  40 81 00 0C */	ble lbl_8066DC88
/* 8066DC80  EC 01 00 28 */	fsubs f0, f1, f0
/* 8066DC84  D0 1D 06 50 */	stfs f0, 0x650(r29)
lbl_8066DC88:
/* 8066DC88  38 7D 06 44 */	addi r3, r29, 0x644
/* 8066DC8C  C0 3D 06 48 */	lfs f1, 0x648(r29)
/* 8066DC90  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8066DC94  C0 7F 00 1C */	lfs f3, 0x1c(r31)
/* 8066DC98  4B C0 1D A4 */	b cLib_addCalc2__FPffff
/* 8066DC9C  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8066DCA0  D0 1D 06 48 */	stfs f0, 0x648(r29)
/* 8066DCA4  88 1D 05 E2 */	lbz r0, 0x5e2(r29)
/* 8066DCA8  7C 00 07 75 */	extsb. r0, r0
/* 8066DCAC  41 82 00 2C */	beq lbl_8066DCD8
/* 8066DCB0  38 7D 05 DE */	addi r3, r29, 0x5de
/* 8066DCB4  38 80 00 03 */	li r4, 3
/* 8066DCB8  38 A0 00 01 */	li r5, 1
/* 8066DCBC  38 C0 00 01 */	li r6, 1
/* 8066DCC0  4B C0 29 48 */	b cLib_addCalcAngleS2__FPssss
/* 8066DCC4  38 00 00 00 */	li r0, 0
/* 8066DCC8  98 1D 05 E2 */	stb r0, 0x5e2(r29)
/* 8066DCCC  38 00 00 3C */	li r0, 0x3c
/* 8066DCD0  B0 1D 05 E0 */	sth r0, 0x5e0(r29)
/* 8066DCD4  48 00 00 5C */	b lbl_8066DD30
lbl_8066DCD8:
/* 8066DCD8  A8 7D 05 E0 */	lha r3, 0x5e0(r29)
/* 8066DCDC  2C 03 00 00 */	cmpwi r3, 0
/* 8066DCE0  40 82 00 28 */	bne lbl_8066DD08
/* 8066DCE4  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 8066DCE8  4B BF 9C 6C */	b cM_rndF__Ff
/* 8066DCEC  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8066DCF0  EC 00 08 2A */	fadds f0, f0, f1
/* 8066DCF4  FC 00 00 1E */	fctiwz f0, f0
/* 8066DCF8  D8 01 00 F8 */	stfd f0, 0xf8(r1)
/* 8066DCFC  80 01 00 FC */	lwz r0, 0xfc(r1)
/* 8066DD00  B0 1D 05 E0 */	sth r0, 0x5e0(r29)
/* 8066DD04  48 00 00 2C */	b lbl_8066DD30
lbl_8066DD08:
/* 8066DD08  38 03 FF FF */	addi r0, r3, -1
/* 8066DD0C  B0 1D 05 E0 */	sth r0, 0x5e0(r29)
/* 8066DD10  A8 1D 05 E0 */	lha r0, 0x5e0(r29)
/* 8066DD14  2C 00 00 05 */	cmpwi r0, 5
/* 8066DD18  41 81 00 10 */	bgt lbl_8066DD28
/* 8066DD1C  20 00 00 05 */	subfic r0, r0, 5
/* 8066DD20  B0 1D 05 DE */	sth r0, 0x5de(r29)
/* 8066DD24  48 00 00 0C */	b lbl_8066DD30
lbl_8066DD28:
/* 8066DD28  38 00 00 00 */	li r0, 0
/* 8066DD2C  B0 1D 05 DE */	sth r0, 0x5de(r29)
lbl_8066DD30:
/* 8066DD30  39 61 01 30 */	addi r11, r1, 0x130
/* 8066DD34  4B CF 44 D8 */	b _restgpr_22
/* 8066DD38  80 01 01 34 */	lwz r0, 0x134(r1)
/* 8066DD3C  7C 08 03 A6 */	mtlr r0
/* 8066DD40  38 21 01 30 */	addi r1, r1, 0x130
/* 8066DD44  4E 80 00 20 */	blr 
