lbl_80670EC0:
/* 80670EC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80670EC4  7C 08 02 A6 */	mflr r0
/* 80670EC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80670ECC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80670ED0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80670ED4  41 82 00 1C */	beq lbl_80670EF0
/* 80670ED8  3C A0 80 67 */	lis r5, __vt__12J3DFrameCtrl@ha
/* 80670EDC  38 05 27 90 */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 80670EE0  90 1F 00 00 */	stw r0, 0(r31)
/* 80670EE4  7C 80 07 35 */	extsh. r0, r4
/* 80670EE8  40 81 00 08 */	ble lbl_80670EF0
/* 80670EEC  4B C5 DE 50 */	b __dl__FPv
lbl_80670EF0:
/* 80670EF0  7F E3 FB 78 */	mr r3, r31
/* 80670EF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80670EF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80670EFC  7C 08 03 A6 */	mtlr r0
/* 80670F00  38 21 00 10 */	addi r1, r1, 0x10
/* 80670F04  4E 80 00 20 */	blr 
