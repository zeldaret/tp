lbl_804BADF4:
/* 804BADF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804BADF8  7C 08 02 A6 */	mflr r0
/* 804BADFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804BAE00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804BAE04  7C 7F 1B 79 */	or. r31, r3, r3
/* 804BAE08  41 82 00 1C */	beq lbl_804BAE24
/* 804BAE0C  3C A0 80 4C */	lis r5, __vt__8cM3dGAab@ha /* 0x804BBB2C@ha */
/* 804BAE10  38 05 BB 2C */	addi r0, r5, __vt__8cM3dGAab@l /* 0x804BBB2C@l */
/* 804BAE14  90 1F 00 18 */	stw r0, 0x18(r31)
/* 804BAE18  7C 80 07 35 */	extsh. r0, r4
/* 804BAE1C  40 81 00 08 */	ble lbl_804BAE24
/* 804BAE20  4B E1 3F 1D */	bl __dl__FPv
lbl_804BAE24:
/* 804BAE24  7F E3 FB 78 */	mr r3, r31
/* 804BAE28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804BAE2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804BAE30  7C 08 03 A6 */	mtlr r0
/* 804BAE34  38 21 00 10 */	addi r1, r1, 0x10
/* 804BAE38  4E 80 00 20 */	blr 
