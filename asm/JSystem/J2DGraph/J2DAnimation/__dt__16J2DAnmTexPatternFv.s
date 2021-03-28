lbl_8030CB90:
/* 8030CB90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030CB94  7C 08 02 A6 */	mflr r0
/* 8030CB98  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030CB9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8030CBA0  93 C1 00 08 */	stw r30, 8(r1)
/* 8030CBA4  7C 7E 1B 79 */	or. r30, r3, r3
/* 8030CBA8  7C 9F 23 78 */	mr r31, r4
/* 8030CBAC  41 82 00 58 */	beq lbl_8030CC04
/* 8030CBB0  3C 60 80 3D */	lis r3, __vt__16J2DAnmTexPattern@ha
/* 8030CBB4  38 03 D7 38 */	addi r0, r3, __vt__16J2DAnmTexPattern@l
/* 8030CBB8  90 1E 00 00 */	stw r0, 0(r30)
/* 8030CBBC  80 7E 00 30 */	lwz r3, 0x30(r30)
/* 8030CBC0  3C 80 80 31 */	lis r4, __dt__Q216J2DAnmTexPattern27J2DAnmTexPatternTIMGPointerFv@ha
/* 8030CBC4  38 84 CB 3C */	addi r4, r4, __dt__Q216J2DAnmTexPattern27J2DAnmTexPatternTIMGPointerFv@l
/* 8030CBC8  48 05 50 A5 */	bl __destroy_new_array
/* 8030CBCC  34 1E 00 20 */	addic. r0, r30, 0x20
/* 8030CBD0  41 82 00 10 */	beq lbl_8030CBE0
/* 8030CBD4  3C 60 80 3C */	lis r3, __vt__10JUTNameTab@ha
/* 8030CBD8  38 03 B3 DC */	addi r0, r3, __vt__10JUTNameTab@l
/* 8030CBDC  90 1E 00 20 */	stw r0, 0x20(r30)
lbl_8030CBE0:
/* 8030CBE0  28 1E 00 00 */	cmplwi r30, 0
/* 8030CBE4  41 82 00 10 */	beq lbl_8030CBF4
/* 8030CBE8  3C 60 80 3B */	lis r3, __vt__10J2DAnmBase@ha
/* 8030CBEC  38 03 8E 04 */	addi r0, r3, __vt__10J2DAnmBase@l
/* 8030CBF0  90 1E 00 00 */	stw r0, 0(r30)
lbl_8030CBF4:
/* 8030CBF4  7F E0 07 35 */	extsh. r0, r31
/* 8030CBF8  40 81 00 0C */	ble lbl_8030CC04
/* 8030CBFC  7F C3 F3 78 */	mr r3, r30
/* 8030CC00  4B FC 21 3D */	bl __dl__FPv
lbl_8030CC04:
/* 8030CC04  7F C3 F3 78 */	mr r3, r30
/* 8030CC08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8030CC0C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8030CC10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030CC14  7C 08 03 A6 */	mtlr r0
/* 8030CC18  38 21 00 10 */	addi r1, r1, 0x10
/* 8030CC1C  4E 80 00 20 */	blr 
