lbl_8021DD5C:
/* 8021DD5C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8021DD60  7C 08 02 A6 */	mflr r0
/* 8021DD64  90 01 00 24 */	stw r0, 0x24(r1)
/* 8021DD68  39 61 00 20 */	addi r11, r1, 0x20
/* 8021DD6C  48 14 44 6D */	bl _savegpr_28
/* 8021DD70  7C 9C 23 78 */	mr r28, r4
/* 8021DD74  38 80 00 00 */	li r4, 0
/* 8021DD78  57 9E 06 3E */	clrlwi r30, r28, 0x18
/* 8021DD7C  38 1E FF F5 */	addi r0, r30, -11
/* 8021DD80  54 00 08 3C */	slwi r0, r0, 1
/* 8021DD84  7C 63 02 14 */	add r3, r3, r0
/* 8021DD88  B0 83 00 9A */	sth r4, 0x9a(r3)
/* 8021DD8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8021DD90  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8021DD94  3B E3 00 9C */	addi r31, r3, 0x9c
/* 8021DD98  7F E3 FB 78 */	mr r3, r31
/* 8021DD9C  7F C4 F3 78 */	mr r4, r30
/* 8021DDA0  38 A0 00 01 */	li r5, 1
/* 8021DDA4  4B E1 52 8D */	bl getItem__17dSv_player_item_cCFib
/* 8021DDA8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8021DDAC  28 00 00 6B */	cmplwi r0, 0x6b
/* 8021DDB0  40 82 00 50 */	bne lbl_8021DE00
/* 8021DDB4  7F E3 FB 78 */	mr r3, r31
/* 8021DDB8  7F C4 F3 78 */	mr r4, r30
/* 8021DDBC  38 A0 00 67 */	li r5, 0x67
/* 8021DDC0  4B E1 51 F9 */	bl setItem__17dSv_player_item_cFiUc
/* 8021DDC4  3B A0 00 00 */	li r29, 0
/* 8021DDC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8021DDCC  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 8021DDD0  57 9F 06 3E */	clrlwi r31, r28, 0x18
lbl_8021DDD4:
/* 8021DDD4  7F C3 F3 78 */	mr r3, r30
/* 8021DDD8  7F A4 EB 78 */	mr r4, r29
/* 8021DDDC  4B E1 4C 81 */	bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 8021DDE0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8021DDE4  7C 1F 00 40 */	cmplw r31, r0
/* 8021DDE8  40 82 00 0C */	bne lbl_8021DDF4
/* 8021DDEC  7F A3 EB 78 */	mr r3, r29
/* 8021DDF0  4B E1 00 05 */	bl dComIfGp_setSelectItem__Fi
lbl_8021DDF4:
/* 8021DDF4  3B BD 00 01 */	addi r29, r29, 1
/* 8021DDF8  2C 1D 00 03 */	cmpwi r29, 3
/* 8021DDFC  41 80 FF D8 */	blt lbl_8021DDD4
lbl_8021DE00:
/* 8021DE00  39 61 00 20 */	addi r11, r1, 0x20
/* 8021DE04  48 14 44 21 */	bl _restgpr_28
/* 8021DE08  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8021DE0C  7C 08 03 A6 */	mtlr r0
/* 8021DE10  38 21 00 20 */	addi r1, r1, 0x20
/* 8021DE14  4E 80 00 20 */	blr 
