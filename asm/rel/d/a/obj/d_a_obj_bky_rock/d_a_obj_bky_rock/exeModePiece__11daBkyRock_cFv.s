lbl_80BB75D8:
/* 80BB75D8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80BB75DC  7C 08 02 A6 */	mflr r0
/* 80BB75E0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80BB75E4  39 61 00 30 */	addi r11, r1, 0x30
/* 80BB75E8  4B 7A AB F5 */	bl _savegpr_29
/* 80BB75EC  7C 7D 1B 78 */	mr r29, r3
/* 80BB75F0  3C 80 80 BB */	lis r4, VIBMODE_POWER@ha /* 0x80BB7EB0@ha */
/* 80BB75F4  3B E4 7E B0 */	addi r31, r4, VIBMODE_POWER@l /* 0x80BB7EB0@l */
/* 80BB75F8  48 00 02 21 */	bl pieceMove__11daBkyRock_cFv
/* 80BB75FC  80 1D 05 74 */	lwz r0, 0x574(r29)
/* 80BB7600  2C 00 00 00 */	cmpwi r0, 0
/* 80BB7604  41 82 00 74 */	beq lbl_80BB7678
/* 80BB7608  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BB760C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BB7610  3B C3 5B D4 */	addi r30, r3, 0x5bd4
/* 80BB7614  7F C3 F3 78 */	mr r3, r30
/* 80BB7618  4B 4B 88 45 */	bl CheckQuake__12dVibration_cFv
/* 80BB761C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BB7620  40 82 00 38 */	bne lbl_80BB7658
/* 80BB7624  C0 3F 01 00 */	lfs f1, 0x100(r31)
/* 80BB7628  D0 21 00 08 */	stfs f1, 8(r1)
/* 80BB762C  C0 1F 00 F8 */	lfs f0, 0xf8(r31)
/* 80BB7630  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80BB7634  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80BB7638  7F C3 F3 78 */	mr r3, r30
/* 80BB763C  88 1D 05 78 */	lbz r0, 0x578(r29)
/* 80BB7640  54 00 10 3A */	slwi r0, r0, 2
/* 80BB7644  38 9F 00 00 */	addi r4, r31, 0
/* 80BB7648  7C 84 00 2E */	lwzx r4, r4, r0
/* 80BB764C  38 A0 00 1F */	li r5, 0x1f
/* 80BB7650  38 C1 00 08 */	addi r6, r1, 8
/* 80BB7654  4B 4B 84 BD */	bl StartQuake__12dVibration_cFii4cXyz
lbl_80BB7658:
/* 80BB7658  80 7D 05 74 */	lwz r3, 0x574(r29)
/* 80BB765C  38 03 FF FF */	addi r0, r3, -1
/* 80BB7660  90 1D 05 74 */	stw r0, 0x574(r29)
/* 80BB7664  80 1D 05 74 */	lwz r0, 0x574(r29)
/* 80BB7668  2C 00 00 00 */	cmpwi r0, 0
/* 80BB766C  41 81 00 0C */	bgt lbl_80BB7678
/* 80BB7670  7F A3 EB 78 */	mr r3, r29
/* 80BB7674  4B 46 26 09 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_80BB7678:
/* 80BB7678  39 61 00 30 */	addi r11, r1, 0x30
/* 80BB767C  4B 7A AB AD */	bl _restgpr_29
/* 80BB7680  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BB7684  7C 08 03 A6 */	mtlr r0
/* 80BB7688  38 21 00 30 */	addi r1, r1, 0x30
/* 80BB768C  4E 80 00 20 */	blr 
