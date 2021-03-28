lbl_806561D0:
/* 806561D0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806561D4  7C 08 02 A6 */	mflr r0
/* 806561D8  90 01 00 34 */	stw r0, 0x34(r1)
/* 806561DC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 806561E0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 806561E4  7C 7E 1B 78 */	mr r30, r3
/* 806561E8  3C 80 80 65 */	lis r4, mCcDObjInfo__10daBullet_c@ha
/* 806561EC  3B E4 67 14 */	addi r31, r4, mCcDObjInfo__10daBullet_c@l
/* 806561F0  80 83 05 70 */	lwz r4, 0x570(r3)
/* 806561F4  38 04 00 24 */	addi r0, r4, 0x24
/* 806561F8  90 03 05 04 */	stw r0, 0x504(r3)
/* 806561FC  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80656200  FC 40 08 90 */	fmr f2, f1
/* 80656204  FC 60 08 90 */	fmr f3, f1
/* 80656208  C0 9F 00 5C */	lfs f4, 0x5c(r31)
/* 8065620C  FC A0 20 90 */	fmr f5, f4
/* 80656210  FC C0 20 90 */	fmr f6, f4
/* 80656214  4B 9C 43 34 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80656218  38 7E 07 88 */	addi r3, r30, 0x788
/* 8065621C  38 9F 00 30 */	addi r4, r31, 0x30
/* 80656220  C0 24 00 10 */	lfs f1, 0x10(r4)
/* 80656224  C0 44 00 0C */	lfs f2, 0xc(r4)
/* 80656228  4B A1 FD 30 */	b SetWall__12dBgS_AcchCirFff
/* 8065622C  38 1E 04 E4 */	addi r0, r30, 0x4e4
/* 80656230  90 01 00 08 */	stw r0, 8(r1)
/* 80656234  38 7E 05 74 */	addi r3, r30, 0x574
/* 80656238  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8065623C  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 80656240  7F C6 F3 78 */	mr r6, r30
/* 80656244  38 E0 00 01 */	li r7, 1
/* 80656248  39 1E 07 88 */	addi r8, r30, 0x788
/* 8065624C  39 3E 04 F8 */	addi r9, r30, 0x4f8
/* 80656250  39 5E 04 DC */	addi r10, r30, 0x4dc
/* 80656254  4B A1 FF F4 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80656258  38 7E 07 4C */	addi r3, r30, 0x74c
/* 8065625C  38 9F 00 30 */	addi r4, r31, 0x30
/* 80656260  C0 04 00 04 */	lfs f0, 4(r4)
/* 80656264  FC 00 00 1E */	fctiwz f0, f0
/* 80656268  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8065626C  80 81 00 24 */	lwz r4, 0x24(r1)
/* 80656270  38 A0 00 00 */	li r5, 0
/* 80656274  7F C6 F3 78 */	mr r6, r30
/* 80656278  4B A2 D5 E8 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 8065627C  38 7E 07 C8 */	addi r3, r30, 0x7c8
/* 80656280  3C 80 80 65 */	lis r4, mCcDSph__10daBullet_c@ha
/* 80656284  38 84 67 94 */	addi r4, r4, mCcDSph__10daBullet_c@l
/* 80656288  4B A2 E7 AC */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 8065628C  38 1E 07 4C */	addi r0, r30, 0x74c
/* 80656290  90 1E 08 0C */	stw r0, 0x80c(r30)
/* 80656294  38 7E 05 74 */	addi r3, r30, 0x574
/* 80656298  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8065629C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 806562A0  38 84 0F 38 */	addi r4, r4, 0xf38
/* 806562A4  4B A2 08 08 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 806562A8  80 1E 06 50 */	lwz r0, 0x650(r30)
/* 806562AC  90 1E 09 00 */	stw r0, 0x900(r30)
/* 806562B0  80 1E 06 54 */	lwz r0, 0x654(r30)
/* 806562B4  90 1E 09 04 */	stw r0, 0x904(r30)
/* 806562B8  80 1E 06 58 */	lwz r0, 0x658(r30)
/* 806562BC  90 1E 09 08 */	stw r0, 0x908(r30)
/* 806562C0  88 1E 06 5C */	lbz r0, 0x65c(r30)
/* 806562C4  98 1E 09 0C */	stb r0, 0x90c(r30)
/* 806562C8  A0 1E 06 64 */	lhz r0, 0x664(r30)
/* 806562CC  B0 1E 09 14 */	sth r0, 0x914(r30)
/* 806562D0  A0 1E 06 66 */	lhz r0, 0x666(r30)
/* 806562D4  B0 1E 09 16 */	sth r0, 0x916(r30)
/* 806562D8  80 1E 06 68 */	lwz r0, 0x668(r30)
/* 806562DC  90 1E 09 18 */	stw r0, 0x918(r30)
/* 806562E0  80 1E 06 6C */	lwz r0, 0x66c(r30)
/* 806562E4  90 1E 09 1C */	stw r0, 0x91c(r30)
/* 806562E8  C0 1E 06 74 */	lfs f0, 0x674(r30)
/* 806562EC  D0 1E 09 24 */	stfs f0, 0x924(r30)
/* 806562F0  C0 1E 06 78 */	lfs f0, 0x678(r30)
/* 806562F4  D0 1E 09 28 */	stfs f0, 0x928(r30)
/* 806562F8  C0 1E 06 7C */	lfs f0, 0x67c(r30)
/* 806562FC  D0 1E 09 2C */	stfs f0, 0x92c(r30)
/* 80656300  80 1E 06 80 */	lwz r0, 0x680(r30)
/* 80656304  90 1E 09 30 */	stw r0, 0x930(r30)
/* 80656308  C0 1E 06 84 */	lfs f0, 0x684(r30)
/* 8065630C  D0 1E 09 34 */	stfs f0, 0x934(r30)
/* 80656310  80 1E 06 88 */	lwz r0, 0x688(r30)
/* 80656314  90 1E 09 38 */	stw r0, 0x938(r30)
/* 80656318  C0 1E 06 0C */	lfs f0, 0x60c(r30)
/* 8065631C  D0 1E 09 40 */	stfs f0, 0x940(r30)
/* 80656320  3C 60 80 65 */	lis r3, lit_3878@ha
/* 80656324  38 83 67 D4 */	addi r4, r3, lit_3878@l
/* 80656328  80 64 00 00 */	lwz r3, 0(r4)
/* 8065632C  80 04 00 04 */	lwz r0, 4(r4)
/* 80656330  90 61 00 10 */	stw r3, 0x10(r1)
/* 80656334  90 01 00 14 */	stw r0, 0x14(r1)
/* 80656338  80 04 00 08 */	lwz r0, 8(r4)
/* 8065633C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80656340  7F C3 F3 78 */	mr r3, r30
/* 80656344  38 81 00 10 */	addi r4, r1, 0x10
/* 80656348  48 00 00 31 */	bl setProcess__10daBullet_cFM10daBullet_cFPCvPvPv_i
/* 8065634C  38 7F 00 30 */	addi r3, r31, 0x30
/* 80656350  A8 03 00 14 */	lha r0, 0x14(r3)
/* 80656354  90 1E 09 50 */	stw r0, 0x950(r30)
/* 80656358  7F C3 F3 78 */	mr r3, r30
/* 8065635C  4B FF FB B5 */	bl Execute__10daBullet_cFv
/* 80656360  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80656364  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80656368  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8065636C  7C 08 03 A6 */	mtlr r0
/* 80656370  38 21 00 30 */	addi r1, r1, 0x30
/* 80656374  4E 80 00 20 */	blr 
