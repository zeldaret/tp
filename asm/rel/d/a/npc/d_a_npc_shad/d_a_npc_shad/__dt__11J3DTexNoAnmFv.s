lbl_80AD8FCC:
/* 80AD8FCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD8FD0  7C 08 02 A6 */	mflr r0
/* 80AD8FD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD8FD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AD8FDC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AD8FE0  41 82 00 1C */	beq lbl_80AD8FFC
/* 80AD8FE4  3C A0 80 AE */	lis r5, __vt__11J3DTexNoAnm@ha
/* 80AD8FE8  38 05 2B CC */	addi r0, r5, __vt__11J3DTexNoAnm@l
/* 80AD8FEC  90 1F 00 00 */	stw r0, 0(r31)
/* 80AD8FF0  7C 80 07 35 */	extsh. r0, r4
/* 80AD8FF4  40 81 00 08 */	ble lbl_80AD8FFC
/* 80AD8FF8  4B 7F 5D 44 */	b __dl__FPv
lbl_80AD8FFC:
/* 80AD8FFC  7F E3 FB 78 */	mr r3, r31
/* 80AD9000  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AD9004  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD9008  7C 08 03 A6 */	mtlr r0
/* 80AD900C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD9010  4E 80 00 20 */	blr 
