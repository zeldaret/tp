lbl_800E3BCC:
/* 800E3BCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E3BD0  7C 08 02 A6 */	mflr r0
/* 800E3BD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E3BD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800E3BDC  7C 7F 1B 78 */	mr r31, r3
/* 800E3BE0  38 80 00 01 */	li r4, 1
/* 800E3BE4  38 A0 00 01 */	li r5, 1
/* 800E3BE8  4B FD 78 D1 */	bl checkHeavyStateOn__9daAlink_cFii
/* 800E3BEC  2C 03 00 00 */	cmpwi r3, 0
/* 800E3BF0  41 82 00 14 */	beq lbl_800E3C04
/* 800E3BF4  C0 22 92 AC */	lfs f1, lit_6023(r2)
/* 800E3BF8  C0 1F 34 34 */	lfs f0, 0x3434(r31)
/* 800E3BFC  EC 21 00 32 */	fmuls f1, f1, f0
/* 800E3C00  48 00 00 08 */	b lbl_800E3C08
lbl_800E3C04:
/* 800E3C04  C0 22 92 AC */	lfs f1, lit_6023(r2)
lbl_800E3C08:
/* 800E3C08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800E3C0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E3C10  7C 08 03 A6 */	mtlr r0
/* 800E3C14  38 21 00 10 */	addi r1, r1, 0x10
/* 800E3C18  4E 80 00 20 */	blr 
