lbl_805EE5D8:
/* 805EE5D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805EE5DC  7C 08 02 A6 */	mflr r0
/* 805EE5E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805EE5E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805EE5E8  7C 7F 1B 79 */	or. r31, r3, r3
/* 805EE5EC  41 82 00 1C */	beq lbl_805EE608
/* 805EE5F0  3C A0 80 5F */	lis r5, __vt__8cM3dGPla@ha
/* 805EE5F4  38 05 47 70 */	addi r0, r5, __vt__8cM3dGPla@l
/* 805EE5F8  90 1F 00 10 */	stw r0, 0x10(r31)
/* 805EE5FC  7C 80 07 35 */	extsh. r0, r4
/* 805EE600  40 81 00 08 */	ble lbl_805EE608
/* 805EE604  4B CE 07 38 */	b __dl__FPv
lbl_805EE608:
/* 805EE608  7F E3 FB 78 */	mr r3, r31
/* 805EE60C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805EE610  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805EE614  7C 08 03 A6 */	mtlr r0
/* 805EE618  38 21 00 10 */	addi r1, r1, 0x10
/* 805EE61C  4E 80 00 20 */	blr 
