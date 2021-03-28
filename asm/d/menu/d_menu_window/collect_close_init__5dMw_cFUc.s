lbl_801FA46C:
/* 801FA46C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FA470  7C 08 02 A6 */	mflr r0
/* 801FA474  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FA478  80 63 01 14 */	lwz r3, 0x114(r3)
/* 801FA47C  80 63 00 04 */	lwz r3, 4(r3)
/* 801FA480  88 03 02 5E */	lbz r0, 0x25e(r3)
/* 801FA484  28 00 00 01 */	cmplwi r0, 1
/* 801FA488  41 82 00 9C */	beq lbl_801FA524
/* 801FA48C  28 00 00 02 */	cmplwi r0, 2
/* 801FA490  41 82 00 94 */	beq lbl_801FA524
/* 801FA494  28 00 00 03 */	cmplwi r0, 3
/* 801FA498  41 82 00 1C */	beq lbl_801FA4B4
/* 801FA49C  28 00 00 04 */	cmplwi r0, 4
/* 801FA4A0  41 82 00 14 */	beq lbl_801FA4B4
/* 801FA4A4  28 00 00 05 */	cmplwi r0, 5
/* 801FA4A8  41 82 00 0C */	beq lbl_801FA4B4
/* 801FA4AC  28 00 00 06 */	cmplwi r0, 6
/* 801FA4B0  40 82 00 3C */	bne lbl_801FA4EC
lbl_801FA4B4:
/* 801FA4B4  38 00 00 A4 */	li r0, 0xa4
/* 801FA4B8  90 01 00 0C */	stw r0, 0xc(r1)
/* 801FA4BC  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801FA4C0  38 81 00 0C */	addi r4, r1, 0xc
/* 801FA4C4  38 A0 00 00 */	li r5, 0
/* 801FA4C8  38 C0 00 00 */	li r6, 0
/* 801FA4CC  38 E0 00 00 */	li r7, 0
/* 801FA4D0  C0 22 AA C4 */	lfs f1, lit_4386(r2)
/* 801FA4D4  FC 40 08 90 */	fmr f2, f1
/* 801FA4D8  C0 62 AA C8 */	lfs f3, lit_4387(r2)
/* 801FA4DC  FC 80 18 90 */	fmr f4, f3
/* 801FA4E0  39 00 00 00 */	li r8, 0
/* 801FA4E4  48 0B 14 A1 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801FA4E8  48 00 00 3C */	b lbl_801FA524
lbl_801FA4EC:
/* 801FA4EC  38 00 00 5C */	li r0, 0x5c
/* 801FA4F0  90 01 00 08 */	stw r0, 8(r1)
/* 801FA4F4  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801FA4F8  38 81 00 08 */	addi r4, r1, 8
/* 801FA4FC  38 A0 00 00 */	li r5, 0
/* 801FA500  38 C0 00 00 */	li r6, 0
/* 801FA504  38 E0 00 00 */	li r7, 0
/* 801FA508  C0 22 AA C4 */	lfs f1, lit_4386(r2)
/* 801FA50C  FC 40 08 90 */	fmr f2, f1
/* 801FA510  C0 62 AA C8 */	lfs f3, lit_4387(r2)
/* 801FA514  FC 80 18 90 */	fmr f4, f3
/* 801FA518  39 00 00 00 */	li r8, 0
/* 801FA51C  48 0B 14 69 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801FA520  48 02 44 B5 */	bl dMeter2Info_set2DVibrationM__Fv
lbl_801FA524:
/* 801FA524  48 00 28 E5 */	bl dMw_fade_out__5dMw_cFv
/* 801FA528  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FA52C  7C 08 03 A6 */	mtlr r0
/* 801FA530  38 21 00 10 */	addi r1, r1, 0x10
/* 801FA534  4E 80 00 20 */	blr 
