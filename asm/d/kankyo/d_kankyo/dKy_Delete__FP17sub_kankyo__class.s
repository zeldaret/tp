lbl_801A5BD4:
/* 801A5BD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801A5BD8  7C 08 02 A6 */	mflr r0
/* 801A5BDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A5BE0  4B FF 8A B5 */	bl plight_init__Fv
/* 801A5BE4  3C 60 80 43 */	lis r3, g_mEnvSeMgr@ha
/* 801A5BE8  38 63 DD 70 */	addi r3, r3, g_mEnvSeMgr@l
/* 801A5BEC  48 12 0D AD */	bl resetScene__10Z2EnvSeMgrFv
/* 801A5BF0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 801A5BF4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 801A5BF8  80 63 0F 38 */	lwz r3, 0xf38(r3)
/* 801A5BFC  28 03 00 00 */	cmplwi r3, 0
/* 801A5C00  41 82 00 08 */	beq lbl_801A5C08
/* 801A5C04  4B E6 95 89 */	bl mDoExt_destroySolidHeap__FP12JKRSolidHeap
lbl_801A5C08:
/* 801A5C08  38 60 00 01 */	li r3, 1
/* 801A5C0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801A5C10  7C 08 03 A6 */	mtlr r0
/* 801A5C14  38 21 00 10 */	addi r1, r1, 0x10
/* 801A5C18  4E 80 00 20 */	blr 
