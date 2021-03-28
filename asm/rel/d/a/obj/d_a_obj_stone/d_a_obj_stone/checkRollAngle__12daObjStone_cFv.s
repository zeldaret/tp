lbl_80CEC5BC:
/* 80CEC5BC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80CEC5C0  7C 08 02 A6 */	mflr r0
/* 80CEC5C4  90 01 00 54 */	stw r0, 0x54(r1)
/* 80CEC5C8  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80CEC5CC  93 C1 00 48 */	stw r30, 0x48(r1)
/* 80CEC5D0  3C 80 80 CF */	lis r4, l_bmdIdx@ha
/* 80CEC5D4  3B C4 CA B4 */	addi r30, r4, l_bmdIdx@l
/* 80CEC5D8  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80CEC5DC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80CEC5E0  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 80CEC5E4  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80CEC5E8  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80CEC5EC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80CEC5F0  C0 1E 01 3C */	lfs f0, 0x13c(r30)
/* 80CEC5F4  EC 01 00 2A */	fadds f0, f1, f0
/* 80CEC5F8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80CEC5FC  3C 60 80 CF */	lis r3, __vt__8cM3dGPla@ha
/* 80CEC600  38 03 CE 04 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80CEC604  90 01 00 30 */	stw r0, 0x30(r1)
/* 80CEC608  38 61 00 14 */	addi r3, r1, 0x14
/* 80CEC60C  4B 33 16 B0 */	b gndCheck__11fopAcM_gc_cFPC4cXyz
/* 80CEC610  7C 7F 1B 78 */	mr r31, r3
/* 80CEC614  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CEC618  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CEC61C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80CEC620  3C 80 80 3F */	lis r4, mGndCheck__11fopAcM_gc_c@ha
/* 80CEC624  38 84 1C C4 */	addi r4, r4, mGndCheck__11fopAcM_gc_c@l
/* 80CEC628  38 84 00 14 */	addi r4, r4, 0x14
/* 80CEC62C  38 A1 00 20 */	addi r5, r1, 0x20
/* 80CEC630  4B 38 81 14 */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80CEC634  3C 80 80 45 */	lis r4, mGroundY__11fopAcM_gc_c@ha
/* 80CEC638  C0 24 0C D0 */	lfs f1, mGroundY__11fopAcM_gc_c@l(r4)
/* 80CEC63C  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80CEC640  41 82 00 70 */	beq lbl_80CEC6B0
/* 80CEC644  C0 1E 01 20 */	lfs f0, 0x120(r30)
/* 80CEC648  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80CEC64C  41 82 00 64 */	beq lbl_80CEC6B0
/* 80CEC650  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CEC654  41 82 00 5C */	beq lbl_80CEC6B0
/* 80CEC658  C0 1E 01 4C */	lfs f0, 0x14c(r30)
/* 80CEC65C  FC 00 00 1E */	fctiwz f0, f0
/* 80CEC660  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80CEC664  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80CEC668  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80CEC66C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80CEC670  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CEC674  7C 63 02 14 */	add r3, r3, r0
/* 80CEC678  C0 43 00 04 */	lfs f2, 4(r3)
/* 80CEC67C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80CEC680  D0 01 00 08 */	stfs f0, 8(r1)
/* 80CEC684  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80CEC688  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80CEC68C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80CEC690  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CEC694  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 80CEC698  40 80 00 18 */	bge lbl_80CEC6B0
/* 80CEC69C  3C 60 80 CF */	lis r3, __vt__8cM3dGPla@ha
/* 80CEC6A0  38 03 CE 04 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80CEC6A4  90 01 00 30 */	stw r0, 0x30(r1)
/* 80CEC6A8  38 60 00 01 */	li r3, 1
/* 80CEC6AC  48 00 00 14 */	b lbl_80CEC6C0
lbl_80CEC6B0:
/* 80CEC6B0  3C 60 80 CF */	lis r3, __vt__8cM3dGPla@ha
/* 80CEC6B4  38 03 CE 04 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80CEC6B8  90 01 00 30 */	stw r0, 0x30(r1)
/* 80CEC6BC  38 60 00 00 */	li r3, 0
lbl_80CEC6C0:
/* 80CEC6C0  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80CEC6C4  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 80CEC6C8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80CEC6CC  7C 08 03 A6 */	mtlr r0
/* 80CEC6D0  38 21 00 50 */	addi r1, r1, 0x50
/* 80CEC6D4  4E 80 00 20 */	blr 
