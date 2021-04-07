lbl_806F8B50:
/* 806F8B50  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806F8B54  7C 08 02 A6 */	mflr r0
/* 806F8B58  90 01 00 24 */	stw r0, 0x24(r1)
/* 806F8B5C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806F8B60  93 C1 00 18 */	stw r30, 0x18(r1)
/* 806F8B64  7C 7E 1B 78 */	mr r30, r3
/* 806F8B68  3C 60 80 70 */	lis r3, lit_3788@ha /* 0x806FA3A4@ha */
/* 806F8B6C  3B E3 A3 A4 */	addi r31, r3, lit_3788@l /* 0x806FA3A4@l */
/* 806F8B70  A8 1E 06 78 */	lha r0, 0x678(r30)
/* 806F8B74  2C 00 00 01 */	cmpwi r0, 1
/* 806F8B78  41 82 00 A4 */	beq lbl_806F8C1C
/* 806F8B7C  40 80 00 FC */	bge lbl_806F8C78
/* 806F8B80  2C 00 00 00 */	cmpwi r0, 0
/* 806F8B84  40 80 00 08 */	bge lbl_806F8B8C
/* 806F8B88  48 00 00 F0 */	b lbl_806F8C78
lbl_806F8B8C:
/* 806F8B8C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806F8B90  4B B6 ED C5 */	bl cM_rndF__Ff
/* 806F8B94  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 806F8B98  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806F8B9C  40 80 00 20 */	bge lbl_806F8BBC
/* 806F8BA0  7F C3 F3 78 */	mr r3, r30
/* 806F8BA4  38 80 00 07 */	li r4, 7
/* 806F8BA8  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 806F8BAC  38 A0 00 00 */	li r5, 0
/* 806F8BB0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806F8BB4  4B FF F3 71 */	bl anm_init__FP10e_kg_classifUcf
/* 806F8BB8  48 00 00 1C */	b lbl_806F8BD4
lbl_806F8BBC:
/* 806F8BBC  7F C3 F3 78 */	mr r3, r30
/* 806F8BC0  38 80 00 08 */	li r4, 8
/* 806F8BC4  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 806F8BC8  38 A0 00 00 */	li r5, 0
/* 806F8BCC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806F8BD0  4B FF F3 55 */	bl anm_init__FP10e_kg_classifUcf
lbl_806F8BD4:
/* 806F8BD4  38 00 00 01 */	li r0, 1
/* 806F8BD8  B0 1E 06 78 */	sth r0, 0x678(r30)
/* 806F8BDC  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 806F8BE0  4B B6 ED AD */	bl cM_rndFX__Ff
/* 806F8BE4  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 806F8BE8  EC 00 08 2A */	fadds f0, f0, f1
/* 806F8BEC  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 806F8BF0  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007044B@ha */
/* 806F8BF4  38 03 04 4B */	addi r0, r3, 0x044B /* 0x0007044B@l */
/* 806F8BF8  90 01 00 08 */	stw r0, 8(r1)
/* 806F8BFC  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 806F8C00  38 81 00 08 */	addi r4, r1, 8
/* 806F8C04  38 A0 FF FF */	li r5, -1
/* 806F8C08  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 806F8C0C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806F8C10  7D 89 03 A6 */	mtctr r12
/* 806F8C14  4E 80 04 21 */	bctrl 
/* 806F8C18  48 00 00 60 */	b lbl_806F8C78
lbl_806F8C1C:
/* 806F8C1C  38 7E 05 2C */	addi r3, r30, 0x52c
/* 806F8C20  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806F8C24  C0 5F 00 84 */	lfs f2, 0x84(r31)
/* 806F8C28  4B B7 6E 59 */	bl cLib_addCalc0__FPfff
/* 806F8C2C  80 1E 07 10 */	lwz r0, 0x710(r30)
/* 806F8C30  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 806F8C34  41 82 00 14 */	beq lbl_806F8C48
/* 806F8C38  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 806F8C3C  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 806F8C40  EC 01 00 32 */	fmuls f0, f1, f0
/* 806F8C44  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_806F8C48:
/* 806F8C48  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 806F8C4C  FC 00 02 10 */	fabs f0, f0
/* 806F8C50  FC 20 00 18 */	frsp f1, f0
/* 806F8C54  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 806F8C58  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806F8C5C  40 80 00 1C */	bge lbl_806F8C78
/* 806F8C60  38 00 00 01 */	li r0, 1
/* 806F8C64  B0 1E 06 76 */	sth r0, 0x676(r30)
/* 806F8C68  38 00 00 00 */	li r0, 0
/* 806F8C6C  B0 1E 06 78 */	sth r0, 0x678(r30)
/* 806F8C70  38 00 00 0B */	li r0, 0xb
/* 806F8C74  B0 1E 06 6C */	sth r0, 0x66c(r30)
lbl_806F8C78:
/* 806F8C78  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806F8C7C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 806F8C80  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806F8C84  7C 08 03 A6 */	mtlr r0
/* 806F8C88  38 21 00 20 */	addi r1, r1, 0x20
/* 806F8C8C  4E 80 00 20 */	blr 
