lbl_80B6E320:
/* 80B6E320  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B6E324  7C 08 02 A6 */	mflr r0
/* 80B6E328  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B6E32C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B6E330  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B6E334  41 82 00 1C */	beq lbl_80B6E350
/* 80B6E338  3C A0 80 B7 */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80B6EBBC@ha */
/* 80B6E33C  38 05 EB BC */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80B6EBBC@l */
/* 80B6E340  90 1F 00 00 */	stw r0, 0(r31)
/* 80B6E344  7C 80 07 35 */	extsh. r0, r4
/* 80B6E348  40 81 00 08 */	ble lbl_80B6E350
/* 80B6E34C  4B 76 09 F1 */	bl __dl__FPv
lbl_80B6E350:
/* 80B6E350  7F E3 FB 78 */	mr r3, r31
/* 80B6E354  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B6E358  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B6E35C  7C 08 03 A6 */	mtlr r0
/* 80B6E360  38 21 00 10 */	addi r1, r1, 0x10
/* 80B6E364  4E 80 00 20 */	blr 
