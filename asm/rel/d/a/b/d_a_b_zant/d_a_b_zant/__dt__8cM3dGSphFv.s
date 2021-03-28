lbl_8063F494:
/* 8063F494  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063F498  7C 08 02 A6 */	mflr r0
/* 8063F49C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063F4A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8063F4A4  7C 7F 1B 79 */	or. r31, r3, r3
/* 8063F4A8  41 82 00 1C */	beq lbl_8063F4C4
/* 8063F4AC  3C A0 80 65 */	lis r5, __vt__8cM3dGSph@ha
/* 8063F4B0  38 05 F5 8C */	addi r0, r5, __vt__8cM3dGSph@l
/* 8063F4B4  90 1F 00 10 */	stw r0, 0x10(r31)
/* 8063F4B8  7C 80 07 35 */	extsh. r0, r4
/* 8063F4BC  40 81 00 08 */	ble lbl_8063F4C4
/* 8063F4C0  4B C8 F8 7C */	b __dl__FPv
lbl_8063F4C4:
/* 8063F4C4  7F E3 FB 78 */	mr r3, r31
/* 8063F4C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8063F4CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063F4D0  7C 08 03 A6 */	mtlr r0
/* 8063F4D4  38 21 00 10 */	addi r1, r1, 0x10
/* 8063F4D8  4E 80 00 20 */	blr 
