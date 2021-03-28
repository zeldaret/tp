lbl_800E03D0:
/* 800E03D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E03D4  7C 08 02 A6 */	mflr r0
/* 800E03D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E03DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800E03E0  93 C1 00 08 */	stw r30, 8(r1)
/* 800E03E4  7C 7E 1B 78 */	mr r30, r3
/* 800E03E8  7C 9F 23 78 */	mr r31, r4
/* 800E03EC  48 00 00 C1 */	bl checkBoomerangThrowAnime__9daAlink_cCFv
/* 800E03F0  2C 03 00 00 */	cmpwi r3, 0
/* 800E03F4  40 82 00 34 */	bne lbl_800E0428
/* 800E03F8  2C 1F 00 00 */	cmpwi r31, 0
/* 800E03FC  41 82 00 1C */	beq lbl_800E0418
/* 800E0400  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800E0404  D0 1E 20 54 */	stfs f0, 0x2054(r30)
/* 800E0408  D0 1E 20 58 */	stfs f0, 0x2058(r30)
/* 800E040C  80 7E 1F 54 */	lwz r3, 0x1f54(r30)
/* 800E0410  D0 03 00 08 */	stfs f0, 8(r3)
/* 800E0414  48 00 00 14 */	b lbl_800E0428
lbl_800E0418:
/* 800E0418  3C 60 80 39 */	lis r3, m__18daAlinkHIO_boom_c0@ha
/* 800E041C  38 63 E6 C8 */	addi r3, r3, m__18daAlinkHIO_boom_c0@l
/* 800E0420  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 800E0424  D0 1E 20 54 */	stfs f0, 0x2054(r30)
lbl_800E0428:
/* 800E0428  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800E042C  83 C1 00 08 */	lwz r30, 8(r1)
/* 800E0430  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E0434  7C 08 03 A6 */	mtlr r0
/* 800E0438  38 21 00 10 */	addi r1, r1, 0x10
/* 800E043C  4E 80 00 20 */	blr 
