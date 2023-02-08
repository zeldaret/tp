lbl_80BECC78:
/* 80BECC78  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BECC7C  7C 08 02 A6 */	mflr r0
/* 80BECC80  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BECC84  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80BECC88  7C 7F 1B 78 */	mr r31, r3
/* 80BECC8C  7C 86 23 78 */	mr r6, r4
/* 80BECC90  38 7F 03 B8 */	addi r3, r31, 0x3b8
/* 80BECC94  38 80 00 FF */	li r4, 0xff
/* 80BECC98  38 A0 00 FF */	li r5, 0xff
/* 80BECC9C  4B 49 6B C5 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80BECCA0  38 7F 03 F4 */	addi r3, r31, 0x3f4
/* 80BECCA4  3C 80 80 BF */	lis r4, ccSphSrc@ha /* 0x80BEE11C@ha */
/* 80BECCA8  38 84 E1 1C */	addi r4, r4, ccSphSrc@l /* 0x80BEE11C@l */
/* 80BECCAC  4B 49 7D 89 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80BECCB0  38 1F 03 B8 */	addi r0, r31, 0x3b8
/* 80BECCB4  90 1F 04 38 */	stw r0, 0x438(r31)
/* 80BECCB8  38 61 00 08 */	addi r3, r1, 8
/* 80BECCBC  7F E4 FB 78 */	mr r4, r31
/* 80BECCC0  48 00 13 F9 */	bl getTargetPos__11FlagCloth_cFv
/* 80BECCC4  38 7F 05 18 */	addi r3, r31, 0x518
/* 80BECCC8  38 81 00 08 */	addi r4, r1, 8
/* 80BECCCC  4B 68 29 7D */	bl SetC__8cM3dGSphFRC4cXyz
/* 80BECCD0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80BECCD4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BECCD8  7C 08 03 A6 */	mtlr r0
/* 80BECCDC  38 21 00 20 */	addi r1, r1, 0x20
/* 80BECCE0  4E 80 00 20 */	blr 
