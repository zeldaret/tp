lbl_8015C514:
/* 8015C514  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8015C518  7C 08 02 A6 */	mflr r0
/* 8015C51C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8015C520  39 61 00 20 */	addi r11, r1, 0x20
/* 8015C524  48 20 5C B9 */	bl _savegpr_29
/* 8015C528  7C 7D 1B 78 */	mr r29, r3
/* 8015C52C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8015C530  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8015C534  83 DF 5D AC */	lwz r30, 0x5dac(r31)
/* 8015C538  38 7D 09 60 */	addi r3, r29, 0x960
/* 8015C53C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8015C540  38 BD 04 E6 */	addi r5, r29, 0x4e6
/* 8015C544  38 C0 00 00 */	li r6, 0
/* 8015C548  38 E0 1C 00 */	li r7, 0x1c00
/* 8015C54C  48 00 21 09 */	bl posMove__20daPy_boomerangMove_cFP4cXyzPsP10fopAc_ac_cs
/* 8015C550  2C 03 00 00 */	cmpwi r3, 0
/* 8015C554  40 82 00 48 */	bne lbl_8015C59C
/* 8015C558  7F A3 EB 78 */	mr r3, r29
/* 8015C55C  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 8015C560  4B EB E2 81 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8015C564  C0 02 9B A0 */	lfs f0, lit_4524(r2)
/* 8015C568  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8015C56C  40 80 00 28 */	bge lbl_8015C594
/* 8015C570  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8015C574  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8015C578  7F A5 EB 78 */	mr r5, r29
/* 8015C57C  4B EC 16 ED */	bl lineCheck__11fopAcM_lc_cFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8015C580  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8015C584  40 82 00 10 */	bne lbl_8015C594
/* 8015C588  7F A3 EB 78 */	mr r3, r29
/* 8015C58C  48 00 09 61 */	bl itemGetNextExecute__8daItem_cFv
/* 8015C590  48 00 00 0C */	b lbl_8015C59C
lbl_8015C594:
/* 8015C594  7F A3 EB 78 */	mr r3, r29
/* 8015C598  4B FF F8 C9 */	bl procInitNormal__8daItem_cFv
lbl_8015C59C:
/* 8015C59C  38 7D 05 8C */	addi r3, r29, 0x58c
/* 8015C5A0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8015C5A4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8015C5A8  38 84 0F 38 */	addi r4, r4, 0xf38
/* 8015C5AC  4B F1 A5 01 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 8015C5B0  38 7D 09 60 */	addi r3, r29, 0x960
/* 8015C5B4  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8015C5B8  48 00 22 C5 */	bl bgCheckAfterOffset__20daPy_boomerangMove_cFPC4cXyz
/* 8015C5BC  38 7D 09 04 */	addi r3, r29, 0x904
/* 8015C5C0  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8015C5C4  48 11 2C 19 */	bl SetC__8cM3dGCylFRC4cXyz
/* 8015C5C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8015C5CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8015C5D0  38 63 23 3C */	addi r3, r3, 0x233c
/* 8015C5D4  38 9D 07 E0 */	addi r4, r29, 0x7e0
/* 8015C5D8  48 10 85 D1 */	bl Set__4cCcSFP8cCcD_Obj
/* 8015C5DC  39 61 00 20 */	addi r11, r1, 0x20
/* 8015C5E0  48 20 5C 49 */	bl _restgpr_29
/* 8015C5E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8015C5E8  7C 08 03 A6 */	mtlr r0
/* 8015C5EC  38 21 00 20 */	addi r1, r1, 0x20
/* 8015C5F0  4E 80 00 20 */	blr 
