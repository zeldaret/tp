lbl_80BCE9BC:
/* 80BCE9BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BCE9C0  7C 08 02 A6 */	mflr r0
/* 80BCE9C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BCE9C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BCE9CC  7C 7F 1B 78 */	mr r31, r3
/* 80BCE9D0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80BCE9D4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80BCE9D8  38 80 00 00 */	li r4, 0
/* 80BCE9DC  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80BCE9E0  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80BCE9E4  4B 5D 4D E0 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80BCE9E8  38 7F 10 70 */	addi r3, r31, 0x1070
/* 80BCE9EC  38 80 00 64 */	li r4, 0x64
/* 80BCE9F0  3C A0 80 BD */	lis r5, lit_4407@ha
/* 80BCE9F4  C0 25 EB 28 */	lfs f1, lit_4407@l(r5)
/* 80BCE9F8  3C A0 80 BD */	lis r5, color@ha
/* 80BCE9FC  38 A5 EB 7C */	addi r5, r5, color@l
/* 80BCEA00  38 C0 00 00 */	li r6, 0
/* 80BCEA04  38 FF 01 0C */	addi r7, r31, 0x10c
/* 80BCEA08  4B 44 4D 34 */	b update__19mDoExt_3DlineMat1_cFifR8_GXColorUsP12dKy_tevstr_c
/* 80BCEA0C  38 7F 10 70 */	addi r3, r31, 0x1070
/* 80BCEA10  81 9F 10 70 */	lwz r12, 0x1070(r31)
/* 80BCEA14  81 8C 00 08 */	lwz r12, 8(r12)
/* 80BCEA18  7D 89 03 A6 */	mtctr r12
/* 80BCEA1C  4E 80 04 21 */	bctrl 
/* 80BCEA20  1C 83 00 14 */	mulli r4, r3, 0x14
/* 80BCEA24  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BCEA28  38 03 61 C0 */	addi r0, r3, g_dComIfG_gameInfo@l
/* 80BCEA2C  7C 60 22 14 */	add r3, r0, r4
/* 80BCEA30  3C 63 00 01 */	addis r3, r3, 1
/* 80BCEA34  38 63 61 54 */	addi r3, r3, 0x6154
/* 80BCEA38  38 63 5F 64 */	addi r3, r3, 0x5f64
/* 80BCEA3C  38 9F 10 70 */	addi r4, r31, 0x1070
/* 80BCEA40  4B 44 5C F8 */	b setMat__26mDoExt_3DlineMatSortPacketFP18mDoExt_3DlineMat_c
/* 80BCEA44  38 60 00 01 */	li r3, 1
/* 80BCEA48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BCEA4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BCEA50  7C 08 03 A6 */	mtlr r0
/* 80BCEA54  38 21 00 10 */	addi r1, r1, 0x10
/* 80BCEA58  4E 80 00 20 */	blr 
