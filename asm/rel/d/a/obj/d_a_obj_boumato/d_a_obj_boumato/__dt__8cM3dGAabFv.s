lbl_80BBB5EC:
/* 80BBB5EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BBB5F0  7C 08 02 A6 */	mflr r0
/* 80BBB5F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BBB5F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BBB5FC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BBB600  41 82 00 1C */	beq lbl_80BBB61C
/* 80BBB604  3C A0 80 BC */	lis r5, __vt__8cM3dGAab@ha /* 0x80BBC630@ha */
/* 80BBB608  38 05 C6 30 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80BBC630@l */
/* 80BBB60C  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80BBB610  7C 80 07 35 */	extsh. r0, r4
/* 80BBB614  40 81 00 08 */	ble lbl_80BBB61C
/* 80BBB618  4B 71 37 25 */	bl __dl__FPv
lbl_80BBB61C:
/* 80BBB61C  7F E3 FB 78 */	mr r3, r31
/* 80BBB620  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BBB624  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BBB628  7C 08 03 A6 */	mtlr r0
/* 80BBB62C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BBB630  4E 80 00 20 */	blr 
