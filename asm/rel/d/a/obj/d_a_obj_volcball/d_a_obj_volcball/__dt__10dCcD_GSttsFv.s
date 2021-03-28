lbl_80D22358:
/* 80D22358  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2235C  7C 08 02 A6 */	mflr r0
/* 80D22360  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D22364  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D22368  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D2236C  41 82 00 30 */	beq lbl_80D2239C
/* 80D22370  3C 60 80 D2 */	lis r3, __vt__10dCcD_GStts@ha
/* 80D22374  38 03 40 78 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80D22378  90 1F 00 00 */	stw r0, 0(r31)
/* 80D2237C  41 82 00 10 */	beq lbl_80D2238C
/* 80D22380  3C 60 80 D2 */	lis r3, __vt__10cCcD_GStts@ha
/* 80D22384  38 03 40 6C */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80D22388  90 1F 00 00 */	stw r0, 0(r31)
lbl_80D2238C:
/* 80D2238C  7C 80 07 35 */	extsh. r0, r4
/* 80D22390  40 81 00 0C */	ble lbl_80D2239C
/* 80D22394  7F E3 FB 78 */	mr r3, r31
/* 80D22398  4B 5A C9 A4 */	b __dl__FPv
lbl_80D2239C:
/* 80D2239C  7F E3 FB 78 */	mr r3, r31
/* 80D223A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D223A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D223A8  7C 08 03 A6 */	mtlr r0
/* 80D223AC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D223B0  4E 80 00 20 */	blr 
