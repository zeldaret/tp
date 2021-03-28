lbl_800B9340:
/* 800B9340  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B9344  7C 08 02 A6 */	mflr r0
/* 800B9348  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B934C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800B9350  93 C1 00 08 */	stw r30, 8(r1)
/* 800B9354  7C 7E 1B 78 */	mr r30, r3
/* 800B9358  3B E0 00 00 */	li r31, 0
/* 800B935C  48 01 7B 3D */	bl checkSwordEquipAnime__9daAlink_cCFv
/* 800B9360  2C 03 00 00 */	cmpwi r3, 0
/* 800B9364  40 82 00 14 */	bne lbl_800B9378
/* 800B9368  7F C3 F3 78 */	mr r3, r30
/* 800B936C  4B FF FF 8D */	bl checkItemEquipAnime__9daAlink_cCFv
/* 800B9370  2C 03 00 00 */	cmpwi r3, 0
/* 800B9374  41 82 00 08 */	beq lbl_800B937C
lbl_800B9378:
/* 800B9378  3B E0 00 01 */	li r31, 1
lbl_800B937C:
/* 800B937C  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 800B9380  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800B9384  83 C1 00 08 */	lwz r30, 8(r1)
/* 800B9388  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B938C  7C 08 03 A6 */	mtlr r0
/* 800B9390  38 21 00 10 */	addi r1, r1, 0x10
/* 800B9394  4E 80 00 20 */	blr 
