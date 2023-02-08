lbl_8024B774:
/* 8024B774  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8024B778  7C 08 02 A6 */	mflr r0
/* 8024B77C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8024B780  39 61 00 20 */	addi r11, r1, 0x20
/* 8024B784  48 11 6A 59 */	bl _savegpr_29
/* 8024B788  A0 04 00 04 */	lhz r0, 4(r4)
/* 8024B78C  54 1F 06 3E */	clrlwi r31, r0, 0x18
/* 8024B790  3B C0 00 00 */	li r30, 0
/* 8024B794  2C 1F 00 2F */	cmpwi r31, 0x2f
/* 8024B798  40 80 00 24 */	bge lbl_8024B7BC
/* 8024B79C  2C 1F 00 2A */	cmpwi r31, 0x2a
/* 8024B7A0  40 80 00 10 */	bge lbl_8024B7B0
/* 8024B7A4  2C 1F 00 28 */	cmpwi r31, 0x28
/* 8024B7A8  40 80 00 2C */	bge lbl_8024B7D4
/* 8024B7AC  48 00 00 7C */	b lbl_8024B828
lbl_8024B7B0:
/* 8024B7B0  2C 1F 00 2D */	cmpwi r31, 0x2d
/* 8024B7B4  40 80 00 74 */	bge lbl_8024B828
/* 8024B7B8  48 00 00 38 */	b lbl_8024B7F0
lbl_8024B7BC:
/* 8024B7BC  2C 1F 00 49 */	cmpwi r31, 0x49
/* 8024B7C0  41 82 00 14 */	beq lbl_8024B7D4
/* 8024B7C4  40 80 00 64 */	bge lbl_8024B828
/* 8024B7C8  2C 1F 00 32 */	cmpwi r31, 0x32
/* 8024B7CC  40 80 00 5C */	bge lbl_8024B828
/* 8024B7D0  48 00 00 3C */	b lbl_8024B80C
lbl_8024B7D4:
/* 8024B7D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8024B7D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8024B7DC  88 03 00 14 */	lbz r0, 0x14(r3)
/* 8024B7E0  7C 1F 00 40 */	cmplw r31, r0
/* 8024B7E4  40 82 00 E4 */	bne lbl_8024B8C8
/* 8024B7E8  3B C0 00 01 */	li r30, 1
/* 8024B7EC  48 00 00 DC */	b lbl_8024B8C8
lbl_8024B7F0:
/* 8024B7F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8024B7F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8024B7F8  88 03 00 15 */	lbz r0, 0x15(r3)
/* 8024B7FC  7C 1F 00 40 */	cmplw r31, r0
/* 8024B800  40 82 00 C8 */	bne lbl_8024B8C8
/* 8024B804  3B C0 00 01 */	li r30, 1
/* 8024B808  48 00 00 C0 */	b lbl_8024B8C8
lbl_8024B80C:
/* 8024B80C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8024B810  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8024B814  88 03 00 13 */	lbz r0, 0x13(r3)
/* 8024B818  7C 1F 00 40 */	cmplw r31, r0
/* 8024B81C  40 82 00 AC */	bne lbl_8024B8C8
/* 8024B820  3B C0 00 01 */	li r30, 1
/* 8024B824  48 00 00 A4 */	b lbl_8024B8C8
lbl_8024B828:
/* 8024B828  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8024B82C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8024B830  38 80 00 00 */	li r4, 0
/* 8024B834  4B DE 72 29 */	bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 8024B838  7C 60 1B 78 */	mr r0, r3
/* 8024B83C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8024B840  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8024B844  3B A3 00 9C */	addi r29, r3, 0x9c
/* 8024B848  7F A3 EB 78 */	mr r3, r29
/* 8024B84C  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8024B850  38 A0 00 01 */	li r5, 1
/* 8024B854  4B DE 77 DD */	bl getItem__17dSv_player_item_cCFib
/* 8024B858  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8024B85C  7C 1F 00 40 */	cmplw r31, r0
/* 8024B860  41 82 00 64 */	beq lbl_8024B8C4
/* 8024B864  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8024B868  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8024B86C  38 80 00 01 */	li r4, 1
/* 8024B870  4B DE 71 ED */	bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 8024B874  7C 60 1B 78 */	mr r0, r3
/* 8024B878  7F A3 EB 78 */	mr r3, r29
/* 8024B87C  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8024B880  38 A0 00 01 */	li r5, 1
/* 8024B884  4B DE 77 AD */	bl getItem__17dSv_player_item_cCFib
/* 8024B888  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8024B88C  7C 1F 00 40 */	cmplw r31, r0
/* 8024B890  41 82 00 34 */	beq lbl_8024B8C4
/* 8024B894  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8024B898  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8024B89C  38 80 00 02 */	li r4, 2
/* 8024B8A0  4B DE 71 BD */	bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 8024B8A4  7C 60 1B 78 */	mr r0, r3
/* 8024B8A8  7F A3 EB 78 */	mr r3, r29
/* 8024B8AC  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8024B8B0  38 A0 00 01 */	li r5, 1
/* 8024B8B4  4B DE 77 7D */	bl getItem__17dSv_player_item_cCFib
/* 8024B8B8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8024B8BC  7C 1F 00 40 */	cmplw r31, r0
/* 8024B8C0  40 82 00 08 */	bne lbl_8024B8C8
lbl_8024B8C4:
/* 8024B8C4  3B C0 00 01 */	li r30, 1
lbl_8024B8C8:
/* 8024B8C8  7F C3 F3 78 */	mr r3, r30
/* 8024B8CC  39 61 00 20 */	addi r11, r1, 0x20
/* 8024B8D0  48 11 69 59 */	bl _restgpr_29
/* 8024B8D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8024B8D8  7C 08 03 A6 */	mtlr r0
/* 8024B8DC  38 21 00 20 */	addi r1, r1, 0x20
/* 8024B8E0  4E 80 00 20 */	blr 
