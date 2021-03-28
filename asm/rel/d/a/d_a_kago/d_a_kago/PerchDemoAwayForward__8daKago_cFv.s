lbl_8084F09C:
/* 8084F09C  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 8084F0A0  7C 08 02 A6 */	mflr r0
/* 8084F0A4  90 01 01 04 */	stw r0, 0x104(r1)
/* 8084F0A8  39 61 01 00 */	addi r11, r1, 0x100
/* 8084F0AC  4B B1 31 28 */	b _savegpr_27
/* 8084F0B0  7C 7C 1B 78 */	mr r28, r3
/* 8084F0B4  3C 60 80 85 */	lis r3, lit_3929@ha
/* 8084F0B8  3B E3 4B 04 */	addi r31, r3, lit_3929@l
/* 8084F0BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8084F0C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8084F0C4  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8084F0C8  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 8084F0CC  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 8084F0D0  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 8084F0D4  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 8084F0D8  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 8084F0DC  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 8084F0E0  AB C3 04 E6 */	lha r30, 0x4e6(r3)
/* 8084F0E4  4B 93 25 5C */	b dCam_getBody__Fv
/* 8084F0E8  7C 7D 1B 78 */	mr r29, r3
/* 8084F0EC  48 00 59 F5 */	bl getMidnaActor__9daPy_py_cFv
/* 8084F0F0  28 03 00 00 */	cmplwi r3, 0
/* 8084F0F4  41 82 00 20 */	beq lbl_8084F114
/* 8084F0F8  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 8084F0FC  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 8084F100  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 8084F104  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 8084F108  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 8084F10C  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 8084F110  AB 63 04 E6 */	lha r27, 0x4e6(r3)
lbl_8084F114:
/* 8084F114  80 1C 07 44 */	lwz r0, 0x744(r28)
/* 8084F118  2C 00 00 02 */	cmpwi r0, 2
/* 8084F11C  41 82 03 BC */	beq lbl_8084F4D8
/* 8084F120  40 80 00 10 */	bge lbl_8084F130
/* 8084F124  2C 00 00 00 */	cmpwi r0, 0
/* 8084F128  40 80 00 14 */	bge lbl_8084F13C
/* 8084F12C  48 00 09 10 */	b lbl_8084FA3C
lbl_8084F130:
/* 8084F130  2C 00 00 04 */	cmpwi r0, 4
/* 8084F134  40 80 09 08 */	bge lbl_8084FA3C
/* 8084F138  48 00 07 90 */	b lbl_8084F8C8
lbl_8084F13C:
/* 8084F13C  38 7C 06 8C */	addi r3, r28, 0x68c
/* 8084F140  38 9C 04 F8 */	addi r4, r28, 0x4f8
/* 8084F144  7C 65 1B 78 */	mr r5, r3
/* 8084F148  4B AF 7F 48 */	b PSVECAdd
/* 8084F14C  38 7C 06 98 */	addi r3, r28, 0x698
/* 8084F150  38 9C 04 F8 */	addi r4, r28, 0x4f8
/* 8084F154  7C 65 1B 78 */	mr r5, r3
/* 8084F158  4B AF 7F 38 */	b PSVECAdd
/* 8084F15C  38 61 00 B8 */	addi r3, r1, 0xb8
/* 8084F160  4B 7B DC 04 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 8084F164  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8084F168  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8084F16C  7F C4 F3 78 */	mr r4, r30
/* 8084F170  4B 7B D2 C4 */	b mDoMtx_YrotM__FPA4_fs
/* 8084F174  80 1C 07 44 */	lwz r0, 0x744(r28)
/* 8084F178  2C 00 00 00 */	cmpwi r0, 0
/* 8084F17C  40 82 00 18 */	bne lbl_8084F194
/* 8084F180  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 8084F184  C0 5F 00 40 */	lfs f2, 0x40(r31)
/* 8084F188  FC 60 08 90 */	fmr f3, f1
/* 8084F18C  4B 7B DC 10 */	b transM__14mDoMtx_stack_cFfff
/* 8084F190  48 00 00 14 */	b lbl_8084F1A4
lbl_8084F194:
/* 8084F194  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 8084F198  C0 5F 01 4C */	lfs f2, 0x14c(r31)
/* 8084F19C  FC 60 08 90 */	fmr f3, f1
/* 8084F1A0  4B 7B DB FC */	b transM__14mDoMtx_stack_cFfff
lbl_8084F1A4:
/* 8084F1A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8084F1A8  3B 63 D4 70 */	addi r27, r3, now__14mDoMtx_stack_c@l
/* 8084F1AC  C0 1B 00 0C */	lfs f0, 0xc(r27)
/* 8084F1B0  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 8084F1B4  C0 1B 00 1C */	lfs f0, 0x1c(r27)
/* 8084F1B8  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 8084F1BC  C0 1B 00 2C */	lfs f0, 0x2c(r27)
/* 8084F1C0  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 8084F1C4  38 7C 06 8C */	addi r3, r28, 0x68c
/* 8084F1C8  38 81 00 C4 */	addi r4, r1, 0xc4
/* 8084F1CC  C0 3F 00 F0 */	lfs f1, 0xf0(r31)
/* 8084F1D0  C0 5F 00 38 */	lfs f2, 0x38(r31)
/* 8084F1D4  C0 7F 00 1C */	lfs f3, 0x1c(r31)
/* 8084F1D8  4B A2 08 E0 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 8084F1DC  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 8084F1E0  4B 7B DB 84 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 8084F1E4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8084F1E8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8084F1EC  7F C4 F3 78 */	mr r4, r30
/* 8084F1F0  4B 7B D2 44 */	b mDoMtx_YrotM__FPA4_fs
/* 8084F1F4  80 1C 07 44 */	lwz r0, 0x744(r28)
/* 8084F1F8  2C 00 00 00 */	cmpwi r0, 0
/* 8084F1FC  40 82 00 18 */	bne lbl_8084F214
/* 8084F200  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8084F204  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 8084F208  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 8084F20C  4B 7B DB 90 */	b transM__14mDoMtx_stack_cFfff
/* 8084F210  48 00 00 14 */	b lbl_8084F224
lbl_8084F214:
/* 8084F214  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 8084F218  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 8084F21C  C0 7F 00 34 */	lfs f3, 0x34(r31)
/* 8084F220  4B 7B DB 7C */	b transM__14mDoMtx_stack_cFfff
lbl_8084F224:
/* 8084F224  C0 1B 00 0C */	lfs f0, 0xc(r27)
/* 8084F228  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 8084F22C  C0 1B 00 1C */	lfs f0, 0x1c(r27)
/* 8084F230  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 8084F234  C0 1B 00 2C */	lfs f0, 0x2c(r27)
/* 8084F238  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 8084F23C  38 7C 06 98 */	addi r3, r28, 0x698
/* 8084F240  38 81 00 C4 */	addi r4, r1, 0xc4
/* 8084F244  C0 3F 00 F0 */	lfs f1, 0xf0(r31)
/* 8084F248  C0 5F 00 38 */	lfs f2, 0x38(r31)
/* 8084F24C  C0 7F 00 1C */	lfs f3, 0x1c(r31)
/* 8084F250  4B A2 08 68 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 8084F254  38 7C 06 D4 */	addi r3, r28, 0x6d4
/* 8084F258  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 8084F25C  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 8084F260  4B A2 14 E0 */	b cLib_chaseF__FPfff
/* 8084F264  C0 1C 06 8C */	lfs f0, 0x68c(r28)
/* 8084F268  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 8084F26C  C0 1C 06 90 */	lfs f0, 0x690(r28)
/* 8084F270  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 8084F274  C0 1C 06 94 */	lfs f0, 0x694(r28)
/* 8084F278  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 8084F27C  C0 1C 06 98 */	lfs f0, 0x698(r28)
/* 8084F280  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 8084F284  C0 1C 06 9C */	lfs f0, 0x69c(r28)
/* 8084F288  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 8084F28C  C0 1C 06 A0 */	lfs f0, 0x6a0(r28)
/* 8084F290  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 8084F294  7F A3 EB 78 */	mr r3, r29
/* 8084F298  38 81 00 AC */	addi r4, r1, 0xac
/* 8084F29C  38 A1 00 A0 */	addi r5, r1, 0xa0
/* 8084F2A0  C0 3C 06 D4 */	lfs f1, 0x6d4(r28)
/* 8084F2A4  38 C0 00 00 */	li r6, 0
/* 8084F2A8  4B 93 18 38 */	b Set__9dCamera_cF4cXyz4cXyzfs
/* 8084F2AC  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 8084F2B0  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 8084F2B4  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 8084F2B8  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 8084F2BC  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 8084F2C0  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 8084F2C4  7F 83 E3 78 */	mr r3, r28
/* 8084F2C8  38 81 00 94 */	addi r4, r1, 0x94
/* 8084F2CC  38 A0 00 00 */	li r5, 0
/* 8084F2D0  4B FF A8 D9 */	bl checkGroundHeight__8daKago_cF4cXyzPf
/* 8084F2D4  D0 3C 07 04 */	stfs f1, 0x704(r28)
/* 8084F2D8  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 8084F2DC  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 8084F2E0  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 8084F2E4  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 8084F2E8  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 8084F2EC  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 8084F2F0  7F 83 E3 78 */	mr r3, r28
/* 8084F2F4  38 81 00 88 */	addi r4, r1, 0x88
/* 8084F2F8  4B FF AD 79 */	bl checkRoofHeight__8daKago_cF4cXyz
/* 8084F2FC  D0 3C 07 08 */	stfs f1, 0x708(r28)
/* 8084F300  38 7C 06 F8 */	addi r3, r28, 0x6f8
/* 8084F304  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 8084F308  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 8084F30C  4B A2 14 34 */	b cLib_chaseF__FPfff
/* 8084F310  38 7C 04 DC */	addi r3, r28, 0x4dc
/* 8084F314  38 80 00 00 */	li r4, 0
/* 8084F318  38 A0 00 08 */	li r5, 8
/* 8084F31C  38 C0 02 00 */	li r6, 0x200
/* 8084F320  38 E0 00 80 */	li r7, 0x80
/* 8084F324  4B A2 12 1C */	b cLib_addCalcAngleS__FPsssss
/* 8084F328  A8 1C 04 DC */	lha r0, 0x4dc(r28)
/* 8084F32C  B0 1C 04 E4 */	sth r0, 0x4e4(r28)
/* 8084F330  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 8084F334  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 8084F338  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8084F33C  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 8084F340  A8 1C 04 DC */	lha r0, 0x4dc(r28)
/* 8084F344  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8084F348  7C 64 02 14 */	add r3, r4, r0
/* 8084F34C  C0 03 00 04 */	lfs f0, 4(r3)
/* 8084F350  FC 00 02 10 */	fabs f0, f0
/* 8084F354  FC 20 00 18 */	frsp f1, f0
/* 8084F358  C0 1C 06 F8 */	lfs f0, 0x6f8(r28)
/* 8084F35C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8084F360  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 8084F364  A8 1C 04 DC */	lha r0, 0x4dc(r28)
/* 8084F368  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8084F36C  7C 24 04 2E */	lfsx f1, r4, r0
/* 8084F370  C0 1C 06 F8 */	lfs f0, 0x6f8(r28)
/* 8084F374  FC 00 00 50 */	fneg f0, f0
/* 8084F378  EC 00 00 72 */	fmuls f0, f0, f1
/* 8084F37C  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 8084F380  80 1C 07 44 */	lwz r0, 0x744(r28)
/* 8084F384  2C 00 00 00 */	cmpwi r0, 0
/* 8084F388  40 82 00 20 */	bne lbl_8084F3A8
/* 8084F38C  38 7C 04 E4 */	addi r3, r28, 0x4e4
/* 8084F390  38 80 20 00 */	li r4, 0x2000
/* 8084F394  38 A0 00 08 */	li r5, 8
/* 8084F398  38 C0 02 00 */	li r6, 0x200
/* 8084F39C  38 E0 00 40 */	li r7, 0x40
/* 8084F3A0  4B A2 11 A0 */	b cLib_addCalcAngleS__FPsssss
/* 8084F3A4  48 00 00 1C */	b lbl_8084F3C0
lbl_8084F3A8:
/* 8084F3A8  38 7C 04 E4 */	addi r3, r28, 0x4e4
/* 8084F3AC  38 80 00 00 */	li r4, 0
/* 8084F3B0  38 A0 00 08 */	li r5, 8
/* 8084F3B4  38 C0 02 00 */	li r6, 0x200
/* 8084F3B8  38 E0 00 40 */	li r7, 0x40
/* 8084F3BC  4B A2 11 84 */	b cLib_addCalcAngleS__FPsssss
lbl_8084F3C0:
/* 8084F3C0  80 1C 07 28 */	lwz r0, 0x728(r28)
/* 8084F3C4  2C 00 00 14 */	cmpwi r0, 0x14
/* 8084F3C8  40 82 00 70 */	bne lbl_8084F438
/* 8084F3CC  80 1C 07 44 */	lwz r0, 0x744(r28)
/* 8084F3D0  2C 00 00 00 */	cmpwi r0, 0
/* 8084F3D4  40 82 00 64 */	bne lbl_8084F438
/* 8084F3D8  88 1C 06 E7 */	lbz r0, 0x6e7(r28)
/* 8084F3DC  28 00 00 01 */	cmplwi r0, 1
/* 8084F3E0  40 82 00 30 */	bne lbl_8084F410
/* 8084F3E4  3C 60 00 07 */	lis r3, 0x0007 /* 0x000705B9@ha */
/* 8084F3E8  38 03 05 B9 */	addi r0, r3, 0x05B9 /* 0x000705B9@l */
/* 8084F3EC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8084F3F0  38 7C 05 74 */	addi r3, r28, 0x574
/* 8084F3F4  38 81 00 0C */	addi r4, r1, 0xc
/* 8084F3F8  38 A0 FF FF */	li r5, -1
/* 8084F3FC  81 9C 05 74 */	lwz r12, 0x574(r28)
/* 8084F400  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8084F404  7D 89 03 A6 */	mtctr r12
/* 8084F408  4E 80 04 21 */	bctrl 
/* 8084F40C  48 00 00 2C */	b lbl_8084F438
lbl_8084F410:
/* 8084F410  3C 60 00 07 */	lis r3, 0x0007 /* 0x000705B8@ha */
/* 8084F414  38 03 05 B8 */	addi r0, r3, 0x05B8 /* 0x000705B8@l */
/* 8084F418  90 01 00 08 */	stw r0, 8(r1)
/* 8084F41C  38 7C 05 74 */	addi r3, r28, 0x574
/* 8084F420  38 81 00 08 */	addi r4, r1, 8
/* 8084F424  38 A0 FF FF */	li r5, -1
/* 8084F428  81 9C 05 74 */	lwz r12, 0x574(r28)
/* 8084F42C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8084F430  7D 89 03 A6 */	mtctr r12
/* 8084F434  4E 80 04 21 */	bctrl 
lbl_8084F438:
/* 8084F438  80 1C 07 28 */	lwz r0, 0x728(r28)
/* 8084F43C  2C 00 00 00 */	cmpwi r0, 0
/* 8084F440  40 82 05 FC */	bne lbl_8084FA3C
/* 8084F444  80 1C 07 44 */	lwz r0, 0x744(r28)
/* 8084F448  2C 00 00 00 */	cmpwi r0, 0
/* 8084F44C  40 82 00 50 */	bne lbl_8084F49C
/* 8084F450  38 00 00 01 */	li r0, 1
/* 8084F454  90 1C 07 44 */	stw r0, 0x744(r28)
/* 8084F458  38 00 00 1E */	li r0, 0x1e
/* 8084F45C  90 1C 07 28 */	stw r0, 0x728(r28)
/* 8084F460  7F 83 E3 78 */	mr r3, r28
/* 8084F464  4B FF B7 29 */	bl setPlayerRideOn__8daKago_cFv
/* 8084F468  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 8084F46C  D0 21 00 7C */	stfs f1, 0x7c(r1)
/* 8084F470  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8084F474  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8084F478  D0 21 00 84 */	stfs f1, 0x84(r1)
/* 8084F47C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8084F480  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8084F484  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8084F488  38 80 00 02 */	li r4, 2
/* 8084F48C  38 A0 00 1F */	li r5, 0x1f
/* 8084F490  38 C1 00 7C */	addi r6, r1, 0x7c
/* 8084F494  4B 82 05 90 */	b StartShock__12dVibration_cFii4cXyz
/* 8084F498  48 00 05 A4 */	b lbl_8084FA3C
lbl_8084F49C:
/* 8084F49C  80 1C 07 3C */	lwz r0, 0x73c(r28)
/* 8084F4A0  2C 00 00 00 */	cmpwi r0, 0
/* 8084F4A4  41 82 00 18 */	beq lbl_8084F4BC
/* 8084F4A8  38 00 00 3C */	li r0, 0x3c
/* 8084F4AC  90 1C 07 28 */	stw r0, 0x728(r28)
/* 8084F4B0  38 00 00 02 */	li r0, 2
/* 8084F4B4  90 1C 07 44 */	stw r0, 0x744(r28)
/* 8084F4B8  48 00 05 84 */	b lbl_8084FA3C
lbl_8084F4BC:
/* 8084F4BC  38 00 00 5A */	li r0, 0x5a
/* 8084F4C0  90 1C 07 28 */	stw r0, 0x728(r28)
/* 8084F4C4  38 00 00 03 */	li r0, 3
/* 8084F4C8  90 1C 07 44 */	stw r0, 0x744(r28)
/* 8084F4CC  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8084F4D0  D0 1C 06 CC */	stfs f0, 0x6cc(r28)
/* 8084F4D4  48 00 05 68 */	b lbl_8084FA3C
lbl_8084F4D8:
/* 8084F4D8  80 1C 07 28 */	lwz r0, 0x728(r28)
/* 8084F4DC  2C 00 00 0A */	cmpwi r0, 0xa
/* 8084F4E0  40 81 01 3C */	ble lbl_8084F61C
/* 8084F4E4  38 7C 06 8C */	addi r3, r28, 0x68c
/* 8084F4E8  38 9C 04 F8 */	addi r4, r28, 0x4f8
/* 8084F4EC  7C 65 1B 78 */	mr r5, r3
/* 8084F4F0  4B AF 7B A0 */	b PSVECAdd
/* 8084F4F4  38 7C 06 98 */	addi r3, r28, 0x698
/* 8084F4F8  38 9C 04 F8 */	addi r4, r28, 0x4f8
/* 8084F4FC  7C 65 1B 78 */	mr r5, r3
/* 8084F500  4B AF 7B 90 */	b PSVECAdd
/* 8084F504  38 7C 06 98 */	addi r3, r28, 0x698
/* 8084F508  38 9C 06 8C */	addi r4, r28, 0x68c
/* 8084F50C  4B A2 16 F8 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 8084F510  7C 03 D8 50 */	subf r0, r3, r27
/* 8084F514  7C 03 07 34 */	extsh r3, r0
/* 8084F518  4B B1 5B B8 */	b abs
/* 8084F51C  2C 03 20 00 */	cmpwi r3, 0x2000
/* 8084F520  40 80 00 80 */	bge lbl_8084F5A0
/* 8084F524  38 7C 06 8C */	addi r3, r28, 0x68c
/* 8084F528  38 81 00 B8 */	addi r4, r1, 0xb8
/* 8084F52C  C0 3F 00 F0 */	lfs f1, 0xf0(r31)
/* 8084F530  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 8084F534  C0 7F 00 38 */	lfs f3, 0x38(r31)
/* 8084F538  4B A2 05 80 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 8084F53C  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 8084F540  4B 7B D8 24 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 8084F544  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8084F548  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8084F54C  7F C4 F3 78 */	mr r4, r30
/* 8084F550  4B 7B CE E4 */	b mDoMtx_YrotM__FPA4_fs
/* 8084F554  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 8084F558  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 8084F55C  C0 7F 01 48 */	lfs f3, 0x148(r31)
/* 8084F560  4B 7B D8 3C */	b transM__14mDoMtx_stack_cFfff
/* 8084F564  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8084F568  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8084F56C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8084F570  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 8084F574  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8084F578  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 8084F57C  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8084F580  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 8084F584  38 7C 06 98 */	addi r3, r28, 0x698
/* 8084F588  38 81 00 C4 */	addi r4, r1, 0xc4
/* 8084F58C  C0 3F 00 F0 */	lfs f1, 0xf0(r31)
/* 8084F590  C0 5F 00 DC */	lfs f2, 0xdc(r31)
/* 8084F594  C0 7F 00 38 */	lfs f3, 0x38(r31)
/* 8084F598  4B A2 05 20 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 8084F59C  48 00 00 F8 */	b lbl_8084F694
lbl_8084F5A0:
/* 8084F5A0  38 7C 06 8C */	addi r3, r28, 0x68c
/* 8084F5A4  38 81 00 B8 */	addi r4, r1, 0xb8
/* 8084F5A8  C0 3F 00 F0 */	lfs f1, 0xf0(r31)
/* 8084F5AC  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 8084F5B0  C0 7F 00 38 */	lfs f3, 0x38(r31)
/* 8084F5B4  4B A2 05 04 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 8084F5B8  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 8084F5BC  4B 7B D7 A8 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 8084F5C0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8084F5C4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8084F5C8  7F C4 F3 78 */	mr r4, r30
/* 8084F5CC  4B 7B CE 68 */	b mDoMtx_YrotM__FPA4_fs
/* 8084F5D0  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8084F5D4  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 8084F5D8  C0 7F 01 50 */	lfs f3, 0x150(r31)
/* 8084F5DC  4B 7B D7 C0 */	b transM__14mDoMtx_stack_cFfff
/* 8084F5E0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8084F5E4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8084F5E8  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8084F5EC  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 8084F5F0  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8084F5F4  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 8084F5F8  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8084F5FC  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 8084F600  38 7C 06 98 */	addi r3, r28, 0x698
/* 8084F604  38 81 00 C4 */	addi r4, r1, 0xc4
/* 8084F608  C0 3F 00 F0 */	lfs f1, 0xf0(r31)
/* 8084F60C  C0 5F 00 DC */	lfs f2, 0xdc(r31)
/* 8084F610  C0 7F 00 38 */	lfs f3, 0x38(r31)
/* 8084F614  4B A2 04 A4 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 8084F618  48 00 00 7C */	b lbl_8084F694
lbl_8084F61C:
/* 8084F61C  38 7C 06 8C */	addi r3, r28, 0x68c
/* 8084F620  38 81 00 B8 */	addi r4, r1, 0xb8
/* 8084F624  C0 3F 00 F0 */	lfs f1, 0xf0(r31)
/* 8084F628  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 8084F62C  C0 7F 00 38 */	lfs f3, 0x38(r31)
/* 8084F630  4B A2 04 88 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 8084F634  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 8084F638  4B 7B D7 2C */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 8084F63C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8084F640  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8084F644  7F C4 F3 78 */	mr r4, r30
/* 8084F648  4B 7B CD EC */	b mDoMtx_YrotM__FPA4_fs
/* 8084F64C  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 8084F650  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 8084F654  C0 7F 01 48 */	lfs f3, 0x148(r31)
/* 8084F658  4B 7B D7 44 */	b transM__14mDoMtx_stack_cFfff
/* 8084F65C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8084F660  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8084F664  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8084F668  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 8084F66C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8084F670  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 8084F674  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8084F678  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 8084F67C  38 7C 06 98 */	addi r3, r28, 0x698
/* 8084F680  38 81 00 C4 */	addi r4, r1, 0xc4
/* 8084F684  C0 3F 00 F0 */	lfs f1, 0xf0(r31)
/* 8084F688  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 8084F68C  C0 7F 00 38 */	lfs f3, 0x38(r31)
/* 8084F690  4B A2 04 28 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
lbl_8084F694:
/* 8084F694  38 7C 06 D4 */	addi r3, r28, 0x6d4
/* 8084F698  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 8084F69C  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 8084F6A0  4B A2 10 A0 */	b cLib_chaseF__FPfff
/* 8084F6A4  C0 1C 06 8C */	lfs f0, 0x68c(r28)
/* 8084F6A8  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8084F6AC  C0 1C 06 90 */	lfs f0, 0x690(r28)
/* 8084F6B0  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 8084F6B4  C0 1C 06 94 */	lfs f0, 0x694(r28)
/* 8084F6B8  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 8084F6BC  C0 1C 06 98 */	lfs f0, 0x698(r28)
/* 8084F6C0  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8084F6C4  C0 1C 06 9C */	lfs f0, 0x69c(r28)
/* 8084F6C8  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8084F6CC  C0 1C 06 A0 */	lfs f0, 0x6a0(r28)
/* 8084F6D0  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8084F6D4  7F A3 EB 78 */	mr r3, r29
/* 8084F6D8  38 81 00 70 */	addi r4, r1, 0x70
/* 8084F6DC  38 A1 00 64 */	addi r5, r1, 0x64
/* 8084F6E0  C0 3C 06 D4 */	lfs f1, 0x6d4(r28)
/* 8084F6E4  38 C0 00 00 */	li r6, 0
/* 8084F6E8  4B 93 13 F8 */	b Set__9dCamera_cF4cXyz4cXyzfs
/* 8084F6EC  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 8084F6F0  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8084F6F4  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 8084F6F8  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8084F6FC  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 8084F700  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8084F704  7F 83 E3 78 */	mr r3, r28
/* 8084F708  38 81 00 58 */	addi r4, r1, 0x58
/* 8084F70C  38 A0 00 00 */	li r5, 0
/* 8084F710  4B FF A4 99 */	bl checkGroundHeight__8daKago_cF4cXyzPf
/* 8084F714  D0 3C 07 04 */	stfs f1, 0x704(r28)
/* 8084F718  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 8084F71C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8084F720  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 8084F724  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8084F728  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 8084F72C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8084F730  7F 83 E3 78 */	mr r3, r28
/* 8084F734  38 81 00 4C */	addi r4, r1, 0x4c
/* 8084F738  4B FF A9 39 */	bl checkRoofHeight__8daKago_cF4cXyz
/* 8084F73C  D0 3C 07 08 */	stfs f1, 0x708(r28)
/* 8084F740  38 7C 06 F8 */	addi r3, r28, 0x6f8
/* 8084F744  3C 80 80 85 */	lis r4, l_HIO@ha
/* 8084F748  38 84 4F 78 */	addi r4, r4, l_HIO@l
/* 8084F74C  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 8084F750  C0 5F 00 E0 */	lfs f2, 0xe0(r31)
/* 8084F754  4B A2 0F EC */	b cLib_chaseF__FPfff
/* 8084F758  80 1C 07 28 */	lwz r0, 0x728(r28)
/* 8084F75C  2C 00 00 1E */	cmpwi r0, 0x1e
/* 8084F760  40 80 00 20 */	bge lbl_8084F780
/* 8084F764  38 7C 04 DC */	addi r3, r28, 0x4dc
/* 8084F768  38 80 00 00 */	li r4, 0
/* 8084F76C  38 A0 00 08 */	li r5, 8
/* 8084F770  38 C0 01 00 */	li r6, 0x100
/* 8084F774  38 E0 00 40 */	li r7, 0x40
/* 8084F778  4B A2 0D C8 */	b cLib_addCalcAngleS__FPsssss
/* 8084F77C  48 00 00 1C */	b lbl_8084F798
lbl_8084F780:
/* 8084F780  38 7C 04 DC */	addi r3, r28, 0x4dc
/* 8084F784  38 80 E0 00 */	li r4, -8192
/* 8084F788  38 A0 00 08 */	li r5, 8
/* 8084F78C  38 C0 01 00 */	li r6, 0x100
/* 8084F790  38 E0 00 40 */	li r7, 0x40
/* 8084F794  4B A2 0D AC */	b cLib_addCalcAngleS__FPsssss
lbl_8084F798:
/* 8084F798  A8 1C 04 DC */	lha r0, 0x4dc(r28)
/* 8084F79C  B0 1C 04 E4 */	sth r0, 0x4e4(r28)
/* 8084F7A0  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 8084F7A4  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 8084F7A8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8084F7AC  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 8084F7B0  A8 1C 04 DC */	lha r0, 0x4dc(r28)
/* 8084F7B4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8084F7B8  7C 64 02 14 */	add r3, r4, r0
/* 8084F7BC  C0 03 00 04 */	lfs f0, 4(r3)
/* 8084F7C0  FC 00 02 10 */	fabs f0, f0
/* 8084F7C4  FC 20 00 18 */	frsp f1, f0
/* 8084F7C8  C0 1C 06 F8 */	lfs f0, 0x6f8(r28)
/* 8084F7CC  EC 00 00 72 */	fmuls f0, f0, f1
/* 8084F7D0  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 8084F7D4  A8 1C 04 DC */	lha r0, 0x4dc(r28)
/* 8084F7D8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8084F7DC  7C 24 04 2E */	lfsx f1, r4, r0
/* 8084F7E0  C0 1C 06 F8 */	lfs f0, 0x6f8(r28)
/* 8084F7E4  FC 00 00 50 */	fneg f0, f0
/* 8084F7E8  EC 00 00 72 */	fmuls f0, f0, f1
/* 8084F7EC  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 8084F7F0  80 1C 07 28 */	lwz r0, 0x728(r28)
/* 8084F7F4  2C 00 00 00 */	cmpwi r0, 0
/* 8084F7F8  40 82 02 44 */	bne lbl_8084FA3C
/* 8084F7FC  80 1C 07 3C */	lwz r0, 0x73c(r28)
/* 8084F800  2C 00 00 02 */	cmpwi r0, 2
/* 8084F804  40 82 00 2C */	bne lbl_8084F830
/* 8084F808  7F 83 E3 78 */	mr r3, r28
/* 8084F80C  38 80 00 03 */	li r4, 3
/* 8084F810  4B FF B6 69 */	bl setSceneChange__8daKago_cFi
/* 8084F814  2C 03 00 00 */	cmpwi r3, 0
/* 8084F818  41 82 02 24 */	beq lbl_8084FA3C
/* 8084F81C  38 00 00 05 */	li r0, 5
/* 8084F820  90 1C 07 48 */	stw r0, 0x748(r28)
/* 8084F824  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8084F828  D0 1C 06 CC */	stfs f0, 0x6cc(r28)
/* 8084F82C  48 00 02 10 */	b lbl_8084FA3C
lbl_8084F830:
/* 8084F830  38 00 00 00 */	li r0, 0
/* 8084F834  98 1C 06 DC */	stb r0, 0x6dc(r28)
/* 8084F838  7F 83 E3 78 */	mr r3, r28
/* 8084F83C  38 80 00 00 */	li r4, 0
/* 8084F840  38 A0 00 00 */	li r5, 0
/* 8084F844  4B FF B2 55 */	bl setActionMode__8daKago_cFii
/* 8084F848  C0 1C 06 8C */	lfs f0, 0x68c(r28)
/* 8084F84C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8084F850  C0 1C 06 90 */	lfs f0, 0x690(r28)
/* 8084F854  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8084F858  C0 1C 06 94 */	lfs f0, 0x694(r28)
/* 8084F85C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8084F860  C0 1C 06 98 */	lfs f0, 0x698(r28)
/* 8084F864  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8084F868  C0 1C 06 9C */	lfs f0, 0x69c(r28)
/* 8084F86C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8084F870  C0 1C 06 A0 */	lfs f0, 0x6a0(r28)
/* 8084F874  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8084F878  7F A3 EB 78 */	mr r3, r29
/* 8084F87C  38 81 00 40 */	addi r4, r1, 0x40
/* 8084F880  38 A1 00 34 */	addi r5, r1, 0x34
/* 8084F884  4B 93 13 94 */	b Reset__9dCamera_cF4cXyz4cXyz
/* 8084F888  7F A3 EB 78 */	mr r3, r29
/* 8084F88C  4B 91 1C 20 */	b Start__9dCamera_cFv
/* 8084F890  7F A3 EB 78 */	mr r3, r29
/* 8084F894  38 80 00 00 */	li r4, 0
/* 8084F898  4B 91 37 74 */	b SetTrimSize__9dCamera_cFl
/* 8084F89C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8084F8A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8084F8A4  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8084F8A8  4B 7F 2B C0 */	b reset__14dEvt_control_cFv
/* 8084F8AC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8084F8B0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8084F8B4  80 63 00 00 */	lwz r3, 0(r3)
/* 8084F8B8  38 63 04 C4 */	addi r3, r3, 0x4c4
/* 8084F8BC  38 80 00 00 */	li r4, 0
/* 8084F8C0  4B A6 69 28 */	b setDemoName__11Z2StatusMgrFPc
/* 8084F8C4  48 00 01 78 */	b lbl_8084FA3C
lbl_8084F8C8:
/* 8084F8C8  38 7C 06 CC */	addi r3, r28, 0x6cc
/* 8084F8CC  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 8084F8D0  C0 5F 01 10 */	lfs f2, 0x110(r31)
/* 8084F8D4  4B A2 0E 6C */	b cLib_chaseF__FPfff
/* 8084F8D8  38 7C 06 8C */	addi r3, r28, 0x68c
/* 8084F8DC  38 9C 04 F8 */	addi r4, r28, 0x4f8
/* 8084F8E0  7C 65 1B 78 */	mr r5, r3
/* 8084F8E4  4B AF 77 AC */	b PSVECAdd
/* 8084F8E8  38 61 00 28 */	addi r3, r1, 0x28
/* 8084F8EC  38 9C 04 F8 */	addi r4, r28, 0x4f8
/* 8084F8F0  C0 3C 06 CC */	lfs f1, 0x6cc(r28)
/* 8084F8F4  4B A1 72 90 */	b __ml__4cXyzCFf
/* 8084F8F8  38 7C 06 98 */	addi r3, r28, 0x698
/* 8084F8FC  38 81 00 28 */	addi r4, r1, 0x28
/* 8084F900  7C 65 1B 78 */	mr r5, r3
/* 8084F904  4B AF 77 8C */	b PSVECAdd
/* 8084F908  C0 01 00 D0 */	lfs f0, 0xd0(r1)
/* 8084F90C  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 8084F910  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 8084F914  C0 01 00 D4 */	lfs f0, 0xd4(r1)
/* 8084F918  EC 01 00 2A */	fadds f0, f1, f0
/* 8084F91C  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 8084F920  C0 01 00 D8 */	lfs f0, 0xd8(r1)
/* 8084F924  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 8084F928  38 7C 06 8C */	addi r3, r28, 0x68c
/* 8084F92C  38 81 00 C4 */	addi r4, r1, 0xc4
/* 8084F930  C0 3F 00 F0 */	lfs f1, 0xf0(r31)
/* 8084F934  C0 5F 00 38 */	lfs f2, 0x38(r31)
/* 8084F938  C0 7F 00 24 */	lfs f3, 0x24(r31)
/* 8084F93C  4B A2 01 7C */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 8084F940  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8084F944  D0 1C 06 D4 */	stfs f0, 0x6d4(r28)
/* 8084F948  C0 1C 06 8C */	lfs f0, 0x68c(r28)
/* 8084F94C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8084F950  C0 1C 06 90 */	lfs f0, 0x690(r28)
/* 8084F954  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8084F958  C0 1C 06 94 */	lfs f0, 0x694(r28)
/* 8084F95C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8084F960  C0 1C 06 98 */	lfs f0, 0x698(r28)
/* 8084F964  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8084F968  C0 1C 06 9C */	lfs f0, 0x69c(r28)
/* 8084F96C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8084F970  C0 1C 06 A0 */	lfs f0, 0x6a0(r28)
/* 8084F974  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8084F978  7F A3 EB 78 */	mr r3, r29
/* 8084F97C  38 81 00 1C */	addi r4, r1, 0x1c
/* 8084F980  38 A1 00 10 */	addi r5, r1, 0x10
/* 8084F984  C0 3C 06 D4 */	lfs f1, 0x6d4(r28)
/* 8084F988  38 C0 00 00 */	li r6, 0
/* 8084F98C  4B 93 11 54 */	b Set__9dCamera_cF4cXyz4cXyzfs
/* 8084F990  38 7C 06 F8 */	addi r3, r28, 0x6f8
/* 8084F994  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 8084F998  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 8084F99C  4B A2 0D A4 */	b cLib_chaseF__FPfff
/* 8084F9A0  38 7C 04 DC */	addi r3, r28, 0x4dc
/* 8084F9A4  38 80 E0 00 */	li r4, -8192
/* 8084F9A8  38 A0 00 08 */	li r5, 8
/* 8084F9AC  38 C0 01 00 */	li r6, 0x100
/* 8084F9B0  38 E0 00 40 */	li r7, 0x40
/* 8084F9B4  4B A2 0B 8C */	b cLib_addCalcAngleS__FPsssss
/* 8084F9B8  A8 1C 04 DC */	lha r0, 0x4dc(r28)
/* 8084F9BC  B0 1C 04 E4 */	sth r0, 0x4e4(r28)
/* 8084F9C0  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 8084F9C4  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 8084F9C8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8084F9CC  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 8084F9D0  A8 1C 04 DC */	lha r0, 0x4dc(r28)
/* 8084F9D4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8084F9D8  7C 64 02 14 */	add r3, r4, r0
/* 8084F9DC  C0 03 00 04 */	lfs f0, 4(r3)
/* 8084F9E0  FC 00 02 10 */	fabs f0, f0
/* 8084F9E4  FC 20 00 18 */	frsp f1, f0
/* 8084F9E8  C0 1C 06 F8 */	lfs f0, 0x6f8(r28)
/* 8084F9EC  EC 00 00 72 */	fmuls f0, f0, f1
/* 8084F9F0  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 8084F9F4  A8 1C 04 DC */	lha r0, 0x4dc(r28)
/* 8084F9F8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8084F9FC  7C 24 04 2E */	lfsx f1, r4, r0
/* 8084FA00  C0 1C 06 F8 */	lfs f0, 0x6f8(r28)
/* 8084FA04  FC 00 00 50 */	fneg f0, f0
/* 8084FA08  EC 00 00 72 */	fmuls f0, f0, f1
/* 8084FA0C  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 8084FA10  80 1C 07 28 */	lwz r0, 0x728(r28)
/* 8084FA14  2C 00 00 00 */	cmpwi r0, 0
/* 8084FA18  40 82 00 24 */	bne lbl_8084FA3C
/* 8084FA1C  7F 83 E3 78 */	mr r3, r28
/* 8084FA20  38 80 00 07 */	li r4, 7
/* 8084FA24  38 A0 00 00 */	li r5, 0
/* 8084FA28  4B FF B0 71 */	bl setActionMode__8daKago_cFii
/* 8084FA2C  38 00 00 08 */	li r0, 8
/* 8084FA30  90 1C 07 48 */	stw r0, 0x748(r28)
/* 8084FA34  38 60 00 01 */	li r3, 1
/* 8084FA38  48 00 00 08 */	b lbl_8084FA40
lbl_8084FA3C:
/* 8084FA3C  38 60 00 00 */	li r3, 0
lbl_8084FA40:
/* 8084FA40  39 61 01 00 */	addi r11, r1, 0x100
/* 8084FA44  4B B1 27 DC */	b _restgpr_27
/* 8084FA48  80 01 01 04 */	lwz r0, 0x104(r1)
/* 8084FA4C  7C 08 03 A6 */	mtlr r0
/* 8084FA50  38 21 01 00 */	addi r1, r1, 0x100
/* 8084FA54  4E 80 00 20 */	blr 
