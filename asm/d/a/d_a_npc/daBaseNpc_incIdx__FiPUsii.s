lbl_8014D5C4:
/* 8014D5C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014D5C8  7C 08 02 A6 */	mflr r0
/* 8014D5CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014D5D0  7C 68 1B 78 */	mr r8, r3
/* 8014D5D4  7C 87 23 78 */	mr r7, r4
/* 8014D5D8  7C A0 2B 78 */	mr r0, r5
/* 8014D5DC  2C 06 00 00 */	cmpwi r6, 0
/* 8014D5E0  40 80 00 1C */	bge lbl_8014D5FC
/* 8014D5E4  38 60 00 01 */	li r3, 1
/* 8014D5E8  7D 04 43 78 */	mr r4, r8
/* 8014D5EC  7C E5 3B 78 */	mr r5, r7
/* 8014D5F0  7C 06 03 78 */	mr r6, r0
/* 8014D5F4  4B FF FF 91 */	bl daBaseNpc_subIdx__FiiPUsi
/* 8014D5F8  48 00 00 18 */	b lbl_8014D610
lbl_8014D5FC:
/* 8014D5FC  38 60 00 01 */	li r3, 1
/* 8014D600  7D 04 43 78 */	mr r4, r8
/* 8014D604  7C E5 3B 78 */	mr r5, r7
/* 8014D608  7C 06 03 78 */	mr r6, r0
/* 8014D60C  4B FF FF 2D */	bl daBaseNpc_addIdx__FiiPUsi
lbl_8014D610:
/* 8014D610  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014D614  7C 08 03 A6 */	mtlr r0
/* 8014D618  38 21 00 10 */	addi r1, r1, 0x10
/* 8014D61C  4E 80 00 20 */	blr 
