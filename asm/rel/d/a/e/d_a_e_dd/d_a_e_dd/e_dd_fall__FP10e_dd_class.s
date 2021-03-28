lbl_806A48DC:
/* 806A48DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806A48E0  7C 08 02 A6 */	mflr r0
/* 806A48E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 806A48E8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806A48EC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 806A48F0  7C 7E 1B 78 */	mr r30, r3
/* 806A48F4  3C 60 80 6A */	lis r3, lit_3903@ha
/* 806A48F8  3B E3 71 C4 */	addi r31, r3, lit_3903@l
/* 806A48FC  38 00 00 64 */	li r0, 0x64
/* 806A4900  B0 1E 06 B2 */	sth r0, 0x6b2(r30)
/* 806A4904  A8 1E 06 8C */	lha r0, 0x68c(r30)
/* 806A4908  2C 00 00 01 */	cmpwi r0, 1
/* 806A490C  41 82 01 14 */	beq lbl_806A4A20
/* 806A4910  40 80 00 10 */	bge lbl_806A4920
/* 806A4914  2C 00 00 00 */	cmpwi r0, 0
/* 806A4918  40 80 00 14 */	bge lbl_806A492C
/* 806A491C  48 00 01 04 */	b lbl_806A4A20
lbl_806A4920:
/* 806A4920  2C 00 00 03 */	cmpwi r0, 3
/* 806A4924  40 80 00 FC */	bge lbl_806A4A20
/* 806A4928  48 00 00 E4 */	b lbl_806A4A0C
lbl_806A492C:
/* 806A492C  38 7E 06 D6 */	addi r3, r30, 0x6d6
/* 806A4930  38 80 80 00 */	li r4, -32768
/* 806A4934  38 A0 00 02 */	li r5, 2
/* 806A4938  38 C0 08 00 */	li r6, 0x800
/* 806A493C  4B BC BC CC */	b cLib_addCalcAngleS2__FPssss
/* 806A4940  80 1E 07 54 */	lwz r0, 0x754(r30)
/* 806A4944  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 806A4948  41 82 00 D8 */	beq lbl_806A4A20
/* 806A494C  38 00 00 02 */	li r0, 2
/* 806A4950  B0 1E 06 8C */	sth r0, 0x68c(r30)
/* 806A4954  38 00 80 00 */	li r0, -32768
/* 806A4958  B0 1E 06 D6 */	sth r0, 0x6d6(r30)
/* 806A495C  7F C3 F3 78 */	mr r3, r30
/* 806A4960  38 80 00 0D */	li r4, 0xd
/* 806A4964  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806A4968  38 A0 00 00 */	li r5, 0
/* 806A496C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806A4970  4B FF D9 5D */	bl anm_init__FP10e_dd_classifUcf
/* 806A4974  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806A4978  D0 1E 06 E4 */	stfs f0, 0x6e4(r30)
/* 806A497C  D0 1E 06 DC */	stfs f0, 0x6dc(r30)
/* 806A4980  38 7E 0E 60 */	addi r3, r30, 0xe60
/* 806A4984  38 9E 0E 64 */	addi r4, r30, 0xe64
/* 806A4988  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 806A498C  38 C0 00 00 */	li r6, 0
/* 806A4990  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 806A4994  38 FE 01 0C */	addi r7, r30, 0x10c
/* 806A4998  39 00 00 01 */	li r8, 1
/* 806A499C  4B 97 86 84 */	b fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 806A49A0  38 00 00 32 */	li r0, 0x32
/* 806A49A4  B0 1E 06 AA */	sth r0, 0x6aa(r30)
/* 806A49A8  38 00 00 04 */	li r0, 4
/* 806A49AC  90 1E 06 7C */	stw r0, 0x67c(r30)
/* 806A49B0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806A49B4  80 7E 06 78 */	lwz r3, 0x678(r30)
/* 806A49B8  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 806A49BC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806A49C0  7C 03 07 74 */	extsb r3, r0
/* 806A49C4  4B 98 86 A8 */	b dComIfGp_getReverb__Fi
/* 806A49C8  7C 67 1B 78 */	mr r7, r3
/* 806A49CC  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002C@ha */
/* 806A49D0  38 03 00 2C */	addi r0, r3, 0x002C /* 0x0006002C@l */
/* 806A49D4  90 01 00 08 */	stw r0, 8(r1)
/* 806A49D8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 806A49DC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 806A49E0  80 63 00 00 */	lwz r3, 0(r3)
/* 806A49E4  38 81 00 08 */	addi r4, r1, 8
/* 806A49E8  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 806A49EC  38 C0 00 00 */	li r6, 0
/* 806A49F0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806A49F4  FC 40 08 90 */	fmr f2, f1
/* 806A49F8  C0 7F 00 44 */	lfs f3, 0x44(r31)
/* 806A49FC  FC 80 18 90 */	fmr f4, f3
/* 806A4A00  39 00 00 00 */	li r8, 0
/* 806A4A04  4B C0 6F 80 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 806A4A08  48 00 00 18 */	b lbl_806A4A20
lbl_806A4A0C:
/* 806A4A0C  A8 1E 06 AA */	lha r0, 0x6aa(r30)
/* 806A4A10  2C 00 00 00 */	cmpwi r0, 0
/* 806A4A14  40 82 00 0C */	bne lbl_806A4A20
/* 806A4A18  38 00 00 01 */	li r0, 1
/* 806A4A1C  98 1E 05 B6 */	stb r0, 0x5b6(r30)
lbl_806A4A20:
/* 806A4A20  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 806A4A24  C0 1E 06 DC */	lfs f0, 0x6dc(r30)
/* 806A4A28  EC 01 00 2A */	fadds f0, f1, f0
/* 806A4A2C  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 806A4A30  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 806A4A34  C0 1E 06 E4 */	lfs f0, 0x6e4(r30)
/* 806A4A38  EC 01 00 2A */	fadds f0, f1, f0
/* 806A4A3C  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 806A4A40  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806A4A44  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 806A4A48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806A4A4C  7C 08 03 A6 */	mtlr r0
/* 806A4A50  38 21 00 20 */	addi r1, r1, 0x20
/* 806A4A54  4E 80 00 20 */	blr 
