lbl_80238CA4:
/* 80238CA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80238CA8  7C 08 02 A6 */	mflr r0
/* 80238CAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80238CB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80238CB4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80238CB8  41 82 00 1C */	beq lbl_80238CD4
/* 80238CBC  3C A0 80 3C */	lis r5, __vt__10dMsgUnit_c@ha
/* 80238CC0  38 05 0B F0 */	addi r0, r5, __vt__10dMsgUnit_c@l
/* 80238CC4  90 1F 00 00 */	stw r0, 0(r31)
/* 80238CC8  7C 80 07 35 */	extsh. r0, r4
/* 80238CCC  40 81 00 08 */	ble lbl_80238CD4
/* 80238CD0  48 09 60 6D */	bl __dl__FPv
lbl_80238CD4:
/* 80238CD4  7F E3 FB 78 */	mr r3, r31
/* 80238CD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80238CDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80238CE0  7C 08 03 A6 */	mtlr r0
/* 80238CE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80238CE8  4E 80 00 20 */	blr 
