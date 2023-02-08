lbl_8051B550:
/* 8051B550  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051B554  7C 08 02 A6 */	mflr r0
/* 8051B558  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051B55C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051B560  7C 7F 1B 79 */	or. r31, r3, r3
/* 8051B564  41 82 00 1C */	beq lbl_8051B580
/* 8051B568  3C A0 80 52 */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x8051BBEC@ha */
/* 8051B56C  38 05 BB EC */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x8051BBEC@l */
/* 8051B570  90 1F 00 00 */	stw r0, 0(r31)
/* 8051B574  7C 80 07 35 */	extsh. r0, r4
/* 8051B578  40 81 00 08 */	ble lbl_8051B580
/* 8051B57C  4B DB 37 C1 */	bl __dl__FPv
lbl_8051B580:
/* 8051B580  7F E3 FB 78 */	mr r3, r31
/* 8051B584  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051B588  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051B58C  7C 08 03 A6 */	mtlr r0
/* 8051B590  38 21 00 10 */	addi r1, r1, 0x10
/* 8051B594  4E 80 00 20 */	blr 
