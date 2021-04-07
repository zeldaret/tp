lbl_80A58FE0:
/* 80A58FE0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80A58FE4  7C 08 02 A6 */	mflr r0
/* 80A58FE8  90 01 00 64 */	stw r0, 0x64(r1)
/* 80A58FEC  39 61 00 60 */	addi r11, r1, 0x60
/* 80A58FF0  4B 90 91 E1 */	bl _savegpr_26
/* 80A58FF4  7C 7E 1B 78 */	mr r30, r3
/* 80A58FF8  3C 80 80 A6 */	lis r4, lit_4030@ha /* 0x80A5DEFC@ha */
/* 80A58FFC  3B E4 DE FC */	addi r31, r4, lit_4030@l /* 0x80A5DEFC@l */
/* 80A59000  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A59004  38 C4 61 C0 */	addi r6, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A59008  83 A6 5D AC */	lwz r29, 0x5dac(r6)
/* 80A5900C  3B 80 00 01 */	li r28, 1
/* 80A59010  80 83 05 CC */	lwz r4, 0x5cc(r3)
/* 80A59014  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 80A59018  FC 00 00 1E */	fctiwz f0, f0
/* 80A5901C  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80A59020  81 01 00 44 */	lwz r8, 0x44(r1)
/* 80A59024  3B 60 00 00 */	li r27, 0
/* 80A59028  3B 40 10 00 */	li r26, 0x1000
/* 80A5902C  38 A0 00 00 */	li r5, 0
/* 80A59030  98 A3 05 FC */	stb r5, 0x5fc(r3)
/* 80A59034  38 E0 00 01 */	li r7, 1
/* 80A59038  98 E3 0A EC */	stb r7, 0xaec(r3)
/* 80A5903C  A8 03 05 EA */	lha r0, 0x5ea(r3)
/* 80A59040  28 00 00 2A */	cmplwi r0, 0x2a
/* 80A59044  41 81 08 30 */	bgt lbl_80A59874
/* 80A59048  3C 80 80 A6 */	lis r4, lit_9872@ha /* 0x80A5FC04@ha */
/* 80A5904C  38 84 FC 04 */	addi r4, r4, lit_9872@l /* 0x80A5FC04@l */
/* 80A59050  54 00 10 3A */	slwi r0, r0, 2
/* 80A59054  7C 04 00 2E */	lwzx r0, r4, r0
/* 80A59058  7C 09 03 A6 */	mtctr r0
/* 80A5905C  4E 80 04 20 */	bctr 
lbl_80A59060:
/* 80A59060  38 66 07 F0 */	addi r3, r6, 0x7f0
/* 80A59064  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80A59068  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80A5906C  A0 84 04 40 */	lhz r4, 0x440(r4)
/* 80A59070  4B 5D B9 4D */	bl isEventBit__11dSv_event_cCFUs
/* 80A59074  2C 03 00 00 */	cmpwi r3, 0
/* 80A59078  41 82 00 10 */	beq lbl_80A59088
/* 80A5907C  38 00 00 28 */	li r0, 0x28
/* 80A59080  B0 1E 05 EA */	sth r0, 0x5ea(r30)
/* 80A59084  48 00 07 F0 */	b lbl_80A59874
lbl_80A59088:
/* 80A59088  3C 60 80 A5 */	lis r3, s_fs_sub__FPvPv@ha /* 0x80A4FFD4@ha */
/* 80A5908C  38 63 FF D4 */	addi r3, r3, s_fs_sub__FPvPv@l /* 0x80A4FFD4@l */
/* 80A59090  7F C4 F3 78 */	mr r4, r30
/* 80A59094  4B 5C 82 A5 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 80A59098  C0 7F 04 64 */	lfs f3, 0x464(r31)
/* 80A5909C  D0 7E 04 D0 */	stfs f3, 0x4d0(r30)
/* 80A590A0  C0 1F 04 68 */	lfs f0, 0x468(r31)
/* 80A590A4  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80A590A8  C0 5F 04 6C */	lfs f2, 0x46c(r31)
/* 80A590AC  D0 5E 04 D8 */	stfs f2, 0x4d8(r30)
/* 80A590B0  3B 80 00 00 */	li r28, 0
/* 80A590B4  C0 3D 04 D8 */	lfs f1, 0x4d8(r29)
/* 80A590B8  C0 1F 04 70 */	lfs f0, 0x470(r31)
/* 80A590BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A590C0  40 80 07 B4 */	bge lbl_80A59874
/* 80A590C4  38 00 00 01 */	li r0, 1
/* 80A590C8  B0 1E 05 EA */	sth r0, 0x5ea(r30)
/* 80A590CC  D0 7E 04 D0 */	stfs f3, 0x4d0(r30)
/* 80A590D0  C0 1F 04 74 */	lfs f0, 0x474(r31)
/* 80A590D4  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80A590D8  D0 5E 04 D8 */	stfs f2, 0x4d8(r30)
/* 80A590DC  7F C3 F3 78 */	mr r3, r30
/* 80A590E0  38 80 00 1A */	li r4, 0x1a
/* 80A590E4  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80A590E8  38 A0 00 02 */	li r5, 2
/* 80A590EC  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A590F0  4B FF 00 B5 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A590F4  38 00 00 00 */	li r0, 0
/* 80A590F8  90 1E 09 04 */	stw r0, 0x904(r30)
/* 80A590FC  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A59100  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80A59104  38 00 01 5E */	li r0, 0x15e
/* 80A59108  B0 1E 0B 42 */	sth r0, 0xb42(r30)
/* 80A5910C  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005001A@ha */
/* 80A59110  38 03 00 1A */	addi r0, r3, 0x001A /* 0x0005001A@l */
/* 80A59114  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A59118  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80A5911C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80A59120  80 63 00 00 */	lwz r3, 0(r3)
/* 80A59124  38 81 00 10 */	addi r4, r1, 0x10
/* 80A59128  38 A0 00 00 */	li r5, 0
/* 80A5912C  38 C0 00 00 */	li r6, 0
/* 80A59130  38 E0 00 00 */	li r7, 0
/* 80A59134  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80A59138  FC 40 08 90 */	fmr f2, f1
/* 80A5913C  C0 7F 00 34 */	lfs f3, 0x34(r31)
/* 80A59140  FC 80 18 90 */	fmr f4, f3
/* 80A59144  39 00 00 00 */	li r8, 0
/* 80A59148  4B 85 28 3D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80A5914C  48 00 07 28 */	b lbl_80A59874
lbl_80A59150:
/* 80A59150  80 1E 09 04 */	lwz r0, 0x904(r30)
/* 80A59154  1C C0 00 34 */	mulli r6, r0, 0x34
/* 80A59158  3C 80 80 A6 */	lis r4, guide_path_fs@ha /* 0x80A5FA98@ha */
/* 80A5915C  38 A4 FA 98 */	addi r5, r4, guide_path_fs@l /* 0x80A5FA98@l */
/* 80A59160  7C 05 30 2E */	lwzx r0, r5, r6
/* 80A59164  2C 00 00 00 */	cmpwi r0, 0
/* 80A59168  41 82 00 90 */	beq lbl_80A591F8
/* 80A5916C  7C 85 32 14 */	add r4, r5, r6
/* 80A59170  C0 04 00 04 */	lfs f0, 4(r4)
/* 80A59174  D0 1E 08 F0 */	stfs f0, 0x8f0(r30)
/* 80A59178  80 1E 09 04 */	lwz r0, 0x904(r30)
/* 80A5917C  1C 00 00 34 */	mulli r0, r0, 0x34
/* 80A59180  7C 85 02 14 */	add r4, r5, r0
/* 80A59184  C0 04 00 08 */	lfs f0, 8(r4)
/* 80A59188  D0 1E 08 F4 */	stfs f0, 0x8f4(r30)
/* 80A5918C  80 1E 09 04 */	lwz r0, 0x904(r30)
/* 80A59190  1C 00 00 34 */	mulli r0, r0, 0x34
/* 80A59194  7C 85 02 14 */	add r4, r5, r0
/* 80A59198  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 80A5919C  D0 1E 08 F8 */	stfs f0, 0x8f8(r30)
/* 80A591A0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80A591A4  D0 1E 09 10 */	stfs f0, 0x910(r30)
/* 80A591A8  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80A591AC  D0 1E 09 14 */	stfs f0, 0x914(r30)
/* 80A591B0  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80A591B4  D0 1E 09 18 */	stfs f0, 0x918(r30)
/* 80A591B8  C0 1E 08 F0 */	lfs f0, 0x8f0(r30)
/* 80A591BC  D0 1E 09 1C */	stfs f0, 0x91c(r30)
/* 80A591C0  C0 1E 08 F4 */	lfs f0, 0x8f4(r30)
/* 80A591C4  D0 1E 09 20 */	stfs f0, 0x920(r30)
/* 80A591C8  C0 1E 08 F8 */	lfs f0, 0x8f8(r30)
/* 80A591CC  D0 1E 09 24 */	stfs f0, 0x924(r30)
/* 80A591D0  38 00 00 02 */	li r0, 2
/* 80A591D4  B0 1E 05 EA */	sth r0, 0x5ea(r30)
/* 80A591D8  38 80 00 20 */	li r4, 0x20
/* 80A591DC  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 80A591E0  38 A0 00 00 */	li r5, 0
/* 80A591E4  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A591E8  4B FE FF BD */	bl anm_init__FP12npc_ks_classifUcf
/* 80A591EC  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A591F0  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80A591F4  48 00 06 80 */	b lbl_80A59874
lbl_80A591F8:
/* 80A591F8  7C 85 32 14 */	add r4, r5, r6
/* 80A591FC  C0 04 00 04 */	lfs f0, 4(r4)
/* 80A59200  D0 1E 08 F0 */	stfs f0, 0x8f0(r30)
/* 80A59204  80 1E 09 04 */	lwz r0, 0x904(r30)
/* 80A59208  1C 00 00 34 */	mulli r0, r0, 0x34
/* 80A5920C  7C 85 02 14 */	add r4, r5, r0
/* 80A59210  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 80A59214  D0 1E 08 F8 */	stfs f0, 0x8f8(r30)
/* 80A59218  38 00 00 05 */	li r0, 5
/* 80A5921C  B0 1E 05 EA */	sth r0, 0x5ea(r30)
/* 80A59220  3C 80 80 A6 */	lis r4, l_HIO@ha /* 0x80A5FEB8@ha */
/* 80A59224  38 84 FE B8 */	addi r4, r4, l_HIO@l /* 0x80A5FEB8@l */
/* 80A59228  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 80A5922C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80A59230  80 1E 05 D0 */	lwz r0, 0x5d0(r30)
/* 80A59234  2C 00 00 1A */	cmpwi r0, 0x1a
/* 80A59238  41 82 06 3C */	beq lbl_80A59874
/* 80A5923C  38 80 00 1A */	li r4, 0x1a
/* 80A59240  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80A59244  38 A0 00 02 */	li r5, 2
/* 80A59248  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A5924C  4B FE FF 59 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A59250  48 00 06 24 */	b lbl_80A59874
lbl_80A59254:
/* 80A59254  3B 80 00 02 */	li r28, 2
/* 80A59258  80 1E 05 D0 */	lwz r0, 0x5d0(r30)
/* 80A5925C  2C 00 00 20 */	cmpwi r0, 0x20
/* 80A59260  40 82 00 D8 */	bne lbl_80A59338
/* 80A59264  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 80A59268  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80A5926C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80A59270  40 82 00 18 */	bne lbl_80A59288
/* 80A59274  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80A59278  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80A5927C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80A59280  41 82 00 08 */	beq lbl_80A59288
/* 80A59284  7C A7 2B 78 */	mr r7, r5
lbl_80A59288:
/* 80A59288  54 E0 06 3F */	clrlwi. r0, r7, 0x18
/* 80A5928C  41 82 00 AC */	beq lbl_80A59338
/* 80A59290  7F C3 F3 78 */	mr r3, r30
/* 80A59294  38 80 00 21 */	li r4, 0x21
/* 80A59298  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80A5929C  38 A0 00 00 */	li r5, 0
/* 80A592A0  FC 40 08 90 */	fmr f2, f1
/* 80A592A4  4B FE FF 01 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A592A8  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80A592AC  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80A592B0  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050016@ha */
/* 80A592B4  38 03 00 16 */	addi r0, r3, 0x0016 /* 0x00050016@l */
/* 80A592B8  90 01 00 20 */	stw r0, 0x20(r1)
/* 80A592BC  38 7E 08 60 */	addi r3, r30, 0x860
/* 80A592C0  38 81 00 20 */	addi r4, r1, 0x20
/* 80A592C4  38 A0 FF FF */	li r5, -1
/* 80A592C8  81 9E 08 60 */	lwz r12, 0x860(r30)
/* 80A592CC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A592D0  7D 89 03 A6 */	mtctr r12
/* 80A592D4  4E 80 04 21 */	bctrl 
/* 80A592D8  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060020@ha */
/* 80A592DC  38 03 00 20 */	addi r0, r3, 0x0020 /* 0x00060020@l */
/* 80A592E0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80A592E4  38 7E 08 60 */	addi r3, r30, 0x860
/* 80A592E8  38 81 00 1C */	addi r4, r1, 0x1c
/* 80A592EC  38 A0 00 00 */	li r5, 0
/* 80A592F0  38 C0 FF FF */	li r6, -1
/* 80A592F4  81 9E 08 60 */	lwz r12, 0x860(r30)
/* 80A592F8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80A592FC  7D 89 03 A6 */	mtctr r12
/* 80A59300  4E 80 04 21 */	bctrl 
/* 80A59304  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060024@ha */
/* 80A59308  38 03 00 24 */	addi r0, r3, 0x0024 /* 0x00060024@l */
/* 80A5930C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80A59310  38 7E 08 60 */	addi r3, r30, 0x860
/* 80A59314  38 81 00 18 */	addi r4, r1, 0x18
/* 80A59318  38 A0 00 00 */	li r5, 0
/* 80A5931C  38 C0 FF FF */	li r6, -1
/* 80A59320  81 9E 08 60 */	lwz r12, 0x860(r30)
/* 80A59324  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80A59328  7D 89 03 A6 */	mtctr r12
/* 80A5932C  4E 80 04 21 */	bctrl 
/* 80A59330  38 00 00 01 */	li r0, 1
/* 80A59334  98 1E 0B E0 */	stb r0, 0xbe0(r30)
lbl_80A59338:
/* 80A59338  38 61 00 24 */	addi r3, r1, 0x24
/* 80A5933C  38 9E 08 F0 */	addi r4, r30, 0x8f0
/* 80A59340  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80A59344  4B 80 D7 F1 */	bl __mi__4cXyzCFRC3Vec
/* 80A59348  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80A5934C  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80A59350  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80A59354  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80A59358  C0 41 00 2C */	lfs f2, 0x2c(r1)
/* 80A5935C  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 80A59360  4B 80 E3 15 */	bl cM_atan2s__Fff
/* 80A59364  B0 7E 08 FE */	sth r3, 0x8fe(r30)
/* 80A59368  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80A5936C  EC 20 00 32 */	fmuls f1, f0, f0
/* 80A59370  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80A59374  EC 00 00 32 */	fmuls f0, f0, f0
/* 80A59378  EC 41 00 2A */	fadds f2, f1, f0
/* 80A5937C  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A59380  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80A59384  40 81 00 0C */	ble lbl_80A59390
/* 80A59388  FC 00 10 34 */	frsqrte f0, f2
/* 80A5938C  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80A59390:
/* 80A59390  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 80A59394  4B 80 E2 E1 */	bl cM_atan2s__Fff
/* 80A59398  7C 03 00 D0 */	neg r0, r3
/* 80A5939C  B0 1E 08 FC */	sth r0, 0x8fc(r30)
/* 80A593A0  38 61 00 30 */	addi r3, r1, 0x30
/* 80A593A4  4B 8E DD 95 */	bl PSVECSquareMag
/* 80A593A8  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A593AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A593B0  40 81 00 58 */	ble lbl_80A59408
/* 80A593B4  FC 00 08 34 */	frsqrte f0, f1
/* 80A593B8  C8 9F 00 50 */	lfd f4, 0x50(r31)
/* 80A593BC  FC 44 00 32 */	fmul f2, f4, f0
/* 80A593C0  C8 7F 00 58 */	lfd f3, 0x58(r31)
/* 80A593C4  FC 00 00 32 */	fmul f0, f0, f0
/* 80A593C8  FC 01 00 32 */	fmul f0, f1, f0
/* 80A593CC  FC 03 00 28 */	fsub f0, f3, f0
/* 80A593D0  FC 02 00 32 */	fmul f0, f2, f0
/* 80A593D4  FC 44 00 32 */	fmul f2, f4, f0
/* 80A593D8  FC 00 00 32 */	fmul f0, f0, f0
/* 80A593DC  FC 01 00 32 */	fmul f0, f1, f0
/* 80A593E0  FC 03 00 28 */	fsub f0, f3, f0
/* 80A593E4  FC 02 00 32 */	fmul f0, f2, f0
/* 80A593E8  FC 44 00 32 */	fmul f2, f4, f0
/* 80A593EC  FC 00 00 32 */	fmul f0, f0, f0
/* 80A593F0  FC 01 00 32 */	fmul f0, f1, f0
/* 80A593F4  FC 03 00 28 */	fsub f0, f3, f0
/* 80A593F8  FC 02 00 32 */	fmul f0, f2, f0
/* 80A593FC  FC 21 00 32 */	fmul f1, f1, f0
/* 80A59400  FC 20 08 18 */	frsp f1, f1
/* 80A59404  48 00 00 88 */	b lbl_80A5948C
lbl_80A59408:
/* 80A59408  C8 1F 00 60 */	lfd f0, 0x60(r31)
/* 80A5940C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A59410  40 80 00 10 */	bge lbl_80A59420
/* 80A59414  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A59418  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80A5941C  48 00 00 70 */	b lbl_80A5948C
lbl_80A59420:
/* 80A59420  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80A59424  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80A59428  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A5942C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A59430  7C 03 00 00 */	cmpw r3, r0
/* 80A59434  41 82 00 14 */	beq lbl_80A59448
/* 80A59438  40 80 00 40 */	bge lbl_80A59478
/* 80A5943C  2C 03 00 00 */	cmpwi r3, 0
/* 80A59440  41 82 00 20 */	beq lbl_80A59460
/* 80A59444  48 00 00 34 */	b lbl_80A59478
lbl_80A59448:
/* 80A59448  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A5944C  41 82 00 0C */	beq lbl_80A59458
/* 80A59450  38 00 00 01 */	li r0, 1
/* 80A59454  48 00 00 28 */	b lbl_80A5947C
lbl_80A59458:
/* 80A59458  38 00 00 02 */	li r0, 2
/* 80A5945C  48 00 00 20 */	b lbl_80A5947C
lbl_80A59460:
/* 80A59460  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A59464  41 82 00 0C */	beq lbl_80A59470
/* 80A59468  38 00 00 05 */	li r0, 5
/* 80A5946C  48 00 00 10 */	b lbl_80A5947C
lbl_80A59470:
/* 80A59470  38 00 00 03 */	li r0, 3
/* 80A59474  48 00 00 08 */	b lbl_80A5947C
lbl_80A59478:
/* 80A59478  38 00 00 04 */	li r0, 4
lbl_80A5947C:
/* 80A5947C  2C 00 00 01 */	cmpwi r0, 1
/* 80A59480  40 82 00 0C */	bne lbl_80A5948C
/* 80A59484  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A59488  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80A5948C:
/* 80A5948C  C0 5F 00 AC */	lfs f2, 0xac(r31)
/* 80A59490  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 80A59494  EC 02 00 32 */	fmuls f0, f2, f0
/* 80A59498  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A5949C  40 80 03 D8 */	bge lbl_80A59874
/* 80A594A0  C0 1E 08 F0 */	lfs f0, 0x8f0(r30)
/* 80A594A4  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80A594A8  C0 1E 08 F4 */	lfs f0, 0x8f4(r30)
/* 80A594AC  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80A594B0  C0 1E 08 F8 */	lfs f0, 0x8f8(r30)
/* 80A594B4  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80A594B8  80 1E 09 04 */	lwz r0, 0x904(r30)
/* 80A594BC  2C 00 00 00 */	cmpwi r0, 0
/* 80A594C0  40 82 00 40 */	bne lbl_80A59500
/* 80A594C4  7F C3 F3 78 */	mr r3, r30
/* 80A594C8  38 80 00 2D */	li r4, 0x2d
/* 80A594CC  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80A594D0  38 A0 00 00 */	li r5, 0
/* 80A594D4  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A594D8  4B FE FC CD */	bl anm_init__FP12npc_ks_classifUcf
/* 80A594DC  38 00 00 03 */	li r0, 3
/* 80A594E0  B0 1E 05 EA */	sth r0, 0x5ea(r30)
/* 80A594E4  A8 7E 08 FE */	lha r3, 0x8fe(r30)
/* 80A594E8  3C 63 00 01 */	addis r3, r3, 1
/* 80A594EC  38 03 80 00 */	addi r0, r3, -32768
/* 80A594F0  B0 1E 08 FE */	sth r0, 0x8fe(r30)
/* 80A594F4  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A594F8  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80A594FC  48 00 00 0C */	b lbl_80A59508
lbl_80A59500:
/* 80A59500  38 00 00 01 */	li r0, 1
/* 80A59504  B0 1E 05 EA */	sth r0, 0x5ea(r30)
lbl_80A59508:
/* 80A59508  38 00 00 01 */	li r0, 1
/* 80A5950C  98 1E 0B E0 */	stb r0, 0xbe0(r30)
/* 80A59510  80 7E 09 04 */	lwz r3, 0x904(r30)
/* 80A59514  38 03 00 01 */	addi r0, r3, 1
/* 80A59518  90 1E 09 04 */	stw r0, 0x904(r30)
/* 80A5951C  48 00 03 58 */	b lbl_80A59874
lbl_80A59520:
/* 80A59520  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 80A59524  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80A59528  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80A5952C  40 82 00 18 */	bne lbl_80A59544
/* 80A59530  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80A59534  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80A59538  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80A5953C  41 82 00 08 */	beq lbl_80A59544
/* 80A59540  7C A7 2B 78 */	mr r7, r5
lbl_80A59544:
/* 80A59544  54 E0 06 3F */	clrlwi. r0, r7, 0x18
/* 80A59548  41 82 03 2C */	beq lbl_80A59874
/* 80A5954C  A8 7E 08 FE */	lha r3, 0x8fe(r30)
/* 80A59550  3C 63 00 01 */	addis r3, r3, 1
/* 80A59554  38 03 80 00 */	addi r0, r3, -32768
/* 80A59558  B0 1E 08 FE */	sth r0, 0x8fe(r30)
/* 80A5955C  38 00 00 01 */	li r0, 1
/* 80A59560  B0 1E 05 EA */	sth r0, 0x5ea(r30)
/* 80A59564  48 00 03 10 */	b lbl_80A59874
lbl_80A59568:
/* 80A59568  C0 3E 08 F0 */	lfs f1, 0x8f0(r30)
/* 80A5956C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80A59570  EC 21 00 28 */	fsubs f1, f1, f0
/* 80A59574  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80A59578  C0 5E 08 F8 */	lfs f2, 0x8f8(r30)
/* 80A5957C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80A59580  EC 42 00 28 */	fsubs f2, f2, f0
/* 80A59584  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 80A59588  4B 80 E0 ED */	bl cM_atan2s__Fff
/* 80A5958C  B0 7E 08 FE */	sth r3, 0x8fe(r30)
/* 80A59590  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80A59594  EC 20 00 32 */	fmuls f1, f0, f0
/* 80A59598  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80A5959C  EC 00 00 32 */	fmuls f0, f0, f0
/* 80A595A0  EC 41 00 2A */	fadds f2, f1, f0
/* 80A595A4  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A595A8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80A595AC  40 81 00 0C */	ble lbl_80A595B8
/* 80A595B0  FC 00 10 34 */	frsqrte f0, f2
/* 80A595B4  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80A595B8:
/* 80A595B8  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 80A595BC  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 80A595C0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80A595C4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80A595C8  40 80 02 AC */	bge lbl_80A59874
/* 80A595CC  80 7E 09 04 */	lwz r3, 0x904(r30)
/* 80A595D0  38 03 00 01 */	addi r0, r3, 1
/* 80A595D4  90 1E 09 04 */	stw r0, 0x904(r30)
/* 80A595D8  38 00 00 01 */	li r0, 1
/* 80A595DC  B0 1E 05 EA */	sth r0, 0x5ea(r30)
/* 80A595E0  80 1E 09 04 */	lwz r0, 0x904(r30)
/* 80A595E4  1C 00 00 34 */	mulli r0, r0, 0x34
/* 80A595E8  3C 60 80 A6 */	lis r3, guide_path_fs@ha /* 0x80A5FA98@ha */
/* 80A595EC  38 63 FA 98 */	addi r3, r3, guide_path_fs@l /* 0x80A5FA98@l */
/* 80A595F0  7C 03 00 2E */	lwzx r0, r3, r0
/* 80A595F4  2C 00 00 00 */	cmpwi r0, 0
/* 80A595F8  40 80 02 7C */	bge lbl_80A59874
/* 80A595FC  38 00 00 0A */	li r0, 0xa
/* 80A59600  B0 1E 05 EA */	sth r0, 0x5ea(r30)
/* 80A59604  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A59608  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80A5960C  7F C3 F3 78 */	mr r3, r30
/* 80A59610  38 80 00 33 */	li r4, 0x33
/* 80A59614  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80A59618  38 A0 00 02 */	li r5, 2
/* 80A5961C  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A59620  4B FE FB 85 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A59624  48 00 02 50 */	b lbl_80A59874
lbl_80A59628:
/* 80A59628  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A5962C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80A59630  48 00 02 44 */	b lbl_80A59874
lbl_80A59634:
/* 80A59634  38 00 00 15 */	li r0, 0x15
/* 80A59638  B0 1E 05 EA */	sth r0, 0x5ea(r30)
/* 80A5963C  38 80 00 33 */	li r4, 0x33
/* 80A59640  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80A59644  38 A0 00 02 */	li r5, 2
/* 80A59648  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A5964C  4B FE FB 59 */	bl anm_init__FP12npc_ks_classifUcf
lbl_80A59650:
/* 80A59650  A8 1E 05 C8 */	lha r0, 0x5c8(r30)
/* 80A59654  B0 1E 08 FE */	sth r0, 0x8fe(r30)
/* 80A59658  3B 40 00 00 */	li r26, 0
/* 80A5965C  38 00 00 01 */	li r0, 1
/* 80A59660  98 1E 05 FC */	stb r0, 0x5fc(r30)
/* 80A59664  A8 1E 05 F4 */	lha r0, 0x5f4(r30)
/* 80A59668  2C 00 00 00 */	cmpwi r0, 0
/* 80A5966C  41 82 00 34 */	beq lbl_80A596A0
/* 80A59670  38 00 00 0A */	li r0, 0xa
/* 80A59674  90 1E 09 3C */	stw r0, 0x93c(r30)
/* 80A59678  C0 1F 04 78 */	lfs f0, 0x478(r31)
/* 80A5967C  D0 1E 09 40 */	stfs f0, 0x940(r30)
/* 80A59680  C0 1F 04 7C */	lfs f0, 0x47c(r31)
/* 80A59684  D0 1E 09 44 */	stfs f0, 0x944(r30)
/* 80A59688  C0 1F 04 80 */	lfs f0, 0x480(r31)
/* 80A5968C  D0 1E 09 48 */	stfs f0, 0x948(r30)
/* 80A59690  A8 7E 08 FE */	lha r3, 0x8fe(r30)
/* 80A59694  38 03 D0 00 */	addi r0, r3, -12288
/* 80A59698  B0 1E 08 FE */	sth r0, 0x8fe(r30)
/* 80A5969C  3B 40 08 00 */	li r26, 0x800
lbl_80A596A0:
/* 80A596A0  3B 60 00 01 */	li r27, 1
/* 80A596A4  A8 7E 05 C8 */	lha r3, 0x5c8(r30)
/* 80A596A8  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80A596AC  7C 03 00 50 */	subf r0, r3, r0
/* 80A596B0  7C 00 07 34 */	extsh r0, r0
/* 80A596B4  2C 00 30 00 */	cmpwi r0, 0x3000
/* 80A596B8  41 81 00 0C */	bgt lbl_80A596C4
/* 80A596BC  2C 00 D0 00 */	cmpwi r0, -12288
/* 80A596C0  40 80 01 B4 */	bge lbl_80A59874
lbl_80A596C4:
/* 80A596C4  A8 1E 05 EA */	lha r0, 0x5ea(r30)
/* 80A596C8  2C 00 00 16 */	cmpwi r0, 0x16
/* 80A596CC  40 80 01 A8 */	bge lbl_80A59874
/* 80A596D0  7F C3 F3 78 */	mr r3, r30
/* 80A596D4  38 80 00 1C */	li r4, 0x1c
/* 80A596D8  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80A596DC  38 A0 00 00 */	li r5, 0
/* 80A596E0  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A596E4  4B FE FA C1 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A596E8  38 00 00 16 */	li r0, 0x16
/* 80A596EC  B0 1E 05 EA */	sth r0, 0x5ea(r30)
/* 80A596F0  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050015@ha */
/* 80A596F4  38 03 00 15 */	addi r0, r3, 0x0015 /* 0x00050015@l */
/* 80A596F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A596FC  38 7E 08 60 */	addi r3, r30, 0x860
/* 80A59700  38 81 00 14 */	addi r4, r1, 0x14
/* 80A59704  38 A0 FF FF */	li r5, -1
/* 80A59708  81 9E 08 60 */	lwz r12, 0x860(r30)
/* 80A5970C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A59710  7D 89 03 A6 */	mtctr r12
/* 80A59714  4E 80 04 21 */	bctrl 
/* 80A59718  48 00 01 5C */	b lbl_80A59874
lbl_80A5971C:
/* 80A5971C  3B 40 08 00 */	li r26, 0x800
/* 80A59720  A8 1E 05 C8 */	lha r0, 0x5c8(r30)
/* 80A59724  B0 1E 08 FE */	sth r0, 0x8fe(r30)
/* 80A59728  2C 08 00 0B */	cmpwi r8, 0xb
/* 80A5972C  41 80 01 48 */	blt lbl_80A59874
/* 80A59730  38 00 00 14 */	li r0, 0x14
/* 80A59734  B0 1E 05 EA */	sth r0, 0x5ea(r30)
/* 80A59738  48 00 01 3C */	b lbl_80A59874
lbl_80A5973C:
/* 80A5973C  38 80 00 27 */	li r4, 0x27
/* 80A59740  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80A59744  38 A0 00 02 */	li r5, 2
/* 80A59748  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A5974C  4B FE FA 59 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A59750  38 00 00 29 */	li r0, 0x29
/* 80A59754  B0 1E 05 EA */	sth r0, 0x5ea(r30)
/* 80A59758  C0 3F 00 D4 */	lfs f1, 0xd4(r31)
/* 80A5975C  4B 80 E1 F9 */	bl cM_rndF__Ff
/* 80A59760  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80A59764  EC 00 08 2A */	fadds f0, f0, f1
/* 80A59768  FC 00 00 1E */	fctiwz f0, f0
/* 80A5976C  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80A59770  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A59774  B0 1E 05 F0 */	sth r0, 0x5f0(r30)
/* 80A59778  48 00 00 FC */	b lbl_80A59874
lbl_80A5977C:
/* 80A5977C  80 1E 05 D0 */	lwz r0, 0x5d0(r30)
/* 80A59780  2C 00 00 27 */	cmpwi r0, 0x27
/* 80A59784  41 82 00 2C */	beq lbl_80A597B0
/* 80A59788  2C 00 00 2B */	cmpwi r0, 0x2b
/* 80A5978C  40 82 00 0C */	bne lbl_80A59798
/* 80A59790  2C 08 00 07 */	cmpwi r8, 7
/* 80A59794  41 80 00 1C */	blt lbl_80A597B0
lbl_80A59798:
/* 80A59798  2C 08 00 28 */	cmpwi r8, 0x28
/* 80A5979C  40 81 00 0C */	ble lbl_80A597A8
/* 80A597A0  2C 08 00 30 */	cmpwi r8, 0x30
/* 80A597A4  41 80 00 0C */	blt lbl_80A597B0
lbl_80A597A8:
/* 80A597A8  2C 08 00 41 */	cmpwi r8, 0x41
/* 80A597AC  40 81 00 0C */	ble lbl_80A597B8
lbl_80A597B0:
/* 80A597B0  38 00 00 04 */	li r0, 4
/* 80A597B4  B0 1E 05 E0 */	sth r0, 0x5e0(r30)
lbl_80A597B8:
/* 80A597B8  A8 1E 05 F0 */	lha r0, 0x5f0(r30)
/* 80A597BC  2C 00 00 00 */	cmpwi r0, 0
/* 80A597C0  40 82 00 28 */	bne lbl_80A597E8
/* 80A597C4  80 1E 05 D0 */	lwz r0, 0x5d0(r30)
/* 80A597C8  2C 00 00 27 */	cmpwi r0, 0x27
/* 80A597CC  40 82 00 1C */	bne lbl_80A597E8
/* 80A597D0  7F C3 F3 78 */	mr r3, r30
/* 80A597D4  38 80 00 2B */	li r4, 0x2b
/* 80A597D8  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80A597DC  38 A0 00 00 */	li r5, 0
/* 80A597E0  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A597E4  4B FE F9 C1 */	bl anm_init__FP12npc_ks_classifUcf
lbl_80A597E8:
/* 80A597E8  80 1E 05 D0 */	lwz r0, 0x5d0(r30)
/* 80A597EC  2C 00 00 2B */	cmpwi r0, 0x2b
/* 80A597F0  40 82 00 84 */	bne lbl_80A59874
/* 80A597F4  A8 1E 0B 42 */	lha r0, 0xb42(r30)
/* 80A597F8  2C 00 01 68 */	cmpwi r0, 0x168
/* 80A597FC  41 80 00 28 */	blt lbl_80A59824
/* 80A59800  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 80A59804  38 63 00 0C */	addi r3, r3, 0xc
/* 80A59808  C0 3F 04 84 */	lfs f1, 0x484(r31)
/* 80A5980C  4B 8C EC 21 */	bl checkPass__12J3DFrameCtrlFf
/* 80A59810  2C 03 00 00 */	cmpwi r3, 0
/* 80A59814  41 82 00 10 */	beq lbl_80A59824
/* 80A59818  38 00 00 14 */	li r0, 0x14
/* 80A5981C  B0 1E 05 EA */	sth r0, 0x5ea(r30)
/* 80A59820  48 00 00 54 */	b lbl_80A59874
lbl_80A59824:
/* 80A59824  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 80A59828  38 80 00 01 */	li r4, 1
/* 80A5982C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80A59830  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80A59834  40 82 00 18 */	bne lbl_80A5984C
/* 80A59838  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80A5983C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80A59840  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80A59844  41 82 00 08 */	beq lbl_80A5984C
/* 80A59848  38 80 00 00 */	li r4, 0
lbl_80A5984C:
/* 80A5984C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80A59850  41 82 00 24 */	beq lbl_80A59874
/* 80A59854  38 00 00 28 */	li r0, 0x28
/* 80A59858  B0 1E 05 EA */	sth r0, 0x5ea(r30)
/* 80A5985C  48 00 00 18 */	b lbl_80A59874
lbl_80A59860:
/* 80A59860  A8 1E 05 F2 */	lha r0, 0x5f2(r30)
/* 80A59864  2C 00 00 01 */	cmpwi r0, 1
/* 80A59868  40 82 00 0C */	bne lbl_80A59874
/* 80A5986C  38 00 01 68 */	li r0, 0x168
/* 80A59870  B0 1E 0B 42 */	sth r0, 0xb42(r30)
lbl_80A59874:
/* 80A59874  A8 1E 05 EA */	lha r0, 0x5ea(r30)
/* 80A59878  2C 00 00 28 */	cmpwi r0, 0x28
/* 80A5987C  41 82 00 0C */	beq lbl_80A59888
/* 80A59880  2C 00 00 29 */	cmpwi r0, 0x29
/* 80A59884  40 82 00 40 */	bne lbl_80A598C4
lbl_80A59888:
/* 80A59888  38 00 01 D8 */	li r0, 0x1d8
/* 80A5988C  B0 01 00 08 */	sth r0, 8(r1)
/* 80A59890  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha /* 0x80023578@ha */
/* 80A59894  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l /* 0x80023578@l */
/* 80A59898  38 81 00 08 */	addi r4, r1, 8
/* 80A5989C  4B 5B FF 5D */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80A598A0  28 03 00 00 */	cmplwi r3, 0
/* 80A598A4  40 82 00 20 */	bne lbl_80A598C4
/* 80A598A8  A8 1E 0B 42 */	lha r0, 0xb42(r30)
/* 80A598AC  2C 00 00 00 */	cmpwi r0, 0
/* 80A598B0  40 82 00 14 */	bne lbl_80A598C4
/* 80A598B4  38 00 00 2A */	li r0, 0x2a
/* 80A598B8  B0 1E 05 EA */	sth r0, 0x5ea(r30)
/* 80A598BC  38 00 00 1E */	li r0, 0x1e
/* 80A598C0  B0 1E 05 F2 */	sth r0, 0x5f2(r30)
lbl_80A598C4:
/* 80A598C4  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80A598C8  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80A598CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A598D0  40 81 00 0C */	ble lbl_80A598DC
/* 80A598D4  38 00 00 01 */	li r0, 1
/* 80A598D8  98 1E 09 0C */	stb r0, 0x90c(r30)
lbl_80A598DC:
/* 80A598DC  38 7E 04 DE */	addi r3, r30, 0x4de
/* 80A598E0  A8 9E 08 FE */	lha r4, 0x8fe(r30)
/* 80A598E4  38 A0 00 02 */	li r5, 2
/* 80A598E8  7F 46 D3 78 */	mr r6, r26
/* 80A598EC  4B 81 6D 1D */	bl cLib_addCalcAngleS2__FPssss
/* 80A598F0  2C 1B 00 00 */	cmpwi r27, 0
/* 80A598F4  41 82 00 A4 */	beq lbl_80A59998
/* 80A598F8  80 1E 05 5C */	lwz r0, 0x55c(r30)
/* 80A598FC  60 00 00 0A */	ori r0, r0, 0xa
/* 80A59900  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80A59904  A0 1E 00 FA */	lhz r0, 0xfa(r30)
/* 80A59908  60 00 00 01 */	ori r0, r0, 1
/* 80A5990C  B0 1E 00 FA */	sth r0, 0xfa(r30)
/* 80A59910  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A59914  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A59918  88 1A 4F AD */	lbz r0, 0x4fad(r26)
/* 80A5991C  28 00 00 00 */	cmplwi r0, 0
/* 80A59920  41 82 00 6C */	beq lbl_80A5998C
/* 80A59924  A0 1E 00 F8 */	lhz r0, 0xf8(r30)
/* 80A59928  28 00 00 01 */	cmplwi r0, 1
/* 80A5992C  40 82 00 90 */	bne lbl_80A599BC
/* 80A59930  A8 1E 0A EE */	lha r0, 0xaee(r30)
/* 80A59934  2C 00 00 00 */	cmpwi r0, 0
/* 80A59938  40 82 00 24 */	bne lbl_80A5995C
/* 80A5993C  38 7E 0A F4 */	addi r3, r30, 0xaf4
/* 80A59940  7F C4 F3 78 */	mr r4, r30
/* 80A59944  38 A0 00 74 */	li r5, 0x74
/* 80A59948  38 C0 00 00 */	li r6, 0
/* 80A5994C  38 E0 00 00 */	li r7, 0
/* 80A59950  4B 7F 06 41 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80A59954  38 00 00 01 */	li r0, 1
/* 80A59958  B0 1E 0A EE */	sth r0, 0xaee(r30)
lbl_80A5995C:
/* 80A5995C  38 7E 0A F4 */	addi r3, r30, 0xaf4
/* 80A59960  7F C4 F3 78 */	mr r4, r30
/* 80A59964  38 A0 00 00 */	li r5, 0
/* 80A59968  38 C0 00 00 */	li r6, 0
/* 80A5996C  4B 7F 09 6D */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 80A59970  2C 03 00 00 */	cmpwi r3, 0
/* 80A59974  41 82 00 48 */	beq lbl_80A599BC
/* 80A59978  38 7A 4E C8 */	addi r3, r26, 0x4ec8
/* 80A5997C  4B 5E 8A ED */	bl reset__14dEvt_control_cFv
/* 80A59980  38 00 00 00 */	li r0, 0
/* 80A59984  B0 1E 0A EE */	sth r0, 0xaee(r30)
/* 80A59988  48 00 00 34 */	b lbl_80A599BC
lbl_80A5998C:
/* 80A5998C  38 00 00 00 */	li r0, 0
/* 80A59990  B0 1E 0A EE */	sth r0, 0xaee(r30)
/* 80A59994  48 00 00 28 */	b lbl_80A599BC
lbl_80A59998:
/* 80A59998  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80A5999C  54 00 00 3E */	slwi r0, r0, 0
/* 80A599A0  90 1E 04 9C */	stw r0, 0x49c(r30)
/* 80A599A4  80 7E 05 5C */	lwz r3, 0x55c(r30)
/* 80A599A8  38 00 FF F5 */	li r0, -11
/* 80A599AC  7C 60 00 38 */	and r0, r3, r0
/* 80A599B0  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80A599B4  38 00 00 00 */	li r0, 0
/* 80A599B8  B0 1E 0A EE */	sth r0, 0xaee(r30)
lbl_80A599BC:
/* 80A599BC  7F 83 E3 78 */	mr r3, r28
/* 80A599C0  39 61 00 60 */	addi r11, r1, 0x60
/* 80A599C4  4B 90 88 59 */	bl _restgpr_26
/* 80A599C8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80A599CC  7C 08 03 A6 */	mtlr r0
/* 80A599D0  38 21 00 60 */	addi r1, r1, 0x60
/* 80A599D4  4E 80 00 20 */	blr 
