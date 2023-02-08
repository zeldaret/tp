lbl_80C8CB44:
/* 80C8CB44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8CB48  7C 08 02 A6 */	mflr r0
/* 80C8CB4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8CB50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C8CB54  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C8CB58  41 82 00 30 */	beq lbl_80C8CB88
/* 80C8CB5C  3C 60 80 C9 */	lis r3, __vt__15daUdFloor_HIO_c@ha /* 0x80C8CD5C@ha */
/* 80C8CB60  38 03 CD 5C */	addi r0, r3, __vt__15daUdFloor_HIO_c@l /* 0x80C8CD5C@l */
/* 80C8CB64  90 1F 00 00 */	stw r0, 0(r31)
/* 80C8CB68  41 82 00 10 */	beq lbl_80C8CB78
/* 80C8CB6C  3C 60 80 C9 */	lis r3, __vt__14mDoHIO_entry_c@ha /* 0x80C8CD68@ha */
/* 80C8CB70  38 03 CD 68 */	addi r0, r3, __vt__14mDoHIO_entry_c@l /* 0x80C8CD68@l */
/* 80C8CB74  90 1F 00 00 */	stw r0, 0(r31)
lbl_80C8CB78:
/* 80C8CB78  7C 80 07 35 */	extsh. r0, r4
/* 80C8CB7C  40 81 00 0C */	ble lbl_80C8CB88
/* 80C8CB80  7F E3 FB 78 */	mr r3, r31
/* 80C8CB84  4B 64 21 B9 */	bl __dl__FPv
lbl_80C8CB88:
/* 80C8CB88  7F E3 FB 78 */	mr r3, r31
/* 80C8CB8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C8CB90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8CB94  7C 08 03 A6 */	mtlr r0
/* 80C8CB98  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8CB9C  4E 80 00 20 */	blr 
