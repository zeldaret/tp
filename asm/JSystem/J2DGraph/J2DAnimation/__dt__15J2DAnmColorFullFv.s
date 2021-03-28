lbl_8030CCF8:
/* 8030CCF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030CCFC  7C 08 02 A6 */	mflr r0
/* 8030CD00  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030CD04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8030CD08  7C 7F 1B 79 */	or. r31, r3, r3
/* 8030CD0C  41 82 00 58 */	beq lbl_8030CD64
/* 8030CD10  3C 60 80 3D */	lis r3, __vt__15J2DAnmColorFull@ha
/* 8030CD14  38 03 D7 94 */	addi r0, r3, __vt__15J2DAnmColorFull@l
/* 8030CD18  90 1F 00 00 */	stw r0, 0(r31)
/* 8030CD1C  41 82 00 38 */	beq lbl_8030CD54
/* 8030CD20  3C 60 80 3D */	lis r3, __vt__11J2DAnmColor@ha
/* 8030CD24  38 03 D7 A8 */	addi r0, r3, __vt__11J2DAnmColor@l
/* 8030CD28  90 1F 00 00 */	stw r0, 0(r31)
/* 8030CD2C  34 1F 00 20 */	addic. r0, r31, 0x20
/* 8030CD30  41 82 00 10 */	beq lbl_8030CD40
/* 8030CD34  3C 60 80 3C */	lis r3, __vt__10JUTNameTab@ha
/* 8030CD38  38 03 B3 DC */	addi r0, r3, __vt__10JUTNameTab@l
/* 8030CD3C  90 1F 00 20 */	stw r0, 0x20(r31)
lbl_8030CD40:
/* 8030CD40  28 1F 00 00 */	cmplwi r31, 0
/* 8030CD44  41 82 00 10 */	beq lbl_8030CD54
/* 8030CD48  3C 60 80 3B */	lis r3, __vt__10J2DAnmBase@ha
/* 8030CD4C  38 03 8E 04 */	addi r0, r3, __vt__10J2DAnmBase@l
/* 8030CD50  90 1F 00 00 */	stw r0, 0(r31)
lbl_8030CD54:
/* 8030CD54  7C 80 07 35 */	extsh. r0, r4
/* 8030CD58  40 81 00 0C */	ble lbl_8030CD64
/* 8030CD5C  7F E3 FB 78 */	mr r3, r31
/* 8030CD60  4B FC 1F DD */	bl __dl__FPv
lbl_8030CD64:
/* 8030CD64  7F E3 FB 78 */	mr r3, r31
/* 8030CD68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8030CD6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030CD70  7C 08 03 A6 */	mtlr r0
/* 8030CD74  38 21 00 10 */	addi r1, r1, 0x10
/* 8030CD78  4E 80 00 20 */	blr 
