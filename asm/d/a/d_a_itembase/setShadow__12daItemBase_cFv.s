lbl_80144D70:
/* 80144D70  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80144D74  7C 08 02 A6 */	mflr r0
/* 80144D78  90 01 00 34 */	stw r0, 0x34(r1)
/* 80144D7C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80144D80  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80144D84  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80144D88  7C 7F 1B 78 */	mr r31, r3
/* 80144D8C  81 83 05 68 */	lwz r12, 0x568(r3)
/* 80144D90  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80144D94  7D 89 03 A6 */	mtctr r12
/* 80144D98  4E 80 04 21 */	bctrl 
/* 80144D9C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80144DA0  C8 22 99 B8 */	lfd f1, lit_3955(r2)
/* 80144DA4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80144DA8  3C 00 43 30 */	lis r0, 0x4330
/* 80144DAC  90 01 00 08 */	stw r0, 8(r1)
/* 80144DB0  C8 01 00 08 */	lfd f0, 8(r1)
/* 80144DB4  EC 20 08 28 */	fsubs f1, f0, f1
/* 80144DB8  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80144DBC  EF E0 00 72 */	fmuls f31, f0, f1
/* 80144DC0  7F E3 FB 78 */	mr r3, r31
/* 80144DC4  38 80 00 10 */	li r4, 0x10
/* 80144DC8  81 9F 05 68 */	lwz r12, 0x568(r31)
/* 80144DCC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80144DD0  7D 89 03 A6 */	mtctr r12
/* 80144DD4  4E 80 04 21 */	bctrl 
/* 80144DD8  2C 03 00 00 */	cmpwi r3, 0
/* 80144DDC  40 82 00 68 */	bne lbl_80144E44
/* 80144DE0  7F E3 FB 78 */	mr r3, r31
/* 80144DE4  81 9F 05 68 */	lwz r12, 0x568(r31)
/* 80144DE8  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80144DEC  7D 89 03 A6 */	mtctr r12
/* 80144DF0  4E 80 04 21 */	bctrl 
/* 80144DF4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80144DF8  C8 22 99 B8 */	lfd f1, lit_3955(r2)
/* 80144DFC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80144E00  3C 00 43 30 */	lis r0, 0x4330
/* 80144E04  90 01 00 08 */	stw r0, 8(r1)
/* 80144E08  C8 01 00 08 */	lfd f0, 8(r1)
/* 80144E0C  EC 20 08 28 */	fsubs f1, f0, f1
/* 80144E10  C0 02 99 AC */	lfs f0, lit_3952(r2)
/* 80144E14  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80144E18  41 82 00 A8 */	beq lbl_80144EC0
/* 80144E1C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80144E20  C0 3F 06 24 */	lfs f1, 0x624(r31)
/* 80144E24  FC 40 F8 90 */	fmr f2, f31
/* 80144E28  38 9F 06 7C */	addi r4, r31, 0x67c
/* 80144E2C  38 A0 00 00 */	li r5, 0
/* 80144E30  C0 62 99 A8 */	lfs f3, lit_3881(r2)
/* 80144E34  3C C0 80 42 */	lis r6, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 80144E38  38 C6 48 D0 */	addi r6, r6, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 80144E3C  4B EE 82 79 */	bl dComIfGd_setSimpleShadow__FP4cXyzffR13cBgS_PolyInfosfP9_GXTexObj
/* 80144E40  48 00 00 80 */	b lbl_80144EC0
lbl_80144E44:
/* 80144E44  7F E3 FB 78 */	mr r3, r31
/* 80144E48  81 9F 05 68 */	lwz r12, 0x568(r31)
/* 80144E4C  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80144E50  7D 89 03 A6 */	mtctr r12
/* 80144E54  4E 80 04 21 */	bctrl 
/* 80144E58  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80144E5C  C8 22 99 B8 */	lfd f1, lit_3955(r2)
/* 80144E60  90 01 00 0C */	stw r0, 0xc(r1)
/* 80144E64  3C 00 43 30 */	lis r0, 0x4330
/* 80144E68  90 01 00 08 */	stw r0, 8(r1)
/* 80144E6C  C8 01 00 08 */	lfd f0, 8(r1)
/* 80144E70  EC 20 08 28 */	fsubs f1, f0, f1
/* 80144E74  C0 02 99 AC */	lfs f0, lit_3952(r2)
/* 80144E78  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80144E7C  40 82 00 08 */	bne lbl_80144E84
/* 80144E80  C0 22 99 B0 */	lfs f1, lit_3953(r2)
lbl_80144E84:
/* 80144E84  80 7F 09 1C */	lwz r3, 0x91c(r31)
/* 80144E88  38 80 00 03 */	li r4, 3
/* 80144E8C  80 BF 05 74 */	lwz r5, 0x574(r31)
/* 80144E90  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 80144E94  C0 42 99 AC */	lfs f2, lit_3952(r2)
/* 80144E98  C0 7F 04 D4 */	lfs f3, 0x4d4(r31)
/* 80144E9C  C0 9F 06 24 */	lfs f4, 0x624(r31)
/* 80144EA0  38 FF 06 7C */	addi r7, r31, 0x67c
/* 80144EA4  39 1F 01 0C */	addi r8, r31, 0x10c
/* 80144EA8  39 20 00 00 */	li r9, 0
/* 80144EAC  C0 A2 99 A8 */	lfs f5, lit_3881(r2)
/* 80144EB0  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 80144EB4  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 80144EB8  4B EE 9A 59 */	bl dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 80144EBC  90 7F 09 1C */	stw r3, 0x91c(r31)
lbl_80144EC0:
/* 80144EC0  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80144EC4  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80144EC8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80144ECC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80144ED0  7C 08 03 A6 */	mtlr r0
/* 80144ED4  38 21 00 30 */	addi r1, r1, 0x30
/* 80144ED8  4E 80 00 20 */	blr 
