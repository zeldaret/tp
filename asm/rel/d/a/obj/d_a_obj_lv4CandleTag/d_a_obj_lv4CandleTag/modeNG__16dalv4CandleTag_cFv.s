lbl_80C5D814:
/* 80C5D814  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C5D818  7C 08 02 A6 */	mflr r0
/* 80C5D81C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C5D820  39 61 00 20 */	addi r11, r1, 0x20
/* 80C5D824  4B 70 49 B4 */	b _savegpr_28
/* 80C5D828  7C 7C 1B 78 */	mr r28, r3
/* 80C5D82C  88 63 05 89 */	lbz r3, 0x589(r3)
/* 80C5D830  28 03 00 00 */	cmplwi r3, 0
/* 80C5D834  41 82 00 10 */	beq lbl_80C5D844
/* 80C5D838  38 03 FF FF */	addi r0, r3, -1
/* 80C5D83C  98 1C 05 89 */	stb r0, 0x589(r28)
/* 80C5D840  48 00 00 48 */	b lbl_80C5D888
lbl_80C5D844:
/* 80C5D844  8B DC 05 85 */	lbz r30, 0x585(r28)
/* 80C5D848  3B A0 00 00 */	li r29, 0
/* 80C5D84C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C5D850  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80C5D854  48 00 00 20 */	b lbl_80C5D874
lbl_80C5D858:
/* 80C5D858  7F E3 FB 78 */	mr r3, r31
/* 80C5D85C  57 C4 06 3E */	clrlwi r4, r30, 0x18
/* 80C5D860  88 1C 04 BA */	lbz r0, 0x4ba(r28)
/* 80C5D864  7C 05 07 74 */	extsb r5, r0
/* 80C5D868  4B 3D 7A 48 */	b offSwitch__10dSv_info_cFii
/* 80C5D86C  3B DE 00 01 */	addi r30, r30, 1
/* 80C5D870  3B BD 00 01 */	addi r29, r29, 1
lbl_80C5D874:
/* 80C5D874  88 1C 05 88 */	lbz r0, 0x588(r28)
/* 80C5D878  7C 1D 00 00 */	cmpw r29, r0
/* 80C5D87C  41 80 FF DC */	blt lbl_80C5D858
/* 80C5D880  7F 83 E3 78 */	mr r3, r28
/* 80C5D884  48 00 00 1D */	bl init_modeNGWait__16dalv4CandleTag_cFv
lbl_80C5D888:
/* 80C5D888  39 61 00 20 */	addi r11, r1, 0x20
/* 80C5D88C  4B 70 49 98 */	b _restgpr_28
/* 80C5D890  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C5D894  7C 08 03 A6 */	mtlr r0
/* 80C5D898  38 21 00 20 */	addi r1, r1, 0x20
/* 80C5D89C  4E 80 00 20 */	blr 
