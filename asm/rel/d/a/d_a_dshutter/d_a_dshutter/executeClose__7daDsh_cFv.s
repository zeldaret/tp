lbl_80467B04:
/* 80467B04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80467B08  7C 08 02 A6 */	mflr r0
/* 80467B0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80467B10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80467B14  7C 7F 1B 78 */	mr r31, r3
/* 80467B18  A8 03 05 B8 */	lha r0, 0x5b8(r3)
/* 80467B1C  2C 00 00 00 */	cmpwi r0, 0
/* 80467B20  41 82 00 2C */	beq lbl_80467B4C
/* 80467B24  3C 60 80 46 */	lis r3, lit_3802@ha
/* 80467B28  C0 23 7F 38 */	lfs f1, lit_3802@l(r3)
/* 80467B2C  4B DF FE 60 */	b cM_rndFX__Ff
/* 80467B30  C0 5F 04 AC */	lfs f2, 0x4ac(r31)
/* 80467B34  3C 60 80 45 */	lis r3, OPEN_SIZE__7daDsh_c@ha
/* 80467B38  C0 03 1D 30 */	lfs f0, OPEN_SIZE__7daDsh_c@l(r3)
/* 80467B3C  EC 02 00 28 */	fsubs f0, f2, f0
/* 80467B40  EC 00 08 2A */	fadds f0, f0, f1
/* 80467B44  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80467B48  48 00 00 80 */	b lbl_80467BC8
lbl_80467B4C:
/* 80467B4C  38 7F 04 FC */	addi r3, r31, 0x4fc
/* 80467B50  3C 80 80 45 */	lis r4, CLOSE_SPEED__7daDsh_c@ha
/* 80467B54  C0 24 1D 48 */	lfs f1, CLOSE_SPEED__7daDsh_c@l(r4)
/* 80467B58  C0 5F 05 30 */	lfs f2, 0x530(r31)
/* 80467B5C  4B E0 8B E4 */	b cLib_chaseF__FPfff
/* 80467B60  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80467B64  C0 1F 04 FC */	lfs f0, 0x4fc(r31)
/* 80467B68  EC 01 00 2A */	fadds f0, f1, f0
/* 80467B6C  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80467B70  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80467B74  C0 3F 04 AC */	lfs f1, 0x4ac(r31)
/* 80467B78  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80467B7C  40 81 00 4C */	ble lbl_80467BC8
/* 80467B80  D0 3F 04 D4 */	stfs f1, 0x4d4(r31)
/* 80467B84  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 80467B88  3C 60 80 45 */	lis r3, CLOSE_BOUND_SPEED__7daDsh_c@ha
/* 80467B8C  C0 03 1D 4C */	lfs f0, CLOSE_BOUND_SPEED__7daDsh_c@l(r3)
/* 80467B90  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80467B94  40 81 00 24 */	ble lbl_80467BB8
/* 80467B98  3C 60 80 45 */	lis r3, CLOSE_BOUND_RATIO__7daDsh_c@ha
/* 80467B9C  C0 03 1D 50 */	lfs f0, CLOSE_BOUND_RATIO__7daDsh_c@l(r3)
/* 80467BA0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80467BA4  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80467BA8  3C 60 80 46 */	lis r3, lit_3803@ha
/* 80467BAC  C0 03 7F 3C */	lfs f0, lit_3803@l(r3)
/* 80467BB0  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80467BB4  48 00 00 14 */	b lbl_80467BC8
lbl_80467BB8:
/* 80467BB8  7F E3 FB 78 */	mr r3, r31
/* 80467BBC  3C 80 80 47 */	lis r4, l_openWaitAction@ha
/* 80467BC0  38 84 80 B0 */	addi r4, r4, l_openWaitAction@l
/* 80467BC4  4B FF FB 45 */	bl setAction__7daDsh_cFPQ27daDsh_c8action_c
lbl_80467BC8:
/* 80467BC8  38 60 00 01 */	li r3, 1
/* 80467BCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80467BD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80467BD4  7C 08 03 A6 */	mtlr r0
/* 80467BD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80467BDC  4E 80 00 20 */	blr 
