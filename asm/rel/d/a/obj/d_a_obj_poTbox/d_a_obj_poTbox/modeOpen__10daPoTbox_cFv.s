lbl_80CB4BF8:
/* 80CB4BF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB4BFC  7C 08 02 A6 */	mflr r0
/* 80CB4C00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB4C04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB4C08  93 C1 00 08 */	stw r30, 8(r1)
/* 80CB4C0C  7C 7E 1B 78 */	mr r30, r3
/* 80CB4C10  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 80CB4C14  4B 35 88 15 */	bl play__14mDoExt_baseAnmFv
/* 80CB4C18  7C 7F 1B 78 */	mr r31, r3
/* 80CB4C1C  38 7E 05 EC */	addi r3, r30, 0x5ec
/* 80CB4C20  4B 35 88 09 */	bl play__14mDoExt_baseAnmFv
/* 80CB4C24  2C 1F 00 01 */	cmpwi r31, 1
/* 80CB4C28  40 82 00 14 */	bne lbl_80CB4C3C
/* 80CB4C2C  2C 03 00 01 */	cmpwi r3, 1
/* 80CB4C30  40 82 00 0C */	bne lbl_80CB4C3C
/* 80CB4C34  7F C3 F3 78 */	mr r3, r30
/* 80CB4C38  48 00 00 1D */	bl init_modeOpenEnd__10daPoTbox_cFv
lbl_80CB4C3C:
/* 80CB4C3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB4C40  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CB4C44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB4C48  7C 08 03 A6 */	mtlr r0
/* 80CB4C4C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB4C50  4E 80 00 20 */	blr 
