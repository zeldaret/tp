lbl_801E3408:
/* 801E3408  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801E340C  7C 08 02 A6 */	mflr r0
/* 801E3410  90 01 00 14 */	stw r0, 0x14(r1)
/* 801E3414  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801E3418  93 C1 00 08 */	stw r30, 8(r1)
/* 801E341C  7C 7F 1B 78 */	mr r31, r3
/* 801E3420  80 63 00 58 */	lwz r3, 0x58(r3)
/* 801E3424  4B E4 ED 79 */	bl checkTrigger__9STControlFv
/* 801E3428  88 1F 03 EA */	lbz r0, 0x3ea(r31)
/* 801E342C  28 00 00 00 */	cmplwi r0, 0
/* 801E3430  41 82 00 1C */	beq lbl_801E344C
/* 801E3434  7F E3 FB 78 */	mr r3, r31
/* 801E3438  48 00 4C 69 */	bl isRumbleSupported__14dMenu_Option_cFv
/* 801E343C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801E3440  40 82 00 0C */	bne lbl_801E344C
/* 801E3444  38 00 00 00 */	li r0, 0
/* 801E3448  98 1F 03 EA */	stb r0, 0x3ea(r31)
lbl_801E344C:
/* 801E344C  80 6D 86 48 */	lwz r3, mFader__13mDoGph_gInf_c(r13)
/* 801E3450  80 03 00 04 */	lwz r0, 4(r3)
/* 801E3454  2C 00 00 01 */	cmpwi r0, 1
/* 801E3458  40 82 01 84 */	bne lbl_801E35DC
/* 801E345C  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha /* 0x803DD2E8@ha */
/* 801E3460  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l /* 0x803DD2E8@l */
/* 801E3464  80 83 00 34 */	lwz r4, 0x34(r3)
/* 801E3468  54 85 05 EF */	rlwinm. r5, r4, 0, 0x17, 0x17
/* 801E346C  41 82 00 B8 */	beq lbl_801E3524
/* 801E3470  88 7F 03 EF */	lbz r3, 0x3ef(r31)
/* 801E3474  28 03 00 03 */	cmplwi r3, 3
/* 801E3478  41 82 00 AC */	beq lbl_801E3524
/* 801E347C  88 1F 03 F3 */	lbz r0, 0x3f3(r31)
/* 801E3480  28 00 00 05 */	cmplwi r0, 5
/* 801E3484  40 82 00 A0 */	bne lbl_801E3524
/* 801E3488  88 1F 03 F4 */	lbz r0, 0x3f4(r31)
/* 801E348C  28 00 00 05 */	cmplwi r0, 5
/* 801E3490  40 82 00 94 */	bne lbl_801E3524
/* 801E3494  28 03 00 04 */	cmplwi r3, 4
/* 801E3498  41 82 00 8C */	beq lbl_801E3524
/* 801E349C  28 03 00 05 */	cmplwi r3, 5
/* 801E34A0  41 82 00 84 */	beq lbl_801E3524
/* 801E34A4  28 03 00 06 */	cmplwi r3, 6
/* 801E34A8  41 82 00 7C */	beq lbl_801E3524
/* 801E34AC  28 03 00 07 */	cmplwi r3, 7
/* 801E34B0  41 82 00 74 */	beq lbl_801E3524
/* 801E34B4  54 80 04 E7 */	rlwinm. r0, r4, 0, 0x13, 0x13
/* 801E34B8  40 82 00 6C */	bne lbl_801E3524
/* 801E34BC  54 80 05 AD */	rlwinm. r0, r4, 0, 0x16, 0x16
/* 801E34C0  40 82 00 64 */	bne lbl_801E3524
/* 801E34C4  54 80 07 39 */	rlwinm. r0, r4, 0, 0x1c, 0x1c
/* 801E34C8  40 82 00 5C */	bne lbl_801E3524
/* 801E34CC  54 80 07 7B */	rlwinm. r0, r4, 0, 0x1d, 0x1d
/* 801E34D0  40 82 00 54 */	bne lbl_801E3524
/* 801E34D4  54 80 07 FF */	clrlwi. r0, r4, 0x1f
/* 801E34D8  40 82 00 4C */	bne lbl_801E3524
/* 801E34DC  54 80 07 BD */	rlwinm. r0, r4, 0, 0x1e, 0x1e
/* 801E34E0  40 82 00 44 */	bne lbl_801E3524
/* 801E34E4  38 00 00 01 */	li r0, 1
/* 801E34E8  98 1F 03 F7 */	stb r0, 0x3f7(r31)
/* 801E34EC  88 1F 03 EF */	lbz r0, 0x3ef(r31)
/* 801E34F0  98 1F 03 F5 */	stb r0, 0x3f5(r31)
/* 801E34F4  38 00 00 04 */	li r0, 4
/* 801E34F8  98 1F 03 EF */	stb r0, 0x3ef(r31)
/* 801E34FC  48 03 B4 D5 */	bl dMeter2Info_set2DVibration__Fv
/* 801E3500  7F E3 FB 78 */	mr r3, r31
/* 801E3504  88 1F 03 EF */	lbz r0, 0x3ef(r31)
/* 801E3508  1C A0 00 0C */	mulli r5, r0, 0xc
/* 801E350C  3C 80 80 3C */	lis r4, init@ha /* 0x803BDC14@ha */
/* 801E3510  38 04 DC 14 */	addi r0, r4, init@l /* 0x803BDC14@l */
/* 801E3514  7D 80 2A 14 */	add r12, r0, r5
/* 801E3518  48 17 EB 6D */	bl __ptmf_scall
/* 801E351C  60 00 00 00 */	nop 
/* 801E3520  48 00 00 BC */	b lbl_801E35DC
lbl_801E3524:
/* 801E3524  54 80 05 AD */	rlwinm. r0, r4, 0, 0x16, 0x16
/* 801E3528  41 82 00 B4 */	beq lbl_801E35DC
/* 801E352C  88 7F 03 EF */	lbz r3, 0x3ef(r31)
/* 801E3530  28 03 00 03 */	cmplwi r3, 3
/* 801E3534  41 82 00 A8 */	beq lbl_801E35DC
/* 801E3538  88 1F 03 F3 */	lbz r0, 0x3f3(r31)
/* 801E353C  28 00 00 05 */	cmplwi r0, 5
/* 801E3540  40 82 00 9C */	bne lbl_801E35DC
/* 801E3544  28 03 00 04 */	cmplwi r3, 4
/* 801E3548  41 82 00 94 */	beq lbl_801E35DC
/* 801E354C  28 03 00 05 */	cmplwi r3, 5
/* 801E3550  41 82 00 8C */	beq lbl_801E35DC
/* 801E3554  28 03 00 06 */	cmplwi r3, 6
/* 801E3558  41 82 00 84 */	beq lbl_801E35DC
/* 801E355C  28 03 00 07 */	cmplwi r3, 7
/* 801E3560  41 82 00 7C */	beq lbl_801E35DC
/* 801E3564  88 1F 03 F4 */	lbz r0, 0x3f4(r31)
/* 801E3568  28 00 00 05 */	cmplwi r0, 5
/* 801E356C  40 82 00 70 */	bne lbl_801E35DC
/* 801E3570  54 80 04 E7 */	rlwinm. r0, r4, 0, 0x13, 0x13
/* 801E3574  40 82 00 68 */	bne lbl_801E35DC
/* 801E3578  28 05 00 00 */	cmplwi r5, 0
/* 801E357C  40 82 00 60 */	bne lbl_801E35DC
/* 801E3580  54 80 07 39 */	rlwinm. r0, r4, 0, 0x1c, 0x1c
/* 801E3584  40 82 00 58 */	bne lbl_801E35DC
/* 801E3588  54 80 07 7B */	rlwinm. r0, r4, 0, 0x1d, 0x1d
/* 801E358C  40 82 00 50 */	bne lbl_801E35DC
/* 801E3590  54 80 07 FF */	clrlwi. r0, r4, 0x1f
/* 801E3594  40 82 00 48 */	bne lbl_801E35DC
/* 801E3598  54 80 07 BD */	rlwinm. r0, r4, 0, 0x1e, 0x1e
/* 801E359C  40 82 00 40 */	bne lbl_801E35DC
/* 801E35A0  38 00 00 00 */	li r0, 0
/* 801E35A4  98 1F 03 F7 */	stb r0, 0x3f7(r31)
/* 801E35A8  88 1F 03 EF */	lbz r0, 0x3ef(r31)
/* 801E35AC  98 1F 03 F5 */	stb r0, 0x3f5(r31)
/* 801E35B0  38 00 00 04 */	li r0, 4
/* 801E35B4  98 1F 03 EF */	stb r0, 0x3ef(r31)
/* 801E35B8  48 03 B4 19 */	bl dMeter2Info_set2DVibration__Fv
/* 801E35BC  7F E3 FB 78 */	mr r3, r31
/* 801E35C0  88 1F 03 EF */	lbz r0, 0x3ef(r31)
/* 801E35C4  1C A0 00 0C */	mulli r5, r0, 0xc
/* 801E35C8  3C 80 80 3C */	lis r4, init@ha /* 0x803BDC14@ha */
/* 801E35CC  38 04 DC 14 */	addi r0, r4, init@l /* 0x803BDC14@l */
/* 801E35D0  7D 80 2A 14 */	add r12, r0, r5
/* 801E35D4  48 17 EA B1 */	bl __ptmf_scall
/* 801E35D8  60 00 00 00 */	nop 
lbl_801E35DC:
/* 801E35DC  8B DF 03 EF */	lbz r30, 0x3ef(r31)
/* 801E35E0  88 1F 03 F3 */	lbz r0, 0x3f3(r31)
/* 801E35E4  28 00 00 05 */	cmplwi r0, 5
/* 801E35E8  40 82 00 2C */	bne lbl_801E3614
/* 801E35EC  28 1E 00 04 */	cmplwi r30, 4
/* 801E35F0  41 82 00 24 */	beq lbl_801E3614
/* 801E35F4  28 1E 00 05 */	cmplwi r30, 5
/* 801E35F8  41 82 00 1C */	beq lbl_801E3614
/* 801E35FC  28 1E 00 06 */	cmplwi r30, 6
/* 801E3600  41 82 00 14 */	beq lbl_801E3614
/* 801E3604  28 1E 00 07 */	cmplwi r30, 7
/* 801E3608  41 82 00 0C */	beq lbl_801E3614
/* 801E360C  7F E3 FB 78 */	mr r3, r31
/* 801E3610  48 00 4A 9D */	bl dpdMenuMove__14dMenu_Option_cFv
lbl_801E3614:
/* 801E3614  38 00 00 00 */	li r0, 0
/* 801E3618  98 1F 03 F2 */	stb r0, 0x3f2(r31)
/* 801E361C  88 7F 03 F1 */	lbz r3, 0x3f1(r31)
/* 801E3620  28 03 00 FF */	cmplwi r3, 0xff
/* 801E3624  41 82 00 2C */	beq lbl_801E3650
/* 801E3628  88 1F 03 F0 */	lbz r0, 0x3f0(r31)
/* 801E362C  7C 00 18 40 */	cmplw r0, r3
/* 801E3630  41 82 00 28 */	beq lbl_801E3658
/* 801E3634  88 1F 03 EF */	lbz r0, 0x3ef(r31)
/* 801E3638  7C 00 18 40 */	cmplw r0, r3
/* 801E363C  41 82 00 1C */	beq lbl_801E3658
/* 801E3640  98 7F 03 F0 */	stb r3, 0x3f0(r31)
/* 801E3644  38 00 00 01 */	li r0, 1
/* 801E3648  98 1F 03 F2 */	stb r0, 0x3f2(r31)
/* 801E364C  48 00 00 0C */	b lbl_801E3658
lbl_801E3650:
/* 801E3650  38 00 00 FF */	li r0, 0xff
/* 801E3654  98 1F 03 F0 */	stb r0, 0x3f0(r31)
lbl_801E3658:
/* 801E3658  7F E3 FB 78 */	mr r3, r31
/* 801E365C  88 1F 03 EF */	lbz r0, 0x3ef(r31)
/* 801E3660  1C A0 00 0C */	mulli r5, r0, 0xc
/* 801E3664  3C 80 80 3C */	lis r4, process@ha /* 0x803BDCD4@ha */
/* 801E3668  38 04 DC D4 */	addi r0, r4, process@l /* 0x803BDCD4@l */
/* 801E366C  7D 80 2A 14 */	add r12, r0, r5
/* 801E3670  48 17 EA 15 */	bl __ptmf_scall
/* 801E3674  60 00 00 00 */	nop 
/* 801E3678  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 801E367C  48 11 60 15 */	bl animation__9J2DScreenFv
/* 801E3680  88 1F 03 EF */	lbz r0, 0x3ef(r31)
/* 801E3684  7C 1E 00 40 */	cmplw r30, r0
/* 801E3688  41 82 00 20 */	beq lbl_801E36A8
/* 801E368C  7F E3 FB 78 */	mr r3, r31
/* 801E3690  1C A0 00 0C */	mulli r5, r0, 0xc
/* 801E3694  3C 80 80 3C */	lis r4, init@ha /* 0x803BDC14@ha */
/* 801E3698  38 04 DC 14 */	addi r0, r4, init@l /* 0x803BDC14@l */
/* 801E369C  7D 80 2A 14 */	add r12, r0, r5
/* 801E36A0  48 17 E9 E5 */	bl __ptmf_scall
/* 801E36A4  60 00 00 00 */	nop 
lbl_801E36A8:
/* 801E36A8  7F E3 FB 78 */	mr r3, r31
/* 801E36AC  38 80 00 00 */	li r4, 0
/* 801E36B0  48 00 42 09 */	bl setHIO__14dMenu_Option_cFb
/* 801E36B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801E36B8  83 C1 00 08 */	lwz r30, 8(r1)
/* 801E36BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801E36C0  7C 08 03 A6 */	mtlr r0
/* 801E36C4  38 21 00 10 */	addi r1, r1, 0x10
/* 801E36C8  4E 80 00 20 */	blr 
