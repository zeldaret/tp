lbl_8094C4B0:
/* 8094C4B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8094C4B4  7C 08 02 A6 */	mflr r0
/* 8094C4B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8094C4BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8094C4C0  7C 7F 1B 78 */	mr r31, r3
/* 8094C4C4  4B 6C C8 1D */	bl fopAc_IsActor__FPv
/* 8094C4C8  2C 03 00 00 */	cmpwi r3, 0
/* 8094C4CC  41 82 00 3C */	beq lbl_8094C508
/* 8094C4D0  A8 1F 00 08 */	lha r0, 8(r31)
/* 8094C4D4  2C 00 01 0D */	cmpwi r0, 0x10d
/* 8094C4D8  40 82 00 30 */	bne lbl_8094C508
/* 8094C4DC  3C 60 80 95 */	lis r3, target_info_count@ha /* 0x80951600@ha */
/* 8094C4E0  38 83 16 00 */	addi r4, r3, target_info_count@l /* 0x80951600@l */
/* 8094C4E4  80 A4 00 00 */	lwz r5, 0(r4)
/* 8094C4E8  2C 05 00 0A */	cmpwi r5, 0xa
/* 8094C4EC  40 80 00 1C */	bge lbl_8094C508
/* 8094C4F0  54 A0 10 3A */	slwi r0, r5, 2
/* 8094C4F4  3C 60 80 95 */	lis r3, target_info@ha /* 0x809515D8@ha */
/* 8094C4F8  38 63 15 D8 */	addi r3, r3, target_info@l /* 0x809515D8@l */
/* 8094C4FC  7F E3 01 2E */	stwx r31, r3, r0
/* 8094C500  38 05 00 01 */	addi r0, r5, 1
/* 8094C504  90 04 00 00 */	stw r0, 0(r4)
lbl_8094C508:
/* 8094C508  38 60 00 00 */	li r3, 0
/* 8094C50C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8094C510  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8094C514  7C 08 03 A6 */	mtlr r0
/* 8094C518  38 21 00 10 */	addi r1, r1, 0x10
/* 8094C51C  4E 80 00 20 */	blr 
