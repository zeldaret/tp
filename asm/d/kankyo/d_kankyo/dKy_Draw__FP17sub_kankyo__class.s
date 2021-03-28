lbl_801A5B6C:
/* 801A5B6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801A5B70  7C 08 02 A6 */	mflr r0
/* 801A5B74  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A5B78  3C 60 80 43 */	lis r3, g_env_light@ha
/* 801A5B7C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 801A5B80  4B FF FB 5D */	bl drawKankyo__18dScnKy_env_light_cFv
/* 801A5B84  38 60 00 01 */	li r3, 1
/* 801A5B88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801A5B8C  7C 08 03 A6 */	mtlr r0
/* 801A5B90  38 21 00 10 */	addi r1, r1, 0x10
/* 801A5B94  4E 80 00 20 */	blr 
