lbl_80BB0310:
/* 80BB0310  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BB0314  7C 08 02 A6 */	mflr r0
/* 80BB0318  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BB031C  39 61 00 20 */	addi r11, r1, 0x20
/* 80BB0320  4B 7B 1E B9 */	bl _savegpr_28
/* 80BB0324  7C 7D 1B 78 */	mr r29, r3
/* 80BB0328  3C 60 80 BB */	lis r3, cNullVec__6Z2Calc@ha /* 0x80BB3A74@ha */
/* 80BB032C  38 C3 3A 74 */	addi r6, r3, cNullVec__6Z2Calc@l /* 0x80BB3A74@l */
/* 80BB0330  3C 60 80 BB */	lis r3, data_80BB3F28@ha /* 0x80BB3F28@ha */
/* 80BB0334  38 A3 3F 28 */	addi r5, r3, data_80BB3F28@l /* 0x80BB3F28@l */
/* 80BB0338  88 05 00 00 */	lbz r0, 0(r5)
/* 80BB033C  7C 00 07 75 */	extsb. r0, r0
/* 80BB0340  40 82 00 70 */	bne lbl_80BB03B0
/* 80BB0344  80 66 02 40 */	lwz r3, 0x240(r6)
/* 80BB0348  80 06 02 44 */	lwz r0, 0x244(r6)
/* 80BB034C  90 66 02 70 */	stw r3, 0x270(r6)
/* 80BB0350  90 06 02 74 */	stw r0, 0x274(r6)
/* 80BB0354  80 06 02 48 */	lwz r0, 0x248(r6)
/* 80BB0358  90 06 02 78 */	stw r0, 0x278(r6)
/* 80BB035C  38 86 02 70 */	addi r4, r6, 0x270
/* 80BB0360  80 66 02 4C */	lwz r3, 0x24c(r6)
/* 80BB0364  80 06 02 50 */	lwz r0, 0x250(r6)
/* 80BB0368  90 64 00 0C */	stw r3, 0xc(r4)
/* 80BB036C  90 04 00 10 */	stw r0, 0x10(r4)
/* 80BB0370  80 06 02 54 */	lwz r0, 0x254(r6)
/* 80BB0374  90 04 00 14 */	stw r0, 0x14(r4)
/* 80BB0378  80 66 02 58 */	lwz r3, 0x258(r6)
/* 80BB037C  80 06 02 5C */	lwz r0, 0x25c(r6)
/* 80BB0380  90 64 00 18 */	stw r3, 0x18(r4)
/* 80BB0384  90 04 00 1C */	stw r0, 0x1c(r4)
/* 80BB0388  80 06 02 60 */	lwz r0, 0x260(r6)
/* 80BB038C  90 04 00 20 */	stw r0, 0x20(r4)
/* 80BB0390  80 66 02 64 */	lwz r3, 0x264(r6)
/* 80BB0394  80 06 02 68 */	lwz r0, 0x268(r6)
/* 80BB0398  90 64 00 24 */	stw r3, 0x24(r4)
/* 80BB039C  90 04 00 28 */	stw r0, 0x28(r4)
/* 80BB03A0  80 06 02 6C */	lwz r0, 0x26c(r6)
/* 80BB03A4  90 04 00 2C */	stw r0, 0x2c(r4)
/* 80BB03A8  38 00 00 01 */	li r0, 1
/* 80BB03AC  98 05 00 00 */	stb r0, 0(r5)
lbl_80BB03B0:
/* 80BB03B0  7F A3 EB 78 */	mr r3, r29
/* 80BB03B4  88 1D 0F F6 */	lbz r0, 0xff6(r29)
/* 80BB03B8  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80BB03BC  39 86 02 70 */	addi r12, r6, 0x270
/* 80BB03C0  7D 8C 02 14 */	add r12, r12, r0
/* 80BB03C4  4B 7B 1C C1 */	bl __ptmf_scall
/* 80BB03C8  60 00 00 00 */	nop 
/* 80BB03CC  3B C0 00 00 */	li r30, 0
/* 80BB03D0  3B 80 00 00 */	li r28, 0
lbl_80BB03D4:
/* 80BB03D4  3B FC 0F F8 */	addi r31, r28, 0xff8
/* 80BB03D8  7C BD F8 2E */	lwzx r5, r29, r31
/* 80BB03DC  28 05 00 00 */	cmplwi r5, 0
/* 80BB03E0  41 82 00 68 */	beq lbl_80BB0448
/* 80BB03E4  80 7D 05 A8 */	lwz r3, 0x5a8(r29)
/* 80BB03E8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80BB03EC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80BB03F0  A8 1D 0F 8C */	lha r0, 0xf8c(r29)
/* 80BB03F4  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80BB03F8  7C 63 02 14 */	add r3, r3, r0
/* 80BB03FC  38 85 00 68 */	addi r4, r5, 0x68
/* 80BB0400  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 80BB0404  4B 6D 03 DD */	bl func_802807E0
/* 80BB0408  38 7D 0F F5 */	addi r3, r29, 0xff5
/* 80BB040C  48 00 30 A1 */	bl func_80BB34AC
/* 80BB0410  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BB0414  40 82 00 34 */	bne lbl_80BB0448
/* 80BB0418  7C 7D F8 2E */	lwzx r3, r29, r31
/* 80BB041C  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80BB0420  60 00 00 01 */	ori r0, r0, 1
/* 80BB0424  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 80BB0428  38 00 00 01 */	li r0, 1
/* 80BB042C  90 03 00 24 */	stw r0, 0x24(r3)
/* 80BB0430  7C 7D F8 2E */	lwzx r3, r29, r31
/* 80BB0434  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80BB0438  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80BB043C  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 80BB0440  38 00 00 00 */	li r0, 0
/* 80BB0444  7C 1D F9 2E */	stwx r0, r29, r31
lbl_80BB0448:
/* 80BB0448  3B DE 00 01 */	addi r30, r30, 1
/* 80BB044C  2C 1E 00 02 */	cmpwi r30, 2
/* 80BB0450  3B 9C 00 04 */	addi r28, r28, 4
/* 80BB0454  41 80 FF 80 */	blt lbl_80BB03D4
/* 80BB0458  80 1D 10 34 */	lwz r0, 0x1034(r29)
/* 80BB045C  28 00 00 00 */	cmplwi r0, 0
/* 80BB0460  41 82 00 6C */	beq lbl_80BB04CC
/* 80BB0464  80 7D 05 A8 */	lwz r3, 0x5a8(r29)
/* 80BB0468  80 63 00 04 */	lwz r3, 4(r3)
/* 80BB046C  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80BB0470  A8 1D 0F 8C */	lha r0, 0xf8c(r29)
/* 80BB0474  54 00 13 BA */	rlwinm r0, r0, 2, 0xe, 0x1d
/* 80BB0478  7F 83 00 2E */	lwzx r28, r3, r0
/* 80BB047C  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80BB0480  4B 45 C8 E5 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80BB0484  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BB0488  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BB048C  A8 9D 04 B6 */	lha r4, 0x4b6(r29)
/* 80BB0490  4B 45 BF A5 */	bl mDoMtx_YrotM__FPA4_fs
/* 80BB0494  C0 3C 00 30 */	lfs f1, 0x30(r28)
/* 80BB0498  C0 5C 00 2C */	lfs f2, 0x2c(r28)
/* 80BB049C  C0 7C 00 34 */	lfs f3, 0x34(r28)
/* 80BB04A0  4B 45 C8 FD */	bl transM__14mDoMtx_stack_cFfff
/* 80BB04A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BB04A8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BB04AC  A8 9D 0F 96 */	lha r4, 0xf96(r29)
/* 80BB04B0  4B 45 BF 85 */	bl mDoMtx_YrotM__FPA4_fs
/* 80BB04B4  80 BD 10 34 */	lwz r5, 0x1034(r29)
/* 80BB04B8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BB04BC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BB04C0  38 85 00 68 */	addi r4, r5, 0x68
/* 80BB04C4  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 80BB04C8  4B 6D 03 19 */	bl func_802807E0
lbl_80BB04CC:
/* 80BB04CC  80 1D 10 2C */	lwz r0, 0x102c(r29)
/* 80BB04D0  28 00 00 00 */	cmplwi r0, 0
/* 80BB04D4  41 82 00 94 */	beq lbl_80BB0568
/* 80BB04D8  80 7D 05 A8 */	lwz r3, 0x5a8(r29)
/* 80BB04DC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80BB04E0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80BB04E4  A8 1D 0F 8E */	lha r0, 0xf8e(r29)
/* 80BB04E8  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80BB04EC  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80BB04F0  7C 63 02 14 */	add r3, r3, r0
/* 80BB04F4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BB04F8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BB04FC  4B 79 5F B5 */	bl PSMTXCopy
/* 80BB0500  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BB0504  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BB0508  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80BB050C  D0 1D 10 3C */	stfs f0, 0x103c(r29)
/* 80BB0510  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80BB0514  D0 1D 10 40 */	stfs f0, 0x1040(r29)
/* 80BB0518  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80BB051C  D0 1D 10 44 */	stfs f0, 0x1044(r29)
/* 80BB0520  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070226@ha */
/* 80BB0524  38 03 02 26 */	addi r0, r3, 0x0226 /* 0x00070226@l */
/* 80BB0528  90 01 00 08 */	stw r0, 8(r1)
/* 80BB052C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80BB0530  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80BB0534  80 63 00 00 */	lwz r3, 0(r3)
/* 80BB0538  38 81 00 08 */	addi r4, r1, 8
/* 80BB053C  38 BD 10 3C */	addi r5, r29, 0x103c
/* 80BB0540  38 C0 00 00 */	li r6, 0
/* 80BB0544  38 E0 00 00 */	li r7, 0
/* 80BB0548  3D 00 80 BB */	lis r8, lit_3934@ha /* 0x80BB3824@ha */
/* 80BB054C  C0 28 38 24 */	lfs f1, lit_3934@l(r8)  /* 0x80BB3824@l */
/* 80BB0550  FC 40 08 90 */	fmr f2, f1
/* 80BB0554  3D 00 80 BB */	lis r8, lit_4402@ha /* 0x80BB3840@ha */
/* 80BB0558  C0 68 38 40 */	lfs f3, lit_4402@l(r8)  /* 0x80BB3840@l */
/* 80BB055C  FC 80 18 90 */	fmr f4, f3
/* 80BB0560  39 00 00 00 */	li r8, 0
/* 80BB0564  4B 6F BF A9 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80BB0568:
/* 80BB0568  39 61 00 20 */	addi r11, r1, 0x20
/* 80BB056C  4B 7B 1C B9 */	bl _restgpr_28
/* 80BB0570  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BB0574  7C 08 03 A6 */	mtlr r0
/* 80BB0578  38 21 00 20 */	addi r1, r1, 0x20
/* 80BB057C  4E 80 00 20 */	blr 
