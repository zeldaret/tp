lbl_80083F88:
/* 80083F88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80083F8C  7C 08 02 A6 */	mflr r0
/* 80083F90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80083F94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80083F98  7C 7F 1B 79 */	or. r31, r3, r3
/* 80083F9C  41 82 00 30 */	beq lbl_80083FCC
/* 80083FA0  3C 60 80 3B */	lis r3, __vt__10cCcD_ObjCo@ha
/* 80083FA4  38 03 C2 A8 */	addi r0, r3, __vt__10cCcD_ObjCo@l
/* 80083FA8  90 1F 00 0C */	stw r0, 0xc(r31)
/* 80083FAC  41 82 00 10 */	beq lbl_80083FBC
/* 80083FB0  3C 60 80 3B */	lis r3, __vt__18cCcD_ObjCommonBase@ha
/* 80083FB4  38 03 C2 CC */	addi r0, r3, __vt__18cCcD_ObjCommonBase@l
/* 80083FB8  90 1F 00 0C */	stw r0, 0xc(r31)
lbl_80083FBC:
/* 80083FBC  7C 80 07 35 */	extsh. r0, r4
/* 80083FC0  40 81 00 0C */	ble lbl_80083FCC
/* 80083FC4  7F E3 FB 78 */	mr r3, r31
/* 80083FC8  48 24 AD 75 */	bl __dl__FPv
lbl_80083FCC:
/* 80083FCC  7F E3 FB 78 */	mr r3, r31
/* 80083FD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80083FD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80083FD8  7C 08 03 A6 */	mtlr r0
/* 80083FDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80083FE0  4E 80 00 20 */	blr 
