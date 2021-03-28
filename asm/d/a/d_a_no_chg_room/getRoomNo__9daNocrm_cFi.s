lbl_80145508:
/* 80145508  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8014550C  7C 08 02 A6 */	mflr r0
/* 80145510  90 01 00 34 */	stw r0, 0x34(r1)
/* 80145514  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80145518  7F E3 22 14 */	add r31, r3, r4
/* 8014551C  88 1F 05 C8 */	lbz r0, 0x5c8(r31)
/* 80145520  7C 00 07 75 */	extsb. r0, r0
/* 80145524  40 80 00 68 */	bge lbl_8014558C
/* 80145528  2C 04 00 00 */	cmpwi r4, 0
/* 8014552C  41 82 00 10 */	beq lbl_8014553C
/* 80145530  C0 03 04 F4 */	lfs f0, 0x4f4(r3)
/* 80145534  FC 40 00 50 */	fneg f2, f0
/* 80145538  48 00 00 08 */	b lbl_80145540
lbl_8014553C:
/* 8014553C  C0 43 04 F4 */	lfs f2, 0x4f4(r3)
lbl_80145540:
/* 80145540  C0 23 04 F0 */	lfs f1, 0x4f0(r3)
/* 80145544  C0 02 99 C8 */	lfs f0, lit_3762(r2)
/* 80145548  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8014554C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80145550  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80145554  38 63 05 68 */	addi r3, r3, 0x568
/* 80145558  38 81 00 14 */	addi r4, r1, 0x14
/* 8014555C  38 A1 00 08 */	addi r5, r1, 8
/* 80145560  48 20 18 0D */	bl PSMTXMultVec
/* 80145564  38 61 00 08 */	addi r3, r1, 8
/* 80145568  4B ED 87 55 */	bl gndCheck__11fopAcM_gc_cFPC4cXyz
/* 8014556C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80145570  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80145574  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80145578  3C 80 80 3F */	lis r4, mGndCheck__11fopAcM_gc_c@ha
/* 8014557C  38 84 1C C4 */	addi r4, r4, mGndCheck__11fopAcM_gc_c@l
/* 80145580  38 84 00 14 */	addi r4, r4, 0x14
/* 80145584  4B F2 FB 7D */	bl GetRoomId__4dBgSFRC13cBgS_PolyInfo
/* 80145588  98 7F 05 C8 */	stb r3, 0x5c8(r31)
lbl_8014558C:
/* 8014558C  88 7F 05 C8 */	lbz r3, 0x5c8(r31)
/* 80145590  7C 63 07 74 */	extsb r3, r3
/* 80145594  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80145598  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8014559C  7C 08 03 A6 */	mtlr r0
/* 801455A0  38 21 00 30 */	addi r1, r1, 0x30
/* 801455A4  4E 80 00 20 */	blr 
