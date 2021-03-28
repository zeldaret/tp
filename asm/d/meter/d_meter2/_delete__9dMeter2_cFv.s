lbl_8021F49C:
/* 8021F49C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8021F4A0  7C 08 02 A6 */	mflr r0
/* 8021F4A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8021F4A8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8021F4AC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8021F4B0  7C 7E 1B 78 */	mr r30, r3
/* 8021F4B4  80 63 01 00 */	lwz r3, 0x100(r3)
/* 8021F4B8  48 0A F2 CD */	bl getTotalFreeSize__7JKRHeapFv
/* 8021F4BC  80 7E 01 00 */	lwz r3, 0x100(r30)
/* 8021F4C0  4B DE FD 0D */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 8021F4C4  7C 7F 1B 78 */	mr r31, r3
/* 8021F4C8  88 1E 01 EA */	lbz r0, 0x1ea(r30)
/* 8021F4CC  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8021F4D0  41 82 00 38 */	beq lbl_8021F508
/* 8021F4D4  38 00 00 74 */	li r0, 0x74
/* 8021F4D8  90 01 00 10 */	stw r0, 0x10(r1)
/* 8021F4DC  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8021F4E0  38 81 00 10 */	addi r4, r1, 0x10
/* 8021F4E4  38 A0 00 00 */	li r5, 0
/* 8021F4E8  38 C0 00 00 */	li r6, 0
/* 8021F4EC  38 E0 00 00 */	li r7, 0
/* 8021F4F0  C0 22 AF CC */	lfs f1, lit_4663(r2)
/* 8021F4F4  FC 40 08 90 */	fmr f2, f1
/* 8021F4F8  C0 62 AF D0 */	lfs f3, lit_4837(r2)
/* 8021F4FC  FC 80 18 90 */	fmr f4, f3
/* 8021F500  39 00 00 00 */	li r8, 0
/* 8021F504  48 08 C4 81 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_8021F508:
/* 8021F508  88 1E 01 EA */	lbz r0, 0x1ea(r30)
/* 8021F50C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8021F510  41 82 00 38 */	beq lbl_8021F548
/* 8021F514  38 00 00 76 */	li r0, 0x76
/* 8021F518  90 01 00 0C */	stw r0, 0xc(r1)
/* 8021F51C  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8021F520  38 81 00 0C */	addi r4, r1, 0xc
/* 8021F524  38 A0 00 00 */	li r5, 0
/* 8021F528  38 C0 00 00 */	li r6, 0
/* 8021F52C  38 E0 00 00 */	li r7, 0
/* 8021F530  C0 22 AF CC */	lfs f1, lit_4663(r2)
/* 8021F534  FC 40 08 90 */	fmr f2, f1
/* 8021F538  C0 62 AF D0 */	lfs f3, lit_4837(r2)
/* 8021F53C  FC 80 18 90 */	fmr f4, f3
/* 8021F540  39 00 00 00 */	li r8, 0
/* 8021F544  48 08 C4 41 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_8021F548:
/* 8021F548  88 1E 01 EB */	lbz r0, 0x1eb(r30)
/* 8021F54C  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8021F550  41 82 00 68 */	beq lbl_8021F5B8
/* 8021F554  7F C3 F3 78 */	mr r3, r30
/* 8021F558  48 00 64 A1 */	bl isArrowEquip__9dMeter2_cFv
/* 8021F55C  2C 03 00 00 */	cmpwi r3, 0
/* 8021F560  40 82 00 14 */	bne lbl_8021F574
/* 8021F564  7F C3 F3 78 */	mr r3, r30
/* 8021F568  48 00 64 FD */	bl isPachinkoEquip__9dMeter2_cFv
/* 8021F56C  2C 03 00 00 */	cmpwi r3, 0
/* 8021F570  41 82 00 48 */	beq lbl_8021F5B8
lbl_8021F574:
/* 8021F574  80 7E 01 0C */	lwz r3, 0x10c(r30)
/* 8021F578  4B FF BB 51 */	bl isButtonVisible__13dMeter2Draw_cFv
/* 8021F57C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8021F580  41 82 00 38 */	beq lbl_8021F5B8
/* 8021F584  38 00 00 1C */	li r0, 0x1c
/* 8021F588  90 01 00 08 */	stw r0, 8(r1)
/* 8021F58C  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8021F590  38 81 00 08 */	addi r4, r1, 8
/* 8021F594  38 A0 00 00 */	li r5, 0
/* 8021F598  38 C0 00 00 */	li r6, 0
/* 8021F59C  38 E0 00 00 */	li r7, 0
/* 8021F5A0  C0 22 AF CC */	lfs f1, lit_4663(r2)
/* 8021F5A4  FC 40 08 90 */	fmr f2, f1
/* 8021F5A8  C0 62 AF D0 */	lfs f3, lit_4837(r2)
/* 8021F5AC  FC 80 18 90 */	fmr f4, f3
/* 8021F5B0  39 00 00 00 */	li r8, 0
/* 8021F5B4  48 08 C3 D1 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_8021F5B8:
/* 8021F5B8  80 7E 01 00 */	lwz r3, 0x100(r30)
/* 8021F5BC  48 0A F1 C9 */	bl getTotalFreeSize__7JKRHeapFv
/* 8021F5C0  80 7E 01 20 */	lwz r3, 0x120(r30)
/* 8021F5C4  28 03 00 00 */	cmplwi r3, 0
/* 8021F5C8  41 82 00 24 */	beq lbl_8021F5EC
/* 8021F5CC  41 82 00 18 */	beq lbl_8021F5E4
/* 8021F5D0  38 80 00 01 */	li r4, 1
/* 8021F5D4  81 83 00 00 */	lwz r12, 0(r3)
/* 8021F5D8  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8021F5DC  7D 89 03 A6 */	mtctr r12
/* 8021F5E0  4E 80 04 21 */	bctrl 
lbl_8021F5E4:
/* 8021F5E4  38 00 00 00 */	li r0, 0
/* 8021F5E8  90 1E 01 20 */	stw r0, 0x120(r30)
lbl_8021F5EC:
/* 8021F5EC  80 7E 01 00 */	lwz r3, 0x100(r30)
/* 8021F5F0  48 0A F1 95 */	bl getTotalFreeSize__7JKRHeapFv
/* 8021F5F4  80 7E 01 04 */	lwz r3, 0x104(r30)
/* 8021F5F8  4B DE FB D5 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 8021F5FC  80 7E 01 10 */	lwz r3, 0x110(r30)
/* 8021F600  28 03 00 00 */	cmplwi r3, 0
/* 8021F604  41 82 00 24 */	beq lbl_8021F628
/* 8021F608  41 82 00 18 */	beq lbl_8021F620
/* 8021F60C  38 80 00 01 */	li r4, 1
/* 8021F610  81 83 00 00 */	lwz r12, 0(r3)
/* 8021F614  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8021F618  7D 89 03 A6 */	mtctr r12
/* 8021F61C  4E 80 04 21 */	bctrl 
lbl_8021F620:
/* 8021F620  38 00 00 00 */	li r0, 0
/* 8021F624  90 1E 01 10 */	stw r0, 0x110(r30)
lbl_8021F628:
/* 8021F628  80 7E 01 14 */	lwz r3, 0x114(r30)
/* 8021F62C  28 03 00 00 */	cmplwi r3, 0
/* 8021F630  41 82 00 24 */	beq lbl_8021F654
/* 8021F634  41 82 00 18 */	beq lbl_8021F64C
/* 8021F638  38 80 00 01 */	li r4, 1
/* 8021F63C  81 83 00 00 */	lwz r12, 0(r3)
/* 8021F640  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8021F644  7D 89 03 A6 */	mtctr r12
/* 8021F648  4E 80 04 21 */	bctrl 
lbl_8021F64C:
/* 8021F64C  38 00 00 00 */	li r0, 0
/* 8021F650  90 1E 01 14 */	stw r0, 0x114(r30)
lbl_8021F654:
/* 8021F654  80 7E 01 00 */	lwz r3, 0x100(r30)
/* 8021F658  48 0A F1 2D */	bl getTotalFreeSize__7JKRHeapFv
/* 8021F65C  80 7E 01 1C */	lwz r3, 0x11c(r30)
/* 8021F660  28 03 00 00 */	cmplwi r3, 0
/* 8021F664  41 82 00 24 */	beq lbl_8021F688
/* 8021F668  41 82 00 18 */	beq lbl_8021F680
/* 8021F66C  38 80 00 01 */	li r4, 1
/* 8021F670  81 83 00 00 */	lwz r12, 0(r3)
/* 8021F674  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8021F678  7D 89 03 A6 */	mtctr r12
/* 8021F67C  4E 80 04 21 */	bctrl 
lbl_8021F680:
/* 8021F680  38 00 00 00 */	li r0, 0
/* 8021F684  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_8021F688:
/* 8021F688  7F E3 FB 78 */	mr r3, r31
/* 8021F68C  4B DE FB 41 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 8021F690  80 7E 01 0C */	lwz r3, 0x10c(r30)
/* 8021F694  28 03 00 00 */	cmplwi r3, 0
/* 8021F698  41 82 00 18 */	beq lbl_8021F6B0
/* 8021F69C  38 80 00 01 */	li r4, 1
/* 8021F6A0  81 83 00 00 */	lwz r12, 0(r3)
/* 8021F6A4  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8021F6A8  7D 89 03 A6 */	mtctr r12
/* 8021F6AC  4E 80 04 21 */	bctrl 
lbl_8021F6B0:
/* 8021F6B0  38 00 00 00 */	li r0, 0
/* 8021F6B4  90 1E 01 0C */	stw r0, 0x10c(r30)
/* 8021F6B8  80 7E 01 04 */	lwz r3, 0x104(r30)
/* 8021F6BC  4B E0 0D 25 */	bl fopMsgM_destroyExpHeap__FP10JKRExpHeap
/* 8021F6C0  80 7E 01 00 */	lwz r3, 0x100(r30)
/* 8021F6C4  4B E0 0D 1D */	bl fopMsgM_destroyExpHeap__FP10JKRExpHeap
/* 8021F6C8  7F C3 F3 78 */	mr r3, r30
/* 8021F6CC  48 00 00 21 */	bl emphasisButtonDelete__9dMeter2_cFv
/* 8021F6D0  38 60 00 01 */	li r3, 1
/* 8021F6D4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8021F6D8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8021F6DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8021F6E0  7C 08 03 A6 */	mtlr r0
/* 8021F6E4  38 21 00 20 */	addi r1, r1, 0x20
/* 8021F6E8  4E 80 00 20 */	blr 
