lbl_80BE7F24:
/* 80BE7F24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE7F28  7C 08 02 A6 */	mflr r0
/* 80BE7F2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE7F30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BE7F34  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BE7F38  41 82 00 30 */	beq lbl_80BE7F68
/* 80BE7F3C  3C 60 80 BF */	lis r3, __vt__16daFireWood_HIO_c@ha
/* 80BE7F40  38 03 81 14 */	addi r0, r3, __vt__16daFireWood_HIO_c@l
/* 80BE7F44  90 1F 00 00 */	stw r0, 0(r31)
/* 80BE7F48  41 82 00 10 */	beq lbl_80BE7F58
/* 80BE7F4C  3C 60 80 BF */	lis r3, __vt__14mDoHIO_entry_c@ha
/* 80BE7F50  38 03 81 20 */	addi r0, r3, __vt__14mDoHIO_entry_c@l
/* 80BE7F54  90 1F 00 00 */	stw r0, 0(r31)
lbl_80BE7F58:
/* 80BE7F58  7C 80 07 35 */	extsh. r0, r4
/* 80BE7F5C  40 81 00 0C */	ble lbl_80BE7F68
/* 80BE7F60  7F E3 FB 78 */	mr r3, r31
/* 80BE7F64  4B 6E 6D D8 */	b __dl__FPv
lbl_80BE7F68:
/* 80BE7F68  7F E3 FB 78 */	mr r3, r31
/* 80BE7F6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BE7F70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE7F74  7C 08 03 A6 */	mtlr r0
/* 80BE7F78  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE7F7C  4E 80 00 20 */	blr 
