lbl_801AF948:
/* 801AF948  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801AF94C  7C 08 02 A6 */	mflr r0
/* 801AF950  90 01 00 24 */	stw r0, 0x24(r1)
/* 801AF954  39 61 00 20 */	addi r11, r1, 0x20
/* 801AF958  48 1B 28 81 */	bl _savegpr_28
/* 801AF95C  7C 7C 1B 78 */	mr r28, r3
/* 801AF960  54 9E 04 3F */	clrlwi. r30, r4, 0x10
/* 801AF964  40 82 00 3C */	bne lbl_801AF9A0
/* 801AF968  3B A0 00 00 */	li r29, 0
/* 801AF96C  3B E0 00 00 */	li r31, 0
/* 801AF970  3C 60 80 39 */	lis r3, d_menu_d_menu_calibration__stringBase0@ha
/* 801AF974  3B C3 4F 70 */	addi r30, r3, d_menu_d_menu_calibration__stringBase0@l
lbl_801AF978:
/* 801AF978  38 1F 00 3C */	addi r0, r31, 0x3c
/* 801AF97C  7C 7C 00 2E */	lwzx r3, r28, r0
/* 801AF980  48 15 0C D9 */	bl getStringPtr__10J2DTextBoxCFv
/* 801AF984  7F C4 F3 78 */	mr r4, r30
/* 801AF988  48 1B 91 A5 */	bl strcpy
/* 801AF98C  3B BD 00 01 */	addi r29, r29, 1
/* 801AF990  2C 1D 00 03 */	cmpwi r29, 3
/* 801AF994  3B FF 00 04 */	addi r31, r31, 4
/* 801AF998  41 80 FF E0 */	blt lbl_801AF978
/* 801AF99C  48 00 00 4C */	b lbl_801AF9E8
lbl_801AF9A0:
/* 801AF9A0  3B A0 00 00 */	li r29, 0
/* 801AF9A4  3B E0 00 00 */	li r31, 0
lbl_801AF9A8:
/* 801AF9A8  80 7C 00 A4 */	lwz r3, 0xa4(r28)
/* 801AF9AC  7F C4 F3 78 */	mr r4, r30
/* 801AF9B0  38 1F 00 3C */	addi r0, r31, 0x3c
/* 801AF9B4  7C BC 00 2E */	lwzx r5, r28, r0
/* 801AF9B8  38 C0 00 00 */	li r6, 0
/* 801AF9BC  38 E0 00 00 */	li r7, 0
/* 801AF9C0  39 00 00 00 */	li r8, 0
/* 801AF9C4  39 20 00 00 */	li r9, 0
/* 801AF9C8  81 83 00 00 */	lwz r12, 0(r3)
/* 801AF9CC  81 8C 00 08 */	lwz r12, 8(r12)
/* 801AF9D0  7D 89 03 A6 */	mtctr r12
/* 801AF9D4  4E 80 04 21 */	bctrl 
/* 801AF9D8  3B BD 00 01 */	addi r29, r29, 1
/* 801AF9DC  2C 1D 00 03 */	cmpwi r29, 3
/* 801AF9E0  3B FF 00 04 */	addi r31, r31, 4
/* 801AF9E4  41 80 FF C4 */	blt lbl_801AF9A8
lbl_801AF9E8:
/* 801AF9E8  39 61 00 20 */	addi r11, r1, 0x20
/* 801AF9EC  48 1B 28 39 */	bl _restgpr_28
/* 801AF9F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801AF9F4  7C 08 03 A6 */	mtlr r0
/* 801AF9F8  38 21 00 20 */	addi r1, r1, 0x20
/* 801AF9FC  4E 80 00 20 */	blr 
