lbl_8032BD9C:
/* 8032BD9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8032BDA0  7C 08 02 A6 */	mflr r0
/* 8032BDA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8032BDA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8032BDAC  7C 7F 1B 79 */	or. r31, r3, r3
/* 8032BDB0  41 82 00 5C */	beq lbl_8032BE0C
/* 8032BDB4  3C 60 80 3D */	lis r3, __vt__15J3DAnmTevRegKey@ha
/* 8032BDB8  38 03 ED 60 */	addi r0, r3, __vt__15J3DAnmTevRegKey@l
/* 8032BDBC  90 1F 00 00 */	stw r0, 0(r31)
/* 8032BDC0  34 1F 00 38 */	addic. r0, r31, 0x38
/* 8032BDC4  41 82 00 10 */	beq lbl_8032BDD4
/* 8032BDC8  3C 60 80 3C */	lis r3, __vt__10JUTNameTab@ha
/* 8032BDCC  38 03 B3 DC */	addi r0, r3, __vt__10JUTNameTab@l
/* 8032BDD0  90 1F 00 38 */	stw r0, 0x38(r31)
lbl_8032BDD4:
/* 8032BDD4  34 1F 00 24 */	addic. r0, r31, 0x24
/* 8032BDD8  41 82 00 10 */	beq lbl_8032BDE8
/* 8032BDDC  3C 60 80 3C */	lis r3, __vt__10JUTNameTab@ha
/* 8032BDE0  38 03 B3 DC */	addi r0, r3, __vt__10JUTNameTab@l
/* 8032BDE4  90 1F 00 24 */	stw r0, 0x24(r31)
lbl_8032BDE8:
/* 8032BDE8  28 1F 00 00 */	cmplwi r31, 0
/* 8032BDEC  41 82 00 10 */	beq lbl_8032BDFC
/* 8032BDF0  3C 60 80 3A */	lis r3, __vt__10J3DAnmBase@ha
/* 8032BDF4  38 03 7C 38 */	addi r0, r3, __vt__10J3DAnmBase@l
/* 8032BDF8  90 1F 00 00 */	stw r0, 0(r31)
lbl_8032BDFC:
/* 8032BDFC  7C 80 07 35 */	extsh. r0, r4
/* 8032BE00  40 81 00 0C */	ble lbl_8032BE0C
/* 8032BE04  7F E3 FB 78 */	mr r3, r31
/* 8032BE08  4B FA 2F 35 */	bl __dl__FPv
lbl_8032BE0C:
/* 8032BE0C  7F E3 FB 78 */	mr r3, r31
/* 8032BE10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8032BE14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8032BE18  7C 08 03 A6 */	mtlr r0
/* 8032BE1C  38 21 00 10 */	addi r1, r1, 0x10
/* 8032BE20  4E 80 00 20 */	blr 
