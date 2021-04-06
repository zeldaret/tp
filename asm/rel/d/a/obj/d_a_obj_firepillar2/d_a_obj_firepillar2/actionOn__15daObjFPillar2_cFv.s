lbl_80BEADD0:
/* 80BEADD0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80BEADD4  7C 08 02 A6 */	mflr r0
/* 80BEADD8  90 01 00 54 */	stw r0, 0x54(r1)
/* 80BEADDC  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80BEADE0  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80BEADE4  39 61 00 40 */	addi r11, r1, 0x40
/* 80BEADE8  4B 77 73 F1 */	bl _savegpr_28
/* 80BEADEC  7C 7E 1B 78 */	mr r30, r3
/* 80BEADF0  3C 60 80 BF */	lis r3, lit_3656@ha /* 0x80BEB4C4@ha */
/* 80BEADF4  3B E3 B4 C4 */	addi r31, r3, lit_3656@l /* 0x80BEB4C4@l */
/* 80BEADF8  C3 FE 04 F0 */	lfs f31, 0x4f0(r30)
/* 80BEADFC  A0 7E 09 78 */	lhz r3, 0x978(r30)
/* 80BEAE00  28 03 00 00 */	cmplwi r3, 0
/* 80BEAE04  40 82 00 0C */	bne lbl_80BEAE10
/* 80BEAE08  C3 FF 00 24 */	lfs f31, 0x24(r31)
/* 80BEAE0C  48 00 00 48 */	b lbl_80BEAE54
lbl_80BEAE10:
/* 80BEAE10  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80BEAE14  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80BEAE18  28 04 00 FF */	cmplwi r4, 0xff
/* 80BEAE1C  41 82 00 30 */	beq lbl_80BEAE4C
/* 80BEAE20  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BEAE24  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BEAE28  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80BEAE2C  7C 05 07 74 */	extsb r5, r0
/* 80BEAE30  4B 44 A5 31 */	bl isSwitch__10dSv_info_cCFii
/* 80BEAE34  2C 03 00 00 */	cmpwi r3, 0
/* 80BEAE38  41 82 00 1C */	beq lbl_80BEAE54
/* 80BEAE3C  38 00 00 00 */	li r0, 0
/* 80BEAE40  B0 1E 09 78 */	sth r0, 0x978(r30)
/* 80BEAE44  C3 FF 00 24 */	lfs f31, 0x24(r31)
/* 80BEAE48  48 00 00 0C */	b lbl_80BEAE54
lbl_80BEAE4C:
/* 80BEAE4C  38 03 FF FF */	addi r0, r3, -1
/* 80BEAE50  B0 1E 09 78 */	sth r0, 0x978(r30)
lbl_80BEAE54:
/* 80BEAE54  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80BEAE58  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 80BEAE5C  40 82 01 50 */	bne lbl_80BEAFAC
/* 80BEAE60  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80BEAE64  C0 3E 04 F0 */	lfs f1, 0x4f0(r30)
/* 80BEAE68  EC 40 00 72 */	fmuls f2, f0, f1
/* 80BEAE6C  A0 1E 09 7A */	lhz r0, 0x97a(r30)
/* 80BEAE70  54 00 E7 3E */	rlwinm r0, r0, 0x1c, 0x1c, 0x1f
/* 80BEAE74  28 00 00 01 */	cmplwi r0, 1
/* 80BEAE78  40 82 00 7C */	bne lbl_80BEAEF4
/* 80BEAE7C  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80BEAE80  EC 40 00 72 */	fmuls f2, f0, f1
/* 80BEAE84  38 7E 09 48 */	addi r3, r30, 0x948
/* 80BEAE88  FC 20 F8 90 */	fmr f1, f31
/* 80BEAE8C  4B 68 58 B5 */	bl cLib_chaseF__FPfff
/* 80BEAE90  2C 03 00 00 */	cmpwi r3, 0
/* 80BEAE94  41 82 01 30 */	beq lbl_80BEAFC4
/* 80BEAE98  38 60 00 00 */	li r3, 0
/* 80BEAE9C  38 C0 00 01 */	li r6, 1
/* 80BEAEA0  7C 64 1B 78 */	mr r4, r3
/* 80BEAEA4  38 00 00 03 */	li r0, 3
/* 80BEAEA8  7C 09 03 A6 */	mtctr r0
lbl_80BEAEAC:
/* 80BEAEAC  38 E3 09 A4 */	addi r7, r3, 0x9a4
/* 80BEAEB0  7C BE 38 2E */	lwzx r5, r30, r7
/* 80BEAEB4  28 05 00 00 */	cmplwi r5, 0
/* 80BEAEB8  41 82 00 28 */	beq lbl_80BEAEE0
/* 80BEAEBC  80 05 00 F4 */	lwz r0, 0xf4(r5)
/* 80BEAEC0  60 00 00 01 */	ori r0, r0, 1
/* 80BEAEC4  90 05 00 F4 */	stw r0, 0xf4(r5)
/* 80BEAEC8  90 C5 00 24 */	stw r6, 0x24(r5)
/* 80BEAECC  7C BE 38 2E */	lwzx r5, r30, r7
/* 80BEAED0  80 05 00 F4 */	lwz r0, 0xf4(r5)
/* 80BEAED4  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80BEAED8  90 05 00 F4 */	stw r0, 0xf4(r5)
/* 80BEAEDC  7C 9E 39 2E */	stwx r4, r30, r7
lbl_80BEAEE0:
/* 80BEAEE0  38 63 00 04 */	addi r3, r3, 4
/* 80BEAEE4  42 00 FF C8 */	bdnz lbl_80BEAEAC
/* 80BEAEE8  7F C3 F3 78 */	mr r3, r30
/* 80BEAEEC  4B FF F9 1D */	bl actionOffInit__15daObjFPillar2_cFv
/* 80BEAEF0  48 00 00 D4 */	b lbl_80BEAFC4
lbl_80BEAEF4:
/* 80BEAEF4  38 7E 09 48 */	addi r3, r30, 0x948
/* 80BEAEF8  FC 20 F8 90 */	fmr f1, f31
/* 80BEAEFC  4B 68 58 45 */	bl cLib_chaseF__FPfff
/* 80BEAF00  38 7E 09 94 */	addi r3, r30, 0x994
/* 80BEAF04  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 80BEAF08  C0 5F 00 40 */	lfs f2, 0x40(r31)
/* 80BEAF0C  4B 68 58 35 */	bl cLib_chaseF__FPfff
/* 80BEAF10  38 7E 09 A0 */	addi r3, r30, 0x9a0
/* 80BEAF14  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80BEAF18  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 80BEAF1C  4B 68 58 25 */	bl cLib_chaseF__FPfff
/* 80BEAF20  38 7E 09 98 */	addi r3, r30, 0x998
/* 80BEAF24  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 80BEAF28  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 80BEAF2C  4B 68 58 15 */	bl cLib_chaseF__FPfff
/* 80BEAF30  38 7E 09 9C */	addi r3, r30, 0x99c
/* 80BEAF34  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80BEAF38  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 80BEAF3C  4B 68 58 05 */	bl cLib_chaseF__FPfff
/* 80BEAF40  38 7E 09 E9 */	addi r3, r30, 0x9e9
/* 80BEAF44  48 00 05 4D */	bl func_80BEB490
/* 80BEAF48  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BEAF4C  40 82 00 78 */	bne lbl_80BEAFC4
/* 80BEAF50  38 60 00 00 */	li r3, 0
/* 80BEAF54  38 C0 00 01 */	li r6, 1
/* 80BEAF58  38 80 00 00 */	li r4, 0
/* 80BEAF5C  38 00 00 03 */	li r0, 3
/* 80BEAF60  7C 09 03 A6 */	mtctr r0
lbl_80BEAF64:
/* 80BEAF64  38 E3 09 88 */	addi r7, r3, 0x988
/* 80BEAF68  7C BE 38 2E */	lwzx r5, r30, r7
/* 80BEAF6C  28 05 00 00 */	cmplwi r5, 0
/* 80BEAF70  41 82 00 28 */	beq lbl_80BEAF98
/* 80BEAF74  80 05 00 F4 */	lwz r0, 0xf4(r5)
/* 80BEAF78  60 00 00 01 */	ori r0, r0, 1
/* 80BEAF7C  90 05 00 F4 */	stw r0, 0xf4(r5)
/* 80BEAF80  90 C5 00 24 */	stw r6, 0x24(r5)
/* 80BEAF84  7C BE 38 2E */	lwzx r5, r30, r7
/* 80BEAF88  80 05 00 F4 */	lwz r0, 0xf4(r5)
/* 80BEAF8C  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80BEAF90  90 05 00 F4 */	stw r0, 0xf4(r5)
/* 80BEAF94  7C 9E 39 2E */	stwx r4, r30, r7
lbl_80BEAF98:
/* 80BEAF98  38 63 00 04 */	addi r3, r3, 4
/* 80BEAF9C  42 00 FF C8 */	bdnz lbl_80BEAF64
/* 80BEAFA0  7F C3 F3 78 */	mr r3, r30
/* 80BEAFA4  4B FF F8 65 */	bl actionOffInit__15daObjFPillar2_cFv
/* 80BEAFA8  48 00 00 1C */	b lbl_80BEAFC4
lbl_80BEAFAC:
/* 80BEAFAC  38 7E 09 48 */	addi r3, r30, 0x948
/* 80BEAFB0  FC 20 F8 90 */	fmr f1, f31
/* 80BEAFB4  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 80BEAFB8  C0 1E 04 F0 */	lfs f0, 0x4f0(r30)
/* 80BEAFBC  EC 42 00 32 */	fmuls f2, f2, f0
/* 80BEAFC0  4B 68 57 81 */	bl cLib_chaseF__FPfff
lbl_80BEAFC4:
/* 80BEAFC4  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 80BEAFC8  28 00 00 00 */	cmplwi r0, 0
/* 80BEAFCC  41 82 00 44 */	beq lbl_80BEB010
/* 80BEAFD0  3B 80 00 00 */	li r28, 0
/* 80BEAFD4  3B A0 00 00 */	li r29, 0
lbl_80BEAFD8:
/* 80BEAFD8  38 1D 09 A4 */	addi r0, r29, 0x9a4
/* 80BEAFDC  7C BE 00 2E */	lwzx r5, r30, r0
/* 80BEAFE0  28 05 00 00 */	cmplwi r5, 0
/* 80BEAFE4  41 82 00 1C */	beq lbl_80BEB000
/* 80BEAFE8  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80BEAFEC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80BEAFF0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80BEAFF4  38 85 00 68 */	addi r4, r5, 0x68
/* 80BEAFF8  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 80BEAFFC  4B 69 57 E5 */	bl func_802807E0
lbl_80BEB000:
/* 80BEB000  3B 9C 00 01 */	addi r28, r28, 1
/* 80BEB004  2C 1C 00 03 */	cmpwi r28, 3
/* 80BEB008  3B BD 00 04 */	addi r29, r29, 4
/* 80BEB00C  41 80 FF CC */	blt lbl_80BEAFD8
lbl_80BEB010:
/* 80BEB010  38 60 00 04 */	li r3, 4
/* 80BEB014  38 00 00 02 */	li r0, 2
/* 80BEB018  7C 09 03 A6 */	mtctr r0
lbl_80BEB01C:
/* 80BEB01C  38 A3 09 88 */	addi r5, r3, 0x988
/* 80BEB020  7C 9E 28 2E */	lwzx r4, r30, r5
/* 80BEB024  28 04 00 00 */	cmplwi r4, 0
/* 80BEB028  41 82 00 40 */	beq lbl_80BEB068
/* 80BEB02C  C0 1E 09 94 */	lfs f0, 0x994(r30)
/* 80BEB030  D0 04 00 28 */	stfs f0, 0x28(r4)
/* 80BEB034  C0 1E 09 A0 */	lfs f0, 0x9a0(r30)
/* 80BEB038  FC 00 00 1E */	fctiwz f0, f0
/* 80BEB03C  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80BEB040  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80BEB044  7C 9E 28 2E */	lwzx r4, r30, r5
/* 80BEB048  B0 04 00 52 */	sth r0, 0x52(r4)
/* 80BEB04C  C0 1E 09 98 */	lfs f0, 0x998(r30)
/* 80BEB050  7C 9E 28 2E */	lwzx r4, r30, r5
/* 80BEB054  D0 04 00 3C */	stfs f0, 0x3c(r4)
/* 80BEB058  C0 1E 09 9C */	lfs f0, 0x99c(r30)
/* 80BEB05C  7C 9E 28 2E */	lwzx r4, r30, r5
/* 80BEB060  D0 04 00 B0 */	stfs f0, 0xb0(r4)
/* 80BEB064  D0 04 00 B4 */	stfs f0, 0xb4(r4)
lbl_80BEB068:
/* 80BEB068  38 63 00 04 */	addi r3, r3, 4
/* 80BEB06C  42 00 FF B0 */	bdnz lbl_80BEB01C
/* 80BEB070  A0 1E 09 7A */	lhz r0, 0x97a(r30)
/* 80BEB074  54 00 E7 3E */	rlwinm r0, r0, 0x1c, 0x1c, 0x1f
/* 80BEB078  2C 00 00 01 */	cmpwi r0, 1
/* 80BEB07C  41 82 00 14 */	beq lbl_80BEB090
/* 80BEB080  40 80 01 14 */	bge lbl_80BEB194
/* 80BEB084  2C 00 00 00 */	cmpwi r0, 0
/* 80BEB088  40 80 00 C0 */	bge lbl_80BEB148
/* 80BEB08C  48 00 01 08 */	b lbl_80BEB194
lbl_80BEB090:
/* 80BEB090  88 7E 09 E8 */	lbz r3, 0x9e8(r30)
/* 80BEB094  7C 60 07 75 */	extsb. r0, r3
/* 80BEB098  40 81 00 40 */	ble lbl_80BEB0D8
/* 80BEB09C  C0 1E 09 68 */	lfs f0, 0x968(r30)
/* 80BEB0A0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80BEB0A4  C0 1E 09 6C */	lfs f0, 0x96c(r30)
/* 80BEB0A8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80BEB0AC  C0 1E 09 70 */	lfs f0, 0x970(r30)
/* 80BEB0B0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80BEB0B4  38 7E 09 DC */	addi r3, r30, 0x9dc
/* 80BEB0B8  38 81 00 1C */	addi r4, r1, 0x1c
/* 80BEB0BC  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80BEB0C0  4B 68 56 ED */	bl cLib_chasePos__FP4cXyzRC4cXyzf
/* 80BEB0C4  2C 03 00 00 */	cmpwi r3, 0
/* 80BEB0C8  41 82 00 50 */	beq lbl_80BEB118
/* 80BEB0CC  38 00 FF FF */	li r0, -1
/* 80BEB0D0  98 1E 09 E8 */	stb r0, 0x9e8(r30)
/* 80BEB0D4  48 00 00 44 */	b lbl_80BEB118
lbl_80BEB0D8:
/* 80BEB0D8  7C 60 07 75 */	extsb. r0, r3
/* 80BEB0DC  40 80 00 3C */	bge lbl_80BEB118
/* 80BEB0E0  C0 1E 09 5C */	lfs f0, 0x95c(r30)
/* 80BEB0E4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80BEB0E8  C0 1E 09 60 */	lfs f0, 0x960(r30)
/* 80BEB0EC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80BEB0F0  C0 1E 09 64 */	lfs f0, 0x964(r30)
/* 80BEB0F4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80BEB0F8  38 7E 09 DC */	addi r3, r30, 0x9dc
/* 80BEB0FC  38 81 00 10 */	addi r4, r1, 0x10
/* 80BEB100  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80BEB104  4B 68 56 A9 */	bl cLib_chasePos__FP4cXyzRC4cXyzf
/* 80BEB108  2C 03 00 00 */	cmpwi r3, 0
/* 80BEB10C  41 82 00 0C */	beq lbl_80BEB118
/* 80BEB110  38 00 00 01 */	li r0, 1
/* 80BEB114  98 1E 09 E8 */	stb r0, 0x9e8(r30)
lbl_80BEB118:
/* 80BEB118  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080123@ha */
/* 80BEB11C  38 03 01 23 */	addi r0, r3, 0x0123 /* 0x00080123@l */
/* 80BEB120  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BEB124  38 7E 09 BC */	addi r3, r30, 0x9bc
/* 80BEB128  38 81 00 0C */	addi r4, r1, 0xc
/* 80BEB12C  38 A0 00 00 */	li r5, 0
/* 80BEB130  38 C0 FF FF */	li r6, -1
/* 80BEB134  81 9E 09 CC */	lwz r12, 0x9cc(r30)
/* 80BEB138  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80BEB13C  7D 89 03 A6 */	mtctr r12
/* 80BEB140  4E 80 04 21 */	bctrl 
/* 80BEB144  48 00 00 50 */	b lbl_80BEB194
lbl_80BEB148:
/* 80BEB148  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80BEB14C  7C 03 07 74 */	extsb r3, r0
/* 80BEB150  4B 44 1F 1D */	bl dComIfGp_getReverb__Fi
/* 80BEB154  7C 67 1B 78 */	mr r7, r3
/* 80BEB158  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080126@ha */
/* 80BEB15C  38 03 01 26 */	addi r0, r3, 0x0126 /* 0x00080126@l */
/* 80BEB160  90 01 00 08 */	stw r0, 8(r1)
/* 80BEB164  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80BEB168  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80BEB16C  80 63 00 00 */	lwz r3, 0(r3)
/* 80BEB170  38 81 00 08 */	addi r4, r1, 8
/* 80BEB174  38 BE 05 38 */	addi r5, r30, 0x538
/* 80BEB178  38 C0 00 00 */	li r6, 0
/* 80BEB17C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80BEB180  FC 40 08 90 */	fmr f2, f1
/* 80BEB184  C0 7F 00 28 */	lfs f3, 0x28(r31)
/* 80BEB188  FC 80 18 90 */	fmr f4, f3
/* 80BEB18C  39 00 00 00 */	li r8, 0
/* 80BEB190  4B 6C 13 7D */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80BEB194:
/* 80BEB194  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80BEB198  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80BEB19C  39 61 00 40 */	addi r11, r1, 0x40
/* 80BEB1A0  4B 77 70 85 */	bl _restgpr_28
/* 80BEB1A4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80BEB1A8  7C 08 03 A6 */	mtlr r0
/* 80BEB1AC  38 21 00 50 */	addi r1, r1, 0x50
/* 80BEB1B0  4E 80 00 20 */	blr 
