lbl_80048CB4:
/* 80048CB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80048CB8  7C 08 02 A6 */	mflr r0
/* 80048CBC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80048CC0  39 61 00 20 */	addi r11, r1, 0x20
/* 80048CC4  48 31 95 19 */	bl _savegpr_29
/* 80048CC8  7C 7D 1B 78 */	mr r29, r3
/* 80048CCC  3C 60 80 3B */	lis r3, __vt__15dSmplMdl_draw_c@ha /* 0x803A82F8@ha */
/* 80048CD0  38 03 82 F8 */	addi r0, r3, __vt__15dSmplMdl_draw_c@l /* 0x803A82F8@l */
/* 80048CD4  90 1D 00 00 */	stw r0, 0(r29)
/* 80048CD8  38 7D 00 04 */	addi r3, r29, 4
/* 80048CDC  3C 80 80 05 */	lis r4, __ct__12diff_model_cFv@ha /* 0x80048D60@ha */
/* 80048CE0  38 84 8D 60 */	addi r4, r4, __ct__12diff_model_cFv@l /* 0x80048D60@l */
/* 80048CE4  38 A0 00 00 */	li r5, 0
/* 80048CE8  38 C0 00 14 */	li r6, 0x14
/* 80048CEC  38 E0 00 08 */	li r7, 8
/* 80048CF0  48 31 90 71 */	bl __construct_array
/* 80048CF4  3B C0 00 00 */	li r30, 0
/* 80048CF8  3B E0 00 00 */	li r31, 0
lbl_80048CFC:
/* 80048CFC  38 7F 00 04 */	addi r3, r31, 4
/* 80048D00  7C 7D 1A 14 */	add r3, r29, r3
/* 80048D04  48 00 06 65 */	bl init__12diff_model_cFv
/* 80048D08  3B DE 00 01 */	addi r30, r30, 1
/* 80048D0C  2C 1E 00 08 */	cmpwi r30, 8
/* 80048D10  3B FF 00 14 */	addi r31, r31, 0x14
/* 80048D14  41 80 FF E8 */	blt lbl_80048CFC
/* 80048D18  38 60 00 00 */	li r3, 0
/* 80048D1C  38 80 00 00 */	li r4, 0
/* 80048D20  38 00 01 F4 */	li r0, 0x1f4
/* 80048D24  7C 09 03 A6 */	mtctr r0
lbl_80048D28:
/* 80048D28  7C BD 1A 14 */	add r5, r29, r3
/* 80048D2C  90 85 00 A8 */	stw r4, 0xa8(r5)
/* 80048D30  90 85 00 AC */	stw r4, 0xac(r5)
/* 80048D34  38 63 00 08 */	addi r3, r3, 8
/* 80048D38  42 00 FF F0 */	bdnz lbl_80048D28
/* 80048D3C  38 00 00 00 */	li r0, 0
/* 80048D40  90 1D 00 A4 */	stw r0, 0xa4(r29)
/* 80048D44  7F A3 EB 78 */	mr r3, r29
/* 80048D48  39 61 00 20 */	addi r11, r1, 0x20
/* 80048D4C  48 31 94 DD */	bl _restgpr_29
/* 80048D50  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80048D54  7C 08 03 A6 */	mtlr r0
/* 80048D58  38 21 00 20 */	addi r1, r1, 0x20
/* 80048D5C  4E 80 00 20 */	blr 
