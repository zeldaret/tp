lbl_801085BC:
/* 801085BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801085C0  7C 08 02 A6 */	mflr r0
/* 801085C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801085C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801085CC  7C 7F 1B 78 */	mr r31, r3
/* 801085D0  A0 63 2F DC */	lhz r3, 0x2fdc(r3)
/* 801085D4  48 05 65 E5 */	bl checkHookshotItem__9daPy_py_cFi
/* 801085D8  2C 03 00 00 */	cmpwi r3, 0
/* 801085DC  41 82 00 0C */	beq lbl_801085E8
/* 801085E0  38 7F 37 EC */	addi r3, r31, 0x37ec
/* 801085E4  48 00 00 08 */	b lbl_801085EC
lbl_801085E8:
/* 801085E8  38 60 00 00 */	li r3, 0
lbl_801085EC:
/* 801085EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801085F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801085F4  7C 08 03 A6 */	mtlr r0
/* 801085F8  38 21 00 10 */	addi r1, r1, 0x10
/* 801085FC  4E 80 00 20 */	blr 
