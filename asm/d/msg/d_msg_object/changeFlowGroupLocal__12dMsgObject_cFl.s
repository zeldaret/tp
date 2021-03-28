lbl_80236C90:
/* 80236C90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80236C94  7C 08 02 A6 */	mflr r0
/* 80236C98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80236C9C  38 00 00 01 */	li r0, 1
/* 80236CA0  98 03 01 9C */	stb r0, 0x19c(r3)
/* 80236CA4  38 00 0B B8 */	li r0, 0xbb8
/* 80236CA8  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 80236CAC  38 04 F4 48 */	addi r0, r4, -3000
/* 80236CB0  7C 00 18 14 */	addc r0, r0, r3
/* 80236CB4  7C 60 01 10 */	subfe r3, r0, r0
/* 80236CB8  A8 0D 8B 48 */	lha r0, s_groupID(r13)
/* 80236CBC  7C 03 18 78 */	andc r3, r0, r3
/* 80236CC0  48 00 14 05 */	bl changeGroup__12dMsgObject_cFs
/* 80236CC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80236CC8  7C 08 03 A6 */	mtlr r0
/* 80236CCC  38 21 00 10 */	addi r1, r1, 0x10
/* 80236CD0  4E 80 00 20 */	blr 
