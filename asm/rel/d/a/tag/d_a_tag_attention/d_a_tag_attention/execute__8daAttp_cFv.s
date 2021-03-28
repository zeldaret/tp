lbl_804D53AC:
/* 804D53AC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804D53B0  7C 08 02 A6 */	mflr r0
/* 804D53B4  90 01 00 34 */	stw r0, 0x34(r1)
/* 804D53B8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 804D53BC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 804D53C0  7C 7E 1B 78 */	mr r30, r3
/* 804D53C4  3B E0 00 01 */	li r31, 1
/* 804D53C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804D53CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804D53D0  80 83 5D AC */	lwz r4, 0x5dac(r3)
/* 804D53D4  38 61 00 08 */	addi r3, r1, 8
/* 804D53D8  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 804D53DC  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 804D53E0  4B D9 17 54 */	b __mi__4cXyzCFRC3Vec
/* 804D53E4  C0 01 00 08 */	lfs f0, 8(r1)
/* 804D53E8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 804D53EC  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 804D53F0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804D53F4  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 804D53F8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804D53FC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804D5400  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804D5404  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 804D5408  7C 00 00 D0 */	neg r0, r0
/* 804D540C  7C 04 07 34 */	extsh r4, r0
/* 804D5410  4B B3 6F CC */	b mDoMtx_YrotS__FPA4_fs
/* 804D5414  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804D5418  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804D541C  38 81 00 14 */	addi r4, r1, 0x14
/* 804D5420  7C 85 23 78 */	mr r5, r4
/* 804D5424  4B E7 19 48 */	b PSMTXMultVec
/* 804D5428  80 9E 00 B0 */	lwz r4, 0xb0(r30)
/* 804D542C  54 80 E7 7E */	rlwinm r0, r4, 0x1c, 0x1d, 0x1f
/* 804D5430  28 00 00 07 */	cmplwi r0, 7
/* 804D5434  41 81 00 BC */	bgt lbl_804D54F0
/* 804D5438  3C 60 80 4D */	lis r3, lit_3773@ha
/* 804D543C  38 63 57 2C */	addi r3, r3, lit_3773@l
/* 804D5440  54 00 10 3A */	slwi r0, r0, 2
/* 804D5444  7C 03 00 2E */	lwzx r0, r3, r0
/* 804D5448  7C 09 03 A6 */	mtctr r0
/* 804D544C  4E 80 04 20 */	bctr 
lbl_804D5450:
/* 804D5450  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 804D5454  3C 60 80 4D */	lis r3, lit_3772@ha
/* 804D5458  C0 03 57 28 */	lfs f0, lit_3772@l(r3)
/* 804D545C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804D5460  40 80 00 90 */	bge lbl_804D54F0
/* 804D5464  3B E0 00 00 */	li r31, 0
/* 804D5468  48 00 00 88 */	b lbl_804D54F0
lbl_804D546C:
/* 804D546C  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 804D5470  3C 60 80 4D */	lis r3, lit_3772@ha
/* 804D5474  C0 03 57 28 */	lfs f0, lit_3772@l(r3)
/* 804D5478  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804D547C  40 81 00 74 */	ble lbl_804D54F0
/* 804D5480  3B E0 00 00 */	li r31, 0
/* 804D5484  48 00 00 6C */	b lbl_804D54F0
lbl_804D5488:
/* 804D5488  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 804D548C  3C 60 80 4D */	lis r3, lit_3772@ha
/* 804D5490  C0 03 57 28 */	lfs f0, lit_3772@l(r3)
/* 804D5494  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804D5498  40 80 00 58 */	bge lbl_804D54F0
/* 804D549C  3B E0 00 00 */	li r31, 0
/* 804D54A0  48 00 00 50 */	b lbl_804D54F0
lbl_804D54A4:
/* 804D54A4  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 804D54A8  3C 60 80 4D */	lis r3, lit_3772@ha
/* 804D54AC  C0 23 57 28 */	lfs f1, lit_3772@l(r3)
/* 804D54B0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804D54B4  41 81 00 10 */	bgt lbl_804D54C4
/* 804D54B8  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 804D54BC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804D54C0  40 80 00 30 */	bge lbl_804D54F0
lbl_804D54C4:
/* 804D54C4  3B E0 00 00 */	li r31, 0
/* 804D54C8  48 00 00 28 */	b lbl_804D54F0
lbl_804D54CC:
/* 804D54CC  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 804D54D0  3C 60 80 4D */	lis r3, lit_3772@ha
/* 804D54D4  C0 23 57 28 */	lfs f1, lit_3772@l(r3)
/* 804D54D8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804D54DC  41 80 00 10 */	blt lbl_804D54EC
/* 804D54E0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 804D54E4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804D54E8  40 80 00 08 */	bge lbl_804D54F0
lbl_804D54EC:
/* 804D54EC  3B E0 00 00 */	li r31, 0
lbl_804D54F0:
/* 804D54F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804D54F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804D54F8  54 84 86 3E */	rlwinm r4, r4, 0x10, 0x18, 0x1f
/* 804D54FC  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 804D5500  7C 05 07 74 */	extsb r5, r0
/* 804D5504  4B B5 FE 5C */	b isSwitch__10dSv_info_cCFii
/* 804D5508  2C 03 00 00 */	cmpwi r3, 0
/* 804D550C  41 82 00 7C */	beq lbl_804D5588
/* 804D5510  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 804D5514  54 00 F7 BE */	rlwinm r0, r0, 0x1e, 0x1e, 0x1f
/* 804D5518  2C 00 00 02 */	cmpwi r0, 2
/* 804D551C  41 82 00 44 */	beq lbl_804D5560
/* 804D5520  40 80 00 14 */	bge lbl_804D5534
/* 804D5524  2C 00 00 00 */	cmpwi r0, 0
/* 804D5528  41 82 01 24 */	beq lbl_804D564C
/* 804D552C  40 80 00 14 */	bge lbl_804D5540
/* 804D5530  48 00 01 1C */	b lbl_804D564C
lbl_804D5534:
/* 804D5534  2C 00 00 04 */	cmpwi r0, 4
/* 804D5538  40 80 01 14 */	bge lbl_804D564C
/* 804D553C  48 00 00 44 */	b lbl_804D5580
lbl_804D5540:
/* 804D5540  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804D5544  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804D5548  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 804D554C  80 03 05 74 */	lwz r0, 0x574(r3)
/* 804D5550  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 804D5554  41 82 00 F8 */	beq lbl_804D564C
/* 804D5558  3B E0 00 00 */	li r31, 0
/* 804D555C  48 00 00 F0 */	b lbl_804D564C
lbl_804D5560:
/* 804D5560  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804D5564  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804D5568  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 804D556C  80 03 05 74 */	lwz r0, 0x574(r3)
/* 804D5570  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 804D5574  40 82 00 D8 */	bne lbl_804D564C
/* 804D5578  3B E0 00 00 */	li r31, 0
/* 804D557C  48 00 00 D0 */	b lbl_804D564C
lbl_804D5580:
/* 804D5580  3B E0 00 00 */	li r31, 0
/* 804D5584  48 00 00 C8 */	b lbl_804D564C
lbl_804D5588:
/* 804D5588  80 9E 00 B0 */	lwz r4, 0xb0(r30)
/* 804D558C  54 80 07 BE */	clrlwi r0, r4, 0x1e
/* 804D5590  2C 00 00 02 */	cmpwi r0, 2
/* 804D5594  41 82 00 44 */	beq lbl_804D55D8
/* 804D5598  40 80 00 14 */	bge lbl_804D55AC
/* 804D559C  2C 00 00 00 */	cmpwi r0, 0
/* 804D55A0  41 82 00 5C */	beq lbl_804D55FC
/* 804D55A4  40 80 00 14 */	bge lbl_804D55B8
/* 804D55A8  48 00 00 54 */	b lbl_804D55FC
lbl_804D55AC:
/* 804D55AC  2C 00 00 04 */	cmpwi r0, 4
/* 804D55B0  40 80 00 4C */	bge lbl_804D55FC
/* 804D55B4  48 00 00 44 */	b lbl_804D55F8
lbl_804D55B8:
/* 804D55B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804D55BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804D55C0  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 804D55C4  80 03 05 74 */	lwz r0, 0x574(r3)
/* 804D55C8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 804D55CC  41 82 00 30 */	beq lbl_804D55FC
/* 804D55D0  3B E0 00 00 */	li r31, 0
/* 804D55D4  48 00 00 28 */	b lbl_804D55FC
lbl_804D55D8:
/* 804D55D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804D55DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804D55E0  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 804D55E4  80 03 05 74 */	lwz r0, 0x574(r3)
/* 804D55E8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 804D55EC  40 82 00 10 */	bne lbl_804D55FC
/* 804D55F0  3B E0 00 00 */	li r31, 0
/* 804D55F4  48 00 00 08 */	b lbl_804D55FC
lbl_804D55F8:
/* 804D55F8  3B E0 00 00 */	li r31, 0
lbl_804D55FC:
/* 804D55FC  54 84 46 3E */	srwi r4, r4, 0x18
/* 804D5600  28 04 00 FF */	cmplwi r4, 0xff
/* 804D5604  41 82 00 48 */	beq lbl_804D564C
/* 804D5608  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804D560C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804D5610  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 804D5614  7C 05 07 74 */	extsb r5, r0
/* 804D5618  4B B5 FD 48 */	b isSwitch__10dSv_info_cCFii
/* 804D561C  2C 03 00 00 */	cmpwi r3, 0
/* 804D5620  41 82 00 18 */	beq lbl_804D5638
/* 804D5624  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 804D5628  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 804D562C  40 82 00 20 */	bne lbl_804D564C
/* 804D5630  3B E0 00 00 */	li r31, 0
/* 804D5634  48 00 00 18 */	b lbl_804D564C
lbl_804D5638:
/* 804D5638  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 804D563C  54 00 CF FE */	rlwinm r0, r0, 0x19, 0x1f, 0x1f
/* 804D5640  28 00 00 01 */	cmplwi r0, 1
/* 804D5644  40 82 00 08 */	bne lbl_804D564C
/* 804D5648  3B E0 00 00 */	li r31, 0
lbl_804D564C:
/* 804D564C  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 804D5650  41 82 00 14 */	beq lbl_804D5664
/* 804D5654  80 1E 05 5C */	lwz r0, 0x55c(r30)
/* 804D5658  60 00 00 01 */	ori r0, r0, 1
/* 804D565C  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 804D5660  48 00 00 10 */	b lbl_804D5670
lbl_804D5664:
/* 804D5664  80 1E 05 5C */	lwz r0, 0x55c(r30)
/* 804D5668  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 804D566C  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_804D5670:
/* 804D5670  38 60 00 01 */	li r3, 1
/* 804D5674  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 804D5678  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 804D567C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804D5680  7C 08 03 A6 */	mtlr r0
/* 804D5684  38 21 00 30 */	addi r1, r1, 0x30
/* 804D5688  4E 80 00 20 */	blr 
