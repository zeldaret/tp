lbl_8001D42C:
/* 8001D42C  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 8001D430  7C 08 02 A6 */	mflr r0
/* 8001D434  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8001D438  39 61 00 B0 */	addi r11, r1, 0xb0
/* 8001D43C  48 34 4D 99 */	bl _savegpr_27
/* 8001D440  7C 7B 1B 78 */	mr r27, r3
/* 8001D444  7C 9F 23 78 */	mr r31, r4
/* 8001D448  3B BB 05 38 */	addi r29, r27, 0x538
/* 8001D44C  48 16 41 E5 */	bl dCam_getCamera__Fv
/* 8001D450  7C 65 1B 78 */	mr r5, r3
/* 8001D454  38 61 00 08 */	addi r3, r1, 8
/* 8001D458  7F A4 EB 78 */	mr r4, r29
/* 8001D45C  38 A5 00 D8 */	addi r5, r5, 0xd8
/* 8001D460  48 24 96 D5 */	bl __mi__4cXyzCFRC3Vec
/* 8001D464  C0 01 00 08 */	lfs f0, 8(r1)
/* 8001D468  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8001D46C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8001D470  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8001D474  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8001D478  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8001D47C  38 7B 04 38 */	addi r3, r27, 0x438
/* 8001D480  7F A4 EB 78 */	mr r4, r29
/* 8001D484  38 A1 00 20 */	addi r5, r1, 0x20
/* 8001D488  4B FF FF 4D */	bl get_vectle_calc__FPC4cXyzPC4cXyzP4cXyz
/* 8001D48C  38 61 00 2C */	addi r3, r1, 0x2c
/* 8001D490  38 81 00 20 */	addi r4, r1, 0x20
/* 8001D494  38 A1 00 14 */	addi r5, r1, 0x14
/* 8001D498  48 32 9D 59 */	bl C_VECHalfAngle
/* 8001D49C  38 61 00 68 */	addi r3, r1, 0x68
/* 8001D4A0  3C 80 80 43 */	lis r4, Zero__4cXyz@ha /* 0x80430CF4@ha */
/* 8001D4A4  38 84 0C F4 */	addi r4, r4, Zero__4cXyz@l /* 0x80430CF4@l */
/* 8001D4A8  3C A0 80 43 */	lis r5, BaseY__4cXyz@ha /* 0x80430D24@ha */
/* 8001D4AC  38 A5 0D 24 */	addi r5, r5, BaseY__4cXyz@l /* 0x80430D24@l */
/* 8001D4B0  38 C1 00 14 */	addi r6, r1, 0x14
/* 8001D4B4  48 32 95 D9 */	bl C_MTXLookAt
/* 8001D4B8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8001D4BC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8001D4C0  C0 22 82 38 */	lfs f1, lit_5810(r2)
/* 8001D4C4  FC 40 08 90 */	fmr f2, f1
/* 8001D4C8  FC 60 08 90 */	fmr f3, f1
/* 8001D4CC  48 32 94 9D */	bl PSMTXScale
/* 8001D4D0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8001D4D4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8001D4D8  3C 80 80 38 */	lis r4, mtx_adj@ha /* 0x80378898@ha */
/* 8001D4DC  38 84 88 98 */	addi r4, r4, mtx_adj@l /* 0x80378898@l */
/* 8001D4E0  7C 65 1B 78 */	mr r5, r3
/* 8001D4E4  48 32 90 01 */	bl PSMTXConcat
/* 8001D4E8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8001D4EC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8001D4F0  38 81 00 68 */	addi r4, r1, 0x68
/* 8001D4F4  7C 65 1B 78 */	mr r5, r3
/* 8001D4F8  48 32 8F ED */	bl PSMTXConcat
/* 8001D4FC  C0 02 82 04 */	lfs f0, lit_4645(r2)
/* 8001D500  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8001D504  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8001D508  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8001D50C  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8001D510  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 8001D514  38 81 00 38 */	addi r4, r1, 0x38
/* 8001D518  48 32 8F 99 */	bl PSMTXCopy
/* 8001D51C  3B 80 00 00 */	li r28, 0
/* 8001D520  83 DF 00 60 */	lwz r30, 0x60(r31)
/* 8001D524  A3 FF 00 5C */	lhz r31, 0x5c(r31)
/* 8001D528  48 00 00 58 */	b lbl_8001D580
lbl_8001D52C:
/* 8001D52C  57 80 13 BA */	rlwinm r0, r28, 2, 0xe, 0x1d
/* 8001D530  7F BE 00 2E */	lwzx r29, r30, r0
/* 8001D534  3B 60 00 00 */	li r27, 0
lbl_8001D538:
/* 8001D538  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 8001D53C  7F 64 DB 78 */	mr r4, r27
/* 8001D540  81 83 00 00 */	lwz r12, 0(r3)
/* 8001D544  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 8001D548  7D 89 03 A6 */	mtctr r12
/* 8001D54C  4E 80 04 21 */	bctrl 
/* 8001D550  28 03 00 00 */	cmplwi r3, 0
/* 8001D554  41 82 00 1C */	beq lbl_8001D570
/* 8001D558  88 03 00 01 */	lbz r0, 1(r3)
/* 8001D55C  2C 00 00 06 */	cmpwi r0, 6
/* 8001D560  41 82 00 08 */	beq lbl_8001D568
/* 8001D564  48 00 00 0C */	b lbl_8001D570
lbl_8001D568:
/* 8001D568  38 81 00 38 */	addi r4, r1, 0x38
/* 8001D56C  48 30 82 29 */	bl setEffectMtx__13J3DTexMtxInfoFPA4_f
lbl_8001D570:
/* 8001D570  3B 7B 00 01 */	addi r27, r27, 1
/* 8001D574  28 1B 00 08 */	cmplwi r27, 8
/* 8001D578  41 80 FF C0 */	blt lbl_8001D538
/* 8001D57C  3B 9C 00 01 */	addi r28, r28, 1
lbl_8001D580:
/* 8001D580  57 80 04 3E */	clrlwi r0, r28, 0x10
/* 8001D584  7C 00 F8 40 */	cmplw r0, r31
/* 8001D588  41 80 FF A4 */	blt lbl_8001D52C
/* 8001D58C  39 61 00 B0 */	addi r11, r1, 0xb0
/* 8001D590  48 34 4C 91 */	bl _restgpr_27
/* 8001D594  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8001D598  7C 08 03 A6 */	mtlr r0
/* 8001D59C  38 21 00 B0 */	addi r1, r1, 0xb0
/* 8001D5A0  4E 80 00 20 */	blr 
