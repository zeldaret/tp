lbl_8032BCAC:
/* 8032BCAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8032BCB0  7C 08 02 A6 */	mflr r0
/* 8032BCB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8032BCB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8032BCBC  7C 7F 1B 79 */	or. r31, r3, r3
/* 8032BCC0  41 82 00 48 */	beq lbl_8032BD08
/* 8032BCC4  3C 60 80 3D */	lis r3, __vt__11J3DAnmColor@ha
/* 8032BCC8  38 03 ED 98 */	addi r0, r3, __vt__11J3DAnmColor@l
/* 8032BCCC  90 1F 00 00 */	stw r0, 0(r31)
/* 8032BCD0  34 1F 00 1C */	addic. r0, r31, 0x1c
/* 8032BCD4  41 82 00 10 */	beq lbl_8032BCE4
/* 8032BCD8  3C 60 80 3C */	lis r3, __vt__10JUTNameTab@ha
/* 8032BCDC  38 03 B3 DC */	addi r0, r3, __vt__10JUTNameTab@l
/* 8032BCE0  90 1F 00 1C */	stw r0, 0x1c(r31)
lbl_8032BCE4:
/* 8032BCE4  28 1F 00 00 */	cmplwi r31, 0
/* 8032BCE8  41 82 00 10 */	beq lbl_8032BCF8
/* 8032BCEC  3C 60 80 3A */	lis r3, __vt__10J3DAnmBase@ha
/* 8032BCF0  38 03 7C 38 */	addi r0, r3, __vt__10J3DAnmBase@l
/* 8032BCF4  90 1F 00 00 */	stw r0, 0(r31)
lbl_8032BCF8:
/* 8032BCF8  7C 80 07 35 */	extsh. r0, r4
/* 8032BCFC  40 81 00 0C */	ble lbl_8032BD08
/* 8032BD00  7F E3 FB 78 */	mr r3, r31
/* 8032BD04  4B FA 30 39 */	bl __dl__FPv
lbl_8032BD08:
/* 8032BD08  7F E3 FB 78 */	mr r3, r31
/* 8032BD0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8032BD10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8032BD14  7C 08 03 A6 */	mtlr r0
/* 8032BD18  38 21 00 10 */	addi r1, r1, 0x10
/* 8032BD1C  4E 80 00 20 */	blr 
