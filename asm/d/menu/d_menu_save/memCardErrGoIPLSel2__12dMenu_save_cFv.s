lbl_801F1EE0:
/* 801F1EE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F1EE4  7C 08 02 A6 */	mflr r0
/* 801F1EE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F1EEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F1EF0  7C 7F 1B 78 */	mr r31, r3
/* 801F1EF4  38 80 00 01 */	li r4, 1
/* 801F1EF8  38 A0 00 00 */	li r5, 0
/* 801F1EFC  48 00 2F 4D */	bl errYesNoSelect__12dMenu_save_cFUcUc
/* 801F1F00  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801F1F04  41 82 00 68 */	beq lbl_801F1F6C
/* 801F1F08  88 1F 01 B6 */	lbz r0, 0x1b6(r31)
/* 801F1F0C  28 00 00 00 */	cmplwi r0, 0
/* 801F1F10  41 82 00 54 */	beq lbl_801F1F64
/* 801F1F14  38 00 00 01 */	li r0, 1
/* 801F1F18  98 1F 01 BF */	stb r0, 0x1bf(r31)
/* 801F1F1C  3C 60 80 43 */	lis r3, g_msHIO@ha /* 0x8042E84C@ha */
/* 801F1F20  38 63 E8 4C */	addi r3, r3, g_msHIO@l /* 0x8042E84C@l */
/* 801F1F24  88 03 00 0B */	lbz r0, 0xb(r3)
/* 801F1F28  98 1F 01 BD */	stb r0, 0x1bd(r31)
/* 801F1F2C  88 9F 01 BD */	lbz r4, 0x1bd(r31)
/* 801F1F30  80 6D 8C 40 */	lwz r3, sManager__10JFWDisplay(r13)
/* 801F1F34  80 63 00 04 */	lwz r3, 4(r3)
/* 801F1F38  28 03 00 00 */	cmplwi r3, 0
/* 801F1F3C  41 82 00 14 */	beq lbl_801F1F50
/* 801F1F40  81 83 00 00 */	lwz r12, 0(r3)
/* 801F1F44  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 801F1F48  7D 89 03 A6 */	mtctr r12
/* 801F1F4C  4E 80 04 21 */	bctrl 
lbl_801F1F50:
/* 801F1F50  38 00 00 01 */	li r0, 1
/* 801F1F54  98 1F 21 A0 */	stb r0, 0x21a0(r31)
/* 801F1F58  38 00 00 0F */	li r0, 0xf
/* 801F1F5C  98 1F 01 B2 */	stb r0, 0x1b2(r31)
/* 801F1F60  48 00 00 0C */	b lbl_801F1F6C
lbl_801F1F64:
/* 801F1F64  7F E3 FB 78 */	mr r3, r31
/* 801F1F68  4B FF FB D1 */	bl closeSelect__12dMenu_save_cFv
lbl_801F1F6C:
/* 801F1F6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F1F70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F1F74  7C 08 03 A6 */	mtlr r0
/* 801F1F78  38 21 00 10 */	addi r1, r1, 0x10
/* 801F1F7C  4E 80 00 20 */	blr 
