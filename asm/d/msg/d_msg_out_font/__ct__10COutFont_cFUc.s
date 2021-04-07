lbl_80225C94:
/* 80225C94  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80225C98  7C 08 02 A6 */	mflr r0
/* 80225C9C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80225CA0  39 61 00 20 */	addi r11, r1, 0x20
/* 80225CA4  48 13 C5 39 */	bl _savegpr_29
/* 80225CA8  7C 7D 1B 78 */	mr r29, r3
/* 80225CAC  3C 60 80 3C */	lis r3, __vt__10COutFont_c@ha /* 0x803BFDC4@ha */
/* 80225CB0  38 03 FD C4 */	addi r0, r3, __vt__10COutFont_c@l /* 0x803BFDC4@l */
/* 80225CB4  90 1D 00 00 */	stw r0, 0(r29)
/* 80225CB8  98 9D 02 42 */	stb r4, 0x242(r29)
/* 80225CBC  3B C0 00 00 */	li r30, 0
/* 80225CC0  3B E0 00 00 */	li r31, 0
lbl_80225CC4:
/* 80225CC4  38 60 00 20 */	li r3, 0x20
/* 80225CC8  48 0A 8F 85 */	bl __nw__FUl
/* 80225CCC  7C 64 1B 79 */	or. r4, r3, r3
/* 80225CD0  41 82 00 0C */	beq lbl_80225CDC
/* 80225CD4  4B FF FE E5 */	bl __ct__13COutFontSet_cFv
/* 80225CD8  7C 64 1B 78 */	mr r4, r3
lbl_80225CDC:
/* 80225CDC  38 1F 00 04 */	addi r0, r31, 4
/* 80225CE0  7C 9D 01 2E */	stwx r4, r29, r0
/* 80225CE4  3B DE 00 01 */	addi r30, r30, 1
/* 80225CE8  2C 1E 00 23 */	cmpwi r30, 0x23
/* 80225CEC  3B FF 00 04 */	addi r31, r31, 4
/* 80225CF0  41 80 FF D4 */	blt lbl_80225CC4
/* 80225CF4  38 60 00 00 */	li r3, 0
/* 80225CF8  38 80 00 00 */	li r4, 0
/* 80225CFC  38 A0 00 00 */	li r5, 0
/* 80225D00  38 00 00 46 */	li r0, 0x46
/* 80225D04  7C 09 03 A6 */	mtctr r0
lbl_80225D08:
/* 80225D08  38 04 00 90 */	addi r0, r4, 0x90
/* 80225D0C  7C BD 01 2E */	stwx r5, r29, r0
/* 80225D10  38 03 01 B4 */	addi r0, r3, 0x1b4
/* 80225D14  7C BD 03 2E */	sthx r5, r29, r0
/* 80225D18  38 63 00 02 */	addi r3, r3, 2
/* 80225D1C  38 84 00 04 */	addi r4, r4, 4
/* 80225D20  42 00 FF E8 */	bdnz lbl_80225D08
/* 80225D24  C0 02 B0 10 */	lfs f0, lit_3748(r2)
/* 80225D28  D0 1D 01 A8 */	stfs f0, 0x1a8(r29)
/* 80225D2C  C0 02 B0 14 */	lfs f0, lit_3749(r2)
/* 80225D30  D0 1D 01 B0 */	stfs f0, 0x1b0(r29)
/* 80225D34  D0 1D 01 AC */	stfs f0, 0x1ac(r29)
/* 80225D38  38 00 00 00 */	li r0, 0
/* 80225D3C  98 1D 02 40 */	stb r0, 0x240(r29)
/* 80225D40  98 1D 02 41 */	stb r0, 0x241(r29)
/* 80225D44  7F A3 EB 78 */	mr r3, r29
/* 80225D48  39 61 00 20 */	addi r11, r1, 0x20
/* 80225D4C  48 13 C4 DD */	bl _restgpr_29
/* 80225D50  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80225D54  7C 08 03 A6 */	mtlr r0
/* 80225D58  38 21 00 20 */	addi r1, r1, 0x20
/* 80225D5C  4E 80 00 20 */	blr 
