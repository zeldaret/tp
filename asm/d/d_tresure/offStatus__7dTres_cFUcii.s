lbl_8009C1F0:
/* 8009C1F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8009C1F4  7C 08 02 A6 */	mflr r0
/* 8009C1F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8009C1FC  39 61 00 20 */	addi r11, r1, 0x20
/* 8009C200  48 2C 5F D9 */	bl _savegpr_28
/* 8009C204  7C 7D 1B 78 */	mr r29, r3
/* 8009C208  7C 9C 23 78 */	mr r28, r4
/* 8009C20C  7C BF 2B 78 */	mr r31, r5
/* 8009C210  48 00 01 51 */	bl getFirstData__7dTres_cFUc
/* 8009C214  3C 80 80 42 */	lis r4, mTypeGroupListAll__7dTres_c@ha
/* 8009C218  38 84 54 38 */	addi r4, r4, mTypeGroupListAll__7dTres_c@l
/* 8009C21C  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 8009C220  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8009C224  7C 84 02 14 */	add r4, r4, r0
/* 8009C228  8B C4 00 08 */	lbz r30, 8(r4)
/* 8009C22C  3B A0 00 00 */	li r29, 0
/* 8009C230  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 8009C234  7C 1F 00 F8 */	nor r31, r0, r0
/* 8009C238  48 00 00 24 */	b lbl_8009C25C
lbl_8009C23C:
/* 8009C23C  88 03 00 00 */	lbz r0, 0(r3)
/* 8009C240  7C 1C 00 00 */	cmpw r28, r0
/* 8009C244  40 82 00 10 */	bne lbl_8009C254
/* 8009C248  88 03 00 02 */	lbz r0, 2(r3)
/* 8009C24C  7C 00 F8 38 */	and r0, r0, r31
/* 8009C250  98 03 00 02 */	stb r0, 2(r3)
lbl_8009C254:
/* 8009C254  48 00 01 49 */	bl getNextData__7dTres_cFPQ27dTres_c15typeGroupData_c
/* 8009C258  3B BD 00 01 */	addi r29, r29, 1
lbl_8009C25C:
/* 8009C25C  7C 1D F0 00 */	cmpw r29, r30
/* 8009C260  41 80 FF DC */	blt lbl_8009C23C
/* 8009C264  39 61 00 20 */	addi r11, r1, 0x20
/* 8009C268  48 2C 5F BD */	bl _restgpr_28
/* 8009C26C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8009C270  7C 08 03 A6 */	mtlr r0
/* 8009C274  38 21 00 20 */	addi r1, r1, 0x20
/* 8009C278  4E 80 00 20 */	blr 
