lbl_8059D1C4:
/* 8059D1C4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8059D1C8  7C 08 02 A6 */	mflr r0
/* 8059D1CC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8059D1D0  39 61 00 30 */	addi r11, r1, 0x30
/* 8059D1D4  4B DC 50 04 */	b _savegpr_28
/* 8059D1D8  2C 04 00 00 */	cmpwi r4, 0
/* 8059D1DC  41 82 00 0C */	beq lbl_8059D1E8
/* 8059D1E0  38 60 00 01 */	li r3, 1
/* 8059D1E4  48 00 00 E8 */	b lbl_8059D2CC
lbl_8059D1E8:
/* 8059D1E8  A0 83 00 14 */	lhz r4, 0x14(r3)
/* 8059D1EC  7C 9D 23 78 */	mr r29, r4
/* 8059D1F0  3C 60 80 43 */	lis r3, j3dSys@ha
/* 8059D1F4  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 8059D1F8  83 E3 00 38 */	lwz r31, 0x38(r3)
/* 8059D1FC  83 9F 00 14 */	lwz r28, 0x14(r31)
/* 8059D200  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 8059D204  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8059D208  1F C4 00 30 */	mulli r30, r4, 0x30
/* 8059D20C  7C 60 F2 14 */	add r3, r0, r30
/* 8059D210  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8059D214  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8059D218  4B DA 92 98 */	b PSMTXCopy
/* 8059D21C  7F 83 E3 78 */	mr r3, r28
/* 8059D220  38 81 00 08 */	addi r4, r1, 8
/* 8059D224  7F A5 EB 78 */	mr r5, r29
/* 8059D228  4B FF FF 71 */	bl getJointAngle__15daObjYobikusa_cFP5csXyzi
/* 8059D22C  A8 81 00 08 */	lha r4, 8(r1)
/* 8059D230  7C 80 07 35 */	extsh. r0, r4
/* 8059D234  41 82 00 10 */	beq lbl_8059D244
/* 8059D238  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8059D23C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8059D240  4B A6 F1 5C */	b mDoMtx_XrotM__FPA4_fs
lbl_8059D244:
/* 8059D244  A8 81 00 0C */	lha r4, 0xc(r1)
/* 8059D248  7C 80 07 35 */	extsh. r0, r4
/* 8059D24C  41 82 00 10 */	beq lbl_8059D25C
/* 8059D250  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8059D254  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8059D258  4B A6 F2 74 */	b mDoMtx_ZrotM__FPA4_fs
lbl_8059D25C:
/* 8059D25C  A8 81 00 0A */	lha r4, 0xa(r1)
/* 8059D260  7C 80 07 35 */	extsh. r0, r4
/* 8059D264  41 82 00 10 */	beq lbl_8059D274
/* 8059D268  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8059D26C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8059D270  4B A6 F1 C4 */	b mDoMtx_YrotM__FPA4_fs
lbl_8059D274:
/* 8059D274  2C 1D 00 02 */	cmpwi r29, 2
/* 8059D278  40 82 00 24 */	bne lbl_8059D29C
/* 8059D27C  7F 83 E3 78 */	mr r3, r28
/* 8059D280  7F A4 EB 78 */	mr r4, r29
/* 8059D284  4B FF FF 39 */	bl getJointScale__15daObjYobikusa_cFi
/* 8059D288  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8059D28C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8059D290  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8059D294  38 61 00 10 */	addi r3, r1, 0x10
/* 8059D298  4B A6 FB D8 */	b scaleM__14mDoMtx_stack_cFRC4cXyz
lbl_8059D29C:
/* 8059D29C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8059D2A0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8059D2A4  80 9F 00 84 */	lwz r4, 0x84(r31)
/* 8059D2A8  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8059D2AC  7C 80 F2 14 */	add r4, r0, r30
/* 8059D2B0  4B DA 92 00 */	b PSMTXCopy
/* 8059D2B4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8059D2B8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8059D2BC  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 8059D2C0  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 8059D2C4  4B DA 91 EC */	b PSMTXCopy
/* 8059D2C8  38 60 00 01 */	li r3, 1
lbl_8059D2CC:
/* 8059D2CC  39 61 00 30 */	addi r11, r1, 0x30
/* 8059D2D0  4B DC 4F 54 */	b _restgpr_28
/* 8059D2D4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8059D2D8  7C 08 03 A6 */	mtlr r0
/* 8059D2DC  38 21 00 30 */	addi r1, r1, 0x30
/* 8059D2E0  4E 80 00 20 */	blr 
