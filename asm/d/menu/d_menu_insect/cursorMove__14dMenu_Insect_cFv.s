lbl_801D9F8C:
/* 801D9F8C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801D9F90  7C 08 02 A6 */	mflr r0
/* 801D9F94  90 01 00 24 */	stw r0, 0x24(r1)
/* 801D9F98  39 61 00 20 */	addi r11, r1, 0x20
/* 801D9F9C  48 18 82 3D */	bl _savegpr_28
/* 801D9FA0  7C 7C 1B 78 */	mr r28, r3
/* 801D9FA4  8B E3 00 F4 */	lbz r31, 0xf4(r3)
/* 801D9FA8  8B C3 00 F5 */	lbz r30, 0xf5(r3)
/* 801D9FAC  3B A0 00 00 */	li r29, 0
/* 801D9FB0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 801D9FB4  4B E5 81 E9 */	bl checkTrigger__9STControlFv
/* 801D9FB8  80 7C 00 0C */	lwz r3, 0xc(r28)
/* 801D9FBC  4B E5 84 ED */	bl checkRightTrigger__9STControlFv
/* 801D9FC0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801D9FC4  41 82 00 1C */	beq lbl_801D9FE0
/* 801D9FC8  88 7C 00 F4 */	lbz r3, 0xf4(r28)
/* 801D9FCC  28 03 00 05 */	cmplwi r3, 5
/* 801D9FD0  40 80 00 34 */	bge lbl_801DA004
/* 801D9FD4  38 03 00 01 */	addi r0, r3, 1
/* 801D9FD8  98 1C 00 F4 */	stb r0, 0xf4(r28)
/* 801D9FDC  48 00 00 28 */	b lbl_801DA004
lbl_801D9FE0:
/* 801D9FE0  80 7C 00 0C */	lwz r3, 0xc(r28)
/* 801D9FE4  4B E5 84 49 */	bl checkLeftTrigger__9STControlFv
/* 801D9FE8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801D9FEC  41 82 00 18 */	beq lbl_801DA004
/* 801D9FF0  88 7C 00 F4 */	lbz r3, 0xf4(r28)
/* 801D9FF4  28 03 00 00 */	cmplwi r3, 0
/* 801D9FF8  41 82 00 0C */	beq lbl_801DA004
/* 801D9FFC  38 03 FF FF */	addi r0, r3, -1
/* 801DA000  98 1C 00 F4 */	stb r0, 0xf4(r28)
lbl_801DA004:
/* 801DA004  80 7C 00 0C */	lwz r3, 0xc(r28)
/* 801DA008  4B E5 85 1D */	bl checkUpTrigger__9STControlFv
/* 801DA00C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DA010  41 82 00 1C */	beq lbl_801DA02C
/* 801DA014  88 7C 00 F5 */	lbz r3, 0xf5(r28)
/* 801DA018  28 03 00 00 */	cmplwi r3, 0
/* 801DA01C  41 82 00 34 */	beq lbl_801DA050
/* 801DA020  38 03 FF FF */	addi r0, r3, -1
/* 801DA024  98 1C 00 F5 */	stb r0, 0xf5(r28)
/* 801DA028  48 00 00 28 */	b lbl_801DA050
lbl_801DA02C:
/* 801DA02C  80 7C 00 0C */	lwz r3, 0xc(r28)
/* 801DA030  4B E5 85 71 */	bl checkDownTrigger__9STControlFv
/* 801DA034  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DA038  41 82 00 18 */	beq lbl_801DA050
/* 801DA03C  88 7C 00 F5 */	lbz r3, 0xf5(r28)
/* 801DA040  28 03 00 03 */	cmplwi r3, 3
/* 801DA044  40 80 00 0C */	bge lbl_801DA050
/* 801DA048  38 03 00 01 */	addi r0, r3, 1
/* 801DA04C  98 1C 00 F5 */	stb r0, 0xf5(r28)
lbl_801DA050:
/* 801DA050  88 1C 00 F4 */	lbz r0, 0xf4(r28)
/* 801DA054  7C 1F 00 40 */	cmplw r31, r0
/* 801DA058  40 82 00 B0 */	bne lbl_801DA108
/* 801DA05C  88 1C 00 F5 */	lbz r0, 0xf5(r28)
/* 801DA060  7C 1E 00 40 */	cmplw r30, r0
/* 801DA064  40 82 00 A4 */	bne lbl_801DA108
/* 801DA068  38 00 00 FF */	li r0, 0xff
/* 801DA06C  98 1C 00 F8 */	stb r0, 0xf8(r28)
/* 801DA070  98 1C 00 F9 */	stb r0, 0xf9(r28)
/* 801DA074  80 7C 00 0C */	lwz r3, 0xc(r28)
/* 801DA078  81 83 00 00 */	lwz r12, 0(r3)
/* 801DA07C  81 8C 00 08 */	lwz r12, 8(r12)
/* 801DA080  7D 89 03 A6 */	mtctr r12
/* 801DA084  4E 80 04 21 */	bctrl 
/* 801DA088  C0 02 A8 80 */	lfs f0, lit_4474(r2)
/* 801DA08C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801DA090  4C 40 13 82 */	cror 2, 0, 2
/* 801DA094  40 82 00 10 */	bne lbl_801DA0A4
/* 801DA098  7F 83 E3 78 */	mr r3, r28
/* 801DA09C  48 00 02 61 */	bl dpdMove__14dMenu_Insect_cFv
/* 801DA0A0  7C 7D 1B 78 */	mr r29, r3
lbl_801DA0A4:
/* 801DA0A4  88 7C 00 F8 */	lbz r3, 0xf8(r28)
/* 801DA0A8  28 03 00 FF */	cmplwi r3, 0xff
/* 801DA0AC  41 82 00 5C */	beq lbl_801DA108
/* 801DA0B0  88 9C 00 F9 */	lbz r4, 0xf9(r28)
/* 801DA0B4  28 04 00 FF */	cmplwi r4, 0xff
/* 801DA0B8  41 82 00 50 */	beq lbl_801DA108
/* 801DA0BC  88 1C 00 FA */	lbz r0, 0xfa(r28)
/* 801DA0C0  7C 03 00 40 */	cmplw r3, r0
/* 801DA0C4  40 82 00 10 */	bne lbl_801DA0D4
/* 801DA0C8  88 1C 00 FB */	lbz r0, 0xfb(r28)
/* 801DA0CC  7C 04 00 40 */	cmplw r4, r0
/* 801DA0D0  41 82 00 38 */	beq lbl_801DA108
lbl_801DA0D4:
/* 801DA0D4  88 1C 00 F4 */	lbz r0, 0xf4(r28)
/* 801DA0D8  7C 03 00 40 */	cmplw r3, r0
/* 801DA0DC  40 82 00 10 */	bne lbl_801DA0EC
/* 801DA0E0  88 1C 00 F5 */	lbz r0, 0xf5(r28)
/* 801DA0E4  7C 04 00 40 */	cmplw r4, r0
/* 801DA0E8  41 82 00 20 */	beq lbl_801DA108
lbl_801DA0EC:
/* 801DA0EC  98 7C 00 F4 */	stb r3, 0xf4(r28)
/* 801DA0F0  88 1C 00 F9 */	lbz r0, 0xf9(r28)
/* 801DA0F4  98 1C 00 F5 */	stb r0, 0xf5(r28)
/* 801DA0F8  88 1C 00 F8 */	lbz r0, 0xf8(r28)
/* 801DA0FC  98 1C 00 FA */	stb r0, 0xfa(r28)
/* 801DA100  88 1C 00 F9 */	lbz r0, 0xf9(r28)
/* 801DA104  98 1C 00 FB */	stb r0, 0xfb(r28)
lbl_801DA108:
/* 801DA108  88 1C 00 F4 */	lbz r0, 0xf4(r28)
/* 801DA10C  7C 1F 00 40 */	cmplw r31, r0
/* 801DA110  40 82 00 10 */	bne lbl_801DA120
/* 801DA114  88 1C 00 F5 */	lbz r0, 0xf5(r28)
/* 801DA118  7C 1E 00 40 */	cmplw r30, r0
/* 801DA11C  41 82 00 B8 */	beq lbl_801DA1D4
lbl_801DA120:
/* 801DA120  7F 83 E3 78 */	mr r3, r28
/* 801DA124  48 00 00 C9 */	bl setCursorPos__14dMenu_Insect_cFv
/* 801DA128  7F 83 E3 78 */	mr r3, r28
/* 801DA12C  88 9C 00 F4 */	lbz r4, 0xf4(r28)
/* 801DA130  88 BC 00 F5 */	lbz r5, 0xf5(r28)
/* 801DA134  4B FF FC B1 */	bl isGetInsect__14dMenu_Insect_cFii
/* 801DA138  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DA13C  41 82 00 14 */	beq lbl_801DA150
/* 801DA140  7F 83 E3 78 */	mr r3, r28
/* 801DA144  38 80 03 68 */	li r4, 0x368
/* 801DA148  48 00 01 BD */	bl setAButtonString__14dMenu_Insect_cFUs
/* 801DA14C  48 00 00 10 */	b lbl_801DA15C
lbl_801DA150:
/* 801DA150  7F 83 E3 78 */	mr r3, r28
/* 801DA154  38 80 00 00 */	li r4, 0
/* 801DA158  48 00 01 AD */	bl setAButtonString__14dMenu_Insect_cFUs
lbl_801DA15C:
/* 801DA15C  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 801DA160  41 82 00 40 */	beq lbl_801DA1A0
/* 801DA164  38 00 00 4D */	li r0, 0x4d
/* 801DA168  90 01 00 0C */	stw r0, 0xc(r1)
/* 801DA16C  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801DA170  38 81 00 0C */	addi r4, r1, 0xc
/* 801DA174  38 A0 00 00 */	li r5, 0
/* 801DA178  38 C0 00 01 */	li r6, 1
/* 801DA17C  38 E0 00 00 */	li r7, 0
/* 801DA180  C0 22 A8 38 */	lfs f1, lit_3834(r2)
/* 801DA184  FC 40 08 90 */	fmr f2, f1
/* 801DA188  C0 62 A8 68 */	lfs f3, lit_4089(r2)
/* 801DA18C  FC 80 18 90 */	fmr f4, f3
/* 801DA190  39 00 00 00 */	li r8, 0
/* 801DA194  48 0D 17 F1 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801DA198  48 04 48 39 */	bl dMeter2Info_set2DVibration__Fv
/* 801DA19C  48 00 00 38 */	b lbl_801DA1D4
lbl_801DA1A0:
/* 801DA1A0  38 00 00 4D */	li r0, 0x4d
/* 801DA1A4  90 01 00 08 */	stw r0, 8(r1)
/* 801DA1A8  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801DA1AC  38 81 00 08 */	addi r4, r1, 8
/* 801DA1B0  38 A0 00 00 */	li r5, 0
/* 801DA1B4  38 C0 00 00 */	li r6, 0
/* 801DA1B8  38 E0 00 00 */	li r7, 0
/* 801DA1BC  C0 22 A8 38 */	lfs f1, lit_3834(r2)
/* 801DA1C0  FC 40 08 90 */	fmr f2, f1
/* 801DA1C4  C0 62 A8 68 */	lfs f3, lit_4089(r2)
/* 801DA1C8  FC 80 18 90 */	fmr f4, f3
/* 801DA1CC  39 00 00 00 */	li r8, 0
/* 801DA1D0  48 0D 17 B5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_801DA1D4:
/* 801DA1D4  39 61 00 20 */	addi r11, r1, 0x20
/* 801DA1D8  48 18 80 4D */	bl _restgpr_28
/* 801DA1DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801DA1E0  7C 08 03 A6 */	mtlr r0
/* 801DA1E4  38 21 00 20 */	addi r1, r1, 0x20
/* 801DA1E8  4E 80 00 20 */	blr 
