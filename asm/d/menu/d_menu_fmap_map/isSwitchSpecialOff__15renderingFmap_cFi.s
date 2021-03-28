lbl_801CE224:
/* 801CE224  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801CE228  7C 08 02 A6 */	mflr r0
/* 801CE22C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801CE230  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801CE234  93 C1 00 08 */	stw r30, 8(r1)
/* 801CE238  7C 9E 23 78 */	mr r30, r4
/* 801CE23C  3B E0 00 00 */	li r31, 0
/* 801CE240  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801CE244  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801CE248  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 801CE24C  3C 80 80 39 */	lis r4, d_menu_d_menu_fmap_map__stringBase0@ha
/* 801CE250  38 84 62 3C */	addi r4, r4, d_menu_d_menu_fmap_map__stringBase0@l
/* 801CE254  48 19 A7 41 */	bl strcmp
/* 801CE258  2C 03 00 00 */	cmpwi r3, 0
/* 801CE25C  40 82 00 10 */	bne lbl_801CE26C
/* 801CE260  2C 1E 00 B2 */	cmpwi r30, 0xb2
/* 801CE264  40 82 00 08 */	bne lbl_801CE26C
/* 801CE268  3B E0 00 01 */	li r31, 1
lbl_801CE26C:
/* 801CE26C  7F E3 FB 78 */	mr r3, r31
/* 801CE270  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801CE274  83 C1 00 08 */	lwz r30, 8(r1)
/* 801CE278  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801CE27C  7C 08 03 A6 */	mtlr r0
/* 801CE280  38 21 00 10 */	addi r1, r1, 0x10
/* 801CE284  4E 80 00 20 */	blr 
