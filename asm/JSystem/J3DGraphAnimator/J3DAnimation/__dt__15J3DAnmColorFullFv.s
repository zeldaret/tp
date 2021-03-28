lbl_8032BEB8:
/* 8032BEB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8032BEBC  7C 08 02 A6 */	mflr r0
/* 8032BEC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8032BEC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8032BEC8  7C 7F 1B 79 */	or. r31, r3, r3
/* 8032BECC  41 82 00 58 */	beq lbl_8032BF24
/* 8032BED0  3C 60 80 3D */	lis r3, __vt__15J3DAnmColorFull@ha
/* 8032BED4  38 03 ED 84 */	addi r0, r3, __vt__15J3DAnmColorFull@l
/* 8032BED8  90 1F 00 00 */	stw r0, 0(r31)
/* 8032BEDC  41 82 00 38 */	beq lbl_8032BF14
/* 8032BEE0  3C 60 80 3D */	lis r3, __vt__11J3DAnmColor@ha
/* 8032BEE4  38 03 ED 98 */	addi r0, r3, __vt__11J3DAnmColor@l
/* 8032BEE8  90 1F 00 00 */	stw r0, 0(r31)
/* 8032BEEC  34 1F 00 1C */	addic. r0, r31, 0x1c
/* 8032BEF0  41 82 00 10 */	beq lbl_8032BF00
/* 8032BEF4  3C 60 80 3C */	lis r3, __vt__10JUTNameTab@ha
/* 8032BEF8  38 03 B3 DC */	addi r0, r3, __vt__10JUTNameTab@l
/* 8032BEFC  90 1F 00 1C */	stw r0, 0x1c(r31)
lbl_8032BF00:
/* 8032BF00  28 1F 00 00 */	cmplwi r31, 0
/* 8032BF04  41 82 00 10 */	beq lbl_8032BF14
/* 8032BF08  3C 60 80 3A */	lis r3, __vt__10J3DAnmBase@ha
/* 8032BF0C  38 03 7C 38 */	addi r0, r3, __vt__10J3DAnmBase@l
/* 8032BF10  90 1F 00 00 */	stw r0, 0(r31)
lbl_8032BF14:
/* 8032BF14  7C 80 07 35 */	extsh. r0, r4
/* 8032BF18  40 81 00 0C */	ble lbl_8032BF24
/* 8032BF1C  7F E3 FB 78 */	mr r3, r31
/* 8032BF20  4B FA 2E 1D */	bl __dl__FPv
lbl_8032BF24:
/* 8032BF24  7F E3 FB 78 */	mr r3, r31
/* 8032BF28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8032BF2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8032BF30  7C 08 03 A6 */	mtlr r0
/* 8032BF34  38 21 00 10 */	addi r1, r1, 0x10
/* 8032BF38  4E 80 00 20 */	blr 
