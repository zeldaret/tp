lbl_806031EC:
/* 806031EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806031F0  7C 08 02 A6 */	mflr r0
/* 806031F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 806031F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806031FC  93 C1 00 08 */	stw r30, 8(r1)
/* 80603200  7C 7E 1B 78 */	mr r30, r3
/* 80603204  3C 60 80 60 */	lis r3, l_HIO@ha
/* 80603208  38 63 41 50 */	addi r3, r3, l_HIO@l
/* 8060320C  88 03 00 14 */	lbz r0, 0x14(r3)
/* 80603210  28 00 00 00 */	cmplwi r0, 0
/* 80603214  41 82 00 40 */	beq lbl_80603254
/* 80603218  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 8060321C  83 E3 00 04 */	lwz r31, 4(r3)
/* 80603220  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80603224  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80603228  38 80 00 00 */	li r4, 0
/* 8060322C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80603230  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80603234  4B BA 05 90 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80603238  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8060323C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80603240  80 9F 00 04 */	lwz r4, 4(r31)
/* 80603244  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80603248  4B BA 1B 58 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8060324C  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80603250  4B A0 DF 70 */	b entryDL__16mDoExt_McaMorfSOFv
lbl_80603254:
/* 80603254  38 60 00 01 */	li r3, 1
/* 80603258  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8060325C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80603260  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80603264  7C 08 03 A6 */	mtlr r0
/* 80603268  38 21 00 10 */	addi r1, r1, 0x10
/* 8060326C  4E 80 00 20 */	blr 
