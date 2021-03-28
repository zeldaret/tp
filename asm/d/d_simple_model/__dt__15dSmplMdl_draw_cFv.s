lbl_80048D80:
/* 80048D80  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80048D84  7C 08 02 A6 */	mflr r0
/* 80048D88  90 01 00 24 */	stw r0, 0x24(r1)
/* 80048D8C  39 61 00 20 */	addi r11, r1, 0x20
/* 80048D90  48 31 94 49 */	bl _savegpr_28
/* 80048D94  7C 7C 1B 79 */	or. r28, r3, r3
/* 80048D98  7C 9D 23 78 */	mr r29, r4
/* 80048D9C  41 82 00 54 */	beq lbl_80048DF0
/* 80048DA0  3C 60 80 3B */	lis r3, __vt__15dSmplMdl_draw_c@ha
/* 80048DA4  38 03 82 F8 */	addi r0, r3, __vt__15dSmplMdl_draw_c@l
/* 80048DA8  90 1C 00 00 */	stw r0, 0(r28)
/* 80048DAC  3B C0 00 00 */	li r30, 0
/* 80048DB0  3B E0 00 00 */	li r31, 0
lbl_80048DB4:
/* 80048DB4  7C 7C FA 14 */	add r3, r28, r31
/* 80048DB8  80 03 00 08 */	lwz r0, 8(r3)
/* 80048DBC  28 00 00 00 */	cmplwi r0, 0
/* 80048DC0  41 82 00 10 */	beq lbl_80048DD0
/* 80048DC4  38 63 00 04 */	addi r3, r3, 4
/* 80048DC8  38 80 00 01 */	li r4, 1
/* 80048DCC  48 00 04 45 */	bl remove__12diff_model_cFi
lbl_80048DD0:
/* 80048DD0  3B DE 00 01 */	addi r30, r30, 1
/* 80048DD4  2C 1E 00 08 */	cmpwi r30, 8
/* 80048DD8  3B FF 00 14 */	addi r31, r31, 0x14
/* 80048DDC  41 80 FF D8 */	blt lbl_80048DB4
/* 80048DE0  7F A0 07 35 */	extsh. r0, r29
/* 80048DE4  40 81 00 0C */	ble lbl_80048DF0
/* 80048DE8  7F 83 E3 78 */	mr r3, r28
/* 80048DEC  48 28 5F 51 */	bl __dl__FPv
lbl_80048DF0:
/* 80048DF0  7F 83 E3 78 */	mr r3, r28
/* 80048DF4  39 61 00 20 */	addi r11, r1, 0x20
/* 80048DF8  48 31 94 2D */	bl _restgpr_28
/* 80048DFC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80048E00  7C 08 03 A6 */	mtlr r0
/* 80048E04  38 21 00 20 */	addi r1, r1, 0x20
/* 80048E08  4E 80 00 20 */	blr 
