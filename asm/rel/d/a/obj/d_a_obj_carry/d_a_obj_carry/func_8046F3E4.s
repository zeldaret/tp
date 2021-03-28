lbl_8046F3E4:
/* 8046F3E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046F3E8  7C 08 02 A6 */	mflr r0
/* 8046F3EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046F3F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8046F3F4  93 C1 00 08 */	stw r30, 8(r1)
/* 8046F3F8  7C 7E 1B 79 */	or. r30, r3, r3
/* 8046F3FC  3C 60 80 48 */	lis r3, l_cyl_info@ha
/* 8046F400  3B E3 99 0C */	addi r31, r3, l_cyl_info@l
/* 8046F404  41 82 00 90 */	beq lbl_8046F494
/* 8046F408  28 05 00 00 */	cmplwi r5, 0
/* 8046F40C  41 82 00 88 */	beq lbl_8046F494
/* 8046F410  34 7E 07 8C */	addic. r3, r30, 0x78c
/* 8046F414  41 82 00 80 */	beq lbl_8046F494
/* 8046F418  C0 03 00 00 */	lfs f0, 0(r3)
/* 8046F41C  FC 00 02 10 */	fabs f0, f0
/* 8046F420  FC 00 00 18 */	frsp f0, f0
/* 8046F424  C0 3F 0A 78 */	lfs f1, 0xa78(r31)
/* 8046F428  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8046F42C  40 81 00 68 */	ble lbl_8046F494
/* 8046F430  C0 03 00 08 */	lfs f0, 8(r3)
/* 8046F434  FC 00 02 10 */	fabs f0, f0
/* 8046F438  FC 00 00 18 */	frsp f0, f0
/* 8046F43C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8046F440  40 81 00 54 */	ble lbl_8046F494
/* 8046F444  C0 3F 0A 80 */	lfs f1, 0xa80(r31)
/* 8046F448  4B DF 85 0C */	b cM_rndF__Ff
/* 8046F44C  C0 1F 0A 7C */	lfs f0, 0xa7c(r31)
/* 8046F450  EC 00 08 2A */	fadds f0, f0, f1
/* 8046F454  D0 1E 0D 5C */	stfs f0, 0xd5c(r30)
/* 8046F458  C0 3F 0A 88 */	lfs f1, 0xa88(r31)
/* 8046F45C  4B DF 84 F8 */	b cM_rndF__Ff
/* 8046F460  C0 1F 0A 84 */	lfs f0, 0xa84(r31)
/* 8046F464  EC 00 08 2A */	fadds f0, f0, f1
/* 8046F468  D0 1E 0D 60 */	stfs f0, 0xd60(r30)
/* 8046F46C  88 1E 0D B0 */	lbz r0, 0xdb0(r30)
/* 8046F470  28 00 00 00 */	cmplwi r0, 0
/* 8046F474  41 82 00 20 */	beq lbl_8046F494
/* 8046F478  C0 1E 0D 5C */	lfs f0, 0xd5c(r30)
/* 8046F47C  C0 3F 0A 78 */	lfs f1, 0xa78(r31)
/* 8046F480  EC 00 00 72 */	fmuls f0, f0, f1
/* 8046F484  D0 1E 0D 5C */	stfs f0, 0xd5c(r30)
/* 8046F488  C0 1E 0D 60 */	lfs f0, 0xd60(r30)
/* 8046F48C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8046F490  D0 1E 0D 60 */	stfs f0, 0xd60(r30)
lbl_8046F494:
/* 8046F494  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8046F498  83 C1 00 08 */	lwz r30, 8(r1)
/* 8046F49C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046F4A0  7C 08 03 A6 */	mtlr r0
/* 8046F4A4  38 21 00 10 */	addi r1, r1, 0x10
/* 8046F4A8  4E 80 00 20 */	blr 
