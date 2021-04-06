lbl_801E2014:
/* 801E2014  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801E2018  7C 08 02 A6 */	mflr r0
/* 801E201C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801E2020  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801E2024  7C 7F 1B 79 */	or. r31, r3, r3
/* 801E2028  41 82 00 1C */	beq lbl_801E2044
/* 801E202C  3C A0 80 3C */	lis r5, __vt__14dMenu_Option_c@ha /* 0x803BDE54@ha */
/* 801E2030  38 05 DE 54 */	addi r0, r5, __vt__14dMenu_Option_c@l /* 0x803BDE54@l */
/* 801E2034  90 1F 00 00 */	stw r0, 0(r31)
/* 801E2038  7C 80 07 35 */	extsh. r0, r4
/* 801E203C  40 81 00 08 */	ble lbl_801E2044
/* 801E2040  48 0E CC FD */	bl __dl__FPv
lbl_801E2044:
/* 801E2044  7F E3 FB 78 */	mr r3, r31
/* 801E2048  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801E204C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801E2050  7C 08 03 A6 */	mtlr r0
/* 801E2054  38 21 00 10 */	addi r1, r1, 0x10
/* 801E2058  4E 80 00 20 */	blr 
