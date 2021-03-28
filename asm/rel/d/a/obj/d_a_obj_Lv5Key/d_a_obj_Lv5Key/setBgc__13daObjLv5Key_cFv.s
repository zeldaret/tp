lbl_80B9BB5C:
/* 80B9BB5C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B9BB60  7C 08 02 A6 */	mflr r0
/* 80B9BB64  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B9BB68  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B9BB6C  7C 7F 1B 78 */	mr r31, r3
/* 80B9BB70  38 00 00 00 */	li r0, 0
/* 80B9BB74  90 01 00 08 */	stw r0, 8(r1)
/* 80B9BB78  38 7F 05 F8 */	addi r3, r31, 0x5f8
/* 80B9BB7C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80B9BB80  38 BF 04 BC */	addi r5, r31, 0x4bc
/* 80B9BB84  7F E6 FB 78 */	mr r6, r31
/* 80B9BB88  38 E0 00 01 */	li r7, 1
/* 80B9BB8C  39 1F 05 B8 */	addi r8, r31, 0x5b8
/* 80B9BB90  39 3F 04 F8 */	addi r9, r31, 0x4f8
/* 80B9BB94  39 40 00 00 */	li r10, 0
/* 80B9BB98  4B 4D A6 B0 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80B9BB9C  38 7F 05 F8 */	addi r3, r31, 0x5f8
/* 80B9BBA0  4B 4D B8 20 */	b SetGndThinCellingOff__9dBgS_AcchFv
/* 80B9BBA4  38 7F 05 B8 */	addi r3, r31, 0x5b8
/* 80B9BBA8  3C 80 80 BA */	lis r4, lit_3768@ha
/* 80B9BBAC  C0 24 C9 28 */	lfs f1, lit_3768@l(r4)
/* 80B9BBB0  FC 40 08 90 */	fmr f2, f1
/* 80B9BBB4  4B 4D A3 A4 */	b SetWall__12dBgS_AcchCirFff
/* 80B9BBB8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B9BBBC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B9BBC0  7C 08 03 A6 */	mtlr r0
/* 80B9BBC4  38 21 00 20 */	addi r1, r1, 0x20
/* 80B9BBC8  4E 80 00 20 */	blr 
