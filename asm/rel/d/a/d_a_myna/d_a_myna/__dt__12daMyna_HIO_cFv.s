lbl_8094A960:
/* 8094A960  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8094A964  7C 08 02 A6 */	mflr r0
/* 8094A968  90 01 00 14 */	stw r0, 0x14(r1)
/* 8094A96C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8094A970  7C 7F 1B 79 */	or. r31, r3, r3
/* 8094A974  41 82 00 30 */	beq lbl_8094A9A4
/* 8094A978  3C 60 80 95 */	lis r3, __vt__12daMyna_HIO_c@ha
/* 8094A97C  38 03 B9 CC */	addi r0, r3, __vt__12daMyna_HIO_c@l
/* 8094A980  90 1F 00 00 */	stw r0, 0(r31)
/* 8094A984  41 82 00 10 */	beq lbl_8094A994
/* 8094A988  3C 60 80 95 */	lis r3, __vt__14mDoHIO_entry_c@ha
/* 8094A98C  38 03 B9 D8 */	addi r0, r3, __vt__14mDoHIO_entry_c@l
/* 8094A990  90 1F 00 00 */	stw r0, 0(r31)
lbl_8094A994:
/* 8094A994  7C 80 07 35 */	extsh. r0, r4
/* 8094A998  40 81 00 0C */	ble lbl_8094A9A4
/* 8094A99C  7F E3 FB 78 */	mr r3, r31
/* 8094A9A0  4B 98 43 9C */	b __dl__FPv
lbl_8094A9A4:
/* 8094A9A4  7F E3 FB 78 */	mr r3, r31
/* 8094A9A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8094A9AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8094A9B0  7C 08 03 A6 */	mtlr r0
/* 8094A9B4  38 21 00 10 */	addi r1, r1, 0x10
/* 8094A9B8  4E 80 00 20 */	blr 
