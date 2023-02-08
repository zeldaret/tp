lbl_80CAAF90:
/* 80CAAF90  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80CAAF94  7C 08 02 A6 */	mflr r0
/* 80CAAF98  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CAAF9C  39 61 00 30 */	addi r11, r1, 0x30
/* 80CAAFA0  4B 6B 72 39 */	bl _savegpr_28
/* 80CAAFA4  7C 7C 1B 78 */	mr r28, r3
/* 80CAAFA8  7C 9D 23 78 */	mr r29, r4
/* 80CAAFAC  3C 60 80 CB */	lis r3, lit_3680@ha /* 0x80CAC50C@ha */
/* 80CAAFB0  3B C3 C5 0C */	addi r30, r3, lit_3680@l /* 0x80CAC50C@l */
/* 80CAAFB4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CAAFB8  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CAAFBC  80 1F 5D B4 */	lwz r0, 0x5db4(r31)
/* 80CAAFC0  7C 1D 00 40 */	cmplw r29, r0
/* 80CAAFC4  41 82 00 10 */	beq lbl_80CAAFD4
/* 80CAAFC8  A8 1D 00 0E */	lha r0, 0xe(r29)
/* 80CAAFCC  2C 00 02 14 */	cmpwi r0, 0x214
/* 80CAAFD0  40 82 01 50 */	bne lbl_80CAB120
lbl_80CAAFD4:
/* 80CAAFD4  80 1C 06 0C */	lwz r0, 0x60c(r28)
/* 80CAAFD8  2C 00 00 00 */	cmpwi r0, 0
/* 80CAAFDC  40 82 00 10 */	bne lbl_80CAAFEC
/* 80CAAFE0  38 00 00 C8 */	li r0, 0xc8
/* 80CAAFE4  B0 1C 07 B0 */	sth r0, 0x7b0(r28)
/* 80CAAFE8  48 00 00 0C */	b lbl_80CAAFF4
lbl_80CAAFEC:
/* 80CAAFEC  38 00 00 64 */	li r0, 0x64
/* 80CAAFF0  B0 1C 07 B0 */	sth r0, 0x7b0(r28)
lbl_80CAAFF4:
/* 80CAAFF4  38 60 00 01 */	li r3, 1
/* 80CAAFF8  98 7C 07 B5 */	stb r3, 0x7b5(r28)
/* 80CAAFFC  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 80CAB000  D0 1C 06 1C */	stfs f0, 0x61c(r28)
/* 80CAB004  80 1C 06 10 */	lwz r0, 0x610(r28)
/* 80CAB008  2C 00 00 00 */	cmpwi r0, 0
/* 80CAB00C  40 82 00 E8 */	bne lbl_80CAB0F4
/* 80CAB010  80 1C 06 0C */	lwz r0, 0x60c(r28)
/* 80CAB014  2C 00 00 02 */	cmpwi r0, 2
/* 80CAB018  40 82 00 3C */	bne lbl_80CAB054
/* 80CAB01C  38 00 00 05 */	li r0, 5
/* 80CAB020  90 1C 06 10 */	stw r0, 0x610(r28)
/* 80CAB024  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008025A@ha */
/* 80CAB028  38 03 02 5A */	addi r0, r3, 0x025A /* 0x0008025A@l */
/* 80CAB02C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CAB030  38 7C 07 DC */	addi r3, r28, 0x7dc
/* 80CAB034  38 81 00 10 */	addi r4, r1, 0x10
/* 80CAB038  38 A0 00 00 */	li r5, 0
/* 80CAB03C  38 C0 FF FF */	li r6, -1
/* 80CAB040  81 9C 07 EC */	lwz r12, 0x7ec(r28)
/* 80CAB044  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80CAB048  7D 89 03 A6 */	mtctr r12
/* 80CAB04C  4E 80 04 21 */	bctrl 
/* 80CAB050  48 00 00 A4 */	b lbl_80CAB0F4
lbl_80CAB054:
/* 80CAB054  2C 00 00 01 */	cmpwi r0, 1
/* 80CAB058  41 82 00 0C */	beq lbl_80CAB064
/* 80CAB05C  2C 00 00 03 */	cmpwi r0, 3
/* 80CAB060  40 82 00 58 */	bne lbl_80CAB0B8
lbl_80CAB064:
/* 80CAB064  38 00 00 07 */	li r0, 7
/* 80CAB068  90 1C 06 10 */	stw r0, 0x610(r28)
/* 80CAB06C  38 00 00 00 */	li r0, 0
/* 80CAB070  90 1C 07 D8 */	stw r0, 0x7d8(r28)
/* 80CAB074  3C 60 00 08 */	lis r3, 0x0008 /* 0x000802A8@ha */
/* 80CAB078  38 03 02 A8 */	addi r0, r3, 0x02A8 /* 0x000802A8@l */
/* 80CAB07C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CAB080  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CAB084  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CAB088  80 63 00 00 */	lwz r3, 0(r3)
/* 80CAB08C  38 81 00 0C */	addi r4, r1, 0xc
/* 80CAB090  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 80CAB094  38 C0 00 00 */	li r6, 0
/* 80CAB098  38 E0 00 00 */	li r7, 0
/* 80CAB09C  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 80CAB0A0  FC 40 08 90 */	fmr f2, f1
/* 80CAB0A4  C0 7E 00 1C */	lfs f3, 0x1c(r30)
/* 80CAB0A8  FC 80 18 90 */	fmr f4, f3
/* 80CAB0AC  39 00 00 00 */	li r8, 0
/* 80CAB0B0  4B 60 08 D5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CAB0B4  48 00 00 40 */	b lbl_80CAB0F4
lbl_80CAB0B8:
/* 80CAB0B8  90 7C 06 10 */	stw r3, 0x610(r28)
/* 80CAB0BC  80 1C 06 0C */	lwz r0, 0x60c(r28)
/* 80CAB0C0  2C 00 00 04 */	cmpwi r0, 4
/* 80CAB0C4  40 82 00 30 */	bne lbl_80CAB0F4
/* 80CAB0C8  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008025A@ha */
/* 80CAB0CC  38 03 02 5A */	addi r0, r3, 0x025A /* 0x0008025A@l */
/* 80CAB0D0  90 01 00 08 */	stw r0, 8(r1)
/* 80CAB0D4  38 7C 07 DC */	addi r3, r28, 0x7dc
/* 80CAB0D8  38 81 00 08 */	addi r4, r1, 8
/* 80CAB0DC  38 A0 00 00 */	li r5, 0
/* 80CAB0E0  38 C0 FF FF */	li r6, -1
/* 80CAB0E4  81 9C 07 EC */	lwz r12, 0x7ec(r28)
/* 80CAB0E8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80CAB0EC  7D 89 03 A6 */	mtctr r12
/* 80CAB0F0  4E 80 04 21 */	bctrl 
lbl_80CAB0F4:
/* 80CAB0F4  80 7F 5D B4 */	lwz r3, 0x5db4(r31)
/* 80CAB0F8  7C 1D 18 40 */	cmplw r29, r3
/* 80CAB0FC  40 82 00 24 */	bne lbl_80CAB120
/* 80CAB100  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80CAB104  81 8C 02 80 */	lwz r12, 0x280(r12)
/* 80CAB108  7D 89 03 A6 */	mtctr r12
/* 80CAB10C  4E 80 04 21 */	bctrl 
/* 80CAB110  2C 03 00 00 */	cmpwi r3, 0
/* 80CAB114  41 82 00 0C */	beq lbl_80CAB120
/* 80CAB118  38 00 00 01 */	li r0, 1
/* 80CAB11C  98 1C 06 30 */	stb r0, 0x630(r28)
lbl_80CAB120:
/* 80CAB120  C0 1D 04 F8 */	lfs f0, 0x4f8(r29)
/* 80CAB124  FC 00 02 10 */	fabs f0, f0
/* 80CAB128  FC 00 00 18 */	frsp f0, f0
/* 80CAB12C  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha /* 0x80451180@ha */
/* 80CAB130  C0 23 11 80 */	lfs f1, G_CM3D_F_ABS_MIN@l(r3)  /* 0x80451180@l */
/* 80CAB134  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80CAB138  40 80 00 18 */	bge lbl_80CAB150
/* 80CAB13C  C0 1D 05 00 */	lfs f0, 0x500(r29)
/* 80CAB140  FC 00 02 10 */	fabs f0, f0
/* 80CAB144  FC 00 00 18 */	frsp f0, f0
/* 80CAB148  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80CAB14C  41 80 00 2C */	blt lbl_80CAB178
lbl_80CAB150:
/* 80CAB150  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 80CAB154  D0 1C 06 1C */	stfs f0, 0x61c(r28)
/* 80CAB158  80 1C 06 0C */	lwz r0, 0x60c(r28)
/* 80CAB15C  2C 00 00 00 */	cmpwi r0, 0
/* 80CAB160  40 82 00 10 */	bne lbl_80CAB170
/* 80CAB164  38 00 00 C8 */	li r0, 0xc8
/* 80CAB168  B0 1C 07 B0 */	sth r0, 0x7b0(r28)
/* 80CAB16C  48 00 00 0C */	b lbl_80CAB178
lbl_80CAB170:
/* 80CAB170  38 00 00 64 */	li r0, 0x64
/* 80CAB174  B0 1C 07 B0 */	sth r0, 0x7b0(r28)
lbl_80CAB178:
/* 80CAB178  88 1C 06 14 */	lbz r0, 0x614(r28)
/* 80CAB17C  28 00 00 00 */	cmplwi r0, 0
/* 80CAB180  40 82 00 4C */	bne lbl_80CAB1CC
/* 80CAB184  38 00 00 00 */	li r0, 0
/* 80CAB188  90 1C 07 AC */	stw r0, 0x7ac(r28)
/* 80CAB18C  80 1C 06 0C */	lwz r0, 0x60c(r28)
/* 80CAB190  2C 00 00 00 */	cmpwi r0, 0
/* 80CAB194  40 82 00 10 */	bne lbl_80CAB1A4
/* 80CAB198  38 00 00 C8 */	li r0, 0xc8
/* 80CAB19C  B0 1C 07 B0 */	sth r0, 0x7b0(r28)
/* 80CAB1A0  48 00 00 0C */	b lbl_80CAB1AC
lbl_80CAB1A4:
/* 80CAB1A4  38 00 00 64 */	li r0, 0x64
/* 80CAB1A8  B0 1C 07 B0 */	sth r0, 0x7b0(r28)
lbl_80CAB1AC:
/* 80CAB1AC  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 80CAB1B0  4B 5B C7 A5 */	bl cM_rndF__Ff
/* 80CAB1B4  FC 00 08 1E */	fctiwz f0, f1
/* 80CAB1B8  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80CAB1BC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80CAB1C0  B0 1C 07 B2 */	sth r0, 0x7b2(r28)
/* 80CAB1C4  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 80CAB1C8  D0 1C 06 1C */	stfs f0, 0x61c(r28)
lbl_80CAB1CC:
/* 80CAB1CC  38 00 00 01 */	li r0, 1
/* 80CAB1D0  98 1C 06 14 */	stb r0, 0x614(r28)
/* 80CAB1D4  98 1C 07 B4 */	stb r0, 0x7b4(r28)
/* 80CAB1D8  39 61 00 30 */	addi r11, r1, 0x30
/* 80CAB1DC  4B 6B 70 49 */	bl _restgpr_28
/* 80CAB1E0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CAB1E4  7C 08 03 A6 */	mtlr r0
/* 80CAB1E8  38 21 00 30 */	addi r1, r1, 0x30
/* 80CAB1EC  4E 80 00 20 */	blr 
