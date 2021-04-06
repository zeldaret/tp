lbl_80293CAC:
/* 80293CAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80293CB0  7C 08 02 A6 */	mflr r0
/* 80293CB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80293CB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80293CBC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80293CC0  41 82 00 1C */	beq lbl_80293CDC
/* 80293CC4  3C A0 80 3C */	lis r5, __vt__12JASSeqParser@ha /* 0x803C7650@ha */
/* 80293CC8  38 05 76 50 */	addi r0, r5, __vt__12JASSeqParser@l /* 0x803C7650@l */
/* 80293CCC  90 1F 00 00 */	stw r0, 0(r31)
/* 80293CD0  7C 80 07 35 */	extsh. r0, r4
/* 80293CD4  40 81 00 08 */	ble lbl_80293CDC
/* 80293CD8  48 03 B0 65 */	bl __dl__FPv
lbl_80293CDC:
/* 80293CDC  7F E3 FB 78 */	mr r3, r31
/* 80293CE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80293CE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80293CE8  7C 08 03 A6 */	mtlr r0
/* 80293CEC  38 21 00 10 */	addi r1, r1, 0x10
/* 80293CF0  4E 80 00 20 */	blr 
