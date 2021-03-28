lbl_800735DC:
/* 800735DC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800735E0  7C 08 02 A6 */	mflr r0
/* 800735E4  90 01 00 34 */	stw r0, 0x34(r1)
/* 800735E8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 800735EC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 800735F0  7C 7E 1B 78 */	mr r30, r3
/* 800735F4  48 00 01 F1 */	bl LockonTruth__12dAttention_cFv
/* 800735F8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800735FC  40 82 00 0C */	bne lbl_80073608
/* 80073600  C0 22 8C 50 */	lfs f1, lit_4071(r2)
/* 80073604  48 00 00 B0 */	b lbl_800736B4
lbl_80073608:
/* 80073608  80 1E 03 DC */	lwz r0, 0x3dc(r30)
/* 8007360C  1C 60 00 14 */	mulli r3, r0, 0x14
/* 80073610  38 63 03 38 */	addi r3, r3, 0x338
/* 80073614  7C 7E 1A 14 */	add r3, r30, r3
/* 80073618  48 00 02 4D */	bl getActor__10dAttList_cFv
/* 8007361C  7C 64 1B 79 */	or. r4, r3, r3
/* 80073620  40 82 00 0C */	bne lbl_8007362C
/* 80073624  C0 22 8C 50 */	lfs f1, lit_4071(r2)
/* 80073628  48 00 00 8C */	b lbl_800736B4
lbl_8007362C:
/* 8007362C  80 1E 03 DC */	lwz r0, 0x3dc(r30)
/* 80073630  1C 00 00 14 */	mulli r0, r0, 0x14
/* 80073634  7C 7E 02 14 */	add r3, r30, r0
/* 80073638  80 03 03 44 */	lwz r0, 0x344(r3)
/* 8007363C  7C 64 02 14 */	add r3, r4, r0
/* 80073640  8B E3 05 44 */	lbz r31, 0x544(r3)
/* 80073644  38 61 00 18 */	addi r3, r1, 0x18
/* 80073648  38 84 05 50 */	addi r4, r4, 0x550
/* 8007364C  38 BE 03 1C */	addi r5, r30, 0x31c
/* 80073650  48 1F 34 E5 */	bl __mi__4cXyzCFRC3Vec
/* 80073654  38 61 00 10 */	addi r3, r1, 0x10
/* 80073658  38 81 00 18 */	addi r4, r1, 0x18
/* 8007365C  48 1F E2 25 */	bl __ct__7cSGlobeFRC4cXyz
/* 80073660  80 BE 00 00 */	lwz r5, 0(r30)
/* 80073664  38 61 00 08 */	addi r3, r1, 8
/* 80073668  38 81 00 16 */	addi r4, r1, 0x16
/* 8007366C  A8 A5 04 E6 */	lha r5, 0x4e6(r5)
/* 80073670  48 1F DB B9 */	bl __mi__7cSAngleCFs
/* 80073674  38 61 00 0C */	addi r3, r1, 0xc
/* 80073678  38 81 00 08 */	addi r4, r1, 8
/* 8007367C  48 1F D8 ED */	bl __ct__7cSAngleFRC7cSAngle
/* 80073680  1F FF 00 1C */	mulli r31, r31, 0x1c
/* 80073684  3C 60 80 3B */	lis r3, dist_table__12dAttention_c@ha
/* 80073688  38 03 9C 70 */	addi r0, r3, dist_table__12dAttention_c@l
/* 8007368C  7C 60 FA 14 */	add r3, r0, r31
/* 80073690  C0 23 00 08 */	lfs f1, 8(r3)
/* 80073694  A8 61 00 0C */	lha r3, 0xc(r1)
/* 80073698  C0 42 8C 58 */	lfs f2, lit_4073(r2)
/* 8007369C  4B FF D5 A5 */	bl distace_angle_adjust__Ffsf
/* 800736A0  3C 60 80 3B */	lis r3, dist_table__12dAttention_c@ha
/* 800736A4  38 03 9C 70 */	addi r0, r3, dist_table__12dAttention_c@l
/* 800736A8  7C 60 FA 14 */	add r3, r0, r31
/* 800736AC  C0 03 00 04 */	lfs f0, 4(r3)
/* 800736B0  EC 20 08 2A */	fadds f1, f0, f1
lbl_800736B4:
/* 800736B4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 800736B8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 800736BC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800736C0  7C 08 03 A6 */	mtlr r0
/* 800736C4  38 21 00 30 */	addi r1, r1, 0x30
/* 800736C8  4E 80 00 20 */	blr 
