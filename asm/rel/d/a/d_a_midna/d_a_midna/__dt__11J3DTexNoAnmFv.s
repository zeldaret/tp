lbl_804BD140:
/* 804BD140  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804BD144  7C 08 02 A6 */	mflr r0
/* 804BD148  90 01 00 14 */	stw r0, 0x14(r1)
/* 804BD14C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804BD150  7C 7F 1B 79 */	or. r31, r3, r3
/* 804BD154  41 82 00 1C */	beq lbl_804BD170
/* 804BD158  3C A0 80 4C */	lis r5, __vt__11J3DTexNoAnm@ha /* 0x804C6C9C@ha */
/* 804BD15C  38 05 6C 9C */	addi r0, r5, __vt__11J3DTexNoAnm@l /* 0x804C6C9C@l */
/* 804BD160  90 1F 00 00 */	stw r0, 0(r31)
/* 804BD164  7C 80 07 35 */	extsh. r0, r4
/* 804BD168  40 81 00 08 */	ble lbl_804BD170
/* 804BD16C  4B E1 1B D1 */	bl __dl__FPv
lbl_804BD170:
/* 804BD170  7F E3 FB 78 */	mr r3, r31
/* 804BD174  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804BD178  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804BD17C  7C 08 03 A6 */	mtlr r0
/* 804BD180  38 21 00 10 */	addi r1, r1, 0x10
/* 804BD184  4E 80 00 20 */	blr 
