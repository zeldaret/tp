lbl_80D35508:
/* 80D35508  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D3550C  7C 08 02 A6 */	mflr r0
/* 80D35510  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D35514  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D35518  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80D3551C  7C 7E 1B 78 */	mr r30, r3
/* 80D35520  3C 60 80 D3 */	lis r3, lit_3703@ha /* 0x80D360C0@ha */
/* 80D35524  3B E3 60 C0 */	addi r31, r3, lit_3703@l /* 0x80D360C0@l */
/* 80D35528  A8 7E 05 A8 */	lha r3, 0x5a8(r30)
/* 80D3552C  7C 60 07 35 */	extsh. r0, r3
/* 80D35530  41 82 00 74 */	beq lbl_80D355A4
/* 80D35534  2C 03 00 3C */	cmpwi r3, 0x3c
/* 80D35538  41 82 00 14 */	beq lbl_80D3554C
/* 80D3553C  2C 03 00 28 */	cmpwi r3, 0x28
/* 80D35540  41 82 00 0C */	beq lbl_80D3554C
/* 80D35544  2C 03 00 14 */	cmpwi r3, 0x14
/* 80D35548  40 82 00 50 */	bne lbl_80D35598
lbl_80D3554C:
/* 80D3554C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80D35550  7C 03 07 74 */	extsb r3, r0
/* 80D35554  4B 2F 7B 19 */	bl dComIfGp_getReverb__Fi
/* 80D35558  7C 67 1B 78 */	mr r7, r3
/* 80D3555C  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080114@ha */
/* 80D35560  38 03 01 14 */	addi r0, r3, 0x0114 /* 0x00080114@l */
/* 80D35564  90 01 00 08 */	stw r0, 8(r1)
/* 80D35568  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D3556C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D35570  80 63 00 00 */	lwz r3, 0(r3)
/* 80D35574  38 81 00 08 */	addi r4, r1, 8
/* 80D35578  38 BE 05 38 */	addi r5, r30, 0x538
/* 80D3557C  38 C0 00 00 */	li r6, 0
/* 80D35580  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80D35584  FC 40 08 90 */	fmr f2, f1
/* 80D35588  C0 7F 00 0C */	lfs f3, 0xc(r31)
/* 80D3558C  FC 80 18 90 */	fmr f4, f3
/* 80D35590  39 00 00 00 */	li r8, 0
/* 80D35594  4B 57 63 F1 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80D35598:
/* 80D35598  A8 7E 05 A8 */	lha r3, 0x5a8(r30)
/* 80D3559C  38 03 FF FF */	addi r0, r3, -1
/* 80D355A0  B0 1E 05 A8 */	sth r0, 0x5a8(r30)
lbl_80D355A4:
/* 80D355A4  A8 1E 05 9E */	lha r0, 0x59e(r30)
/* 80D355A8  2C 00 00 01 */	cmpwi r0, 1
/* 80D355AC  41 82 00 80 */	beq lbl_80D3562C
/* 80D355B0  40 80 00 10 */	bge lbl_80D355C0
/* 80D355B4  2C 00 00 00 */	cmpwi r0, 0
/* 80D355B8  40 80 00 14 */	bge lbl_80D355CC
/* 80D355BC  48 00 00 A4 */	b lbl_80D35660
lbl_80D355C0:
/* 80D355C0  2C 00 00 0A */	cmpwi r0, 0xa
/* 80D355C4  41 82 00 94 */	beq lbl_80D35658
/* 80D355C8  48 00 00 98 */	b lbl_80D35660
lbl_80D355CC:
/* 80D355CC  A8 1E 05 A6 */	lha r0, 0x5a6(r30)
/* 80D355D0  2C 00 00 00 */	cmpwi r0, 0
/* 80D355D4  40 82 00 8C */	bne lbl_80D35660
/* 80D355D8  38 7E 06 30 */	addi r3, r30, 0x630
/* 80D355DC  4B 34 EE 85 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80D355E0  28 03 00 00 */	cmplwi r3, 0
/* 80D355E4  41 82 00 7C */	beq lbl_80D35660
/* 80D355E8  38 00 00 06 */	li r0, 6
/* 80D355EC  B0 1E 05 A6 */	sth r0, 0x5a6(r30)
/* 80D355F0  38 7E 06 30 */	addi r3, r30, 0x630
/* 80D355F4  4B 34 EF 05 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 80D355F8  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80D355FC  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80D35600  41 82 00 0C */	beq lbl_80D3560C
/* 80D35604  38 00 00 0A */	li r0, 0xa
/* 80D35608  B0 1E 05 9E */	sth r0, 0x59e(r30)
lbl_80D3560C:
/* 80D3560C  38 7E 06 30 */	addi r3, r30, 0x630
/* 80D35610  4B 34 EF 39 */	bl GetTgHitGObj__12dCcD_GObjInfFv
/* 80D35614  88 03 00 75 */	lbz r0, 0x75(r3)
/* 80D35618  28 00 00 01 */	cmplwi r0, 1
/* 80D3561C  40 82 00 44 */	bne lbl_80D35660
/* 80D35620  38 00 00 0A */	li r0, 0xa
/* 80D35624  B0 1E 05 9E */	sth r0, 0x59e(r30)
/* 80D35628  48 00 00 38 */	b lbl_80D35660
lbl_80D3562C:
/* 80D3562C  A8 1E 05 A2 */	lha r0, 0x5a2(r30)
/* 80D35630  2C 00 00 00 */	cmpwi r0, 0
/* 80D35634  40 82 00 2C */	bne lbl_80D35660
/* 80D35638  38 7E 05 7C */	addi r3, r30, 0x57c
/* 80D3563C  3C 80 00 04 */	lis r4, 4
/* 80D35640  38 A0 00 21 */	li r5, 0x21
/* 80D35644  38 C0 00 00 */	li r6, 0
/* 80D35648  4B 58 8E 5D */	bl startCollisionSE__14Z2SoundObjBaseFUlUlP14Z2SoundObjBase
/* 80D3564C  7F C3 F3 78 */	mr r3, r30
/* 80D35650  4B 2E 46 2D */	bl fopAcM_delete__FP10fopAc_ac_c
/* 80D35654  48 00 00 0C */	b lbl_80D35660
lbl_80D35658:
/* 80D35658  38 00 00 01 */	li r0, 1
/* 80D3565C  98 1E 05 B4 */	stb r0, 0x5b4(r30)
lbl_80D35660:
/* 80D35660  A8 9E 05 A8 */	lha r4, 0x5a8(r30)
/* 80D35664  1C 04 0F 00 */	mulli r0, r4, 0xf00
/* 80D35668  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80D3566C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80D35670  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80D35674  7C 83 04 2E */	lfsx f4, r3, r0
/* 80D35678  C0 7E 05 B0 */	lfs f3, 0x5b0(r30)
/* 80D3567C  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 80D35680  C8 3F 00 30 */	lfd f1, 0x30(r31)
/* 80D35684  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 80D35688  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3568C  3C 00 43 30 */	lis r0, 0x4330
/* 80D35690  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D35694  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80D35698  EC 00 08 28 */	fsubs f0, f0, f1
/* 80D3569C  EC 00 01 32 */	fmuls f0, f0, f4
/* 80D356A0  EC 02 00 32 */	fmuls f0, f2, f0
/* 80D356A4  EC 03 00 2A */	fadds f0, f3, f0
/* 80D356A8  D0 1E 04 F0 */	stfs f0, 0x4f0(r30)
/* 80D356AC  C0 3E 04 F0 */	lfs f1, 0x4f0(r30)
/* 80D356B0  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80D356B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D356B8  40 80 00 08 */	bge lbl_80D356C0
/* 80D356BC  D0 1E 04 F0 */	stfs f0, 0x4f0(r30)
lbl_80D356C0:
/* 80D356C0  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80D356C4  A8 7E 05 AA */	lha r3, 0x5aa(r30)
/* 80D356C8  7C 60 07 35 */	extsh. r0, r3
/* 80D356CC  41 82 00 80 */	beq lbl_80D3574C
/* 80D356D0  2C 03 00 64 */	cmpwi r3, 0x64
/* 80D356D4  40 81 00 20 */	ble lbl_80D356F4
/* 80D356D8  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80D356DC  A8 7E 05 9E */	lha r3, 0x59e(r30)
/* 80D356E0  38 03 00 01 */	addi r0, r3, 1
/* 80D356E4  B0 1E 05 9E */	sth r0, 0x59e(r30)
/* 80D356E8  38 00 00 00 */	li r0, 0
/* 80D356EC  B0 1E 05 A2 */	sth r0, 0x5a2(r30)
/* 80D356F0  48 00 00 28 */	b lbl_80D35718
lbl_80D356F4:
/* 80D356F4  2C 03 00 50 */	cmpwi r3, 0x50
/* 80D356F8  40 81 00 0C */	ble lbl_80D35704
/* 80D356FC  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80D35700  48 00 00 18 */	b lbl_80D35718
lbl_80D35704:
/* 80D35704  2C 03 00 04 */	cmpwi r3, 4
/* 80D35708  41 80 00 0C */	blt lbl_80D35714
/* 80D3570C  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80D35710  48 00 00 08 */	b lbl_80D35718
lbl_80D35714:
/* 80D35714  C0 3F 00 08 */	lfs f1, 8(r31)
lbl_80D35718:
/* 80D35718  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 80D3571C  C0 1E 05 AC */	lfs f0, 0x5ac(r30)
/* 80D35720  EC 42 00 32 */	fmuls f2, f2, f0
/* 80D35724  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80D35728  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80D3572C  40 81 00 08 */	ble lbl_80D35734
/* 80D35730  FC 40 00 90 */	fmr f2, f0
lbl_80D35734:
/* 80D35734  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80D35738  EC 00 10 28 */	fsubs f0, f0, f2
/* 80D3573C  EC 21 00 32 */	fmuls f1, f1, f0
/* 80D35740  A8 7E 05 AA */	lha r3, 0x5aa(r30)
/* 80D35744  38 03 FF FF */	addi r0, r3, -1
/* 80D35748  B0 1E 05 AA */	sth r0, 0x5aa(r30)
lbl_80D3574C:
/* 80D3574C  38 7E 05 B0 */	addi r3, r30, 0x5b0
/* 80D35750  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80D35754  FC 60 10 90 */	fmr f3, f2
/* 80D35758  4B 53 A2 E5 */	bl cLib_addCalc2__FPffff
/* 80D3575C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D35760  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80D35764  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D35768  7C 08 03 A6 */	mtlr r0
/* 80D3576C  38 21 00 20 */	addi r1, r1, 0x20
/* 80D35770  4E 80 00 20 */	blr 
