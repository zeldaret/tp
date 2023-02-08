lbl_80D2CC0C:
/* 80D2CC0C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80D2CC10  7C 08 02 A6 */	mflr r0
/* 80D2CC14  90 01 00 44 */	stw r0, 0x44(r1)
/* 80D2CC18  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80D2CC1C  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80D2CC20  7C 7E 1B 78 */	mr r30, r3
/* 80D2CC24  3C 60 80 D3 */	lis r3, lit_3645@ha /* 0x80D2E770@ha */
/* 80D2CC28  3B E3 E7 70 */	addi r31, r3, lit_3645@l /* 0x80D2E770@l */
/* 80D2CC2C  38 7E 05 A8 */	addi r3, r30, 0x5a8
/* 80D2CC30  4B 2E 07 F9 */	bl play__14mDoExt_baseAnmFv
/* 80D2CC34  38 7E 05 90 */	addi r3, r30, 0x590
/* 80D2CC38  4B 2E 07 F1 */	bl play__14mDoExt_baseAnmFv
/* 80D2CC3C  38 7E 05 70 */	addi r3, r30, 0x570
/* 80D2CC40  4B 31 BC 2D */	bl eventUpdate__17dEvLib_callback_cFv
/* 80D2CC44  7F C3 F3 78 */	mr r3, r30
/* 80D2CC48  48 00 02 05 */	bl actionMain__12daWtPillar_cFv
/* 80D2CC4C  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 80D2CC50  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D2CC54  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D2CC58  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80D2CC5C  4B 34 9E 51 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80D2CC60  7F C3 F3 78 */	mr r3, r30
/* 80D2CC64  48 00 03 35 */	bl effectSet__12daWtPillar_cFv
/* 80D2CC68  7F C3 F3 78 */	mr r3, r30
/* 80D2CC6C  48 00 06 0D */	bl effectSet2__12daWtPillar_cFv
/* 80D2CC70  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 80D2CC74  D0 1E 0A D4 */	stfs f0, 0xad4(r30)
/* 80D2CC78  C0 1E 04 F4 */	lfs f0, 0x4f4(r30)
/* 80D2CC7C  D0 1E 0A DC */	stfs f0, 0xadc(r30)
/* 80D2CC80  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 80D2CC84  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80D2CC88  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80D2CC8C  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80D2CC90  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80D2CC94  C0 1E 0A E0 */	lfs f0, 0xae0(r30)
/* 80D2CC98  EC 01 00 32 */	fmuls f0, f1, f0
/* 80D2CC9C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80D2CCA0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D2CCA4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D2CCA8  A8 9E 04 DC */	lha r4, 0x4dc(r30)
/* 80D2CCAC  A8 BE 04 DE */	lha r5, 0x4de(r30)
/* 80D2CCB0  A8 DE 04 E0 */	lha r6, 0x4e0(r30)
/* 80D2CCB4  4B 2D F5 55 */	bl mDoMtx_ZXYrotS__FPA4_fsss
/* 80D2CCB8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D2CCBC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D2CCC0  38 81 00 20 */	addi r4, r1, 0x20
/* 80D2CCC4  7C 85 23 78 */	mr r5, r4
/* 80D2CCC8  4B 61 A0 A5 */	bl PSMTXMultVec
/* 80D2CCCC  C0 5E 04 D0 */	lfs f2, 0x4d0(r30)
/* 80D2CCD0  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80D2CCD4  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80D2CCD8  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80D2CCDC  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80D2CCE0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80D2CCE4  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 80D2CCE8  EC 01 00 28 */	fsubs f0, f1, f0
/* 80D2CCEC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80D2CCF0  D0 5E 0A E4 */	stfs f2, 0xae4(r30)
/* 80D2CCF4  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80D2CCF8  D0 1E 0A E8 */	stfs f0, 0xae8(r30)
/* 80D2CCFC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80D2CD00  D0 1E 0A EC */	stfs f0, 0xaec(r30)
/* 80D2CD04  38 61 00 08 */	addi r3, r1, 8
/* 80D2CD08  38 81 00 20 */	addi r4, r1, 0x20
/* 80D2CD0C  38 A1 00 14 */	addi r5, r1, 0x14
/* 80D2CD10  4B 53 9D D5 */	bl __pl__4cXyzCFRC3Vec
/* 80D2CD14  C0 01 00 08 */	lfs f0, 8(r1)
/* 80D2CD18  D0 1E 0A F0 */	stfs f0, 0xaf0(r30)
/* 80D2CD1C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80D2CD20  D0 1E 0A F4 */	stfs f0, 0xaf4(r30)
/* 80D2CD24  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80D2CD28  D0 1E 0A F8 */	stfs f0, 0xaf8(r30)
/* 80D2CD2C  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 80D2CD30  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 80D2CD34  EC 01 00 32 */	fmuls f0, f1, f0
/* 80D2CD38  D0 1E 0A FC */	stfs f0, 0xafc(r30)
/* 80D2CD3C  C0 3E 0A E0 */	lfs f1, 0xae0(r30)
/* 80D2CD40  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 80D2CD44  EC 41 00 24 */	fdivs f2, f1, f0
/* 80D2CD48  C0 3E 04 F0 */	lfs f1, 0x4f0(r30)
/* 80D2CD4C  3C 60 80 D3 */	lis r3, l_HIO@ha /* 0x80D2EB3C@ha */
/* 80D2CD50  38 63 EB 3C */	addi r3, r3, l_HIO@l /* 0x80D2EB3C@l */
/* 80D2CD54  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 80D2CD58  EC 01 00 32 */	fmuls f0, f1, f0
/* 80D2CD5C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80D2CD60  40 81 00 24 */	ble lbl_80D2CD84
/* 80D2CD64  38 7E 09 3C */	addi r3, r30, 0x93c
/* 80D2CD68  38 9E 0A E4 */	addi r4, r30, 0xae4
/* 80D2CD6C  4B 54 22 D1 */	bl Set__8cM3dGCpsFRC9cM3dGCpsS
/* 80D2CD70  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D2CD74  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D2CD78  38 63 23 3C */	addi r3, r3, 0x233c
/* 80D2CD7C  38 9E 08 18 */	addi r4, r30, 0x818
/* 80D2CD80  4B 53 7E 29 */	bl Set__4cCcSFP8cCcD_Obj
lbl_80D2CD84:
/* 80D2CD84  38 7E 0A 80 */	addi r3, r30, 0xa80
/* 80D2CD88  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 80D2CD8C  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 80D2CD90  EC 21 00 32 */	fmuls f1, f1, f0
/* 80D2CD94  4B 54 24 6D */	bl SetR__8cM3dGCylFf
/* 80D2CD98  38 7E 0A 80 */	addi r3, r30, 0xa80
/* 80D2CD9C  C0 3E 0A E0 */	lfs f1, 0xae0(r30)
/* 80D2CDA0  4B 54 24 59 */	bl SetH__8cM3dGCylFf
/* 80D2CDA4  38 7E 0A 80 */	addi r3, r30, 0xa80
/* 80D2CDA8  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80D2CDAC  4B 54 24 31 */	bl SetC__8cM3dGCylFRC4cXyz
/* 80D2CDB0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D2CDB4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D2CDB8  38 63 23 3C */	addi r3, r3, 0x233c
/* 80D2CDBC  38 9E 09 5C */	addi r4, r30, 0x95c
/* 80D2CDC0  4B 53 7D E9 */	bl Set__4cCcSFP8cCcD_Obj
/* 80D2CDC4  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 80D2CDC8  C0 1E 0B 30 */	lfs f0, 0xb30(r30)
/* 80D2CDCC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80D2CDD0  FC 00 00 1E */	fctiwz f0, f0
/* 80D2CDD4  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80D2CDD8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D2CDDC  80 7E 0B 20 */	lwz r3, 0xb20(r30)
/* 80D2CDE0  7C 00 07 34 */	extsh r0, r0
/* 80D2CDE4  7C 03 01 D6 */	mullw r0, r3, r0
/* 80D2CDE8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80D2CDEC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80D2CDF0  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80D2CDF4  7C 23 04 2E */	lfsx f1, r3, r0
/* 80D2CDF8  C0 1E 0B 34 */	lfs f0, 0xb34(r30)
/* 80D2CDFC  EC 00 00 72 */	fmuls f0, f0, f1
/* 80D2CE00  D0 1E 0B 28 */	stfs f0, 0xb28(r30)
/* 80D2CE04  38 7E 0B 34 */	addi r3, r30, 0xb34
/* 80D2CE08  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80D2CE0C  C0 5E 0B 38 */	lfs f2, 0xb38(r30)
/* 80D2CE10  C0 7E 0B 3C */	lfs f3, 0xb3c(r30)
/* 80D2CE14  C0 9E 0B 40 */	lfs f4, 0xb40(r30)
/* 80D2CE18  4B 54 2B 65 */	bl cLib_addCalc__FPfffff
/* 80D2CE1C  80 7E 0B 20 */	lwz r3, 0xb20(r30)
/* 80D2CE20  38 03 00 01 */	addi r0, r3, 1
/* 80D2CE24  90 1E 0B 20 */	stw r0, 0xb20(r30)
/* 80D2CE28  7F C3 F3 78 */	mr r3, r30
/* 80D2CE2C  4B FF F9 85 */	bl setBaseMtx__12daWtPillar_cFv
/* 80D2CE30  38 60 00 01 */	li r3, 1
/* 80D2CE34  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80D2CE38  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80D2CE3C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80D2CE40  7C 08 03 A6 */	mtlr r0
/* 80D2CE44  38 21 00 40 */	addi r1, r1, 0x40
/* 80D2CE48  4E 80 00 20 */	blr 
