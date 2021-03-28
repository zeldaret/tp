lbl_8095CF20:
/* 8095CF20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8095CF24  7C 08 02 A6 */	mflr r0
/* 8095CF28  90 01 00 14 */	stw r0, 0x14(r1)
/* 8095CF2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8095CF30  7C 7F 1B 79 */	or. r31, r3, r3
/* 8095CF34  41 82 00 10 */	beq lbl_8095CF44
/* 8095CF38  7C 80 07 35 */	extsh. r0, r4
/* 8095CF3C  40 81 00 08 */	ble lbl_8095CF44
/* 8095CF40  4B 97 1D FC */	b __dl__FPv
lbl_8095CF44:
/* 8095CF44  7F E3 FB 78 */	mr r3, r31
/* 8095CF48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8095CF4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8095CF50  7C 08 03 A6 */	mtlr r0
/* 8095CF54  38 21 00 10 */	addi r1, r1, 0x10
/* 8095CF58  4E 80 00 20 */	blr 
