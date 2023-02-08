lbl_80CC6464:
/* 80CC6464  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CC6468  7C 08 02 A6 */	mflr r0
/* 80CC646C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CC6470  39 61 00 20 */	addi r11, r1, 0x20
/* 80CC6474  4B 69 BD 69 */	bl _savegpr_29
/* 80CC6478  7C 7D 1B 78 */	mr r29, r3
/* 80CC647C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80CC6480  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80CC6484  38 80 00 10 */	li r4, 0x10
/* 80CC6488  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80CC648C  38 DD 01 0C */	addi r6, r29, 0x10c
/* 80CC6490  4B 4D D3 35 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80CC6494  38 7D 05 68 */	addi r3, r29, 0x568
/* 80CC6498  88 9D 06 35 */	lbz r4, 0x635(r29)
/* 80CC649C  3C A0 80 CC */	lis r5, data_80CC699C@ha /* 0x80CC699C@ha */
/* 80CC64A0  38 A5 69 9C */	addi r5, r5, data_80CC699C@l /* 0x80CC699C@l */
/* 80CC64A4  38 DD 01 0C */	addi r6, r29, 0x10c
/* 80CC64A8  4B 34 DB 09 */	bl update__19mDoExt_3DlineMat1_cFiR8_GXColorP12dKy_tevstr_c
/* 80CC64AC  38 7D 05 68 */	addi r3, r29, 0x568
/* 80CC64B0  81 9D 05 68 */	lwz r12, 0x568(r29)
/* 80CC64B4  81 8C 00 08 */	lwz r12, 8(r12)
/* 80CC64B8  7D 89 03 A6 */	mtctr r12
/* 80CC64BC  4E 80 04 21 */	bctrl 
/* 80CC64C0  1C 83 00 14 */	mulli r4, r3, 0x14
/* 80CC64C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CC64C8  38 03 61 C0 */	addi r0, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CC64CC  7C 60 22 14 */	add r3, r0, r4
/* 80CC64D0  3C 63 00 01 */	addis r3, r3, 1
/* 80CC64D4  38 63 61 54 */	addi r3, r3, 0x6154
/* 80CC64D8  38 63 5F 64 */	addi r3, r3, 0x5f64
/* 80CC64DC  38 9D 05 68 */	addi r4, r29, 0x568
/* 80CC64E0  4B 34 E2 59 */	bl setMat__26mDoExt_3DlineMatSortPacketFP18mDoExt_3DlineMat_c
/* 80CC64E4  83 DD 06 1C */	lwz r30, 0x61c(r29)
/* 80CC64E8  3B E0 00 00 */	li r31, 0
/* 80CC64EC  48 00 00 14 */	b lbl_80CC6500
lbl_80CC64F0:
/* 80CC64F0  7F C3 F3 78 */	mr r3, r30
/* 80CC64F4  4B FF EE 61 */	bl draw__9Sakuita_cFv
/* 80CC64F8  3B FF 00 01 */	addi r31, r31, 1
/* 80CC64FC  3B DE 00 3C */	addi r30, r30, 0x3c
lbl_80CC6500:
/* 80CC6500  88 7D 06 35 */	lbz r3, 0x635(r29)
/* 80CC6504  38 03 FF FE */	addi r0, r3, -2
/* 80CC6508  7C 1F 00 00 */	cmpw r31, r0
/* 80CC650C  41 80 FF E4 */	blt lbl_80CC64F0
/* 80CC6510  38 60 00 01 */	li r3, 1
/* 80CC6514  39 61 00 20 */	addi r11, r1, 0x20
/* 80CC6518  4B 69 BD 11 */	bl _restgpr_29
/* 80CC651C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CC6520  7C 08 03 A6 */	mtlr r0
/* 80CC6524  38 21 00 20 */	addi r1, r1, 0x20
/* 80CC6528  4E 80 00 20 */	blr 
