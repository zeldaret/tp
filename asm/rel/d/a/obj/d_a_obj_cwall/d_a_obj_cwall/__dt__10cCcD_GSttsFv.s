lbl_80BD9E64:
/* 80BD9E64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD9E68  7C 08 02 A6 */	mflr r0
/* 80BD9E6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD9E70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BD9E74  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BD9E78  41 82 00 1C */	beq lbl_80BD9E94
/* 80BD9E7C  3C A0 80 BE */	lis r5, __vt__10cCcD_GStts@ha /* 0x80BDA290@ha */
/* 80BD9E80  38 05 A2 90 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x80BDA290@l */
/* 80BD9E84  90 1F 00 00 */	stw r0, 0(r31)
/* 80BD9E88  7C 80 07 35 */	extsh. r0, r4
/* 80BD9E8C  40 81 00 08 */	ble lbl_80BD9E94
/* 80BD9E90  4B 6F 4E AD */	bl __dl__FPv
lbl_80BD9E94:
/* 80BD9E94  7F E3 FB 78 */	mr r3, r31
/* 80BD9E98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BD9E9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD9EA0  7C 08 03 A6 */	mtlr r0
/* 80BD9EA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD9EA8  4E 80 00 20 */	blr 
