lbl_8054FC64:
/* 8054FC64  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8054FC68  7C 08 02 A6 */	mflr r0
/* 8054FC6C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8054FC70  39 61 00 20 */	addi r11, r1, 0x20
/* 8054FC74  4B E1 25 69 */	bl _savegpr_29
/* 8054FC78  7C 7D 1B 78 */	mr r29, r3
/* 8054FC7C  83 C3 09 6C */	lwz r30, 0x96c(r3)
/* 8054FC80  28 1E 00 00 */	cmplwi r30, 0
/* 8054FC84  41 82 00 30 */	beq lbl_8054FCB4
/* 8054FC88  80 9D 05 78 */	lwz r4, 0x578(r29)
/* 8054FC8C  80 84 00 04 */	lwz r4, 4(r4)
/* 8054FC90  83 E4 00 04 */	lwz r31, 4(r4)
/* 8054FC94  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 8054FC98  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 8054FC9C  7D 89 03 A6 */	mtctr r12
/* 8054FCA0  4E 80 04 21 */	bctrl 
/* 8054FCA4  80 9F 00 60 */	lwz r4, 0x60(r31)
/* 8054FCA8  54 60 13 BA */	rlwinm r0, r3, 2, 0xe, 0x1d
/* 8054FCAC  7C 64 00 2E */	lwzx r3, r4, r0
/* 8054FCB0  93 C3 00 3C */	stw r30, 0x3c(r3)
lbl_8054FCB4:
/* 8054FCB4  7F A3 EB 78 */	mr r3, r29
/* 8054FCB8  38 80 00 00 */	li r4, 0
/* 8054FCBC  38 A0 00 00 */	li r5, 0
/* 8054FCC0  3C C0 80 55 */	lis r6, m__18daNpc_Kkri_Param_c@ha /* 0x80553490@ha */
/* 8054FCC4  38 C6 34 90 */	addi r6, r6, m__18daNpc_Kkri_Param_c@l /* 0x80553490@l */
/* 8054FCC8  C0 26 00 0C */	lfs f1, 0xc(r6)
/* 8054FCCC  38 C0 00 00 */	li r6, 0
/* 8054FCD0  3C E0 80 55 */	lis r7, lit_4441@ha /* 0x8055354C@ha */
/* 8054FCD4  C0 47 35 4C */	lfs f2, lit_4441@l(r7)  /* 0x8055354C@l */
/* 8054FCD8  38 E0 00 00 */	li r7, 0
/* 8054FCDC  39 00 00 00 */	li r8, 0
/* 8054FCE0  39 20 00 00 */	li r9, 0
/* 8054FCE4  4B BF 8B 89 */	bl draw__8daNpcT_cFiifP11_GXColorS10fiii
/* 8054FCE8  39 61 00 20 */	addi r11, r1, 0x20
/* 8054FCEC  4B E1 25 3D */	bl _restgpr_29
/* 8054FCF0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8054FCF4  7C 08 03 A6 */	mtlr r0
/* 8054FCF8  38 21 00 20 */	addi r1, r1, 0x20
/* 8054FCFC  4E 80 00 20 */	blr 
