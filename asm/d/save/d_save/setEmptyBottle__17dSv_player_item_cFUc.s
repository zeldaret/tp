lbl_80033514:
/* 80033514  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80033518  7C 08 02 A6 */	mflr r0
/* 8003351C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80033520  39 61 00 20 */	addi r11, r1, 0x20
/* 80033524  48 32 EC B5 */	bl _savegpr_28
/* 80033528  7C 9C 23 78 */	mr r28, r4
/* 8003352C  3B A0 00 00 */	li r29, 0
/* 80033530  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80033534  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80033538  3B E3 00 9C */	addi r31, r3, 0x9c
lbl_8003353C:
/* 8003353C  7F E3 FB 78 */	mr r3, r31
/* 80033540  38 1D 00 0B */	addi r0, r29, 0xb
/* 80033544  54 1E 06 3E */	clrlwi r30, r0, 0x18
/* 80033548  7F C4 F3 78 */	mr r4, r30
/* 8003354C  38 A0 00 01 */	li r5, 1
/* 80033550  4B FF FA E1 */	bl getItem__17dSv_player_item_cCFib
/* 80033554  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80033558  28 00 00 FF */	cmplwi r0, 0xff
/* 8003355C  40 82 00 18 */	bne lbl_80033574
/* 80033560  7F E3 FB 78 */	mr r3, r31
/* 80033564  7F C4 F3 78 */	mr r4, r30
/* 80033568  7F 85 E3 78 */	mr r5, r28
/* 8003356C  4B FF FA 4D */	bl setItem__17dSv_player_item_cFiUc
/* 80033570  48 00 00 10 */	b lbl_80033580
lbl_80033574:
/* 80033574  3B BD 00 01 */	addi r29, r29, 1
/* 80033578  2C 1D 00 04 */	cmpwi r29, 4
/* 8003357C  41 80 FF C0 */	blt lbl_8003353C
lbl_80033580:
/* 80033580  39 61 00 20 */	addi r11, r1, 0x20
/* 80033584  48 32 EC A1 */	bl _restgpr_28
/* 80033588  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003358C  7C 08 03 A6 */	mtlr r0
/* 80033590  38 21 00 20 */	addi r1, r1, 0x20
/* 80033594  4E 80 00 20 */	blr 
