lbl_801C042C:
/* 801C042C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C0430  7C 08 02 A6 */	mflr r0
/* 801C0434  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C0438  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801C043C  93 C1 00 08 */	stw r30, 8(r1)
/* 801C0440  7C 7E 1B 79 */	or. r30, r3, r3
/* 801C0444  7C 9F 23 78 */	mr r31, r4
/* 801C0448  41 82 00 48 */	beq lbl_801C0490
/* 801C044C  3C 60 80 3C */	lis r3, __vt__20dMenu_StageMapCtrl_c@ha /* 0x803BCAEC@ha */
/* 801C0450  38 03 CA EC */	addi r0, r3, __vt__20dMenu_StageMapCtrl_c@l /* 0x803BCAEC@l */
/* 801C0454  90 1E 00 00 */	stw r0, 0(r30)
/* 801C0458  41 82 00 28 */	beq lbl_801C0480
/* 801C045C  3C 60 80 3C */	lis r3, __vt__15dMenu_DmapMap_c@ha /* 0x803BCAE0@ha */
/* 801C0460  38 03 CA E0 */	addi r0, r3, __vt__15dMenu_DmapMap_c@l /* 0x803BCAE0@l */
/* 801C0464  90 1E 00 00 */	stw r0, 0(r30)
/* 801C0468  38 7E 00 04 */	addi r3, r30, 4
/* 801C046C  3C 80 80 1C */	lis r4, __dt__15renderingDmap_cFv@ha /* 0x801C0380@ha */
/* 801C0470  38 84 03 80 */	addi r4, r4, __dt__15renderingDmap_cFv@l /* 0x801C0380@l */
/* 801C0474  38 A0 00 38 */	li r5, 0x38
/* 801C0478  38 C0 00 02 */	li r6, 2
/* 801C047C  48 1A 18 6D */	bl __destroy_arr
lbl_801C0480:
/* 801C0480  7F E0 07 35 */	extsh. r0, r31
/* 801C0484  40 81 00 0C */	ble lbl_801C0490
/* 801C0488  7F C3 F3 78 */	mr r3, r30
/* 801C048C  48 10 E8 B1 */	bl __dl__FPv
lbl_801C0490:
/* 801C0490  7F C3 F3 78 */	mr r3, r30
/* 801C0494  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801C0498  83 C1 00 08 */	lwz r30, 8(r1)
/* 801C049C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C04A0  7C 08 03 A6 */	mtlr r0
/* 801C04A4  38 21 00 10 */	addi r1, r1, 0x10
/* 801C04A8  4E 80 00 20 */	blr 
