lbl_800B4B2C:
/* 800B4B2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B4B30  7C 08 02 A6 */	mflr r0
/* 800B4B34  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B4B38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800B4B3C  7C 7F 1B 78 */	mr r31, r3
/* 800B4B40  38 80 00 01 */	li r4, 1
/* 800B4B44  38 A0 00 01 */	li r5, 1
/* 800B4B48  48 00 69 71 */	bl checkHeavyStateOn__9daAlink_cFii
/* 800B4B4C  2C 03 00 00 */	cmpwi r3, 0
/* 800B4B50  41 82 00 14 */	beq lbl_800B4B64
/* 800B4B54  C0 22 94 AC */	lfs f1, lit_16641(r2)
/* 800B4B58  C0 1F 34 34 */	lfs f0, 0x3434(r31)
/* 800B4B5C  EC 21 00 32 */	fmuls f1, f1, f0
/* 800B4B60  48 00 00 08 */	b lbl_800B4B68
lbl_800B4B64:
/* 800B4B64  C0 22 94 AC */	lfs f1, lit_16641(r2)
lbl_800B4B68:
/* 800B4B68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800B4B6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B4B70  7C 08 03 A6 */	mtlr r0
/* 800B4B74  38 21 00 10 */	addi r1, r1, 0x10
/* 800B4B78  4E 80 00 20 */	blr 
