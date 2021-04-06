lbl_807E5C0C:
/* 807E5C0C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807E5C10  7C 08 02 A6 */	mflr r0
/* 807E5C14  90 01 00 34 */	stw r0, 0x34(r1)
/* 807E5C18  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 807E5C1C  7C 7F 1B 78 */	mr r31, r3
/* 807E5C20  88 63 06 8C */	lbz r3, 0x68c(r3)
/* 807E5C24  28 03 00 00 */	cmplwi r3, 0
/* 807E5C28  41 82 00 0C */	beq lbl_807E5C34
/* 807E5C2C  38 03 FF FF */	addi r0, r3, -1
/* 807E5C30  98 1F 06 8C */	stb r0, 0x68c(r31)
lbl_807E5C34:
/* 807E5C34  A8 7F 06 8E */	lha r3, 0x68e(r31)
/* 807E5C38  2C 03 00 00 */	cmpwi r3, 0
/* 807E5C3C  41 82 00 0C */	beq lbl_807E5C48
/* 807E5C40  38 03 FF FF */	addi r0, r3, -1
/* 807E5C44  B0 1F 06 8E */	sth r0, 0x68e(r31)
lbl_807E5C48:
/* 807E5C48  7F E3 FB 78 */	mr r3, r31
/* 807E5C4C  4B FF FC 61 */	bl action__8daE_WS_cFv
/* 807E5C50  7F E3 FB 78 */	mr r3, r31
/* 807E5C54  4B FF FD E9 */	bl mtx_set__8daE_WS_cFv
/* 807E5C58  7F E3 FB 78 */	mr r3, r31
/* 807E5C5C  4B FF FE 51 */	bl cc_set__8daE_WS_cFv
/* 807E5C60  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 807E5C64  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 807E5C68  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 807E5C6C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807E5C70  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 807E5C74  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807E5C78  3C 60 80 7E */	lis r3, lit_3964@ha /* 0x807E7380@ha */
/* 807E5C7C  C0 03 73 80 */	lfs f0, lit_3964@l(r3)  /* 0x807E7380@l */
/* 807E5C80  D0 01 00 08 */	stfs f0, 8(r1)
/* 807E5C84  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 807E5C88  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 807E5C8C  7F E3 FB 78 */	mr r3, r31
/* 807E5C90  38 9F 05 B8 */	addi r4, r31, 0x5b8
/* 807E5C94  38 A1 00 14 */	addi r5, r1, 0x14
/* 807E5C98  38 C1 00 08 */	addi r6, r1, 8
/* 807E5C9C  48 00 12 3D */	bl setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz
/* 807E5CA0  38 60 00 01 */	li r3, 1
/* 807E5CA4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 807E5CA8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807E5CAC  7C 08 03 A6 */	mtlr r0
/* 807E5CB0  38 21 00 30 */	addi r1, r1, 0x30
/* 807E5CB4  4E 80 00 20 */	blr 
