lbl_8064FE6C:
/* 8064FE6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8064FE70  7C 08 02 A6 */	mflr r0
/* 8064FE74  90 01 00 14 */	stw r0, 0x14(r1)
/* 8064FE78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8064FE7C  7C 7F 1B 78 */	mr r31, r3
/* 8064FE80  80 63 05 EC */	lwz r3, 0x5ec(r3)
/* 8064FE84  2C 03 00 00 */	cmpwi r3, 0
/* 8064FE88  41 82 00 0C */	beq lbl_8064FE94
/* 8064FE8C  38 03 FF FF */	addi r0, r3, -1
/* 8064FE90  90 1F 05 EC */	stw r0, 0x5ec(r31)
lbl_8064FE94:
/* 8064FE94  7F E3 FB 78 */	mr r3, r31
/* 8064FE98  4B FF FB B9 */	bl executeSmall__11daB_ZANTM_cFv
/* 8064FE9C  7F E3 FB 78 */	mr r3, r31
/* 8064FEA0  4B FF F9 35 */	bl setMagicEffect__11daB_ZANTM_cFv
/* 8064FEA4  38 7F 08 28 */	addi r3, r31, 0x828
/* 8064FEA8  4B A3 39 89 */	bl Move__10dCcD_GSttsFv
/* 8064FEAC  7F E3 FB 78 */	mr r3, r31
/* 8064FEB0  38 9F 08 0C */	addi r4, r31, 0x80c
/* 8064FEB4  4B 9C A8 19 */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 8064FEB8  38 7F 06 34 */	addi r3, r31, 0x634
/* 8064FEBC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8064FEC0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8064FEC4  38 84 0F 38 */	addi r4, r4, 0xf38
/* 8064FEC8  4B A2 6B E5 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 8064FECC  7F E3 FB 78 */	mr r3, r31
/* 8064FED0  4B FF FE 9D */	bl cc_set__11daB_ZANTM_cFv
/* 8064FED4  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8064FED8  4B 9B CE 8D */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 8064FEDC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8064FEE0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8064FEE4  38 9F 05 AC */	addi r4, r31, 0x5ac
/* 8064FEE8  4B CF 65 C9 */	bl PSMTXCopy
/* 8064FEEC  38 60 00 01 */	li r3, 1
/* 8064FEF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8064FEF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8064FEF8  7C 08 03 A6 */	mtlr r0
/* 8064FEFC  38 21 00 10 */	addi r1, r1, 0x10
/* 8064FF00  4E 80 00 20 */	blr 
