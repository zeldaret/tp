lbl_80B6F550:
/* 80B6F550  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B6F554  7C 08 02 A6 */	mflr r0
/* 80B6F558  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B6F55C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B6F560  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B6F564  41 82 00 1C */	beq lbl_80B6F580
/* 80B6F568  3C A0 80 B7 */	lis r5, __vt__11J3DTexNoAnm@ha /* 0x80B71D2C@ha */
/* 80B6F56C  38 05 1D 2C */	addi r0, r5, __vt__11J3DTexNoAnm@l /* 0x80B71D2C@l */
/* 80B6F570  90 1F 00 00 */	stw r0, 0(r31)
/* 80B6F574  7C 80 07 35 */	extsh. r0, r4
/* 80B6F578  40 81 00 08 */	ble lbl_80B6F580
/* 80B6F57C  4B 75 F7 C1 */	bl __dl__FPv
lbl_80B6F580:
/* 80B6F580  7F E3 FB 78 */	mr r3, r31
/* 80B6F584  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B6F588  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B6F58C  7C 08 03 A6 */	mtlr r0
/* 80B6F590  38 21 00 10 */	addi r1, r1, 0x10
/* 80B6F594  4E 80 00 20 */	blr 
