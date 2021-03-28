lbl_80472EF0:
/* 80472EF0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80472EF4  7C 08 02 A6 */	mflr r0
/* 80472EF8  90 01 00 64 */	stw r0, 0x64(r1)
/* 80472EFC  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80472F00  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80472F04  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80472F08  93 C1 00 48 */	stw r30, 0x48(r1)
/* 80472F0C  7C 7F 1B 78 */	mr r31, r3
/* 80472F10  3C 80 80 48 */	lis r4, l_cyl_info@ha
/* 80472F14  3B C4 99 0C */	addi r30, r4, l_cyl_info@l
/* 80472F18  4B FF C7 8D */	bl data__12daObjCarry_cFv
/* 80472F1C  A8 03 00 78 */	lha r0, 0x78(r3)
/* 80472F20  C8 3E 0A A0 */	lfd f1, 0xaa0(r30)
/* 80472F24  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80472F28  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80472F2C  3C 00 43 30 */	lis r0, 0x4330
/* 80472F30  90 01 00 38 */	stw r0, 0x38(r1)
/* 80472F34  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80472F38  EF E0 08 28 */	fsubs f31, f0, f1
/* 80472F3C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80472F40  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80472F44  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80472F48  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80472F4C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80472F50  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80472F54  C0 1E 0B 1C */	lfs f0, 0xb1c(r30)
/* 80472F58  EC 01 00 2A */	fadds f0, f1, f0
/* 80472F5C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80472F60  3C 60 80 48 */	lis r3, __vt__8cM3dGPla@ha
/* 80472F64  38 03 B1 CC */	addi r0, r3, __vt__8cM3dGPla@l
/* 80472F68  90 01 00 30 */	stw r0, 0x30(r1)
/* 80472F6C  38 61 00 14 */	addi r3, r1, 0x14
/* 80472F70  4B BA AD 4C */	b gndCheck__11fopAcM_gc_cFPC4cXyz
/* 80472F74  7C 7F 1B 78 */	mr r31, r3
/* 80472F78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80472F7C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80472F80  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80472F84  3C 80 80 3F */	lis r4, mGndCheck__11fopAcM_gc_c@ha
/* 80472F88  38 84 1C C4 */	addi r4, r4, mGndCheck__11fopAcM_gc_c@l
/* 80472F8C  38 84 00 14 */	addi r4, r4, 0x14
/* 80472F90  38 A1 00 20 */	addi r5, r1, 0x20
/* 80472F94  4B C0 17 B0 */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80472F98  3C 80 80 45 */	lis r4, mGroundY__11fopAcM_gc_c@ha
/* 80472F9C  C0 24 0C D0 */	lfs f1, mGroundY__11fopAcM_gc_c@l(r4)
/* 80472FA0  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80472FA4  41 82 00 7C */	beq lbl_80473020
/* 80472FA8  C0 1E 0B 10 */	lfs f0, 0xb10(r30)
/* 80472FAC  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80472FB0  41 82 00 70 */	beq lbl_80473020
/* 80472FB4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80472FB8  41 82 00 68 */	beq lbl_80473020
/* 80472FBC  C0 3E 0B 20 */	lfs f1, 0xb20(r30)
/* 80472FC0  C0 1E 0A 78 */	lfs f0, 0xa78(r30)
/* 80472FC4  EC 1F 00 28 */	fsubs f0, f31, f0
/* 80472FC8  EC 01 00 32 */	fmuls f0, f1, f0
/* 80472FCC  FC 00 00 1E */	fctiwz f0, f0
/* 80472FD0  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80472FD4  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80472FD8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80472FDC  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80472FE0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80472FE4  7C 63 02 14 */	add r3, r3, r0
/* 80472FE8  C0 43 00 04 */	lfs f2, 4(r3)
/* 80472FEC  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80472FF0  D0 01 00 08 */	stfs f0, 8(r1)
/* 80472FF4  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80472FF8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80472FFC  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80473000  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80473004  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 80473008  40 80 00 18 */	bge lbl_80473020
/* 8047300C  3C 60 80 48 */	lis r3, __vt__8cM3dGPla@ha
/* 80473010  38 03 B1 CC */	addi r0, r3, __vt__8cM3dGPla@l
/* 80473014  90 01 00 30 */	stw r0, 0x30(r1)
/* 80473018  38 60 00 01 */	li r3, 1
/* 8047301C  48 00 00 14 */	b lbl_80473030
lbl_80473020:
/* 80473020  3C 60 80 48 */	lis r3, __vt__8cM3dGPla@ha
/* 80473024  38 03 B1 CC */	addi r0, r3, __vt__8cM3dGPla@l
/* 80473028  90 01 00 30 */	stw r0, 0x30(r1)
/* 8047302C  38 60 00 00 */	li r3, 0
lbl_80473030:
/* 80473030  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80473034  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80473038  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8047303C  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 80473040  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80473044  7C 08 03 A6 */	mtlr r0
/* 80473048  38 21 00 60 */	addi r1, r1, 0x60
/* 8047304C  4E 80 00 20 */	blr 
