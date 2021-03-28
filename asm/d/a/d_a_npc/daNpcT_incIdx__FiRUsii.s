lbl_80145AC4:
/* 80145AC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80145AC8  7C 08 02 A6 */	mflr r0
/* 80145ACC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80145AD0  7C 68 1B 78 */	mr r8, r3
/* 80145AD4  7C 87 23 78 */	mr r7, r4
/* 80145AD8  7C A0 2B 78 */	mr r0, r5
/* 80145ADC  2C 06 00 00 */	cmpwi r6, 0
/* 80145AE0  41 82 00 1C */	beq lbl_80145AFC
/* 80145AE4  38 60 00 01 */	li r3, 1
/* 80145AE8  7D 04 43 78 */	mr r4, r8
/* 80145AEC  7C E5 3B 78 */	mr r5, r7
/* 80145AF0  7C 06 03 78 */	mr r6, r0
/* 80145AF4  4B FF FF 85 */	bl daNpcT_subIdx__FiiRUsi
/* 80145AF8  48 00 00 18 */	b lbl_80145B10
lbl_80145AFC:
/* 80145AFC  38 60 00 01 */	li r3, 1
/* 80145B00  7D 04 43 78 */	mr r4, r8
/* 80145B04  7C E5 3B 78 */	mr r5, r7
/* 80145B08  7C 06 03 78 */	mr r6, r0
/* 80145B0C  4B FF FF 2D */	bl daNpcT_addIdx__FiiRUsi
lbl_80145B10:
/* 80145B10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80145B14  7C 08 03 A6 */	mtlr r0
/* 80145B18  38 21 00 10 */	addi r1, r1, 0x10
/* 80145B1C  4E 80 00 20 */	blr 
