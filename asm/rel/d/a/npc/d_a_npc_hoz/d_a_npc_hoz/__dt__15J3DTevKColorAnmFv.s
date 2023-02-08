lbl_80A01B98:
/* 80A01B98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A01B9C  7C 08 02 A6 */	mflr r0
/* 80A01BA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A01BA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A01BA8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A01BAC  41 82 00 10 */	beq lbl_80A01BBC
/* 80A01BB0  7C 80 07 35 */	extsh. r0, r4
/* 80A01BB4  40 81 00 08 */	ble lbl_80A01BBC
/* 80A01BB8  4B 8C D1 85 */	bl __dl__FPv
lbl_80A01BBC:
/* 80A01BBC  7F E3 FB 78 */	mr r3, r31
/* 80A01BC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A01BC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A01BC8  7C 08 03 A6 */	mtlr r0
/* 80A01BCC  38 21 00 10 */	addi r1, r1, 0x10
/* 80A01BD0  4E 80 00 20 */	blr 
