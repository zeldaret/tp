lbl_80108980:
/* 80108980  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80108984  7C 08 02 A6 */	mflr r0
/* 80108988  90 01 00 14 */	stw r0, 0x14(r1)
/* 8010898C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80108990  93 C1 00 08 */	stw r30, 8(r1)
/* 80108994  7C 7E 1B 78 */	mr r30, r3
/* 80108998  3B E0 00 00 */	li r31, 0
/* 8010899C  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 801089A0  28 00 00 C6 */	cmplwi r0, 0xc6
/* 801089A4  40 82 00 28 */	bne lbl_801089CC
/* 801089A8  A0 7E 2F DC */	lhz r3, 0x2fdc(r30)
/* 801089AC  48 05 62 0D */	bl checkHookshotItem__9daPy_py_cFi
/* 801089B0  2C 03 00 00 */	cmpwi r3, 0
/* 801089B4  41 82 00 18 */	beq lbl_801089CC
/* 801089B8  7F C3 F3 78 */	mr r3, r30
/* 801089BC  48 00 00 2D */	bl checkBossOctaIealRoom__9daAlink_cFv
/* 801089C0  2C 03 00 00 */	cmpwi r3, 0
/* 801089C4  41 82 00 08 */	beq lbl_801089CC
/* 801089C8  3B E0 00 01 */	li r31, 1
lbl_801089CC:
/* 801089CC  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 801089D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801089D4  83 C1 00 08 */	lwz r30, 8(r1)
/* 801089D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801089DC  7C 08 03 A6 */	mtlr r0
/* 801089E0  38 21 00 10 */	addi r1, r1, 0x10
/* 801089E4  4E 80 00 20 */	blr 
