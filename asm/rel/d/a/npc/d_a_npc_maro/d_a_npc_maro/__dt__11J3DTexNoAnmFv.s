lbl_8055BCD4:
/* 8055BCD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055BCD8  7C 08 02 A6 */	mflr r0
/* 8055BCDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055BCE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8055BCE4  7C 7F 1B 79 */	or. r31, r3, r3
/* 8055BCE8  41 82 00 1C */	beq lbl_8055BD04
/* 8055BCEC  3C A0 80 56 */	lis r5, __vt__11J3DTexNoAnm@ha /* 0x80565C08@ha */
/* 8055BCF0  38 05 5C 08 */	addi r0, r5, __vt__11J3DTexNoAnm@l /* 0x80565C08@l */
/* 8055BCF4  90 1F 00 00 */	stw r0, 0(r31)
/* 8055BCF8  7C 80 07 35 */	extsh. r0, r4
/* 8055BCFC  40 81 00 08 */	ble lbl_8055BD04
/* 8055BD00  4B D7 30 3D */	bl __dl__FPv
lbl_8055BD04:
/* 8055BD04  7F E3 FB 78 */	mr r3, r31
/* 8055BD08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8055BD0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055BD10  7C 08 03 A6 */	mtlr r0
/* 8055BD14  38 21 00 10 */	addi r1, r1, 0x10
/* 8055BD18  4E 80 00 20 */	blr 
