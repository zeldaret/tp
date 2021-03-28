lbl_8097EFE8:
/* 8097EFE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8097EFEC  7C 08 02 A6 */	mflr r0
/* 8097EFF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8097EFF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8097EFF8  7C 7F 1B 79 */	or. r31, r3, r3
/* 8097EFFC  41 82 00 1C */	beq lbl_8097F018
/* 8097F000  3C A0 80 98 */	lis r5, __vt__18daNpcT_ActorMngr_c@ha
/* 8097F004  38 05 06 D8 */	addi r0, r5, __vt__18daNpcT_ActorMngr_c@l
/* 8097F008  90 1F 00 04 */	stw r0, 4(r31)
/* 8097F00C  7C 80 07 35 */	extsh. r0, r4
/* 8097F010  40 81 00 08 */	ble lbl_8097F018
/* 8097F014  4B 94 FD 28 */	b __dl__FPv
lbl_8097F018:
/* 8097F018  7F E3 FB 78 */	mr r3, r31
/* 8097F01C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8097F020  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8097F024  7C 08 03 A6 */	mtlr r0
/* 8097F028  38 21 00 10 */	addi r1, r1, 0x10
/* 8097F02C  4E 80 00 20 */	blr 
