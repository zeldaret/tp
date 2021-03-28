lbl_806ABE3C:
/* 806ABE3C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 806ABE40  7C 08 02 A6 */	mflr r0
/* 806ABE44  90 01 00 74 */	stw r0, 0x74(r1)
/* 806ABE48  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 806ABE4C  93 C1 00 68 */	stw r30, 0x68(r1)
/* 806ABE50  7C 7E 1B 78 */	mr r30, r3
/* 806ABE54  3C 60 80 6B */	lis r3, lit_3764@ha
/* 806ABE58  3B E3 D5 38 */	addi r31, r3, lit_3764@l
/* 806ABE5C  38 7E 06 AC */	addi r3, r30, 0x6ac
/* 806ABE60  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 806ABE64  C0 5F 00 94 */	lfs f2, 0x94(r31)
/* 806ABE68  4B BC 48 D8 */	b cLib_chaseF__FPfff
/* 806ABE6C  38 7E 06 B0 */	addi r3, r30, 0x6b0
/* 806ABE70  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 806ABE74  C0 5F 00 94 */	lfs f2, 0x94(r31)
/* 806ABE78  4B BC 48 C8 */	b cLib_chaseF__FPfff
/* 806ABE7C  A8 1E 06 8C */	lha r0, 0x68c(r30)
/* 806ABE80  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 806ABE84  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 806ABE88  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 806ABE8C  7C 43 04 2E */	lfsx f2, r3, r0
/* 806ABE90  C0 3E 06 70 */	lfs f1, 0x670(r30)
/* 806ABE94  C0 1E 06 B0 */	lfs f0, 0x6b0(r30)
/* 806ABE98  EC 00 00 B2 */	fmuls f0, f0, f2
/* 806ABE9C  EC 01 00 2A */	fadds f0, f1, f0
/* 806ABEA0  D0 1E 06 70 */	stfs f0, 0x670(r30)
/* 806ABEA4  C0 3E 06 74 */	lfs f1, 0x674(r30)
/* 806ABEA8  C0 1E 06 AC */	lfs f0, 0x6ac(r30)
/* 806ABEAC  EC 01 00 2A */	fadds f0, f1, f0
/* 806ABEB0  D0 1E 06 74 */	stfs f0, 0x674(r30)
/* 806ABEB4  A8 1E 06 8C */	lha r0, 0x68c(r30)
/* 806ABEB8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 806ABEBC  7C 63 02 14 */	add r3, r3, r0
/* 806ABEC0  C0 43 00 04 */	lfs f2, 4(r3)
/* 806ABEC4  C0 3E 06 78 */	lfs f1, 0x678(r30)
/* 806ABEC8  C0 1E 06 B0 */	lfs f0, 0x6b0(r30)
/* 806ABECC  EC 00 00 B2 */	fmuls f0, f0, f2
/* 806ABED0  EC 01 00 2A */	fadds f0, f1, f0
/* 806ABED4  D0 1E 06 78 */	stfs f0, 0x678(r30)
/* 806ABED8  38 61 00 14 */	addi r3, r1, 0x14
/* 806ABEDC  4B 9C B6 A0 */	b __ct__11dBgS_GndChkFv
/* 806ABEE0  C0 1E 06 70 */	lfs f0, 0x670(r30)
/* 806ABEE4  D0 01 00 08 */	stfs f0, 8(r1)
/* 806ABEE8  C0 3E 06 74 */	lfs f1, 0x674(r30)
/* 806ABEEC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 806ABEF0  C0 1E 06 78 */	lfs f0, 0x678(r30)
/* 806ABEF4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806ABEF8  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 806ABEFC  EC 01 00 2A */	fadds f0, f1, f0
/* 806ABF00  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806ABF04  38 61 00 14 */	addi r3, r1, 0x14
/* 806ABF08  38 81 00 08 */	addi r4, r1, 8
/* 806ABF0C  4B BB BE 1C */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 806ABF10  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806ABF14  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806ABF18  38 63 0F 38 */	addi r3, r3, 0xf38
/* 806ABF1C  38 81 00 14 */	addi r4, r1, 0x14
/* 806ABF20  4B 9C 85 80 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 806ABF24  C0 5F 00 A0 */	lfs f2, 0xa0(r31)
/* 806ABF28  C0 1E 06 74 */	lfs f0, 0x674(r30)
/* 806ABF2C  EC 02 00 2A */	fadds f0, f2, f0
/* 806ABF30  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 806ABF34  40 80 00 14 */	bge lbl_806ABF48
/* 806ABF38  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 806ABF3C  D0 1E 06 AC */	stfs f0, 0x6ac(r30)
/* 806ABF40  EC 01 10 28 */	fsubs f0, f1, f2
/* 806ABF44  D0 1E 06 74 */	stfs f0, 0x674(r30)
lbl_806ABF48:
/* 806ABF48  38 61 00 14 */	addi r3, r1, 0x14
/* 806ABF4C  38 80 FF FF */	li r4, -1
/* 806ABF50  4B 9C B6 A0 */	b __dt__11dBgS_GndChkFv
/* 806ABF54  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 806ABF58  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 806ABF5C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 806ABF60  7C 08 03 A6 */	mtlr r0
/* 806ABF64  38 21 00 70 */	addi r1, r1, 0x70
/* 806ABF68  4E 80 00 20 */	blr 
