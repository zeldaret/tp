lbl_800F2AD8:
/* 800F2AD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F2ADC  7C 08 02 A6 */	mflr r0
/* 800F2AE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F2AE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F2AE8  7C 7F 1B 78 */	mr r31, r3
/* 800F2AEC  4B FF AF 39 */	bl setSyncRidePos__9daAlink_cFv
/* 800F2AF0  2C 03 00 00 */	cmpwi r3, 0
/* 800F2AF4  40 82 00 2C */	bne lbl_800F2B20
/* 800F2AF8  7F E3 FB 78 */	mr r3, r31
/* 800F2AFC  38 80 00 02 */	li r4, 2
/* 800F2B00  C0 22 92 C4 */	lfs f1, lit_6109(r2)
/* 800F2B04  4B FB AC 21 */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
/* 800F2B08  7F E3 FB 78 */	mr r3, r31
/* 800F2B0C  4B FC CD 79 */	bl returnKeepItemData__9daAlink_cFv
/* 800F2B10  7F E3 FB 78 */	mr r3, r31
/* 800F2B14  48 02 51 7D */	bl resetSpecialEvent__9daAlink_cFv
/* 800F2B18  38 60 00 01 */	li r3, 1
/* 800F2B1C  48 00 00 1C */	b lbl_800F2B38
lbl_800F2B20:
/* 800F2B20  7F E3 FB 78 */	mr r3, r31
/* 800F2B24  4B FF C2 75 */	bl setBaseRideAnime__9daAlink_cFv
/* 800F2B28  7F E3 FB 78 */	mr r3, r31
/* 800F2B2C  38 80 00 01 */	li r4, 1
/* 800F2B30  48 01 BF 95 */	bl commonBottleDrink__9daAlink_cFi
/* 800F2B34  38 60 00 01 */	li r3, 1
lbl_800F2B38:
/* 800F2B38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F2B3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F2B40  7C 08 03 A6 */	mtlr r0
/* 800F2B44  38 21 00 10 */	addi r1, r1, 0x10
/* 800F2B48  4E 80 00 20 */	blr 
