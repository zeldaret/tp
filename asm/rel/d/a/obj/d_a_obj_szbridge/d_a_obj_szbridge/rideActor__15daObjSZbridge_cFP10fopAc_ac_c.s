lbl_80D04360:
/* 80D04360  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D04364  7C 08 02 A6 */	mflr r0
/* 80D04368  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D0436C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D04370  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80D04374  7C 7E 1B 78 */	mr r30, r3
/* 80D04378  3C 60 80 D0 */	lis r3, l_cull_box@ha
/* 80D0437C  3B E3 4C 38 */	addi r31, r3, l_cull_box@l
/* 80D04380  C0 04 04 D0 */	lfs f0, 0x4d0(r4)
/* 80D04384  D0 01 00 08 */	stfs f0, 8(r1)
/* 80D04388  C0 04 04 D4 */	lfs f0, 0x4d4(r4)
/* 80D0438C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80D04390  C0 04 04 D8 */	lfs f0, 0x4d8(r4)
/* 80D04394  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80D04398  C0 1E 06 0C */	lfs f0, 0x60c(r30)
/* 80D0439C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80D043A0  38 64 04 F8 */	addi r3, r4, 0x4f8
/* 80D043A4  4B 64 2D 94 */	b PSVECSquareMag
/* 80D043A8  FC 00 0A 10 */	fabs f0, f1
/* 80D043AC  FC 20 00 18 */	frsp f1, f0
/* 80D043B0  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha
/* 80D043B4  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)
/* 80D043B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D043BC  41 80 00 18 */	blt lbl_80D043D4
/* 80D043C0  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80D043C4  4B 56 35 90 */	b cM_rndF__Ff
/* 80D043C8  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80D043CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D043D0  41 80 00 10 */	blt lbl_80D043E0
lbl_80D043D4:
/* 80D043D4  80 1E 06 20 */	lwz r0, 0x620(r30)
/* 80D043D8  2C 00 00 00 */	cmpwi r0, 0
/* 80D043DC  40 82 00 28 */	bne lbl_80D04404
lbl_80D043E0:
/* 80D043E0  38 7E 06 18 */	addi r3, r30, 0x618
/* 80D043E4  38 81 00 08 */	addi r4, r1, 8
/* 80D043E8  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80D043EC  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 80D043F0  4B 31 8D 1C */	b fopAcM_effHamonSet__FPUlPC4cXyzff
/* 80D043F4  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 80D043F8  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80D043FC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80D04400  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
lbl_80D04404:
/* 80D04404  38 00 00 0A */	li r0, 0xa
/* 80D04408  90 1E 06 20 */	stw r0, 0x620(r30)
/* 80D0440C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D04410  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80D04414  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D04418  7C 08 03 A6 */	mtlr r0
/* 80D0441C  38 21 00 20 */	addi r1, r1, 0x20
/* 80D04420  4E 80 00 20 */	blr 
