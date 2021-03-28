lbl_80805BB4:
/* 80805BB4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80805BB8  7C 08 02 A6 */	mflr r0
/* 80805BBC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80805BC0  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80805BC4  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80805BC8  7C 7E 1B 78 */	mr r30, r3
/* 80805BCC  3C 80 80 80 */	lis r4, lit_3941@ha
/* 80805BD0  3B E4 7C 9C */	addi r31, r4, lit_3941@l
/* 80805BD4  A8 03 06 70 */	lha r0, 0x670(r3)
/* 80805BD8  2C 00 00 01 */	cmpwi r0, 1
/* 80805BDC  41 82 00 34 */	beq lbl_80805C10
/* 80805BE0  40 80 01 98 */	bge lbl_80805D78
/* 80805BE4  2C 00 00 00 */	cmpwi r0, 0
/* 80805BE8  40 80 00 08 */	bge lbl_80805BF0
/* 80805BEC  48 00 01 8C */	b lbl_80805D78
lbl_80805BF0:
/* 80805BF0  38 80 00 05 */	li r4, 5
/* 80805BF4  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80805BF8  38 A0 00 02 */	li r5, 2
/* 80805BFC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80805C00  4B FF ED E5 */	bl anm_init__FP10e_yk_classifUcf
/* 80805C04  38 00 00 01 */	li r0, 1
/* 80805C08  B0 1E 06 70 */	sth r0, 0x670(r30)
/* 80805C0C  48 00 01 6C */	b lbl_80805D78
lbl_80805C10:
/* 80805C10  A8 1E 06 6C */	lha r0, 0x66c(r30)
/* 80805C14  54 00 06 FF */	clrlwi. r0, r0, 0x1b
/* 80805C18  40 82 00 40 */	bne lbl_80805C58
/* 80805C1C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80805C20  4B A6 1D 34 */	b cM_rndF__Ff
/* 80805C24  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80805C28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80805C2C  40 80 00 2C */	bge lbl_80805C58
/* 80805C30  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701C8@ha */
/* 80805C34  38 03 01 C8 */	addi r0, r3, 0x01C8 /* 0x000701C8@l */
/* 80805C38  90 01 00 08 */	stw r0, 8(r1)
/* 80805C3C  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 80805C40  38 81 00 08 */	addi r4, r1, 8
/* 80805C44  38 A0 FF FF */	li r5, -1
/* 80805C48  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 80805C4C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80805C50  7D 89 03 A6 */	mtctr r12
/* 80805C54  4E 80 04 21 */	bctrl 
lbl_80805C58:
/* 80805C58  A8 1E 06 A2 */	lha r0, 0x6a2(r30)
/* 80805C5C  2C 00 00 00 */	cmpwi r0, 0
/* 80805C60  40 82 01 18 */	bne lbl_80805D78
/* 80805C64  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 80805C68  4B A6 1D 24 */	b cM_rndFX__Ff
/* 80805C6C  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 80805C70  EC 00 08 2A */	fadds f0, f0, f1
/* 80805C74  D0 1E 06 74 */	stfs f0, 0x674(r30)
/* 80805C78  C0 3F 00 88 */	lfs f1, 0x88(r31)
/* 80805C7C  4B A6 1D 10 */	b cM_rndFX__Ff
/* 80805C80  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 80805C84  EC 00 08 2A */	fadds f0, f0, f1
/* 80805C88  D0 1E 06 78 */	stfs f0, 0x678(r30)
/* 80805C8C  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 80805C90  4B A6 1C FC */	b cM_rndFX__Ff
/* 80805C94  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 80805C98  EC 00 08 2A */	fadds f0, f0, f1
/* 80805C9C  D0 1E 06 7C */	stfs f0, 0x67c(r30)
/* 80805CA0  38 61 00 0C */	addi r3, r1, 0xc
/* 80805CA4  38 9E 06 74 */	addi r4, r30, 0x674
/* 80805CA8  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80805CAC  4B A6 0E 88 */	b __mi__4cXyzCFRC3Vec
/* 80805CB0  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80805CB4  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80805CB8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80805CBC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80805CC0  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 80805CC4  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80805CC8  4B A6 19 AC */	b cM_atan2s__Fff
/* 80805CCC  7C 64 1B 78 */	mr r4, r3
/* 80805CD0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80805CD4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80805CD8  80 63 00 00 */	lwz r3, 0(r3)
/* 80805CDC  4B 80 67 00 */	b mDoMtx_YrotS__FPA4_fs
/* 80805CE0  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80805CE4  EC 20 00 32 */	fmuls f1, f0, f0
/* 80805CE8  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80805CEC  EC 00 00 32 */	fmuls f0, f0, f0
/* 80805CF0  EC 41 00 2A */	fadds f2, f1, f0
/* 80805CF4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80805CF8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80805CFC  40 81 00 0C */	ble lbl_80805D08
/* 80805D00  FC 00 10 34 */	frsqrte f0, f2
/* 80805D04  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80805D08:
/* 80805D08  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 80805D0C  4B A6 19 68 */	b cM_atan2s__Fff
/* 80805D10  7C 03 00 D0 */	neg r0, r3
/* 80805D14  7C 04 07 34 */	extsh r4, r0
/* 80805D18  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80805D1C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80805D20  80 63 00 00 */	lwz r3, 0(r3)
/* 80805D24  4B 80 66 78 */	b mDoMtx_XrotM__FPA4_fs
/* 80805D28  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80805D2C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80805D30  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80805D34  3C 60 80 80 */	lis r3, l_HIO@ha
/* 80805D38  38 63 7F 08 */	addi r3, r3, l_HIO@l
/* 80805D3C  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80805D40  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80805D44  38 61 00 18 */	addi r3, r1, 0x18
/* 80805D48  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 80805D4C  4B A6 B1 A0 */	b MtxPosition__FP4cXyzP4cXyz
/* 80805D50  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 80805D54  4B A6 1C 00 */	b cM_rndF__Ff
/* 80805D58  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80805D5C  EC 00 08 2A */	fadds f0, f0, f1
/* 80805D60  FC 00 00 1E */	fctiwz f0, f0
/* 80805D64  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80805D68  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80805D6C  B0 1E 06 A2 */	sth r0, 0x6a2(r30)
/* 80805D70  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80805D74  D0 1E 06 8C */	stfs f0, 0x68c(r30)
lbl_80805D78:
/* 80805D78  3C 60 80 80 */	lis r3, l_HIO@ha
/* 80805D7C  38 63 7F 08 */	addi r3, r3, l_HIO@l
/* 80805D80  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 80805D84  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80805D88  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80805D8C  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 80805D90  EC 60 00 72 */	fmuls f3, f0, f1
/* 80805D94  4B A6 9C A8 */	b cLib_addCalc2__FPffff
/* 80805D98  7F C3 F3 78 */	mr r3, r30
/* 80805D9C  4B FF F4 35 */	bl fly_move__FP10e_yk_class
/* 80805DA0  7F C3 F3 78 */	mr r3, r30
/* 80805DA4  C0 3E 06 88 */	lfs f1, 0x688(r30)
/* 80805DA8  38 80 00 01 */	li r4, 1
/* 80805DAC  4B FF EE DD */	bl pl_check__FP10e_yk_classfs
/* 80805DB0  2C 03 00 00 */	cmpwi r3, 0
/* 80805DB4  41 82 00 14 */	beq lbl_80805DC8
/* 80805DB8  38 00 00 01 */	li r0, 1
/* 80805DBC  B0 1E 06 6E */	sth r0, 0x66e(r30)
/* 80805DC0  38 00 00 00 */	li r0, 0
/* 80805DC4  B0 1E 06 70 */	sth r0, 0x670(r30)
lbl_80805DC8:
/* 80805DC8  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80805DCC  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80805DD0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80805DD4  7C 08 03 A6 */	mtlr r0
/* 80805DD8  38 21 00 40 */	addi r1, r1, 0x40
/* 80805DDC  4E 80 00 20 */	blr 
