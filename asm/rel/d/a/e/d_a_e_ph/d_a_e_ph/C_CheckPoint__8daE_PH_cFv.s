lbl_8073E8B0:
/* 8073E8B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8073E8B4  7C 08 02 A6 */	mflr r0
/* 8073E8B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8073E8BC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8073E8C0  7C 7F 1B 78 */	mr r31, r3
/* 8073E8C4  C0 43 06 50 */	lfs f2, 0x650(r3)
/* 8073E8C8  C0 23 06 4C */	lfs f1, 0x64c(r3)
/* 8073E8CC  C0 03 06 48 */	lfs f0, 0x648(r3)
/* 8073E8D0  D0 01 00 08 */	stfs f0, 8(r1)
/* 8073E8D4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8073E8D8  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8073E8DC  38 61 00 08 */	addi r3, r1, 8
/* 8073E8E0  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8073E8E4  4B B3 23 20 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 8073E8E8  A8 1F 06 1E */	lha r0, 0x61e(r31)
/* 8073E8EC  7C 03 00 50 */	subf r0, r3, r0
/* 8073E8F0  7C 00 07 34 */	extsh r0, r0
/* 8073E8F4  2C 00 40 00 */	cmpwi r0, 0x4000
/* 8073E8F8  40 80 00 14 */	bge lbl_8073E90C
/* 8073E8FC  2C 00 C0 00 */	cmpwi r0, -16384
/* 8073E900  40 81 00 0C */	ble lbl_8073E90C
/* 8073E904  38 60 00 01 */	li r3, 1
/* 8073E908  48 00 00 08 */	b lbl_8073E910
lbl_8073E90C:
/* 8073E90C  38 60 00 00 */	li r3, 0
lbl_8073E910:
/* 8073E910  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8073E914  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8073E918  7C 08 03 A6 */	mtlr r0
/* 8073E91C  38 21 00 20 */	addi r1, r1, 0x20
/* 8073E920  4E 80 00 20 */	blr 
