lbl_800F7550:
/* 800F7550  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F7554  7C 08 02 A6 */	mflr r0
/* 800F7558  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F755C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F7560  7C 7F 1B 78 */	mr r31, r3
/* 800F7564  4B FF D2 75 */	bl canoeCommon__9daAlink_cFv
/* 800F7568  2C 03 00 00 */	cmpwi r3, 0
/* 800F756C  41 82 00 2C */	beq lbl_800F7598
/* 800F7570  7F E3 FB 78 */	mr r3, r31
/* 800F7574  38 80 00 02 */	li r4, 2
/* 800F7578  C0 22 92 C4 */	lfs f1, lit_6109(r2)
/* 800F757C  4B FB 61 A9 */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
/* 800F7580  7F E3 FB 78 */	mr r3, r31
/* 800F7584  4B FC 83 01 */	bl returnKeepItemData__9daAlink_cFv
/* 800F7588  7F E3 FB 78 */	mr r3, r31
/* 800F758C  48 02 07 05 */	bl resetSpecialEvent__9daAlink_cFv
/* 800F7590  38 60 00 01 */	li r3, 1
/* 800F7594  48 00 00 14 */	b lbl_800F75A8
lbl_800F7598:
/* 800F7598  7F E3 FB 78 */	mr r3, r31
/* 800F759C  38 80 00 01 */	li r4, 1
/* 800F75A0  48 01 75 25 */	bl commonBottleDrink__9daAlink_cFi
/* 800F75A4  38 60 00 01 */	li r3, 1
lbl_800F75A8:
/* 800F75A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F75AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F75B0  7C 08 03 A6 */	mtlr r0
/* 800F75B4  38 21 00 10 */	addi r1, r1, 0x10
/* 800F75B8  4E 80 00 20 */	blr 
