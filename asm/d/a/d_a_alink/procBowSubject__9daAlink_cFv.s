lbl_800DFDDC:
/* 800DFDDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800DFDE0  7C 08 02 A6 */	mflr r0
/* 800DFDE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800DFDE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800DFDEC  7C 7F 1B 78 */	mr r31, r3
/* 800DFDF0  38 80 00 12 */	li r4, 0x12
/* 800DFDF4  4B FD 34 5D */	bl setDoStatus__9daAlink_cFUc
/* 800DFDF8  7F E3 FB 78 */	mr r3, r31
/* 800DFDFC  38 80 00 00 */	li r4, 0
/* 800DFE00  4B FD A2 D1 */	bl checkNextAction__9daAlink_cFi
/* 800DFE04  2C 03 00 00 */	cmpwi r3, 0
/* 800DFE08  40 82 00 1C */	bne lbl_800DFE24
/* 800DFE0C  7F E3 FB 78 */	mr r3, r31
/* 800DFE10  4B FE EA 91 */	bl setBodyAngleToCamera__9daAlink_cFv
/* 800DFE14  2C 03 00 00 */	cmpwi r3, 0
/* 800DFE18  41 82 00 0C */	beq lbl_800DFE24
/* 800DFE1C  7F E3 FB 78 */	mr r3, r31
/* 800DFE20  4B FF FE B9 */	bl setBowSight__9daAlink_cFv
lbl_800DFE24:
/* 800DFE24  38 60 00 01 */	li r3, 1
/* 800DFE28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800DFE2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800DFE30  7C 08 03 A6 */	mtlr r0
/* 800DFE34  38 21 00 10 */	addi r1, r1, 0x10
/* 800DFE38  4E 80 00 20 */	blr 
