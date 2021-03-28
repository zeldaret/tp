lbl_80AD8390:
/* 80AD8390  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD8394  7C 08 02 A6 */	mflr r0
/* 80AD8398  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD839C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AD83A0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AD83A4  41 82 00 1C */	beq lbl_80AD83C0
/* 80AD83A8  3C A0 80 AE */	lis r5, __vt__8cM3dGCyl@ha
/* 80AD83AC  38 05 2C 80 */	addi r0, r5, __vt__8cM3dGCyl@l
/* 80AD83B0  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80AD83B4  7C 80 07 35 */	extsh. r0, r4
/* 80AD83B8  40 81 00 08 */	ble lbl_80AD83C0
/* 80AD83BC  4B 7F 69 80 */	b __dl__FPv
lbl_80AD83C0:
/* 80AD83C0  7F E3 FB 78 */	mr r3, r31
/* 80AD83C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AD83C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD83CC  7C 08 03 A6 */	mtlr r0
/* 80AD83D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD83D4  4E 80 00 20 */	blr 
