lbl_80C62E34:
/* 80C62E34  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C62E38  7C 08 02 A6 */	mflr r0
/* 80C62E3C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C62E40  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C62E44  7C 7F 1B 78 */	mr r31, r3
/* 80C62E48  3C 60 80 C6 */	lis r3, lit_3653@ha /* 0x80C63170@ha */
/* 80C62E4C  C0 23 31 70 */	lfs f1, lit_3653@l(r3)  /* 0x80C63170@l */
/* 80C62E50  D0 21 00 08 */	stfs f1, 8(r1)
/* 80C62E54  3C 60 80 C6 */	lis r3, lit_3740@ha /* 0x80C63180@ha */
/* 80C62E58  C0 03 31 80 */	lfs f0, lit_3740@l(r3)  /* 0x80C63180@l */
/* 80C62E5C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C62E60  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80C62E64  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C62E68  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C62E6C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80C62E70  38 80 00 04 */	li r4, 4
/* 80C62E74  38 A0 00 0F */	li r5, 0xf
/* 80C62E78  38 C1 00 08 */	addi r6, r1, 8
/* 80C62E7C  4B 40 CC 95 */	bl StartQuake__12dVibration_cFii4cXyz
/* 80C62E80  7F E3 FB 78 */	mr r3, r31
/* 80C62E84  4B FF FE 61 */	bl mode_init_move__13daObjLv4Brg_cFv
/* 80C62E88  38 60 00 01 */	li r3, 1
/* 80C62E8C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C62E90  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C62E94  7C 08 03 A6 */	mtlr r0
/* 80C62E98  38 21 00 20 */	addi r1, r1, 0x20
/* 80C62E9C  4E 80 00 20 */	blr 
