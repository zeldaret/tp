lbl_80CDF498:
/* 80CDF498  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80CDF49C  7C 08 02 A6 */	mflr r0
/* 80CDF4A0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CDF4A4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80CDF4A8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80CDF4AC  7C 7F 1B 78 */	mr r31, r3
/* 80CDF4B0  4B FF FE 09 */	bl playerAreaCheck__14daSnowEffTag_cFv
/* 80CDF4B4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80CDF4B8  28 00 00 01 */	cmplwi r0, 1
/* 80CDF4BC  40 82 01 0C */	bne lbl_80CDF5C8
/* 80CDF4C0  88 1F 05 69 */	lbz r0, 0x569(r31)
/* 80CDF4C4  28 00 00 00 */	cmplwi r0, 0
/* 80CDF4C8  40 82 00 60 */	bne lbl_80CDF528
/* 80CDF4CC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CDF4D0  7C 03 07 74 */	extsb r3, r0
/* 80CDF4D4  4B 34 DB 98 */	b dComIfGp_getReverb__Fi
/* 80CDF4D8  7C 67 1B 78 */	mr r7, r3
/* 80CDF4DC  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080050@ha */
/* 80CDF4E0  38 03 00 50 */	addi r0, r3, 0x0050 /* 0x00080050@l */
/* 80CDF4E4  90 01 00 20 */	stw r0, 0x20(r1)
/* 80CDF4E8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80CDF4EC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80CDF4F0  80 63 00 00 */	lwz r3, 0(r3)
/* 80CDF4F4  38 81 00 20 */	addi r4, r1, 0x20
/* 80CDF4F8  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80CDF4FC  38 C0 00 00 */	li r6, 0
/* 80CDF500  3D 00 80 CE */	lis r8, lit_3806@ha
/* 80CDF504  C0 28 F7 50 */	lfs f1, lit_3806@l(r8)
/* 80CDF508  FC 40 08 90 */	fmr f2, f1
/* 80CDF50C  3D 00 80 CE */	lis r8, lit_3807@ha
/* 80CDF510  C0 68 F7 54 */	lfs f3, lit_3807@l(r8)
/* 80CDF514  FC 80 18 90 */	fmr f4, f3
/* 80CDF518  39 00 00 00 */	li r8, 0
/* 80CDF51C  4B 5C C4 68 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CDF520  38 00 00 01 */	li r0, 1
/* 80CDF524  98 1F 05 69 */	stb r0, 0x569(r31)
lbl_80CDF528:
/* 80CDF528  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CDF52C  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 80CDF530  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80CDF534  38 00 00 FF */	li r0, 0xff
/* 80CDF538  90 01 00 08 */	stw r0, 8(r1)
/* 80CDF53C  38 80 00 00 */	li r4, 0
/* 80CDF540  90 81 00 0C */	stw r4, 0xc(r1)
/* 80CDF544  38 00 FF FF */	li r0, -1
/* 80CDF548  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CDF54C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80CDF550  90 81 00 18 */	stw r4, 0x18(r1)
/* 80CDF554  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80CDF558  80 9F 05 78 */	lwz r4, 0x578(r31)
/* 80CDF55C  38 A0 00 00 */	li r5, 0
/* 80CDF560  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000886D@ha */
/* 80CDF564  38 C6 88 6D */	addi r6, r6, 0x886D /* 0x0000886D@l */
/* 80CDF568  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 80CDF56C  39 00 00 00 */	li r8, 0
/* 80CDF570  39 20 00 00 */	li r9, 0
/* 80CDF574  39 40 00 00 */	li r10, 0
/* 80CDF578  3D 60 80 CE */	lis r11, lit_3806@ha
/* 80CDF57C  C0 2B F7 50 */	lfs f1, lit_3806@l(r11)
/* 80CDF580  4B 36 DF 4C */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80CDF584  90 7F 05 78 */	stw r3, 0x578(r31)
/* 80CDF588  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80CDF58C  38 63 02 10 */	addi r3, r3, 0x210
/* 80CDF590  80 9F 05 78 */	lwz r4, 0x578(r31)
/* 80CDF594  4B 36 C3 84 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 80CDF598  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CDF59C  41 82 00 2C */	beq lbl_80CDF5C8
/* 80CDF5A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CDF5A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CDF5A8  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80CDF5AC  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80CDF5B0  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80CDF5B4  7D 89 03 A6 */	mtctr r12
/* 80CDF5B8  4E 80 04 21 */	bctrl 
/* 80CDF5BC  38 9F 00 68 */	addi r4, r31, 0x68
/* 80CDF5C0  38 BF 00 A4 */	addi r5, r31, 0xa4
/* 80CDF5C4  4B 5A 12 1C */	b func_802807E0
lbl_80CDF5C8:
/* 80CDF5C8  38 60 00 01 */	li r3, 1
/* 80CDF5CC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80CDF5D0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80CDF5D4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CDF5D8  7C 08 03 A6 */	mtlr r0
/* 80CDF5DC  38 21 00 30 */	addi r1, r1, 0x30
/* 80CDF5E0  4E 80 00 20 */	blr 
