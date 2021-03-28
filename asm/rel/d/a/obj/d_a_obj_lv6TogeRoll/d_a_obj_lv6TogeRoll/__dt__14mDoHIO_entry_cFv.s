lbl_80C77C80:
/* 80C77C80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C77C84  7C 08 02 A6 */	mflr r0
/* 80C77C88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C77C8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C77C90  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C77C94  41 82 00 1C */	beq lbl_80C77CB0
/* 80C77C98  3C A0 80 C8 */	lis r5, __vt__14mDoHIO_entry_c@ha
/* 80C77C9C  38 05 9D 24 */	addi r0, r5, __vt__14mDoHIO_entry_c@l
/* 80C77CA0  90 1F 00 00 */	stw r0, 0(r31)
/* 80C77CA4  7C 80 07 35 */	extsh. r0, r4
/* 80C77CA8  40 81 00 08 */	ble lbl_80C77CB0
/* 80C77CAC  4B 65 70 90 */	b __dl__FPv
lbl_80C77CB0:
/* 80C77CB0  7F E3 FB 78 */	mr r3, r31
/* 80C77CB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C77CB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C77CBC  7C 08 03 A6 */	mtlr r0
/* 80C77CC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C77CC4  4E 80 00 20 */	blr 
