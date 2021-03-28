lbl_8009C168:
/* 8009C168  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8009C16C  7C 08 02 A6 */	mflr r0
/* 8009C170  90 01 00 24 */	stw r0, 0x24(r1)
/* 8009C174  39 61 00 20 */	addi r11, r1, 0x20
/* 8009C178  48 2C 60 61 */	bl _savegpr_28
/* 8009C17C  7C 7D 1B 78 */	mr r29, r3
/* 8009C180  7C 9C 23 78 */	mr r28, r4
/* 8009C184  7C BF 2B 78 */	mr r31, r5
/* 8009C188  48 00 01 D9 */	bl getFirstData__7dTres_cFUc
/* 8009C18C  3C 80 80 42 */	lis r4, mTypeGroupListAll__7dTres_c@ha
/* 8009C190  38 84 54 38 */	addi r4, r4, mTypeGroupListAll__7dTres_c@l
/* 8009C194  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 8009C198  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8009C19C  7C 84 02 14 */	add r4, r4, r0
/* 8009C1A0  8B C4 00 08 */	lbz r30, 8(r4)
/* 8009C1A4  3B A0 00 00 */	li r29, 0
/* 8009C1A8  57 FF 06 3E */	clrlwi r31, r31, 0x18
/* 8009C1AC  48 00 00 24 */	b lbl_8009C1D0
lbl_8009C1B0:
/* 8009C1B0  88 03 00 00 */	lbz r0, 0(r3)
/* 8009C1B4  7C 1C 00 00 */	cmpw r28, r0
/* 8009C1B8  40 82 00 10 */	bne lbl_8009C1C8
/* 8009C1BC  88 03 00 02 */	lbz r0, 2(r3)
/* 8009C1C0  7C 00 FB 78 */	or r0, r0, r31
/* 8009C1C4  98 03 00 02 */	stb r0, 2(r3)
lbl_8009C1C8:
/* 8009C1C8  48 00 01 D5 */	bl getNextData__7dTres_cFPQ27dTres_c15typeGroupData_c
/* 8009C1CC  3B BD 00 01 */	addi r29, r29, 1
lbl_8009C1D0:
/* 8009C1D0  7C 1D F0 00 */	cmpw r29, r30
/* 8009C1D4  41 80 FF DC */	blt lbl_8009C1B0
/* 8009C1D8  39 61 00 20 */	addi r11, r1, 0x20
/* 8009C1DC  48 2C 60 49 */	bl _restgpr_28
/* 8009C1E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8009C1E4  7C 08 03 A6 */	mtlr r0
/* 8009C1E8  38 21 00 20 */	addi r1, r1, 0x20
/* 8009C1EC  4E 80 00 20 */	blr 
