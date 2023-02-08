lbl_80BE0358:
/* 80BE0358  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BE035C  7C 08 02 A6 */	mflr r0
/* 80BE0360  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BE0364  39 61 00 20 */	addi r11, r1, 0x20
/* 80BE0368  4B 78 1E 75 */	bl _savegpr_29
/* 80BE036C  7C 7F 1B 78 */	mr r31, r3
/* 80BE0370  88 03 06 B9 */	lbz r0, 0x6b9(r3)
/* 80BE0374  28 00 00 00 */	cmplwi r0, 0
/* 80BE0378  41 82 00 A0 */	beq lbl_80BE0418
/* 80BE037C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BE0380  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BE0384  38 63 09 58 */	addi r3, r3, 0x958
/* 80BE0388  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80BE038C  54 04 06 BE */	clrlwi r4, r0, 0x1a
/* 80BE0390  4B 45 44 11 */	bl onTbox__12dSv_memBit_cFi
/* 80BE0394  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BE0398  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BE039C  3B BE 01 14 */	addi r29, r30, 0x114
/* 80BE03A0  7F A3 EB 78 */	mr r3, r29
/* 80BE03A4  88 9E 4E 0C */	lbz r4, 0x4e0c(r30)
/* 80BE03A8  4B 45 3F 99 */	bl getLightDropNum__16dSv_light_drop_cCFUc
/* 80BE03AC  7C 65 1B 78 */	mr r5, r3
/* 80BE03B0  7F A3 EB 78 */	mr r3, r29
/* 80BE03B4  88 9E 4E 0C */	lbz r4, 0x4e0c(r30)
/* 80BE03B8  38 05 00 01 */	addi r0, r5, 1
/* 80BE03BC  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 80BE03C0  4B 45 3F 61 */	bl setLightDropNum__16dSv_light_drop_cFUcUc
/* 80BE03C4  88 1E 4E 0C */	lbz r0, 0x4e0c(r30)
/* 80BE03C8  7C 00 07 74 */	extsb r0, r0
/* 80BE03CC  2C 00 00 02 */	cmpwi r0, 2
/* 80BE03D0  40 82 00 38 */	bne lbl_80BE0408
/* 80BE03D4  7F A3 EB 78 */	mr r3, r29
/* 80BE03D8  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80BE03DC  4B 45 3F 65 */	bl getLightDropNum__16dSv_light_drop_cCFUc
/* 80BE03E0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80BE03E4  28 00 00 0F */	cmplwi r0, 0xf
/* 80BE03E8  40 82 00 20 */	bne lbl_80BE0408
/* 80BE03EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BE03F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BE03F4  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80BE03F8  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80BE03FC  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80BE0400  A0 84 00 12 */	lhz r4, 0x12(r4)
/* 80BE0404  4B 45 45 89 */	bl onEventBit__11dSv_event_cFUs
lbl_80BE0408:
/* 80BE0408  38 60 00 00 */	li r3, 0
/* 80BE040C  4B 4B 7A 81 */	bl execItemGet__FUc
/* 80BE0410  38 00 00 00 */	li r0, 0
/* 80BE0414  98 1F 06 B9 */	stb r0, 0x6b9(r31)
lbl_80BE0418:
/* 80BE0418  39 61 00 20 */	addi r11, r1, 0x20
/* 80BE041C  4B 78 1E 0D */	bl _restgpr_29
/* 80BE0420  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BE0424  7C 08 03 A6 */	mtlr r0
/* 80BE0428  38 21 00 20 */	addi r1, r1, 0x20
/* 80BE042C  4E 80 00 20 */	blr 
