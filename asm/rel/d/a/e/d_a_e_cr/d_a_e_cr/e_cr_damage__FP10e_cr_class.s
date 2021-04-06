lbl_80698B80:
/* 80698B80  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80698B84  7C 08 02 A6 */	mflr r0
/* 80698B88  90 01 00 24 */	stw r0, 0x24(r1)
/* 80698B8C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80698B90  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80698B94  7C 7F 1B 78 */	mr r31, r3
/* 80698B98  3C 80 80 6A */	lis r4, lit_3788@ha /* 0x80699CB0@ha */
/* 80698B9C  3B C4 9C B0 */	addi r30, r4, lit_3788@l /* 0x80699CB0@l */
/* 80698BA0  38 00 00 06 */	li r0, 6
/* 80698BA4  B0 03 06 8C */	sth r0, 0x68c(r3)
/* 80698BA8  A8 03 06 68 */	lha r0, 0x668(r3)
/* 80698BAC  2C 00 00 01 */	cmpwi r0, 1
/* 80698BB0  41 82 00 74 */	beq lbl_80698C24
/* 80698BB4  40 80 00 10 */	bge lbl_80698BC4
/* 80698BB8  2C 00 00 00 */	cmpwi r0, 0
/* 80698BBC  40 80 00 14 */	bge lbl_80698BD0
/* 80698BC0  48 00 01 84 */	b lbl_80698D44
lbl_80698BC4:
/* 80698BC4  2C 00 00 03 */	cmpwi r0, 3
/* 80698BC8  40 80 01 7C */	bge lbl_80698D44
/* 80698BCC  48 00 00 F8 */	b lbl_80698CC4
lbl_80698BD0:
/* 80698BD0  38 80 00 06 */	li r4, 6
/* 80698BD4  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 80698BD8  38 A0 00 02 */	li r5, 2
/* 80698BDC  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80698BE0  4B FF F4 65 */	bl anm_init__FP10e_cr_classifUcf
/* 80698BE4  38 00 00 01 */	li r0, 1
/* 80698BE8  B0 1F 06 68 */	sth r0, 0x668(r31)
/* 80698BEC  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 80698BF0  4B BC ED 65 */	bl cM_rndF__Ff
/* 80698BF4  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 80698BF8  EC 00 08 2A */	fadds f0, f0, f1
/* 80698BFC  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80698C00  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 80698C04  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80698C08  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 80698C0C  4B BC ED 81 */	bl cM_rndFX__Ff
/* 80698C10  FC 00 08 1E */	fctiwz f0, f1
/* 80698C14  D8 01 00 08 */	stfd f0, 8(r1)
/* 80698C18  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80698C1C  B0 1F 06 8E */	sth r0, 0x68e(r31)
/* 80698C20  48 00 01 24 */	b lbl_80698D44
lbl_80698C24:
/* 80698C24  80 1F 07 04 */	lwz r0, 0x704(r31)
/* 80698C28  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80698C2C  41 82 01 18 */	beq lbl_80698D44
/* 80698C30  C0 1E 00 88 */	lfs f0, 0x88(r30)
/* 80698C34  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80698C38  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 80698C3C  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 80698C40  EC 01 00 32 */	fmuls f0, f1, f0
/* 80698C44  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80698C48  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80698C4C  4B BC ED 09 */	bl cM_rndF__Ff
/* 80698C50  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 80698C54  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80698C58  40 80 00 20 */	bge lbl_80698C78
/* 80698C5C  7F E3 FB 78 */	mr r3, r31
/* 80698C60  38 80 00 07 */	li r4, 7
/* 80698C64  C0 3E 00 68 */	lfs f1, 0x68(r30)
/* 80698C68  38 A0 00 00 */	li r5, 0
/* 80698C6C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80698C70  4B FF F3 D5 */	bl anm_init__FP10e_cr_classifUcf
/* 80698C74  48 00 00 1C */	b lbl_80698C90
lbl_80698C78:
/* 80698C78  7F E3 FB 78 */	mr r3, r31
/* 80698C7C  38 80 00 08 */	li r4, 8
/* 80698C80  C0 3E 00 68 */	lfs f1, 0x68(r30)
/* 80698C84  38 A0 00 00 */	li r5, 0
/* 80698C88  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80698C8C  4B FF F3 B9 */	bl anm_init__FP10e_cr_classifUcf
lbl_80698C90:
/* 80698C90  38 00 00 02 */	li r0, 2
/* 80698C94  B0 1F 06 68 */	sth r0, 0x668(r31)
/* 80698C98  38 00 00 28 */	li r0, 0x28
/* 80698C9C  B0 1F 06 84 */	sth r0, 0x684(r31)
/* 80698CA0  38 7F 0A 48 */	addi r3, r31, 0xa48
/* 80698CA4  38 9F 0A 4C */	addi r4, r31, 0xa4c
/* 80698CA8  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80698CAC  38 DF 04 E4 */	addi r6, r31, 0x4e4
/* 80698CB0  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80698CB4  38 FF 01 0C */	addi r7, r31, 0x10c
/* 80698CB8  39 00 00 00 */	li r8, 0
/* 80698CBC  4B 98 43 65 */	bl fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 80698CC0  48 00 00 84 */	b lbl_80698D44
lbl_80698CC4:
/* 80698CC4  80 1F 07 04 */	lwz r0, 0x704(r31)
/* 80698CC8  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80698CCC  41 82 00 78 */	beq lbl_80698D44
/* 80698CD0  38 7F 05 2C */	addi r3, r31, 0x52c
/* 80698CD4  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80698CD8  C0 5E 00 58 */	lfs f2, 0x58(r30)
/* 80698CDC  4B BD 6D A5 */	bl cLib_addCalc0__FPfff
/* 80698CE0  38 7F 06 8E */	addi r3, r31, 0x68e
/* 80698CE4  38 80 00 00 */	li r4, 0
/* 80698CE8  38 A0 00 01 */	li r5, 1
/* 80698CEC  38 C0 00 64 */	li r6, 0x64
/* 80698CF0  4B BD 79 19 */	bl cLib_addCalcAngleS2__FPssss
/* 80698CF4  A8 1F 06 84 */	lha r0, 0x684(r31)
/* 80698CF8  2C 00 00 00 */	cmpwi r0, 0
/* 80698CFC  40 82 00 48 */	bne lbl_80698D44
/* 80698D00  7F E3 FB 78 */	mr r3, r31
/* 80698D04  38 9F 05 38 */	addi r4, r31, 0x538
/* 80698D08  38 A0 00 06 */	li r5, 6
/* 80698D0C  38 C0 00 00 */	li r6, 0
/* 80698D10  38 E0 00 FF */	li r7, 0xff
/* 80698D14  4B 98 3D C5 */	bl fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
/* 80698D18  38 60 01 01 */	li r3, 0x101
/* 80698D1C  38 80 FF 01 */	li r4, -255
/* 80698D20  38 BF 05 38 */	addi r5, r31, 0x538
/* 80698D24  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80698D28  7C 06 07 74 */	extsb r6, r0
/* 80698D2C  38 E0 00 00 */	li r7, 0
/* 80698D30  39 00 00 00 */	li r8, 0
/* 80698D34  39 20 FF FF */	li r9, -1
/* 80698D38  4B 98 10 61 */	bl fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 80698D3C  7F E3 FB 78 */	mr r3, r31
/* 80698D40  4B 98 0F 3D */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_80698D44:
/* 80698D44  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 80698D48  A8 1F 06 8E */	lha r0, 0x68e(r31)
/* 80698D4C  7C 03 02 14 */	add r0, r3, r0
/* 80698D50  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80698D54  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80698D58  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80698D5C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80698D60  7C 08 03 A6 */	mtlr r0
/* 80698D64  38 21 00 20 */	addi r1, r1, 0x20
/* 80698D68  4E 80 00 20 */	blr 
