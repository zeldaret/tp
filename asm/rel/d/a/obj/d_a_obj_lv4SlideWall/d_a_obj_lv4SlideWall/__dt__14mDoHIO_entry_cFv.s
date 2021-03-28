lbl_80C61E68:
/* 80C61E68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C61E6C  7C 08 02 A6 */	mflr r0
/* 80C61E70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C61E74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C61E78  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C61E7C  41 82 00 1C */	beq lbl_80C61E98
/* 80C61E80  3C A0 80 C6 */	lis r5, __vt__14mDoHIO_entry_c@ha
/* 80C61E84  38 05 27 BC */	addi r0, r5, __vt__14mDoHIO_entry_c@l
/* 80C61E88  90 1F 00 00 */	stw r0, 0(r31)
/* 80C61E8C  7C 80 07 35 */	extsh. r0, r4
/* 80C61E90  40 81 00 08 */	ble lbl_80C61E98
/* 80C61E94  4B 66 CE A8 */	b __dl__FPv
lbl_80C61E98:
/* 80C61E98  7F E3 FB 78 */	mr r3, r31
/* 80C61E9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C61EA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C61EA4  7C 08 03 A6 */	mtlr r0
/* 80C61EA8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C61EAC  4E 80 00 20 */	blr 
