lbl_80108EEC:
/* 80108EEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80108EF0  7C 08 02 A6 */	mflr r0
/* 80108EF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80108EF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80108EFC  7C 7F 1B 78 */	mr r31, r3
/* 80108F00  A0 63 2F DC */	lhz r3, 0x2fdc(r3)
/* 80108F04  48 05 5C B5 */	bl checkHookshotItem__9daPy_py_cFi
/* 80108F08  2C 03 00 00 */	cmpwi r3, 0
/* 80108F0C  41 82 00 44 */	beq lbl_80108F50
/* 80108F10  A8 1F 30 1A */	lha r0, 0x301a(r31)
/* 80108F14  2C 00 00 03 */	cmpwi r0, 3
/* 80108F18  41 82 00 14 */	beq lbl_80108F2C
/* 80108F1C  2C 00 00 05 */	cmpwi r0, 5
/* 80108F20  41 82 00 0C */	beq lbl_80108F2C
/* 80108F24  2C 00 00 04 */	cmpwi r0, 4
/* 80108F28  40 82 00 28 */	bne lbl_80108F50
lbl_80108F2C:
/* 80108F2C  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 80108F30  28 00 00 C5 */	cmplwi r0, 0xc5
/* 80108F34  41 82 00 1C */	beq lbl_80108F50
/* 80108F38  28 00 00 C6 */	cmplwi r0, 0xc6
/* 80108F3C  41 82 00 14 */	beq lbl_80108F50
/* 80108F40  28 00 00 C4 */	cmplwi r0, 0xc4
/* 80108F44  41 82 00 0C */	beq lbl_80108F50
/* 80108F48  38 00 00 06 */	li r0, 6
/* 80108F4C  B0 1F 30 1A */	sth r0, 0x301a(r31)
lbl_80108F50:
/* 80108F50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80108F54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80108F58  7C 08 03 A6 */	mtlr r0
/* 80108F5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80108F60  4E 80 00 20 */	blr 
