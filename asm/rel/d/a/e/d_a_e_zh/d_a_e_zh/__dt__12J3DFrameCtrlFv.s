lbl_8082E6C8:
/* 8082E6C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8082E6CC  7C 08 02 A6 */	mflr r0
/* 8082E6D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8082E6D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8082E6D8  7C 7F 1B 79 */	or. r31, r3, r3
/* 8082E6DC  41 82 00 1C */	beq lbl_8082E6F8
/* 8082E6E0  3C A0 80 83 */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x8082F6C8@ha */
/* 8082E6E4  38 05 F6 C8 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x8082F6C8@l */
/* 8082E6E8  90 1F 00 00 */	stw r0, 0(r31)
/* 8082E6EC  7C 80 07 35 */	extsh. r0, r4
/* 8082E6F0  40 81 00 08 */	ble lbl_8082E6F8
/* 8082E6F4  4B AA 06 49 */	bl __dl__FPv
lbl_8082E6F8:
/* 8082E6F8  7F E3 FB 78 */	mr r3, r31
/* 8082E6FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8082E700  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8082E704  7C 08 03 A6 */	mtlr r0
/* 8082E708  38 21 00 10 */	addi r1, r1, 0x10
/* 8082E70C  4E 80 00 20 */	blr 
