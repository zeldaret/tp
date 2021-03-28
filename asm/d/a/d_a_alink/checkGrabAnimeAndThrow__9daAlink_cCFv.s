lbl_800E3C9C:
/* 800E3C9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E3CA0  7C 08 02 A6 */	mflr r0
/* 800E3CA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E3CA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800E3CAC  93 C1 00 08 */	stw r30, 8(r1)
/* 800E3CB0  7C 7E 1B 78 */	mr r30, r3
/* 800E3CB4  3B E0 00 00 */	li r31, 0
/* 800E3CB8  4B FF FF B5 */	bl checkGrabAnime__9daAlink_cCFv
/* 800E3CBC  2C 03 00 00 */	cmpwi r3, 0
/* 800E3CC0  40 82 00 14 */	bne lbl_800E3CD4
/* 800E3CC4  7F C3 F3 78 */	mr r3, r30
/* 800E3CC8  4B FF FF 55 */	bl checkGrabThrowAnime__9daAlink_cCFv
/* 800E3CCC  2C 03 00 00 */	cmpwi r3, 0
/* 800E3CD0  41 82 00 08 */	beq lbl_800E3CD8
lbl_800E3CD4:
/* 800E3CD4  3B E0 00 01 */	li r31, 1
lbl_800E3CD8:
/* 800E3CD8  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 800E3CDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800E3CE0  83 C1 00 08 */	lwz r30, 8(r1)
/* 800E3CE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E3CE8  7C 08 03 A6 */	mtlr r0
/* 800E3CEC  38 21 00 10 */	addi r1, r1, 0x10
/* 800E3CF0  4E 80 00 20 */	blr 
