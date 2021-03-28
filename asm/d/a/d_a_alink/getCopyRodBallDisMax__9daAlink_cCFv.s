lbl_800E1330:
/* 800E1330  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E1334  7C 08 02 A6 */	mflr r0
/* 800E1338  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E133C  4B FF FF A5 */	bl checkLv6BossRoom__9daAlink_cFv
/* 800E1340  2C 03 00 00 */	cmpwi r3, 0
/* 800E1344  41 82 00 14 */	beq lbl_800E1358
/* 800E1348  3C 60 80 39 */	lis r3, m__21daAlinkHIO_copyRod_c0@ha
/* 800E134C  38 63 EA FC */	addi r3, r3, m__21daAlinkHIO_copyRod_c0@l
/* 800E1350  C0 23 00 34 */	lfs f1, 0x34(r3)
/* 800E1354  48 00 00 10 */	b lbl_800E1364
lbl_800E1358:
/* 800E1358  3C 60 80 39 */	lis r3, m__21daAlinkHIO_copyRod_c0@ha
/* 800E135C  38 63 EA FC */	addi r3, r3, m__21daAlinkHIO_copyRod_c0@l
/* 800E1360  C0 23 00 2C */	lfs f1, 0x2c(r3)
lbl_800E1364:
/* 800E1364  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E1368  7C 08 03 A6 */	mtlr r0
/* 800E136C  38 21 00 10 */	addi r1, r1, 0x10
/* 800E1370  4E 80 00 20 */	blr 
