lbl_80217A10:
/* 80217A10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80217A14  7C 08 02 A6 */	mflr r0
/* 80217A18  90 01 00 24 */	stw r0, 0x24(r1)
/* 80217A1C  39 61 00 20 */	addi r11, r1, 0x20
/* 80217A20  48 14 A7 B5 */	bl _savegpr_27
/* 80217A24  7C 7B 1B 78 */	mr r27, r3
/* 80217A28  7C 9C 23 78 */	mr r28, r4
/* 80217A2C  3B C0 00 00 */	li r30, 0
/* 80217A30  3B A0 00 00 */	li r29, 0
/* 80217A34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80217A38  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80217A3C  3B E3 00 9C */	addi r31, r3, 0x9c
lbl_80217A40:
/* 80217A40  7F E3 FB 78 */	mr r3, r31
/* 80217A44  38 1D 00 0B */	addi r0, r29, 0xb
/* 80217A48  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80217A4C  38 A0 00 01 */	li r5, 1
/* 80217A50  4B E1 B5 E1 */	bl getItem__17dSv_player_item_cCFib
/* 80217A54  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80217A58  28 00 00 FF */	cmplwi r0, 0xff
/* 80217A5C  41 82 00 08 */	beq lbl_80217A64
/* 80217A60  3B DE 00 01 */	addi r30, r30, 1
lbl_80217A64:
/* 80217A64  3B BD 00 01 */	addi r29, r29, 1
/* 80217A68  2C 1D 00 04 */	cmpwi r29, 4
/* 80217A6C  41 80 FF D4 */	blt lbl_80217A40
/* 80217A70  2C 1E 00 00 */	cmpwi r30, 0
/* 80217A74  41 82 00 28 */	beq lbl_80217A9C
/* 80217A78  7F 63 DB 78 */	mr r3, r27
/* 80217A7C  7F 84 E3 78 */	mr r4, r28
/* 80217A80  38 A0 00 01 */	li r5, 1
/* 80217A84  38 DB 07 63 */	addi r6, r27, 0x763
/* 80217A88  48 00 28 6D */	bl getActionString__13dMeter2Draw_cFUcUcPUc
/* 80217A8C  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80217A90  41 82 00 0C */	beq lbl_80217A9C
/* 80217A94  38 00 00 07 */	li r0, 7
/* 80217A98  98 1B 07 63 */	stb r0, 0x763(r27)
lbl_80217A9C:
/* 80217A9C  39 61 00 20 */	addi r11, r1, 0x20
/* 80217AA0  48 14 A7 81 */	bl _restgpr_27
/* 80217AA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80217AA8  7C 08 03 A6 */	mtlr r0
/* 80217AAC  38 21 00 20 */	addi r1, r1, 0x20
/* 80217AB0  4E 80 00 20 */	blr 
