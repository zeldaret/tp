lbl_80C435FC:
/* 80C435FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C43600  7C 08 02 A6 */	mflr r0
/* 80C43604  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C43608  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C4360C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C43610  41 82 00 1C */	beq lbl_80C4362C
/* 80C43614  3C A0 80 C4 */	lis r5, __vt__8cM3dGAab@ha /* 0x80C43C88@ha */
/* 80C43618  38 05 3C 88 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80C43C88@l */
/* 80C4361C  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80C43620  7C 80 07 35 */	extsh. r0, r4
/* 80C43624  40 81 00 08 */	ble lbl_80C4362C
/* 80C43628  4B 68 B7 15 */	bl __dl__FPv
lbl_80C4362C:
/* 80C4362C  7F E3 FB 78 */	mr r3, r31
/* 80C43630  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C43634  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C43638  7C 08 03 A6 */	mtlr r0
/* 80C4363C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C43640  4E 80 00 20 */	blr 
