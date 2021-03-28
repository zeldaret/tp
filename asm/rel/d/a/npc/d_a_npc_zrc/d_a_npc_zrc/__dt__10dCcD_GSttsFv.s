lbl_80B92FA4:
/* 80B92FA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B92FA8  7C 08 02 A6 */	mflr r0
/* 80B92FAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B92FB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B92FB4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B92FB8  41 82 00 30 */	beq lbl_80B92FE8
/* 80B92FBC  3C 60 80 B9 */	lis r3, __vt__10dCcD_GStts@ha
/* 80B92FC0  38 03 3B B4 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80B92FC4  90 1F 00 00 */	stw r0, 0(r31)
/* 80B92FC8  41 82 00 10 */	beq lbl_80B92FD8
/* 80B92FCC  3C 60 80 B9 */	lis r3, __vt__10cCcD_GStts@ha
/* 80B92FD0  38 03 3B A8 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80B92FD4  90 1F 00 00 */	stw r0, 0(r31)
lbl_80B92FD8:
/* 80B92FD8  7C 80 07 35 */	extsh. r0, r4
/* 80B92FDC  40 81 00 0C */	ble lbl_80B92FE8
/* 80B92FE0  7F E3 FB 78 */	mr r3, r31
/* 80B92FE4  4B 73 BD 58 */	b __dl__FPv
lbl_80B92FE8:
/* 80B92FE8  7F E3 FB 78 */	mr r3, r31
/* 80B92FEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B92FF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B92FF4  7C 08 03 A6 */	mtlr r0
/* 80B92FF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80B92FFC  4E 80 00 20 */	blr 
