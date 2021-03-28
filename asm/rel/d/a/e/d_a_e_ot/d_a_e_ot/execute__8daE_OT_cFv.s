lbl_8073BF84:
/* 8073BF84  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8073BF88  7C 08 02 A6 */	mflr r0
/* 8073BF8C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8073BF90  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8073BF94  7C 7F 1B 78 */	mr r31, r3
/* 8073BF98  88 63 06 94 */	lbz r3, 0x694(r3)
/* 8073BF9C  28 03 00 00 */	cmplwi r3, 0
/* 8073BFA0  41 82 00 0C */	beq lbl_8073BFAC
/* 8073BFA4  38 03 FF FF */	addi r0, r3, -1
/* 8073BFA8  98 1F 06 94 */	stb r0, 0x694(r31)
lbl_8073BFAC:
/* 8073BFAC  88 7F 06 95 */	lbz r3, 0x695(r31)
/* 8073BFB0  28 03 00 00 */	cmplwi r3, 0
/* 8073BFB4  41 82 00 0C */	beq lbl_8073BFC0
/* 8073BFB8  38 03 FF FF */	addi r0, r3, -1
/* 8073BFBC  98 1F 06 95 */	stb r0, 0x695(r31)
lbl_8073BFC0:
/* 8073BFC0  7F E3 FB 78 */	mr r3, r31
/* 8073BFC4  4B FF FB D9 */	bl action__8daE_OT_cFv
/* 8073BFC8  7F E3 FB 78 */	mr r3, r31
/* 8073BFCC  4B FF FD AD */	bl mtx_set__8daE_OT_cFv
/* 8073BFD0  7F E3 FB 78 */	mr r3, r31
/* 8073BFD4  4B FF FE 3D */	bl cc_set__8daE_OT_cFv
/* 8073BFD8  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8073BFDC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8073BFE0  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8073BFE4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8073BFE8  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8073BFEC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8073BFF0  3C 60 80 74 */	lis r3, lit_4125@ha
/* 8073BFF4  C0 03 CE EC */	lfs f0, lit_4125@l(r3)
/* 8073BFF8  D0 01 00 08 */	stfs f0, 8(r1)
/* 8073BFFC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8073C000  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8073C004  7F E3 FB 78 */	mr r3, r31
/* 8073C008  38 9F 05 C0 */	addi r4, r31, 0x5c0
/* 8073C00C  38 A1 00 14 */	addi r5, r1, 0x14
/* 8073C010  38 C1 00 08 */	addi r6, r1, 8
/* 8073C014  48 00 0A 31 */	bl setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz
/* 8073C018  38 60 00 01 */	li r3, 1
/* 8073C01C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8073C020  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8073C024  7C 08 03 A6 */	mtlr r0
/* 8073C028  38 21 00 30 */	addi r1, r1, 0x30
/* 8073C02C  4E 80 00 20 */	blr 
