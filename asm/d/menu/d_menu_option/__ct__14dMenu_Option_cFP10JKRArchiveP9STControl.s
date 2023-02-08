lbl_801E1F10:
/* 801E1F10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801E1F14  7C 08 02 A6 */	mflr r0
/* 801E1F18  90 01 00 14 */	stw r0, 0x14(r1)
/* 801E1F1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801E1F20  93 C1 00 08 */	stw r30, 8(r1)
/* 801E1F24  7C 7F 1B 78 */	mr r31, r3
/* 801E1F28  7C BE 2B 78 */	mr r30, r5
/* 801E1F2C  3C 60 80 3A */	lis r3, __vt__12dDlst_base_c@ha /* 0x803A6F88@ha */
/* 801E1F30  38 03 6F 88 */	addi r0, r3, __vt__12dDlst_base_c@l /* 0x803A6F88@l */
/* 801E1F34  90 1F 00 00 */	stw r0, 0(r31)
/* 801E1F38  3C 60 80 3C */	lis r3, __vt__14dMenu_Option_c@ha /* 0x803BDE54@ha */
/* 801E1F3C  38 03 DE 54 */	addi r0, r3, __vt__14dMenu_Option_c@l /* 0x803BDE54@l */
/* 801E1F40  90 1F 00 00 */	stw r0, 0(r31)
/* 801E1F44  38 7F 02 B0 */	addi r3, r31, 0x2b0
/* 801E1F48  3C 80 80 19 */	lis r4, __ct__Q28JUtility6TColorFv@ha /* 0x80193960@ha */
/* 801E1F4C  38 84 39 60 */	addi r4, r4, __ct__Q28JUtility6TColorFv@l /* 0x80193960@l */
/* 801E1F50  38 A0 00 00 */	li r5, 0
/* 801E1F54  38 C0 00 04 */	li r6, 4
/* 801E1F58  38 E0 00 02 */	li r7, 2
/* 801E1F5C  48 17 FE 05 */	bl __construct_array
/* 801E1F60  38 7F 02 B8 */	addi r3, r31, 0x2b8
/* 801E1F64  3C 80 80 19 */	lis r4, __ct__Q28JUtility6TColorFv@ha /* 0x80193960@ha */
/* 801E1F68  38 84 39 60 */	addi r4, r4, __ct__Q28JUtility6TColorFv@l /* 0x80193960@l */
/* 801E1F6C  38 A0 00 00 */	li r5, 0
/* 801E1F70  38 C0 00 04 */	li r6, 4
/* 801E1F74  38 E0 00 02 */	li r7, 2
/* 801E1F78  48 17 FD E9 */	bl __construct_array
/* 801E1F7C  38 7F 02 C0 */	addi r3, r31, 0x2c0
/* 801E1F80  3C 80 80 19 */	lis r4, __ct__Q28JUtility6TColorFv@ha /* 0x80193960@ha */
/* 801E1F84  38 84 39 60 */	addi r4, r4, __ct__Q28JUtility6TColorFv@l /* 0x80193960@l */
/* 801E1F88  38 A0 00 00 */	li r5, 0
/* 801E1F8C  38 C0 00 04 */	li r6, 4
/* 801E1F90  38 E0 00 02 */	li r7, 2
/* 801E1F94  48 17 FD CD */	bl __construct_array
/* 801E1F98  38 7F 02 C8 */	addi r3, r31, 0x2c8
/* 801E1F9C  3C 80 80 19 */	lis r4, __ct__Q28JUtility6TColorFv@ha /* 0x80193960@ha */
/* 801E1FA0  38 84 39 60 */	addi r4, r4, __ct__Q28JUtility6TColorFv@l /* 0x80193960@l */
/* 801E1FA4  38 A0 00 00 */	li r5, 0
/* 801E1FA8  38 C0 00 04 */	li r6, 4
/* 801E1FAC  38 E0 00 02 */	li r7, 2
/* 801E1FB0  48 17 FD B1 */	bl __construct_array
/* 801E1FB4  38 00 FF FF */	li r0, -1
/* 801E1FB8  90 1F 03 B8 */	stw r0, 0x3b8(r31)
/* 801E1FBC  90 1F 03 BC */	stw r0, 0x3bc(r31)
/* 801E1FC0  38 80 00 00 */	li r4, 0
/* 801E1FC4  98 9F 03 EE */	stb r4, 0x3ee(r31)
/* 801E1FC8  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801E1FCC  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 801E1FD0  C0 03 07 0C */	lfs f0, 0x70c(r3)
/* 801E1FD4  D0 1F 03 3C */	stfs f0, 0x33c(r31)
/* 801E1FD8  C0 03 07 10 */	lfs f0, 0x710(r3)
/* 801E1FDC  D0 1F 03 40 */	stfs f0, 0x340(r31)
/* 801E1FE0  90 9F 00 50 */	stw r4, 0x50(r31)
/* 801E1FE4  93 DF 00 58 */	stw r30, 0x58(r31)
/* 801E1FE8  90 9F 00 40 */	stw r4, 0x40(r31)
/* 801E1FEC  38 00 00 01 */	li r0, 1
/* 801E1FF0  98 1F 03 EC */	stb r0, 0x3ec(r31)
/* 801E1FF4  90 9F 00 3C */	stw r4, 0x3c(r31)
/* 801E1FF8  7F E3 FB 78 */	mr r3, r31
/* 801E1FFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801E2000  83 C1 00 08 */	lwz r30, 8(r1)
/* 801E2004  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801E2008  7C 08 03 A6 */	mtlr r0
/* 801E200C  38 21 00 10 */	addi r1, r1, 0x10
/* 801E2010  4E 80 00 20 */	blr 
