lbl_8032BE2C:
/* 8032BE2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8032BE30  7C 08 02 A6 */	mflr r0
/* 8032BE34  90 01 00 14 */	stw r0, 0x14(r1)
/* 8032BE38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8032BE3C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8032BE40  41 82 00 58 */	beq lbl_8032BE98
/* 8032BE44  3C 60 80 3D */	lis r3, __vt__14J3DAnmColorKey@ha
/* 8032BE48  38 03 ED 70 */	addi r0, r3, __vt__14J3DAnmColorKey@l
/* 8032BE4C  90 1F 00 00 */	stw r0, 0(r31)
/* 8032BE50  41 82 00 38 */	beq lbl_8032BE88
/* 8032BE54  3C 60 80 3D */	lis r3, __vt__11J3DAnmColor@ha
/* 8032BE58  38 03 ED 98 */	addi r0, r3, __vt__11J3DAnmColor@l
/* 8032BE5C  90 1F 00 00 */	stw r0, 0(r31)
/* 8032BE60  34 1F 00 1C */	addic. r0, r31, 0x1c
/* 8032BE64  41 82 00 10 */	beq lbl_8032BE74
/* 8032BE68  3C 60 80 3C */	lis r3, __vt__10JUTNameTab@ha
/* 8032BE6C  38 03 B3 DC */	addi r0, r3, __vt__10JUTNameTab@l
/* 8032BE70  90 1F 00 1C */	stw r0, 0x1c(r31)
lbl_8032BE74:
/* 8032BE74  28 1F 00 00 */	cmplwi r31, 0
/* 8032BE78  41 82 00 10 */	beq lbl_8032BE88
/* 8032BE7C  3C 60 80 3A */	lis r3, __vt__10J3DAnmBase@ha
/* 8032BE80  38 03 7C 38 */	addi r0, r3, __vt__10J3DAnmBase@l
/* 8032BE84  90 1F 00 00 */	stw r0, 0(r31)
lbl_8032BE88:
/* 8032BE88  7C 80 07 35 */	extsh. r0, r4
/* 8032BE8C  40 81 00 0C */	ble lbl_8032BE98
/* 8032BE90  7F E3 FB 78 */	mr r3, r31
/* 8032BE94  4B FA 2E A9 */	bl __dl__FPv
lbl_8032BE98:
/* 8032BE98  7F E3 FB 78 */	mr r3, r31
/* 8032BE9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8032BEA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8032BEA4  7C 08 03 A6 */	mtlr r0
/* 8032BEA8  38 21 00 10 */	addi r1, r1, 0x10
/* 8032BEAC  4E 80 00 20 */	blr 
