lbl_80C73F60:
/* 80C73F60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C73F64  7C 08 02 A6 */	mflr r0
/* 80C73F68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C73F6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C73F70  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C73F74  41 82 00 30 */	beq lbl_80C73FA4
/* 80C73F78  3C 60 80 C7 */	lis r3, __vt__18fOpAcm_HIO_entry_c@ha
/* 80C73F7C  38 03 57 28 */	addi r0, r3, __vt__18fOpAcm_HIO_entry_c@l
/* 80C73F80  90 1F 00 00 */	stw r0, 0(r31)
/* 80C73F84  41 82 00 10 */	beq lbl_80C73F94
/* 80C73F88  3C 60 80 C7 */	lis r3, __vt__14mDoHIO_entry_c@ha
/* 80C73F8C  38 03 57 34 */	addi r0, r3, __vt__14mDoHIO_entry_c@l
/* 80C73F90  90 1F 00 00 */	stw r0, 0(r31)
lbl_80C73F94:
/* 80C73F94  7C 80 07 35 */	extsh. r0, r4
/* 80C73F98  40 81 00 0C */	ble lbl_80C73FA4
/* 80C73F9C  7F E3 FB 78 */	mr r3, r31
/* 80C73FA0  4B 65 AD 9C */	b __dl__FPv
lbl_80C73FA4:
/* 80C73FA4  7F E3 FB 78 */	mr r3, r31
/* 80C73FA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C73FAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C73FB0  7C 08 03 A6 */	mtlr r0
/* 80C73FB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C73FB8  4E 80 00 20 */	blr 
