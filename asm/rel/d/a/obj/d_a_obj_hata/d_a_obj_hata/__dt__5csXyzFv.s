lbl_80C18CCC:
/* 80C18CCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C18CD0  7C 08 02 A6 */	mflr r0
/* 80C18CD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C18CD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C18CDC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C18CE0  41 82 00 10 */	beq lbl_80C18CF0
/* 80C18CE4  7C 80 07 35 */	extsh. r0, r4
/* 80C18CE8  40 81 00 08 */	ble lbl_80C18CF0
/* 80C18CEC  4B 6B 60 50 */	b __dl__FPv
lbl_80C18CF0:
/* 80C18CF0  7F E3 FB 78 */	mr r3, r31
/* 80C18CF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C18CF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C18CFC  7C 08 03 A6 */	mtlr r0
/* 80C18D00  38 21 00 10 */	addi r1, r1, 0x10
/* 80C18D04  4E 80 00 20 */	blr 
