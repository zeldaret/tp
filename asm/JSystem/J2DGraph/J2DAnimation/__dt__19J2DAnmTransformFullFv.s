lbl_8030CDAC:
/* 8030CDAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030CDB0  7C 08 02 A6 */	mflr r0
/* 8030CDB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030CDB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8030CDBC  7C 7F 1B 79 */	or. r31, r3, r3
/* 8030CDC0  41 82 00 40 */	beq lbl_8030CE00
/* 8030CDC4  3C 60 80 3D */	lis r3, __vt__19J2DAnmTransformFull@ha
/* 8030CDC8  38 03 D7 D4 */	addi r0, r3, __vt__19J2DAnmTransformFull@l
/* 8030CDCC  90 1F 00 00 */	stw r0, 0(r31)
/* 8030CDD0  41 82 00 20 */	beq lbl_8030CDF0
/* 8030CDD4  3C 60 80 3C */	lis r3, __vt__15J2DAnmTransform@ha
/* 8030CDD8  38 03 B3 B8 */	addi r0, r3, __vt__15J2DAnmTransform@l
/* 8030CDDC  90 1F 00 00 */	stw r0, 0(r31)
/* 8030CDE0  41 82 00 10 */	beq lbl_8030CDF0
/* 8030CDE4  3C 60 80 3B */	lis r3, __vt__10J2DAnmBase@ha
/* 8030CDE8  38 03 8E 04 */	addi r0, r3, __vt__10J2DAnmBase@l
/* 8030CDEC  90 1F 00 00 */	stw r0, 0(r31)
lbl_8030CDF0:
/* 8030CDF0  7C 80 07 35 */	extsh. r0, r4
/* 8030CDF4  40 81 00 0C */	ble lbl_8030CE00
/* 8030CDF8  7F E3 FB 78 */	mr r3, r31
/* 8030CDFC  4B FC 1F 41 */	bl __dl__FPv
lbl_8030CE00:
/* 8030CE00  7F E3 FB 78 */	mr r3, r31
/* 8030CE04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8030CE08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030CE0C  7C 08 03 A6 */	mtlr r0
/* 8030CE10  38 21 00 10 */	addi r1, r1, 0x10
/* 8030CE14  4E 80 00 20 */	blr 
