lbl_80083FE4:
/* 80083FE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80083FE8  7C 08 02 A6 */	mflr r0
/* 80083FEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80083FF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80083FF4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80083FF8  41 82 00 30 */	beq lbl_80084028
/* 80083FFC  3C 60 80 3B */	lis r3, __vt__10cCcD_ObjTg@ha
/* 80084000  38 03 C2 B4 */	addi r0, r3, __vt__10cCcD_ObjTg@l
/* 80084004  90 1F 00 0C */	stw r0, 0xc(r31)
/* 80084008  41 82 00 10 */	beq lbl_80084018
/* 8008400C  3C 60 80 3B */	lis r3, __vt__18cCcD_ObjCommonBase@ha
/* 80084010  38 03 C2 CC */	addi r0, r3, __vt__18cCcD_ObjCommonBase@l
/* 80084014  90 1F 00 0C */	stw r0, 0xc(r31)
lbl_80084018:
/* 80084018  7C 80 07 35 */	extsh. r0, r4
/* 8008401C  40 81 00 0C */	ble lbl_80084028
/* 80084020  7F E3 FB 78 */	mr r3, r31
/* 80084024  48 24 AD 19 */	bl __dl__FPv
lbl_80084028:
/* 80084028  7F E3 FB 78 */	mr r3, r31
/* 8008402C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80084030  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80084034  7C 08 03 A6 */	mtlr r0
/* 80084038  38 21 00 10 */	addi r1, r1, 0x10
/* 8008403C  4E 80 00 20 */	blr 
