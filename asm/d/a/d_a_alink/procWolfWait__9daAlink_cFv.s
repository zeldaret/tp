lbl_8012D2A8:
/* 8012D2A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8012D2AC  7C 08 02 A6 */	mflr r0
/* 8012D2B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8012D2B4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8012D2B8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8012D2BC  7C 7E 1B 78 */	mr r30, r3
/* 8012D2C0  AB E3 04 E6 */	lha r31, 0x4e6(r3)
/* 8012D2C4  38 80 00 00 */	li r4, 0
/* 8012D2C8  4B FF C8 7D */	bl checkNextActionWolf__9daAlink_cFi
/* 8012D2CC  2C 03 00 00 */	cmpwi r3, 0
/* 8012D2D0  40 82 00 94 */	bne lbl_8012D364
/* 8012D2D4  7F C3 F3 78 */	mr r3, r30
/* 8012D2D8  4B F8 97 59 */	bl checkFrontWallTypeAction__9daAlink_cFv
/* 8012D2DC  2C 03 00 00 */	cmpwi r3, 0
/* 8012D2E0  40 82 00 84 */	bne lbl_8012D364
/* 8012D2E4  C0 42 94 78 */	lfs f2, lit_15460(r2)
/* 8012D2E8  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8012D2EC  7C 1F 00 50 */	subf r0, r31, r0
/* 8012D2F0  7C 00 07 34 */	extsh r0, r0
/* 8012D2F4  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 8012D2F8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8012D2FC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8012D300  3C 00 43 30 */	lis r0, 0x4330
/* 8012D304  90 01 00 08 */	stw r0, 8(r1)
/* 8012D308  C8 01 00 08 */	lfd f0, 8(r1)
/* 8012D30C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8012D310  EC 02 00 32 */	fmuls f0, f2, f0
/* 8012D314  D0 1E 33 F0 */	stfs f0, 0x33f0(r30)
/* 8012D318  7F C3 F3 78 */	mr r3, r30
/* 8012D31C  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 8012D320  4B FF B5 25 */	bl setBlendWolfMoveAnime__9daAlink_cFf
/* 8012D324  7F C3 F3 78 */	mr r3, r30
/* 8012D328  4B F8 74 8D */	bl checkServiceWaitMode__9daAlink_cFv
/* 8012D32C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8012D330  41 82 00 2C */	beq lbl_8012D35C
/* 8012D334  A8 7E 30 CA */	lha r3, 0x30ca(r30)
/* 8012D338  38 03 FF FF */	addi r0, r3, -1
/* 8012D33C  B0 1E 30 CA */	sth r0, 0x30ca(r30)
/* 8012D340  A8 1E 30 CA */	lha r0, 0x30ca(r30)
/* 8012D344  2C 00 00 00 */	cmpwi r0, 0
/* 8012D348  40 82 00 1C */	bne lbl_8012D364
/* 8012D34C  7F C3 F3 78 */	mr r3, r30
/* 8012D350  38 80 00 00 */	li r4, 0
/* 8012D354  4B FF F8 91 */	bl procWolfServiceWaitInit__9daAlink_cFi
/* 8012D358  48 00 00 0C */	b lbl_8012D364
lbl_8012D35C:
/* 8012D35C  7F C3 F3 78 */	mr r3, r30
/* 8012D360  4B F8 64 E5 */	bl initServiceWaitTime__9daAlink_cFv
lbl_8012D364:
/* 8012D364  38 60 00 01 */	li r3, 1
/* 8012D368  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8012D36C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8012D370  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8012D374  7C 08 03 A6 */	mtlr r0
/* 8012D378  38 21 00 20 */	addi r1, r1, 0x20
/* 8012D37C  4E 80 00 20 */	blr 
