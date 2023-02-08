lbl_80AE3798:
/* 80AE3798  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AE379C  7C 08 02 A6 */	mflr r0
/* 80AE37A0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AE37A4  39 61 00 30 */	addi r11, r1, 0x30
/* 80AE37A8  4B 87 EA 35 */	bl _savegpr_29
/* 80AE37AC  7C 7F 1B 78 */	mr r31, r3
/* 80AE37B0  3C 60 80 AE */	lis r3, m__17daNpc_Sha_Param_c@ha /* 0x80AE6BC8@ha */
/* 80AE37B4  3B C3 6B C8 */	addi r30, r3, m__17daNpc_Sha_Param_c@l /* 0x80AE6BC8@l */
/* 80AE37B8  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 80AE37BC  38 1F 0F A4 */	addi r0, r31, 0xfa4
/* 80AE37C0  7F A3 00 50 */	subf r29, r3, r0
/* 80AE37C4  80 7F 09 6C */	lwz r3, 0x96c(r31)
/* 80AE37C8  28 03 00 00 */	cmplwi r3, 0
/* 80AE37CC  41 82 00 08 */	beq lbl_80AE37D4
/* 80AE37D0  4B 66 1F 95 */	bl initialize__15daNpcT_MatAnm_cFv
lbl_80AE37D4:
/* 80AE37D4  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80AE37D8  38 80 00 00 */	li r4, 0
/* 80AE37DC  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80AE37E0  7C A3 00 50 */	subf r5, r3, r0
/* 80AE37E4  4B 51 FC 75 */	bl memset
/* 80AE37E8  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80AE37EC  4B 66 20 AD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AE37F0  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AE37F4  4B 66 20 A5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AE37F8  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80AE37FC  4B 66 1E D9 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80AE3800  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80AE3804  4B 66 1E D1 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80AE3808  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80AE380C  4B 66 34 8D */	bl initialize__15daNpcT_JntAnm_cFv
/* 80AE3810  38 60 00 00 */	li r3, 0
/* 80AE3814  38 80 00 00 */	li r4, 0
/* 80AE3818  7C 87 23 78 */	mr r7, r4
/* 80AE381C  7C 86 23 78 */	mr r6, r4
/* 80AE3820  7C 85 23 78 */	mr r5, r4
/* 80AE3824  C0 1E 00 AC */	lfs f0, 0xac(r30)
/* 80AE3828  38 00 00 02 */	li r0, 2
/* 80AE382C  7C 09 03 A6 */	mtctr r0
lbl_80AE3830:
/* 80AE3830  7D 1F 22 14 */	add r8, r31, r4
/* 80AE3834  B0 E8 0D 08 */	sth r7, 0xd08(r8)
/* 80AE3838  B0 C8 0D 0A */	sth r6, 0xd0a(r8)
/* 80AE383C  B0 A8 0D 0C */	sth r5, 0xd0c(r8)
/* 80AE3840  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80AE3844  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80AE3848  38 63 00 04 */	addi r3, r3, 4
/* 80AE384C  38 84 00 06 */	addi r4, r4, 6
/* 80AE3850  42 00 FF E0 */	bdnz lbl_80AE3830
/* 80AE3854  38 00 00 00 */	li r0, 0
/* 80AE3858  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80AE385C  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80AE3860  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80AE3864  38 00 FF FF */	li r0, -1
/* 80AE3868  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80AE386C  38 00 00 01 */	li r0, 1
/* 80AE3870  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80AE3874  C0 3E 00 B0 */	lfs f1, 0xb0(r30)
/* 80AE3878  4B 78 40 DD */	bl cM_rndF__Ff
/* 80AE387C  FC 00 08 1E */	fctiwz f0, f1
/* 80AE3880  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80AE3884  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80AE3888  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80AE388C  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 80AE3890  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80AE3894  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80AE3898  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 80AE389C  38 80 00 00 */	li r4, 0
/* 80AE38A0  7F A5 EB 78 */	mr r5, r29
/* 80AE38A4  4B 51 FB B5 */	bl memset
/* 80AE38A8  38 60 00 00 */	li r3, 0
/* 80AE38AC  B0 61 00 10 */	sth r3, 0x10(r1)
/* 80AE38B0  B0 61 00 12 */	sth r3, 0x12(r1)
/* 80AE38B4  B0 61 00 14 */	sth r3, 0x14(r1)
/* 80AE38B8  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 80AE38BC  B0 01 00 12 */	sth r0, 0x12(r1)
/* 80AE38C0  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80AE38C4  90 01 00 08 */	stw r0, 8(r1)
/* 80AE38C8  B0 61 00 0C */	sth r3, 0xc(r1)
/* 80AE38CC  7F E3 FB 78 */	mr r3, r31
/* 80AE38D0  38 81 00 08 */	addi r4, r1, 8
/* 80AE38D4  4B 66 70 C9 */	bl setAngle__8daNpcT_cF5csXyz
/* 80AE38D8  39 61 00 30 */	addi r11, r1, 0x30
/* 80AE38DC  4B 87 E9 4D */	bl _restgpr_29
/* 80AE38E0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AE38E4  7C 08 03 A6 */	mtlr r0
/* 80AE38E8  38 21 00 30 */	addi r1, r1, 0x30
/* 80AE38EC  4E 80 00 20 */	blr 
