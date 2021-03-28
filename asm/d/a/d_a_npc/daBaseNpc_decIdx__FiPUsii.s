lbl_8014D620:
/* 8014D620  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014D624  7C 08 02 A6 */	mflr r0
/* 8014D628  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014D62C  7C 68 1B 78 */	mr r8, r3
/* 8014D630  7C 87 23 78 */	mr r7, r4
/* 8014D634  7C A0 2B 78 */	mr r0, r5
/* 8014D638  2C 06 00 00 */	cmpwi r6, 0
/* 8014D63C  40 80 00 1C */	bge lbl_8014D658
/* 8014D640  38 60 00 01 */	li r3, 1
/* 8014D644  7D 04 43 78 */	mr r4, r8
/* 8014D648  7C E5 3B 78 */	mr r5, r7
/* 8014D64C  7C 06 03 78 */	mr r6, r0
/* 8014D650  4B FF FE E9 */	bl daBaseNpc_addIdx__FiiPUsi
/* 8014D654  48 00 00 18 */	b lbl_8014D66C
lbl_8014D658:
/* 8014D658  38 60 00 01 */	li r3, 1
/* 8014D65C  7D 04 43 78 */	mr r4, r8
/* 8014D660  7C E5 3B 78 */	mr r5, r7
/* 8014D664  7C 06 03 78 */	mr r6, r0
/* 8014D668  4B FF FF 1D */	bl daBaseNpc_subIdx__FiiPUsi
lbl_8014D66C:
/* 8014D66C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014D670  7C 08 03 A6 */	mtlr r0
/* 8014D674  38 21 00 10 */	addi r1, r1, 0x10
/* 8014D678  4E 80 00 20 */	blr 
