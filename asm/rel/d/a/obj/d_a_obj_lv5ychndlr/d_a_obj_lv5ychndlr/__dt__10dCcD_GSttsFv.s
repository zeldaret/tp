lbl_80C6E6F8:
/* 80C6E6F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6E6FC  7C 08 02 A6 */	mflr r0
/* 80C6E700  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6E704  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C6E708  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C6E70C  41 82 00 30 */	beq lbl_80C6E73C
/* 80C6E710  3C 60 80 C7 */	lis r3, __vt__10dCcD_GStts@ha
/* 80C6E714  38 03 EB 14 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80C6E718  90 1F 00 00 */	stw r0, 0(r31)
/* 80C6E71C  41 82 00 10 */	beq lbl_80C6E72C
/* 80C6E720  3C 60 80 C7 */	lis r3, __vt__10cCcD_GStts@ha
/* 80C6E724  38 03 EB 08 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80C6E728  90 1F 00 00 */	stw r0, 0(r31)
lbl_80C6E72C:
/* 80C6E72C  7C 80 07 35 */	extsh. r0, r4
/* 80C6E730  40 81 00 0C */	ble lbl_80C6E73C
/* 80C6E734  7F E3 FB 78 */	mr r3, r31
/* 80C6E738  4B 66 06 04 */	b __dl__FPv
lbl_80C6E73C:
/* 80C6E73C  7F E3 FB 78 */	mr r3, r31
/* 80C6E740  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C6E744  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6E748  7C 08 03 A6 */	mtlr r0
/* 80C6E74C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6E750  4E 80 00 20 */	blr 
