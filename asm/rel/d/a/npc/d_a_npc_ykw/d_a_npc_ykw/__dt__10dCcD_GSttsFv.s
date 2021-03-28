lbl_80B67390:
/* 80B67390  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B67394  7C 08 02 A6 */	mflr r0
/* 80B67398  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B6739C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B673A0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B673A4  41 82 00 30 */	beq lbl_80B673D4
/* 80B673A8  3C 60 80 B7 */	lis r3, __vt__10dCcD_GStts@ha
/* 80B673AC  38 03 8C 3C */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80B673B0  90 1F 00 00 */	stw r0, 0(r31)
/* 80B673B4  41 82 00 10 */	beq lbl_80B673C4
/* 80B673B8  3C 60 80 B7 */	lis r3, __vt__10cCcD_GStts@ha
/* 80B673BC  38 03 8C 30 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80B673C0  90 1F 00 00 */	stw r0, 0(r31)
lbl_80B673C4:
/* 80B673C4  7C 80 07 35 */	extsh. r0, r4
/* 80B673C8  40 81 00 0C */	ble lbl_80B673D4
/* 80B673CC  7F E3 FB 78 */	mr r3, r31
/* 80B673D0  4B 76 79 6C */	b __dl__FPv
lbl_80B673D4:
/* 80B673D4  7F E3 FB 78 */	mr r3, r31
/* 80B673D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B673DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B673E0  7C 08 03 A6 */	mtlr r0
/* 80B673E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B673E8  4E 80 00 20 */	blr 
