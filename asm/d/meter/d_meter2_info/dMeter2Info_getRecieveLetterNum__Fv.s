lbl_8021E6E4:
/* 8021E6E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8021E6E8  7C 08 02 A6 */	mflr r0
/* 8021E6EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8021E6F0  39 61 00 20 */	addi r11, r1, 0x20
/* 8021E6F4  48 14 3A E9 */	bl _savegpr_29
/* 8021E6F8  3B C0 00 00 */	li r30, 0
/* 8021E6FC  3B A0 00 00 */	li r29, 0
/* 8021E700  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8021E704  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8021E708  3B E3 01 1C */	addi r31, r3, 0x11c
lbl_8021E70C:
/* 8021E70C  7F E3 FB 78 */	mr r3, r31
/* 8021E710  7F A4 EB 78 */	mr r4, r29
/* 8021E714  4B E1 5D 39 */	bl isLetterGetFlag__17dSv_letter_info_cCFi
/* 8021E718  2C 03 00 00 */	cmpwi r3, 0
/* 8021E71C  41 82 00 10 */	beq lbl_8021E72C
/* 8021E720  57 C3 06 3E */	clrlwi r3, r30, 0x18
/* 8021E724  38 03 00 01 */	addi r0, r3, 1
/* 8021E728  54 1E 06 3E */	clrlwi r30, r0, 0x18
lbl_8021E72C:
/* 8021E72C  3B BD 00 01 */	addi r29, r29, 1
/* 8021E730  2C 1D 00 40 */	cmpwi r29, 0x40
/* 8021E734  41 80 FF D8 */	blt lbl_8021E70C
/* 8021E738  7F C3 F3 78 */	mr r3, r30
/* 8021E73C  39 61 00 20 */	addi r11, r1, 0x20
/* 8021E740  48 14 3A E9 */	bl _restgpr_29
/* 8021E744  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8021E748  7C 08 03 A6 */	mtlr r0
/* 8021E74C  38 21 00 20 */	addi r1, r1, 0x20
/* 8021E750  4E 80 00 20 */	blr 
