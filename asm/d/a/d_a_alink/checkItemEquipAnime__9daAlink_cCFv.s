lbl_800B92F8:
/* 800B92F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B92FC  7C 08 02 A6 */	mflr r0
/* 800B9300  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B9304  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800B9308  3B E0 00 00 */	li r31, 0
/* 800B930C  A0 03 1F BC */	lhz r0, 0x1fbc(r3)
/* 800B9310  28 00 02 45 */	cmplwi r0, 0x245
/* 800B9314  41 82 00 10 */	beq lbl_800B9324
/* 800B9318  4B FF FF B9 */	bl checkOneHandItemEquipAnime__9daAlink_cCFv
/* 800B931C  2C 03 00 00 */	cmpwi r3, 0
/* 800B9320  41 82 00 08 */	beq lbl_800B9328
lbl_800B9324:
/* 800B9324  3B E0 00 01 */	li r31, 1
lbl_800B9328:
/* 800B9328  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 800B932C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800B9330  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B9334  7C 08 03 A6 */	mtlr r0
/* 800B9338  38 21 00 10 */	addi r1, r1, 0x10
/* 800B933C  4E 80 00 20 */	blr 
