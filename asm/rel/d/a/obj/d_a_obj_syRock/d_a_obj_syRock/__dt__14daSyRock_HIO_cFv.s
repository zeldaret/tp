lbl_80D03C44:
/* 80D03C44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D03C48  7C 08 02 A6 */	mflr r0
/* 80D03C4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D03C50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D03C54  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D03C58  41 82 00 30 */	beq lbl_80D03C88
/* 80D03C5C  3C 60 80 D0 */	lis r3, __vt__14daSyRock_HIO_c@ha /* 0x80D04240@ha */
/* 80D03C60  38 03 42 40 */	addi r0, r3, __vt__14daSyRock_HIO_c@l /* 0x80D04240@l */
/* 80D03C64  90 1F 00 00 */	stw r0, 0(r31)
/* 80D03C68  41 82 00 10 */	beq lbl_80D03C78
/* 80D03C6C  3C 60 80 D0 */	lis r3, __vt__14mDoHIO_entry_c@ha /* 0x80D0424C@ha */
/* 80D03C70  38 03 42 4C */	addi r0, r3, __vt__14mDoHIO_entry_c@l /* 0x80D0424C@l */
/* 80D03C74  90 1F 00 00 */	stw r0, 0(r31)
lbl_80D03C78:
/* 80D03C78  7C 80 07 35 */	extsh. r0, r4
/* 80D03C7C  40 81 00 0C */	ble lbl_80D03C88
/* 80D03C80  7F E3 FB 78 */	mr r3, r31
/* 80D03C84  4B 5C B0 B9 */	bl __dl__FPv
lbl_80D03C88:
/* 80D03C88  7F E3 FB 78 */	mr r3, r31
/* 80D03C8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D03C90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D03C94  7C 08 03 A6 */	mtlr r0
/* 80D03C98  38 21 00 10 */	addi r1, r1, 0x10
/* 80D03C9C  4E 80 00 20 */	blr 
