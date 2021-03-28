lbl_801923CC:
/* 801923CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801923D0  7C 08 02 A6 */	mflr r0
/* 801923D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801923D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801923DC  7C 7F 1B 79 */	or. r31, r3, r3
/* 801923E0  41 82 00 1C */	beq lbl_801923FC
/* 801923E4  3C A0 80 3C */	lis r5, __vt__16dDlst_FileWarn_c@ha
/* 801923E8  38 05 B4 4C */	addi r0, r5, __vt__16dDlst_FileWarn_c@l
/* 801923EC  90 1F 00 00 */	stw r0, 0(r31)
/* 801923F0  7C 80 07 35 */	extsh. r0, r4
/* 801923F4  40 81 00 08 */	ble lbl_801923FC
/* 801923F8  48 13 C9 45 */	bl __dl__FPv
lbl_801923FC:
/* 801923FC  7F E3 FB 78 */	mr r3, r31
/* 80192400  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80192404  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80192408  7C 08 03 A6 */	mtlr r0
/* 8019240C  38 21 00 10 */	addi r1, r1, 0x10
/* 80192410  4E 80 00 20 */	blr 
