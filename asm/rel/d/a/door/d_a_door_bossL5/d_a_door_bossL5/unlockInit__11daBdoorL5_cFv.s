lbl_80671878:
/* 80671878  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8067187C  7C 08 02 A6 */	mflr r0
/* 80671880  90 01 00 24 */	stw r0, 0x24(r1)
/* 80671884  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80671888  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8067188C  7C 7F 1B 78 */	mr r31, r3
/* 80671890  80 63 05 8C */	lwz r3, 0x58c(r3)
/* 80671894  3C 03 00 01 */	addis r0, r3, 1
/* 80671898  28 00 FF FF */	cmplwi r0, 0xffff
/* 8067189C  40 82 00 0C */	bne lbl_806718A8
/* 806718A0  38 60 00 01 */	li r3, 1
/* 806718A4  48 00 00 98 */	b lbl_8067193C
lbl_806718A8:
/* 806718A8  90 61 00 0C */	stw r3, 0xc(r1)
/* 806718AC  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 806718B0  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 806718B4  38 81 00 0C */	addi r4, r1, 0xc
/* 806718B8  4B 9A 7F 40 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 806718BC  7C 65 1B 79 */	or. r5, r3, r3
/* 806718C0  41 82 00 54 */	beq lbl_80671914
/* 806718C4  38 00 00 01 */	li r0, 1
/* 806718C8  98 05 2C A4 */	stb r0, 0x2ca4(r5)
/* 806718CC  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801C6@ha */
/* 806718D0  38 03 01 C6 */	addi r0, r3, 0x01C6 /* 0x000801C6@l */
/* 806718D4  90 01 00 08 */	stw r0, 8(r1)
/* 806718D8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 806718DC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 806718E0  80 63 00 00 */	lwz r3, 0(r3)
/* 806718E4  38 81 00 08 */	addi r4, r1, 8
/* 806718E8  38 A5 04 D0 */	addi r5, r5, 0x4d0
/* 806718EC  38 C0 00 00 */	li r6, 0
/* 806718F0  38 E0 00 00 */	li r7, 0
/* 806718F4  3D 00 80 67 */	lis r8, lit_3757@ha
/* 806718F8  C0 28 25 0C */	lfs f1, lit_3757@l(r8)
/* 806718FC  FC 40 08 90 */	fmr f2, f1
/* 80671900  3D 00 80 67 */	lis r8, lit_3981@ha
/* 80671904  C0 68 25 18 */	lfs f3, lit_3981@l(r8)
/* 80671908  FC 80 18 90 */	fmr f4, f3
/* 8067190C  39 00 00 00 */	li r8, 0
/* 80671910  4B C3 A0 74 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80671914:
/* 80671914  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80671918  7C 1E 07 74 */	extsb r30, r0
/* 8067191C  7F E3 FB 78 */	mr r3, r31
/* 80671920  4B 9C 88 B0 */	b getSwbit__13door_param2_cFP10fopAc_ac_c
/* 80671924  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 80671928  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8067192C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80671930  7F C5 F3 78 */	mr r5, r30
/* 80671934  4B 9C 38 CC */	b onSwitch__10dSv_info_cFii
/* 80671938  38 60 00 01 */	li r3, 1
lbl_8067193C:
/* 8067193C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80671940  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80671944  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80671948  7C 08 03 A6 */	mtlr r0
/* 8067194C  38 21 00 20 */	addi r1, r1, 0x20
/* 80671950  4E 80 00 20 */	blr 
