lbl_80AF8000:
/* 80AF8000  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AF8004  7C 08 02 A6 */	mflr r0
/* 80AF8008  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF800C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AF8010  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AF8014  41 82 00 1C */	beq lbl_80AF8030
/* 80AF8018  3C A0 80 B0 */	lis r5, __vt__11J3DTexNoAnm@ha
/* 80AF801C  38 05 C5 84 */	addi r0, r5, __vt__11J3DTexNoAnm@l
/* 80AF8020  90 1F 00 00 */	stw r0, 0(r31)
/* 80AF8024  7C 80 07 35 */	extsh. r0, r4
/* 80AF8028  40 81 00 08 */	ble lbl_80AF8030
/* 80AF802C  4B 7D 6D 10 */	b __dl__FPv
lbl_80AF8030:
/* 80AF8030  7F E3 FB 78 */	mr r3, r31
/* 80AF8034  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AF8038  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AF803C  7C 08 03 A6 */	mtlr r0
/* 80AF8040  38 21 00 10 */	addi r1, r1, 0x10
/* 80AF8044  4E 80 00 20 */	blr 
