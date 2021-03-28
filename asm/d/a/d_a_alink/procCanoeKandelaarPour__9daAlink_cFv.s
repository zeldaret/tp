lbl_800F7684:
/* 800F7684  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F7688  7C 08 02 A6 */	mflr r0
/* 800F768C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F7690  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F7694  7C 7F 1B 78 */	mr r31, r3
/* 800F7698  4B FF D1 41 */	bl canoeCommon__9daAlink_cFv
/* 800F769C  2C 03 00 00 */	cmpwi r3, 0
/* 800F76A0  41 82 00 2C */	beq lbl_800F76CC
/* 800F76A4  7F E3 FB 78 */	mr r3, r31
/* 800F76A8  38 80 00 02 */	li r4, 2
/* 800F76AC  C0 22 92 C4 */	lfs f1, lit_6109(r2)
/* 800F76B0  4B FB 60 75 */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
/* 800F76B4  7F E3 FB 78 */	mr r3, r31
/* 800F76B8  48 01 98 D1 */	bl resetOilBottleModel__9daAlink_cFv
/* 800F76BC  7F E3 FB 78 */	mr r3, r31
/* 800F76C0  48 02 05 D1 */	bl resetSpecialEvent__9daAlink_cFv
/* 800F76C4  38 60 00 01 */	li r3, 1
/* 800F76C8  48 00 00 2C */	b lbl_800F76F4
lbl_800F76CC:
/* 800F76CC  7F E3 FB 78 */	mr r3, r31
/* 800F76D0  38 80 00 01 */	li r4, 1
/* 800F76D4  48 01 99 E5 */	bl commonKandelaarPour__9daAlink_cFi
/* 800F76D8  2C 03 00 00 */	cmpwi r3, 0
/* 800F76DC  41 82 00 14 */	beq lbl_800F76F0
/* 800F76E0  7F E3 FB 78 */	mr r3, r31
/* 800F76E4  38 80 02 68 */	li r4, 0x268
/* 800F76E8  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 800F76EC  4B FB 5C 89 */	bl setUpperAnimeBaseMorf__9daAlink_cFUsf
lbl_800F76F0:
/* 800F76F0  38 60 00 01 */	li r3, 1
lbl_800F76F4:
/* 800F76F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F76F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F76FC  7C 08 03 A6 */	mtlr r0
/* 800F7700  38 21 00 10 */	addi r1, r1, 0x10
/* 800F7704  4E 80 00 20 */	blr 
