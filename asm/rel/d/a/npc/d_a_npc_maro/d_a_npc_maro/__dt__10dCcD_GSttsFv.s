lbl_80563FCC:
/* 80563FCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80563FD0  7C 08 02 A6 */	mflr r0
/* 80563FD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80563FD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80563FDC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80563FE0  41 82 00 30 */	beq lbl_80564010
/* 80563FE4  3C 60 80 56 */	lis r3, __vt__10dCcD_GStts@ha
/* 80563FE8  38 03 5C 5C */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80563FEC  90 1F 00 00 */	stw r0, 0(r31)
/* 80563FF0  41 82 00 10 */	beq lbl_80564000
/* 80563FF4  3C 60 80 56 */	lis r3, __vt__10cCcD_GStts@ha
/* 80563FF8  38 03 5C 50 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80563FFC  90 1F 00 00 */	stw r0, 0(r31)
lbl_80564000:
/* 80564000  7C 80 07 35 */	extsh. r0, r4
/* 80564004  40 81 00 0C */	ble lbl_80564010
/* 80564008  7F E3 FB 78 */	mr r3, r31
/* 8056400C  4B D6 AD 30 */	b __dl__FPv
lbl_80564010:
/* 80564010  7F E3 FB 78 */	mr r3, r31
/* 80564014  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80564018  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056401C  7C 08 03 A6 */	mtlr r0
/* 80564020  38 21 00 10 */	addi r1, r1, 0x10
/* 80564024  4E 80 00 20 */	blr 
