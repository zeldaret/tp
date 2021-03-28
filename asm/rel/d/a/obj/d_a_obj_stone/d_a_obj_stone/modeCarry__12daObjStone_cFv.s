lbl_80CEB480:
/* 80CEB480  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CEB484  7C 08 02 A6 */	mflr r0
/* 80CEB488  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CEB48C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CEB490  93 C1 00 08 */	stw r30, 8(r1)
/* 80CEB494  7C 7E 1B 78 */	mr r30, r3
/* 80CEB498  3C 80 80 CF */	lis r4, l_bmdIdx@ha
/* 80CEB49C  3B E4 CA B4 */	addi r31, r4, l_bmdIdx@l
/* 80CEB4A0  80 83 09 0C */	lwz r4, 0x90c(r3)
/* 80CEB4A4  38 04 00 01 */	addi r0, r4, 1
/* 80CEB4A8  90 03 09 0C */	stw r0, 0x90c(r3)
/* 80CEB4AC  80 03 09 0C */	lwz r0, 0x90c(r3)
/* 80CEB4B0  28 00 00 08 */	cmplwi r0, 8
/* 80CEB4B4  40 82 00 24 */	bne lbl_80CEB4D8
/* 80CEB4B8  88 1E 09 06 */	lbz r0, 0x906(r30)
/* 80CEB4BC  28 00 00 00 */	cmplwi r0, 0
/* 80CEB4C0  40 82 00 18 */	bne lbl_80CEB4D8
/* 80CEB4C4  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 80CEB4C8  38 9F 00 48 */	addi r4, r31, 0x48
/* 80CEB4CC  7C 04 04 2E */	lfsx f0, r4, r0
/* 80CEB4D0  D0 1E 09 40 */	stfs f0, 0x940(r30)
/* 80CEB4D4  48 00 12 05 */	bl set_carry_eff__12daObjStone_cFv
lbl_80CEB4D8:
/* 80CEB4D8  80 1E 09 0C */	lwz r0, 0x90c(r30)
/* 80CEB4DC  28 00 00 11 */	cmplwi r0, 0x11
/* 80CEB4E0  40 82 00 28 */	bne lbl_80CEB508
/* 80CEB4E4  88 1E 09 06 */	lbz r0, 0x906(r30)
/* 80CEB4E8  28 00 00 01 */	cmplwi r0, 1
/* 80CEB4EC  40 82 00 1C */	bne lbl_80CEB508
/* 80CEB4F0  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 80CEB4F4  38 7F 00 48 */	addi r3, r31, 0x48
/* 80CEB4F8  7C 03 04 2E */	lfsx f0, r3, r0
/* 80CEB4FC  D0 1E 09 40 */	stfs f0, 0x940(r30)
/* 80CEB500  7F C3 F3 78 */	mr r3, r30
/* 80CEB504  48 00 11 D5 */	bl set_carry_eff__12daObjStone_cFv
lbl_80CEB508:
/* 80CEB508  88 1E 09 08 */	lbz r0, 0x908(r30)
/* 80CEB50C  28 00 00 00 */	cmplwi r0, 0
/* 80CEB510  40 82 00 4C */	bne lbl_80CEB55C
/* 80CEB514  88 1E 09 06 */	lbz r0, 0x906(r30)
/* 80CEB518  28 00 00 01 */	cmplwi r0, 1
/* 80CEB51C  40 82 00 24 */	bne lbl_80CEB540
/* 80CEB520  80 1E 09 0C */	lwz r0, 0x90c(r30)
/* 80CEB524  28 00 00 15 */	cmplwi r0, 0x15
/* 80CEB528  40 82 00 34 */	bne lbl_80CEB55C
/* 80CEB52C  7F C3 F3 78 */	mr r3, r30
/* 80CEB530  48 00 0D 35 */	bl createItem__12daObjStone_cFv
/* 80CEB534  38 00 00 01 */	li r0, 1
/* 80CEB538  98 1E 09 08 */	stb r0, 0x908(r30)
/* 80CEB53C  48 00 00 20 */	b lbl_80CEB55C
lbl_80CEB540:
/* 80CEB540  80 1E 09 0C */	lwz r0, 0x90c(r30)
/* 80CEB544  28 00 00 0E */	cmplwi r0, 0xe
/* 80CEB548  40 82 00 14 */	bne lbl_80CEB55C
/* 80CEB54C  7F C3 F3 78 */	mr r3, r30
/* 80CEB550  48 00 0D 15 */	bl createItem__12daObjStone_cFv
/* 80CEB554  38 00 00 01 */	li r0, 1
/* 80CEB558  98 1E 09 08 */	stb r0, 0x908(r30)
lbl_80CEB55C:
/* 80CEB55C  88 7E 09 06 */	lbz r3, 0x906(r30)
/* 80CEB560  28 03 00 00 */	cmplwi r3, 0
/* 80CEB564  40 82 00 10 */	bne lbl_80CEB574
/* 80CEB568  80 1E 09 0C */	lwz r0, 0x90c(r30)
/* 80CEB56C  28 00 00 08 */	cmplwi r0, 8
/* 80CEB570  41 81 00 18 */	bgt lbl_80CEB588
lbl_80CEB574:
/* 80CEB574  28 03 00 01 */	cmplwi r3, 1
/* 80CEB578  40 82 00 48 */	bne lbl_80CEB5C0
/* 80CEB57C  80 1E 09 0C */	lwz r0, 0x90c(r30)
/* 80CEB580  28 00 00 11 */	cmplwi r0, 0x11
/* 80CEB584  40 81 00 3C */	ble lbl_80CEB5C0
lbl_80CEB588:
/* 80CEB588  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CEB58C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CEB590  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80CEB594  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80CEB598  81 8C 00 E0 */	lwz r12, 0xe0(r12)
/* 80CEB59C  7D 89 03 A6 */	mtctr r12
/* 80CEB5A0  4E 80 04 21 */	bctrl 
/* 80CEB5A4  C0 1F 01 48 */	lfs f0, 0x148(r31)
/* 80CEB5A8  EC 20 00 72 */	fmuls f1, f0, f1
/* 80CEB5AC  38 7E 09 30 */	addi r3, r30, 0x930
/* 80CEB5B0  3C 80 80 3A */	lis r4, ZeroQuat@ha
/* 80CEB5B4  38 84 72 40 */	addi r4, r4, ZeroQuat@l
/* 80CEB5B8  7C 65 1B 78 */	mr r5, r3
/* 80CEB5BC  4B 65 BF 44 */	b C_QUATSlerp
lbl_80CEB5C0:
/* 80CEB5C0  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80CEB5C4  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80CEB5C8  40 82 01 08 */	bne lbl_80CEB6D0
/* 80CEB5CC  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 80CEB5D0  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 80CEB5D4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80CEB5D8  41 82 00 E0 */	beq lbl_80CEB6B8
/* 80CEB5DC  38 7E 05 74 */	addi r3, r30, 0x574
/* 80CEB5E0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80CEB5E4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80CEB5E8  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80CEB5EC  4B 38 B4 C0 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80CEB5F0  80 1E 05 A0 */	lwz r0, 0x5a0(r30)
/* 80CEB5F4  54 00 A7 FE */	rlwinm r0, r0, 0x14, 0x1f, 0x1f
/* 80CEB5F8  98 1E 09 4E */	stb r0, 0x94e(r30)
/* 80CEB5FC  88 1E 09 4E */	lbz r0, 0x94e(r30)
/* 80CEB600  28 00 00 00 */	cmplwi r0, 0
/* 80CEB604  40 82 00 30 */	bne lbl_80CEB634
/* 80CEB608  88 1E 09 06 */	lbz r0, 0x906(r30)
/* 80CEB60C  54 00 10 3A */	slwi r0, r0, 2
/* 80CEB610  38 7F 00 74 */	addi r3, r31, 0x74
/* 80CEB614  7C 03 04 2E */	lfsx f0, r3, r0
/* 80CEB618  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80CEB61C  88 1E 09 06 */	lbz r0, 0x906(r30)
/* 80CEB620  54 00 10 3A */	slwi r0, r0, 2
/* 80CEB624  38 7F 00 7C */	addi r3, r31, 0x7c
/* 80CEB628  7C 03 04 2E */	lfsx f0, r3, r0
/* 80CEB62C  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80CEB630  48 00 00 68 */	b lbl_80CEB698
lbl_80CEB634:
/* 80CEB634  88 1E 09 06 */	lbz r0, 0x906(r30)
/* 80CEB638  54 00 10 3A */	slwi r0, r0, 2
/* 80CEB63C  38 7F 00 84 */	addi r3, r31, 0x84
/* 80CEB640  7C 03 04 2E */	lfsx f0, r3, r0
/* 80CEB644  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80CEB648  88 1E 09 06 */	lbz r0, 0x906(r30)
/* 80CEB64C  54 00 10 3A */	slwi r0, r0, 2
/* 80CEB650  38 7F 00 8C */	addi r3, r31, 0x8c
/* 80CEB654  7C 03 04 2E */	lfsx f0, r3, r0
/* 80CEB658  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80CEB65C  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 80CEB660  C0 1F 01 34 */	lfs f0, 0x134(r31)
/* 80CEB664  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CEB668  40 80 00 08 */	bge lbl_80CEB670
/* 80CEB66C  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
lbl_80CEB670:
/* 80CEB670  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 80CEB674  C0 1F 01 38 */	lfs f0, 0x138(r31)
/* 80CEB678  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CEB67C  40 81 00 08 */	ble lbl_80CEB684
/* 80CEB680  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
lbl_80CEB684:
/* 80CEB684  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80CEB688  C0 1F 01 38 */	lfs f0, 0x138(r31)
/* 80CEB68C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CEB690  40 81 00 08 */	ble lbl_80CEB698
/* 80CEB694  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_80CEB698:
/* 80CEB698  88 1E 09 06 */	lbz r0, 0x906(r30)
/* 80CEB69C  54 00 10 3A */	slwi r0, r0, 2
/* 80CEB6A0  38 7F 00 48 */	addi r3, r31, 0x48
/* 80CEB6A4  7C 03 04 2E */	lfsx f0, r3, r0
/* 80CEB6A8  D0 1E 09 40 */	stfs f0, 0x940(r30)
/* 80CEB6AC  7F C3 F3 78 */	mr r3, r30
/* 80CEB6B0  4B FF FA 09 */	bl init_modeDrop__12daObjStone_cFv
/* 80CEB6B4  48 00 00 14 */	b lbl_80CEB6C8
lbl_80CEB6B8:
/* 80CEB6B8  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80CEB6BC  D0 1E 09 44 */	stfs f0, 0x944(r30)
/* 80CEB6C0  7F C3 F3 78 */	mr r3, r30
/* 80CEB6C4  4B FF F9 25 */	bl init_modeWait__12daObjStone_cFv
lbl_80CEB6C8:
/* 80CEB6C8  38 00 00 00 */	li r0, 0
/* 80CEB6CC  90 1E 05 24 */	stw r0, 0x524(r30)
lbl_80CEB6D0:
/* 80CEB6D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CEB6D4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CEB6D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CEB6DC  7C 08 03 A6 */	mtlr r0
/* 80CEB6E0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CEB6E4  4E 80 00 20 */	blr 
