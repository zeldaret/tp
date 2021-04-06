lbl_801EDFDC:
/* 801EDFDC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801EDFE0  7C 08 02 A6 */	mflr r0
/* 801EDFE4  90 01 00 24 */	stw r0, 0x24(r1)
/* 801EDFE8  39 61 00 20 */	addi r11, r1, 0x20
/* 801EDFEC  48 17 41 ED */	bl _savegpr_28
/* 801EDFF0  7C 7C 1B 78 */	mr r28, r3
/* 801EDFF4  3B A0 00 00 */	li r29, 0
/* 801EDFF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801EDFFC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801EE000  3B C3 00 9C */	addi r30, r3, 0x9c
/* 801EE004  54 9F 06 3E */	clrlwi r31, r4, 0x18
/* 801EE008  48 00 00 28 */	b lbl_801EE030
lbl_801EE00C:
/* 801EE00C  7F C3 F3 78 */	mr r3, r30
/* 801EE010  7F A4 EB 78 */	mr r4, r29
/* 801EE014  4B E4 53 41 */	bl getLineUpItem__17dSv_player_item_cCFi
/* 801EE018  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801EE01C  7C 1F 00 40 */	cmplw r31, r0
/* 801EE020  40 82 00 0C */	bne lbl_801EE02C
/* 801EE024  57 A3 06 3E */	clrlwi r3, r29, 0x18
/* 801EE028  48 00 00 18 */	b lbl_801EE040
lbl_801EE02C:
/* 801EE02C  3B BD 00 01 */	addi r29, r29, 1
lbl_801EE030:
/* 801EE030  88 1C 06 AE */	lbz r0, 0x6ae(r28)
/* 801EE034  7C 1D 00 00 */	cmpw r29, r0
/* 801EE038  41 80 FF D4 */	blt lbl_801EE00C
/* 801EE03C  38 60 00 FF */	li r3, 0xff
lbl_801EE040:
/* 801EE040  39 61 00 20 */	addi r11, r1, 0x20
/* 801EE044  48 17 41 E1 */	bl _restgpr_28
/* 801EE048  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801EE04C  7C 08 03 A6 */	mtlr r0
/* 801EE050  38 21 00 20 */	addi r1, r1, 0x20
/* 801EE054  4E 80 00 20 */	blr 
