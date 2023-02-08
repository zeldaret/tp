lbl_801CB6E0:
/* 801CB6E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801CB6E4  7C 08 02 A6 */	mflr r0
/* 801CB6E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 801CB6EC  39 61 00 20 */	addi r11, r1, 0x20
/* 801CB6F0  48 19 6A ED */	bl _savegpr_29
/* 801CB6F4  7C 7D 1B 78 */	mr r29, r3
/* 801CB6F8  7C 9E 23 78 */	mr r30, r4
/* 801CB6FC  7C BF 2B 78 */	mr r31, r5
/* 801CB700  80 63 00 14 */	lwz r3, 0x14(r3)
/* 801CB704  38 9D 02 10 */	addi r4, r29, 0x210
/* 801CB708  48 00 66 49 */	bl mapBlink__18dMenu_Fmap2DBack_cFPs
/* 801CB70C  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 801CB710  41 82 00 28 */	beq lbl_801CB738
/* 801CB714  80 7D 00 14 */	lwz r3, 0x14(r29)
/* 801CB718  88 83 12 27 */	lbz r4, 0x1227(r3)
/* 801CB71C  80 7D 00 B8 */	lwz r3, 0xb8(r29)
/* 801CB720  38 84 00 01 */	addi r4, r4, 1
/* 801CB724  57 C5 06 3E */	clrlwi r5, r30, 0x18
/* 801CB728  80 DD 00 C0 */	lwz r6, 0xc0(r29)
/* 801CB72C  88 FD 03 0E */	lbz r7, 0x30e(r29)
/* 801CB730  48 00 3A B1 */	bl setFlashOn__15dMenu_FmapMap_cFiiPUci
/* 801CB734  48 00 00 24 */	b lbl_801CB758
lbl_801CB738:
/* 801CB738  80 7D 00 14 */	lwz r3, 0x14(r29)
/* 801CB73C  88 83 12 27 */	lbz r4, 0x1227(r3)
/* 801CB740  80 7D 00 B8 */	lwz r3, 0xb8(r29)
/* 801CB744  38 84 00 01 */	addi r4, r4, 1
/* 801CB748  57 C5 06 3E */	clrlwi r5, r30, 0x18
/* 801CB74C  38 C0 00 00 */	li r6, 0
/* 801CB750  38 E0 00 00 */	li r7, 0
/* 801CB754  48 00 3A 8D */	bl setFlashOn__15dMenu_FmapMap_cFiiPUci
lbl_801CB758:
/* 801CB758  39 61 00 20 */	addi r11, r1, 0x20
/* 801CB75C  48 19 6A CD */	bl _restgpr_29
/* 801CB760  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801CB764  7C 08 03 A6 */	mtlr r0
/* 801CB768  38 21 00 20 */	addi r1, r1, 0x20
/* 801CB76C  4E 80 00 20 */	blr 
