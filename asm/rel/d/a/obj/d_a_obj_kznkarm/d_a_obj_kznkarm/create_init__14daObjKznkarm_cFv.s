lbl_80C505F8:
/* 80C505F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C505FC  7C 08 02 A6 */	mflr r0
/* 80C50600  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C50604  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C50608  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80C5060C  7C 7E 1B 78 */	mr r30, r3
/* 80C50610  3C 80 80 C5 */	lis r4, M_attr__14daObjKznkarm_c@ha /* 0x80C50D08@ha */
/* 80C50614  3B E4 0D 08 */	addi r31, r4, M_attr__14daObjKznkarm_c@l /* 0x80C50D08@l */
/* 80C50618  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80C5061C  C0 5F 00 6C */	lfs f2, 0x6c(r31)
/* 80C50620  FC 60 10 90 */	fmr f3, f2
/* 80C50624  C0 9F 00 70 */	lfs f4, 0x70(r31)
/* 80C50628  C0 BF 00 74 */	lfs f5, 0x74(r31)
/* 80C5062C  C0 DF 00 78 */	lfs f6, 0x78(r31)
/* 80C50630  4B 3C 9F 19 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80C50634  88 1E 04 9A */	lbz r0, 0x49a(r30)
/* 80C50638  60 00 00 30 */	ori r0, r0, 0x30
/* 80C5063C  98 1E 04 9A */	stb r0, 0x49a(r30)
/* 80C50640  38 00 00 0D */	li r0, 0xd
/* 80C50644  98 1E 05 48 */	stb r0, 0x548(r30)
/* 80C50648  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80C5064C  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 80C50650  38 7F 00 00 */	addi r3, r31, 0
/* 80C50654  C0 03 00 04 */	lfs f0, 4(r3)
/* 80C50658  D0 1E 05 34 */	stfs f0, 0x534(r30)
/* 80C5065C  7F C3 F3 78 */	mr r3, r30
/* 80C50660  38 80 00 00 */	li r4, 0
/* 80C50664  4B FF F1 F5 */	bl setAction__14daObjKznkarm_cFQ214daObjKznkarm_c6Mode_e
/* 80C50668  7F C3 F3 78 */	mr r3, r30
/* 80C5066C  48 00 00 71 */	bl initBaseMtx__14daObjKznkarm_cFv
/* 80C50670  38 7E 05 74 */	addi r3, r30, 0x574
/* 80C50674  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 80C50678  C0 5F 00 7C */	lfs f2, 0x7c(r31)
/* 80C5067C  4B 42 58 DD */	bl SetWall__12dBgS_AcchCirFff
/* 80C50680  38 1E 04 E4 */	addi r0, r30, 0x4e4
/* 80C50684  90 01 00 08 */	stw r0, 8(r1)
/* 80C50688  38 7E 05 B4 */	addi r3, r30, 0x5b4
/* 80C5068C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80C50690  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 80C50694  7F C6 F3 78 */	mr r6, r30
/* 80C50698  38 E0 00 01 */	li r7, 1
/* 80C5069C  39 1E 05 74 */	addi r8, r30, 0x574
/* 80C506A0  39 3E 04 F8 */	addi r9, r30, 0x4f8
/* 80C506A4  39 5E 04 DC */	addi r10, r30, 0x4dc
/* 80C506A8  4B 42 5B A1 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80C506AC  80 1E 05 E0 */	lwz r0, 0x5e0(r30)
/* 80C506B0  60 00 00 08 */	ori r0, r0, 8
/* 80C506B4  90 1E 05 E0 */	stw r0, 0x5e0(r30)
/* 80C506B8  80 1E 05 E0 */	lwz r0, 0x5e0(r30)
/* 80C506BC  60 00 80 00 */	ori r0, r0, 0x8000
/* 80C506C0  90 1E 05 E0 */	stw r0, 0x5e0(r30)
/* 80C506C4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C506C8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80C506CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C506D0  7C 08 03 A6 */	mtlr r0
/* 80C506D4  38 21 00 20 */	addi r1, r1, 0x20
/* 80C506D8  4E 80 00 20 */	blr 
