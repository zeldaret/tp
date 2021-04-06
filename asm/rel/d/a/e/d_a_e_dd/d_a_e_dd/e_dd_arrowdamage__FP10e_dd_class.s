lbl_806A4B60:
/* 806A4B60  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806A4B64  7C 08 02 A6 */	mflr r0
/* 806A4B68  90 01 00 44 */	stw r0, 0x44(r1)
/* 806A4B6C  39 61 00 40 */	addi r11, r1, 0x40
/* 806A4B70  4B CB D6 6D */	bl _savegpr_29
/* 806A4B74  7C 7E 1B 78 */	mr r30, r3
/* 806A4B78  3C 60 80 6A */	lis r3, lit_3903@ha /* 0x806A71C4@ha */
/* 806A4B7C  3B E3 71 C4 */	addi r31, r3, lit_3903@l /* 0x806A71C4@l */
/* 806A4B80  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 806A4B84  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 806A4B88  FC 00 00 1E */	fctiwz f0, f0
/* 806A4B8C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 806A4B90  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 806A4B94  38 7E 05 2C */	addi r3, r30, 0x52c
/* 806A4B98  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806A4B9C  C0 5F 00 64 */	lfs f2, 0x64(r31)
/* 806A4BA0  4B BC AE E1 */	bl cLib_addCalc0__FPfff
/* 806A4BA4  38 00 00 05 */	li r0, 5
/* 806A4BA8  B0 1E 06 B2 */	sth r0, 0x6b2(r30)
/* 806A4BAC  A8 1E 06 8C */	lha r0, 0x68c(r30)
/* 806A4BB0  2C 00 00 01 */	cmpwi r0, 1
/* 806A4BB4  41 82 00 6C */	beq lbl_806A4C20
/* 806A4BB8  40 80 00 10 */	bge lbl_806A4BC8
/* 806A4BBC  2C 00 00 00 */	cmpwi r0, 0
/* 806A4BC0  40 80 00 14 */	bge lbl_806A4BD4
/* 806A4BC4  48 00 01 BC */	b lbl_806A4D80
lbl_806A4BC8:
/* 806A4BC8  2C 00 00 03 */	cmpwi r0, 3
/* 806A4BCC  40 80 01 B4 */	bge lbl_806A4D80
/* 806A4BD0  48 00 01 9C */	b lbl_806A4D6C
lbl_806A4BD4:
/* 806A4BD4  7F C3 F3 78 */	mr r3, r30
/* 806A4BD8  38 80 00 08 */	li r4, 8
/* 806A4BDC  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 806A4BE0  38 A0 00 00 */	li r5, 0
/* 806A4BE4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806A4BE8  4B FF D6 E5 */	bl anm_init__FP10e_dd_classifUcf
/* 806A4BEC  38 00 00 01 */	li r0, 1
/* 806A4BF0  B0 1E 06 8C */	sth r0, 0x68c(r30)
/* 806A4BF4  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007026E@ha */
/* 806A4BF8  38 03 02 6E */	addi r0, r3, 0x026E /* 0x0007026E@l */
/* 806A4BFC  90 01 00 0C */	stw r0, 0xc(r1)
/* 806A4C00  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 806A4C04  38 81 00 0C */	addi r4, r1, 0xc
/* 806A4C08  38 A0 FF FF */	li r5, -1
/* 806A4C0C  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 806A4C10  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806A4C14  7D 89 03 A6 */	mtctr r12
/* 806A4C18  4E 80 04 21 */	bctrl 
/* 806A4C1C  48 00 01 64 */	b lbl_806A4D80
lbl_806A4C20:
/* 806A4C20  2C 1D 00 5B */	cmpwi r29, 0x5b
/* 806A4C24  40 82 00 50 */	bne lbl_806A4C74
/* 806A4C28  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806A4C2C  7C 03 07 74 */	extsb r3, r0
/* 806A4C30  4B 98 84 3D */	bl dComIfGp_getReverb__Fi
/* 806A4C34  7C 67 1B 78 */	mr r7, r3
/* 806A4C38  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002B@ha */
/* 806A4C3C  38 03 00 2B */	addi r0, r3, 0x002B /* 0x0006002B@l */
/* 806A4C40  90 01 00 08 */	stw r0, 8(r1)
/* 806A4C44  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 806A4C48  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 806A4C4C  80 63 00 00 */	lwz r3, 0(r3)
/* 806A4C50  38 81 00 08 */	addi r4, r1, 8
/* 806A4C54  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 806A4C58  38 C0 00 00 */	li r6, 0
/* 806A4C5C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806A4C60  FC 40 08 90 */	fmr f2, f1
/* 806A4C64  C0 7F 00 44 */	lfs f3, 0x44(r31)
/* 806A4C68  FC 80 18 90 */	fmr f4, f3
/* 806A4C6C  39 00 00 00 */	li r8, 0
/* 806A4C70  4B C0 6D 15 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_806A4C74:
/* 806A4C74  88 1E 06 D4 */	lbz r0, 0x6d4(r30)
/* 806A4C78  7C 00 07 75 */	extsb. r0, r0
/* 806A4C7C  41 82 00 98 */	beq lbl_806A4D14
/* 806A4C80  2C 1D 00 60 */	cmpwi r29, 0x60
/* 806A4C84  40 82 00 90 */	bne lbl_806A4D14
/* 806A4C88  38 00 00 0A */	li r0, 0xa
/* 806A4C8C  B0 1E 06 8A */	sth r0, 0x68a(r30)
/* 806A4C90  38 00 00 00 */	li r0, 0
/* 806A4C94  B0 1E 06 8C */	sth r0, 0x68c(r30)
/* 806A4C98  7F C3 F3 78 */	mr r3, r30
/* 806A4C9C  38 80 00 0C */	li r4, 0xc
/* 806A4CA0  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 806A4CA4  38 A0 00 00 */	li r5, 0
/* 806A4CA8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806A4CAC  4B FF D6 21 */	bl anm_init__FP10e_dd_classifUcf
/* 806A4CB0  88 1E 06 D4 */	lbz r0, 0x6d4(r30)
/* 806A4CB4  2C 00 00 05 */	cmpwi r0, 5
/* 806A4CB8  41 82 00 4C */	beq lbl_806A4D04
/* 806A4CBC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806A4CC0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806A4CC4  80 63 00 00 */	lwz r3, 0(r3)
/* 806A4CC8  A8 9E 06 D8 */	lha r4, 0x6d8(r30)
/* 806A4CCC  4B 96 77 11 */	bl mDoMtx_YrotS__FPA4_fs
/* 806A4CD0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806A4CD4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806A4CD8  80 63 00 00 */	lwz r3, 0(r3)
/* 806A4CDC  A8 9E 06 D6 */	lha r4, 0x6d6(r30)
/* 806A4CE0  4B 96 76 BD */	bl mDoMtx_XrotM__FPA4_fs
/* 806A4CE4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806A4CE8  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 806A4CEC  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 806A4CF0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806A4CF4  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 806A4CF8  38 61 00 10 */	addi r3, r1, 0x10
/* 806A4CFC  38 9E 06 DC */	addi r4, r30, 0x6dc
/* 806A4D00  4B BC C1 ED */	bl MtxPosition__FP4cXyzP4cXyz
lbl_806A4D04:
/* 806A4D04  38 00 00 00 */	li r0, 0
/* 806A4D08  98 1E 06 D4 */	stb r0, 0x6d4(r30)
/* 806A4D0C  90 1E 06 B4 */	stw r0, 0x6b4(r30)
/* 806A4D10  48 00 00 70 */	b lbl_806A4D80
lbl_806A4D14:
/* 806A4D14  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 806A4D18  38 80 00 01 */	li r4, 1
/* 806A4D1C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806A4D20  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806A4D24  40 82 00 18 */	bne lbl_806A4D3C
/* 806A4D28  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806A4D2C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806A4D30  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806A4D34  41 82 00 08 */	beq lbl_806A4D3C
/* 806A4D38  38 80 00 00 */	li r4, 0
lbl_806A4D3C:
/* 806A4D3C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806A4D40  41 82 00 40 */	beq lbl_806A4D80
/* 806A4D44  38 00 00 02 */	li r0, 2
/* 806A4D48  B0 1E 06 8C */	sth r0, 0x68c(r30)
/* 806A4D4C  38 00 00 28 */	li r0, 0x28
/* 806A4D50  B0 1E 06 AA */	sth r0, 0x6aa(r30)
/* 806A4D54  38 00 00 04 */	li r0, 4
/* 806A4D58  90 1E 06 7C */	stw r0, 0x67c(r30)
/* 806A4D5C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806A4D60  80 7E 06 78 */	lwz r3, 0x678(r30)
/* 806A4D64  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 806A4D68  48 00 00 18 */	b lbl_806A4D80
lbl_806A4D6C:
/* 806A4D6C  A8 1E 06 AA */	lha r0, 0x6aa(r30)
/* 806A4D70  2C 00 00 00 */	cmpwi r0, 0
/* 806A4D74  40 82 00 0C */	bne lbl_806A4D80
/* 806A4D78  38 00 00 01 */	li r0, 1
/* 806A4D7C  98 1E 05 B6 */	stb r0, 0x5b6(r30)
lbl_806A4D80:
/* 806A4D80  39 61 00 40 */	addi r11, r1, 0x40
/* 806A4D84  4B CB D4 A5 */	bl _restgpr_29
/* 806A4D88  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806A4D8C  7C 08 03 A6 */	mtlr r0
/* 806A4D90  38 21 00 40 */	addi r1, r1, 0x40
/* 806A4D94  4E 80 00 20 */	blr 
