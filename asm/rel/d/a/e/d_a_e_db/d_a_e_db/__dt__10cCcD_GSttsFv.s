lbl_806A1390:
/* 806A1390  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806A1394  7C 08 02 A6 */	mflr r0
/* 806A1398  90 01 00 14 */	stw r0, 0x14(r1)
/* 806A139C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806A13A0  7C 7F 1B 79 */	or. r31, r3, r3
/* 806A13A4  41 82 00 1C */	beq lbl_806A13C0
/* 806A13A8  3C A0 80 6A */	lis r5, __vt__10cCcD_GStts@ha
/* 806A13AC  38 05 1D 10 */	addi r0, r5, __vt__10cCcD_GStts@l
/* 806A13B0  90 1F 00 00 */	stw r0, 0(r31)
/* 806A13B4  7C 80 07 35 */	extsh. r0, r4
/* 806A13B8  40 81 00 08 */	ble lbl_806A13C0
/* 806A13BC  4B C2 D9 80 */	b __dl__FPv
lbl_806A13C0:
/* 806A13C0  7F E3 FB 78 */	mr r3, r31
/* 806A13C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806A13C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806A13CC  7C 08 03 A6 */	mtlr r0
/* 806A13D0  38 21 00 10 */	addi r1, r1, 0x10
/* 806A13D4  4E 80 00 20 */	blr 
