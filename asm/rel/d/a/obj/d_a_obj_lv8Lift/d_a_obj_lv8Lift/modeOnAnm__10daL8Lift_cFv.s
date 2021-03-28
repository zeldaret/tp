lbl_80C89820:
/* 80C89820  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C89824  7C 08 02 A6 */	mflr r0
/* 80C89828  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8982C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C89830  7C 7F 1B 78 */	mr r31, r3
/* 80C89834  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 80C89838  4B 38 3B F0 */	b play__14mDoExt_baseAnmFv
/* 80C8983C  2C 03 00 01 */	cmpwi r3, 1
/* 80C89840  40 82 00 20 */	bne lbl_80C89860
/* 80C89844  38 00 00 01 */	li r0, 1
/* 80C89848  98 1F 08 08 */	stb r0, 0x808(r31)
/* 80C8984C  98 1F 08 0D */	stb r0, 0x80d(r31)
/* 80C89850  38 7F 08 10 */	addi r3, r31, 0x810
/* 80C89854  4B 51 DF 3C */	b dKy_plight_set__FP15LIGHT_INFLUENCE
/* 80C89858  7F E3 FB 78 */	mr r3, r31
/* 80C8985C  4B FF FE C5 */	bl init_modeMoveWait__10daL8Lift_cFv
lbl_80C89860:
/* 80C89860  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C89864  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C89868  7C 08 03 A6 */	mtlr r0
/* 80C8986C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C89870  4E 80 00 20 */	blr 
