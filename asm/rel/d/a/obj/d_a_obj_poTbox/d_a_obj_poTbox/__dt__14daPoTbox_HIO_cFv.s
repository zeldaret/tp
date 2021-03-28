lbl_80CB4F14:
/* 80CB4F14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB4F18  7C 08 02 A6 */	mflr r0
/* 80CB4F1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB4F20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB4F24  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CB4F28  41 82 00 30 */	beq lbl_80CB4F58
/* 80CB4F2C  3C 60 80 CB */	lis r3, __vt__14daPoTbox_HIO_c@ha
/* 80CB4F30  38 03 51 08 */	addi r0, r3, __vt__14daPoTbox_HIO_c@l
/* 80CB4F34  90 1F 00 00 */	stw r0, 0(r31)
/* 80CB4F38  41 82 00 10 */	beq lbl_80CB4F48
/* 80CB4F3C  3C 60 80 CB */	lis r3, __vt__14mDoHIO_entry_c@ha
/* 80CB4F40  38 03 51 14 */	addi r0, r3, __vt__14mDoHIO_entry_c@l
/* 80CB4F44  90 1F 00 00 */	stw r0, 0(r31)
lbl_80CB4F48:
/* 80CB4F48  7C 80 07 35 */	extsh. r0, r4
/* 80CB4F4C  40 81 00 0C */	ble lbl_80CB4F58
/* 80CB4F50  7F E3 FB 78 */	mr r3, r31
/* 80CB4F54  4B 61 9D E8 */	b __dl__FPv
lbl_80CB4F58:
/* 80CB4F58  7F E3 FB 78 */	mr r3, r31
/* 80CB4F5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB4F60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB4F64  7C 08 03 A6 */	mtlr r0
/* 80CB4F68  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB4F6C  4E 80 00 20 */	blr 
