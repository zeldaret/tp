lbl_800E04E8:
/* 800E04E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800E04EC  7C 08 02 A6 */	mflr r0
/* 800E04F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 800E04F4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800E04F8  7C 7F 1B 78 */	mr r31, r3
/* 800E04FC  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800E0500  D0 21 00 08 */	stfs f1, 8(r1)
/* 800E0504  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800E0508  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800E050C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 800E0510  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800E0514  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800E0518  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 800E051C  38 80 00 01 */	li r4, 1
/* 800E0520  38 A0 00 01 */	li r5, 1
/* 800E0524  38 C1 00 08 */	addi r6, r1, 8
/* 800E0528  4B F8 F5 E9 */	bl StartQuake__12dVibration_cFii4cXyz
/* 800E052C  80 1F 05 7C */	lwz r0, 0x57c(r31)
/* 800E0530  60 00 00 04 */	ori r0, r0, 4
/* 800E0534  90 1F 05 7C */	stw r0, 0x57c(r31)
/* 800E0538  3C 60 80 39 */	lis r3, m__18daAlinkHIO_boom_c0@ha /* 0x8038E6C8@ha */
/* 800E053C  38 63 E6 C8 */	addi r3, r3, m__18daAlinkHIO_boom_c0@l /* 0x8038E6C8@l */
/* 800E0540  A8 03 00 28 */	lha r0, 0x28(r3)
/* 800E0544  B0 1F 30 18 */	sth r0, 0x3018(r31)
/* 800E0548  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800E054C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800E0550  7C 08 03 A6 */	mtlr r0
/* 800E0554  38 21 00 20 */	addi r1, r1, 0x20
/* 800E0558  4E 80 00 20 */	blr 
