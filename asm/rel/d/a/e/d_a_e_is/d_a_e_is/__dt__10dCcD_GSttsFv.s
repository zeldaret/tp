lbl_806F7940:
/* 806F7940  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806F7944  7C 08 02 A6 */	mflr r0
/* 806F7948  90 01 00 14 */	stw r0, 0x14(r1)
/* 806F794C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806F7950  7C 7F 1B 79 */	or. r31, r3, r3
/* 806F7954  41 82 00 30 */	beq lbl_806F7984
/* 806F7958  3C 60 80 6F */	lis r3, __vt__10dCcD_GStts@ha
/* 806F795C  38 03 7D 68 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 806F7960  90 1F 00 00 */	stw r0, 0(r31)
/* 806F7964  41 82 00 10 */	beq lbl_806F7974
/* 806F7968  3C 60 80 6F */	lis r3, __vt__10cCcD_GStts@ha
/* 806F796C  38 03 7D 5C */	addi r0, r3, __vt__10cCcD_GStts@l
/* 806F7970  90 1F 00 00 */	stw r0, 0(r31)
lbl_806F7974:
/* 806F7974  7C 80 07 35 */	extsh. r0, r4
/* 806F7978  40 81 00 0C */	ble lbl_806F7984
/* 806F797C  7F E3 FB 78 */	mr r3, r31
/* 806F7980  4B BD 73 BC */	b __dl__FPv
lbl_806F7984:
/* 806F7984  7F E3 FB 78 */	mr r3, r31
/* 806F7988  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806F798C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806F7990  7C 08 03 A6 */	mtlr r0
/* 806F7994  38 21 00 10 */	addi r1, r1, 0x10
/* 806F7998  4E 80 00 20 */	blr 
