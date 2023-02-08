lbl_80C71EE8:
/* 80C71EE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C71EEC  7C 08 02 A6 */	mflr r0
/* 80C71EF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C71EF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C71EF8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C71EFC  41 82 00 40 */	beq lbl_80C71F3C
/* 80C71F00  3C 60 80 C7 */	lis r3, __vt__21daLv6ChangeGate_HIO_c@ha /* 0x80C72350@ha */
/* 80C71F04  38 03 23 50 */	addi r0, r3, __vt__21daLv6ChangeGate_HIO_c@l /* 0x80C72350@l */
/* 80C71F08  90 1F 00 00 */	stw r0, 0(r31)
/* 80C71F0C  41 82 00 20 */	beq lbl_80C71F2C
/* 80C71F10  3C 60 80 C7 */	lis r3, __vt__18fOpAcm_HIO_entry_c@ha /* 0x80C7235C@ha */
/* 80C71F14  38 03 23 5C */	addi r0, r3, __vt__18fOpAcm_HIO_entry_c@l /* 0x80C7235C@l */
/* 80C71F18  90 1F 00 00 */	stw r0, 0(r31)
/* 80C71F1C  41 82 00 10 */	beq lbl_80C71F2C
/* 80C71F20  3C 60 80 C7 */	lis r3, __vt__14mDoHIO_entry_c@ha /* 0x80C72368@ha */
/* 80C71F24  38 03 23 68 */	addi r0, r3, __vt__14mDoHIO_entry_c@l /* 0x80C72368@l */
/* 80C71F28  90 1F 00 00 */	stw r0, 0(r31)
lbl_80C71F2C:
/* 80C71F2C  7C 80 07 35 */	extsh. r0, r4
/* 80C71F30  40 81 00 0C */	ble lbl_80C71F3C
/* 80C71F34  7F E3 FB 78 */	mr r3, r31
/* 80C71F38  4B 65 CE 05 */	bl __dl__FPv
lbl_80C71F3C:
/* 80C71F3C  7F E3 FB 78 */	mr r3, r31
/* 80C71F40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C71F44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C71F48  7C 08 03 A6 */	mtlr r0
/* 80C71F4C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C71F50  4E 80 00 20 */	blr 
