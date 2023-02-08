lbl_80C781F0:
/* 80C781F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C781F4  7C 08 02 A6 */	mflr r0
/* 80C781F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C781FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C78200  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C78204  41 82 00 1C */	beq lbl_80C78220
/* 80C78208  3C A0 80 C8 */	lis r5, __vt__8cM3dGSph@ha /* 0x80C79CD8@ha */
/* 80C7820C  38 05 9C D8 */	addi r0, r5, __vt__8cM3dGSph@l /* 0x80C79CD8@l */
/* 80C78210  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80C78214  7C 80 07 35 */	extsh. r0, r4
/* 80C78218  40 81 00 08 */	ble lbl_80C78220
/* 80C7821C  4B 65 6B 21 */	bl __dl__FPv
lbl_80C78220:
/* 80C78220  7F E3 FB 78 */	mr r3, r31
/* 80C78224  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C78228  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C7822C  7C 08 03 A6 */	mtlr r0
/* 80C78230  38 21 00 10 */	addi r1, r1, 0x10
/* 80C78234  4E 80 00 20 */	blr 
