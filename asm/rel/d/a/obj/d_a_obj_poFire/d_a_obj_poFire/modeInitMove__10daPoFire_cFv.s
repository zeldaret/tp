lbl_80CB30FC:
/* 80CB30FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB3100  7C 08 02 A6 */	mflr r0
/* 80CB3104  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB3108  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB310C  93 C1 00 08 */	stw r30, 8(r1)
/* 80CB3110  7C 7E 1B 78 */	mr r30, r3
/* 80CB3114  3C 60 80 CB */	lis r3, lit_3662@ha /* 0x80CB3EEC@ha */
/* 80CB3118  3B E3 3E EC */	addi r31, r3, lit_3662@l /* 0x80CB3EEC@l */
/* 80CB311C  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 80CB3120  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80CB3124  C0 1E 05 D0 */	lfs f0, 0x5d0(r30)
/* 80CB3128  EC 21 00 2A */	fadds f1, f1, f0
/* 80CB312C  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80CB3130  C0 7F 00 30 */	lfs f3, 0x30(r31)
/* 80CB3134  FC 80 10 90 */	fmr f4, f2
/* 80CB3138  4B 5B C8 45 */	bl cLib_addCalc__FPfffff
/* 80CB313C  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80CB3140  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80CB3144  40 82 00 A0 */	bne lbl_80CB31E4
/* 80CB3148  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80CB314C  D0 1E 05 D4 */	stfs f0, 0x5d4(r30)
/* 80CB3150  3C 60 80 CB */	lis r3, searchCandle__10daPoFire_cFPvPv@ha /* 0x80CB2F68@ha */
/* 80CB3154  38 63 2F 68 */	addi r3, r3, searchCandle__10daPoFire_cFPvPv@l /* 0x80CB2F68@l */
/* 80CB3158  7F C4 F3 78 */	mr r4, r30
/* 80CB315C  4B 36 66 9D */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80CB3160  90 7E 05 C8 */	stw r3, 0x5c8(r30)
/* 80CB3164  3C 60 80 CB */	lis r3, searchFireTag__10daPoFire_cFPvPv@ha /* 0x80CB2FD4@ha */
/* 80CB3168  38 63 2F D4 */	addi r3, r3, searchFireTag__10daPoFire_cFPvPv@l /* 0x80CB2FD4@l */
/* 80CB316C  7F C4 F3 78 */	mr r4, r30
/* 80CB3170  4B 36 66 89 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80CB3174  90 7E 05 CC */	stw r3, 0x5cc(r30)
/* 80CB3178  80 7E 05 C8 */	lwz r3, 0x5c8(r30)
/* 80CB317C  28 03 00 00 */	cmplwi r3, 0
/* 80CB3180  40 82 00 1C */	bne lbl_80CB319C
/* 80CB3184  80 1E 05 CC */	lwz r0, 0x5cc(r30)
/* 80CB3188  28 00 00 00 */	cmplwi r0, 0
/* 80CB318C  40 82 00 10 */	bne lbl_80CB319C
/* 80CB3190  7F C3 F3 78 */	mr r3, r30
/* 80CB3194  48 00 03 AD */	bl init_modeMoveOut__10daPoFire_cFv
/* 80CB3198  48 00 00 4C */	b lbl_80CB31E4
lbl_80CB319C:
/* 80CB319C  80 1E 05 CC */	lwz r0, 0x5cc(r30)
/* 80CB31A0  28 00 00 00 */	cmplwi r0, 0
/* 80CB31A4  41 82 00 10 */	beq lbl_80CB31B4
/* 80CB31A8  7F C3 F3 78 */	mr r3, r30
/* 80CB31AC  48 00 03 95 */	bl init_modeMoveOut__10daPoFire_cFv
/* 80CB31B0  48 00 00 34 */	b lbl_80CB31E4
lbl_80CB31B4:
/* 80CB31B4  28 03 00 00 */	cmplwi r3, 0
/* 80CB31B8  41 82 00 2C */	beq lbl_80CB31E4
/* 80CB31BC  A8 BE 05 90 */	lha r5, 0x590(r30)
/* 80CB31C0  2C 05 FF FF */	cmpwi r5, -1
/* 80CB31C4  41 82 00 18 */	beq lbl_80CB31DC
/* 80CB31C8  38 7E 05 70 */	addi r3, r30, 0x570
/* 80CB31CC  38 80 00 FF */	li r4, 0xff
/* 80CB31D0  38 C0 00 01 */	li r6, 1
/* 80CB31D4  4B 39 57 6D */	bl orderEvent__17dEvLib_callback_cFiii
/* 80CB31D8  48 00 00 0C */	b lbl_80CB31E4
lbl_80CB31DC:
/* 80CB31DC  7F C3 F3 78 */	mr r3, r30
/* 80CB31E0  48 00 05 35 */	bl init_modeMove__10daPoFire_cFv
lbl_80CB31E4:
/* 80CB31E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB31E8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CB31EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB31F0  7C 08 03 A6 */	mtlr r0
/* 80CB31F4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB31F8  4E 80 00 20 */	blr 
