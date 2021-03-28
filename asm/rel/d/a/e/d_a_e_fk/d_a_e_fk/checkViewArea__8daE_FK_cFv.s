lbl_806BA330:
/* 806BA330  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806BA334  7C 08 02 A6 */	mflr r0
/* 806BA338  90 01 00 24 */	stw r0, 0x24(r1)
/* 806BA33C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806BA340  3C 80 80 6C */	lis r4, lit_3826@ha
/* 806BA344  3B E4 B6 D0 */	addi r31, r4, lit_3826@l
/* 806BA348  38 63 04 D0 */	addi r3, r3, 0x4d0
/* 806BA34C  38 81 00 08 */	addi r4, r1, 8
/* 806BA350  4B 95 AF C0 */	b mDoLib_project__FP3VecP3Vec
/* 806BA354  38 60 00 00 */	li r3, 0
/* 806BA358  C0 41 00 08 */	lfs f2, 8(r1)
/* 806BA35C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806BA360  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 806BA364  4C 41 13 82 */	cror 2, 1, 2
/* 806BA368  40 82 00 38 */	bne lbl_806BA3A0
/* 806BA36C  C0 1F 01 10 */	lfs f0, 0x110(r31)
/* 806BA370  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 806BA374  4C 40 13 82 */	cror 2, 0, 2
/* 806BA378  40 82 00 28 */	bne lbl_806BA3A0
/* 806BA37C  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 806BA380  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 806BA384  4C 41 13 82 */	cror 2, 1, 2
/* 806BA388  40 82 00 18 */	bne lbl_806BA3A0
/* 806BA38C  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 806BA390  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 806BA394  4C 40 13 82 */	cror 2, 0, 2
/* 806BA398  40 82 00 08 */	bne lbl_806BA3A0
/* 806BA39C  38 60 00 01 */	li r3, 1
lbl_806BA3A0:
/* 806BA3A0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806BA3A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806BA3A8  7C 08 03 A6 */	mtlr r0
/* 806BA3AC  38 21 00 20 */	addi r1, r1, 0x20
/* 806BA3B0  4E 80 00 20 */	blr 
