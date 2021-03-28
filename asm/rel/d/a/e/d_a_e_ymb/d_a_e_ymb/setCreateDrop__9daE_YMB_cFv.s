lbl_8081D4D8:
/* 8081D4D8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8081D4DC  7C 08 02 A6 */	mflr r0
/* 8081D4E0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8081D4E4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8081D4E8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8081D4EC  7C 7F 1B 78 */	mr r31, r3
/* 8081D4F0  3C 60 80 82 */	lis r3, search_drop__FPvPv@ha
/* 8081D4F4  38 63 81 58 */	addi r3, r3, search_drop__FPvPv@l
/* 8081D4F8  7F E4 FB 78 */	mr r4, r31
/* 8081D4FC  4B 80 3E 3C */	b fpcEx_Search__FPFPvPv_PvPv
/* 8081D500  7C 7E 1B 79 */	or. r30, r3, r3
/* 8081D504  41 82 00 70 */	beq lbl_8081D574
/* 8081D508  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8081D50C  80 63 00 04 */	lwz r3, 4(r3)
/* 8081D510  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8081D514  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8081D518  38 63 02 D0 */	addi r3, r3, 0x2d0
/* 8081D51C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8081D520  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8081D524  4B B2 8F 8C */	b PSMTXCopy
/* 8081D528  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8081D52C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8081D530  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 8081D534  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 8081D538  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 8081D53C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8081D540  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8081D544  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8081D548  D0 41 00 08 */	stfs f2, 8(r1)
/* 8081D54C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8081D550  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8081D554  7F C3 F3 78 */	mr r3, r30
/* 8081D558  38 81 00 08 */	addi r4, r1, 8
/* 8081D55C  48 00 43 21 */	bl setPos__11daObjDrop_cF4cXyz
/* 8081D560  38 00 00 01 */	li r0, 1
/* 8081D564  98 1E 06 B8 */	stb r0, 0x6b8(r30)
/* 8081D568  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 8081D56C  60 00 40 00 */	ori r0, r0, 0x4000
/* 8081D570  90 1E 04 9C */	stw r0, 0x49c(r30)
lbl_8081D574:
/* 8081D574  38 00 00 01 */	li r0, 1
/* 8081D578  98 1F 07 21 */	stb r0, 0x721(r31)
/* 8081D57C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8081D580  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8081D584  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8081D588  7C 08 03 A6 */	mtlr r0
/* 8081D58C  38 21 00 30 */	addi r1, r1, 0x30
/* 8081D590  4E 80 00 20 */	blr 
