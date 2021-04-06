lbl_80D04F44:
/* 80D04F44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D04F48  7C 08 02 A6 */	mflr r0
/* 80D04F4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D04F50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D04F54  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D04F58  41 82 00 1C */	beq lbl_80D04F74
/* 80D04F5C  3C A0 80 D0 */	lis r5, __vt__14mDoHIO_entry_c@ha /* 0x80D0631C@ha */
/* 80D04F60  38 05 63 1C */	addi r0, r5, __vt__14mDoHIO_entry_c@l /* 0x80D0631C@l */
/* 80D04F64  90 1F 00 00 */	stw r0, 0(r31)
/* 80D04F68  7C 80 07 35 */	extsh. r0, r4
/* 80D04F6C  40 81 00 08 */	ble lbl_80D04F74
/* 80D04F70  4B 5C 9D CD */	bl __dl__FPv
lbl_80D04F74:
/* 80D04F74  7F E3 FB 78 */	mr r3, r31
/* 80D04F78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D04F7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D04F80  7C 08 03 A6 */	mtlr r0
/* 80D04F84  38 21 00 10 */	addi r1, r1, 0x10
/* 80D04F88  4E 80 00 20 */	blr 
