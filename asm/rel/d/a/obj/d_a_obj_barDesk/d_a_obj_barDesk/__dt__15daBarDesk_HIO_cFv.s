lbl_80BA9A90:
/* 80BA9A90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA9A94  7C 08 02 A6 */	mflr r0
/* 80BA9A98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA9A9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA9AA0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BA9AA4  41 82 00 30 */	beq lbl_80BA9AD4
/* 80BA9AA8  3C 60 80 BB */	lis r3, __vt__15daBarDesk_HIO_c@ha /* 0x80BA9CF8@ha */
/* 80BA9AAC  38 03 9C F8 */	addi r0, r3, __vt__15daBarDesk_HIO_c@l /* 0x80BA9CF8@l */
/* 80BA9AB0  90 1F 00 00 */	stw r0, 0(r31)
/* 80BA9AB4  41 82 00 10 */	beq lbl_80BA9AC4
/* 80BA9AB8  3C 60 80 BB */	lis r3, __vt__14mDoHIO_entry_c@ha /* 0x80BA9D04@ha */
/* 80BA9ABC  38 03 9D 04 */	addi r0, r3, __vt__14mDoHIO_entry_c@l /* 0x80BA9D04@l */
/* 80BA9AC0  90 1F 00 00 */	stw r0, 0(r31)
lbl_80BA9AC4:
/* 80BA9AC4  7C 80 07 35 */	extsh. r0, r4
/* 80BA9AC8  40 81 00 0C */	ble lbl_80BA9AD4
/* 80BA9ACC  7F E3 FB 78 */	mr r3, r31
/* 80BA9AD0  4B 72 52 6D */	bl __dl__FPv
lbl_80BA9AD4:
/* 80BA9AD4  7F E3 FB 78 */	mr r3, r31
/* 80BA9AD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA9ADC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA9AE0  7C 08 03 A6 */	mtlr r0
/* 80BA9AE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA9AE8  4E 80 00 20 */	blr 
