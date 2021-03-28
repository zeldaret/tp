lbl_806C3D20:
/* 806C3D20  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806C3D24  7C 08 02 A6 */	mflr r0
/* 806C3D28  90 01 00 34 */	stw r0, 0x34(r1)
/* 806C3D2C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 806C3D30  93 C1 00 28 */	stw r30, 0x28(r1)
/* 806C3D34  7C 7F 1B 78 */	mr r31, r3
/* 806C3D38  3C 60 80 6C */	lis r3, lit_3906@ha
/* 806C3D3C  3B C3 74 E8 */	addi r30, r3, lit_3906@l
/* 806C3D40  38 7F 09 8C */	addi r3, r31, 0x98c
/* 806C3D44  4B 9B FA EC */	b Move__10dCcD_GSttsFv
/* 806C3D48  A8 1F 06 CE */	lha r0, 0x6ce(r31)
/* 806C3D4C  2C 00 00 00 */	cmpwi r0, 0
/* 806C3D50  40 82 01 A4 */	bne lbl_806C3EF4
/* 806C3D54  80 1F 0A 08 */	lwz r0, 0xa08(r31)
/* 806C3D58  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806C3D5C  41 82 00 60 */	beq lbl_806C3DBC
/* 806C3D60  38 00 00 06 */	li r0, 6
/* 806C3D64  B0 1F 06 CE */	sth r0, 0x6ce(r31)
/* 806C3D68  38 7F 09 AC */	addi r3, r31, 0x9ac
/* 806C3D6C  4B 9C 05 EC */	b GetAtHitObj__12dCcD_GObjInfFv
/* 806C3D70  90 7F 0C 24 */	stw r3, 0xc24(r31)
/* 806C3D74  38 7F 05 C4 */	addi r3, r31, 0x5c4
/* 806C3D78  80 9F 0C 24 */	lwz r4, 0xc24(r31)
/* 806C3D7C  38 A0 00 2D */	li r5, 0x2d
/* 806C3D80  38 C0 00 00 */	li r6, 0
/* 806C3D84  4B 9C 37 90 */	b def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c
/* 806C3D88  C0 3E 00 04 */	lfs f1, 4(r30)
/* 806C3D8C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 806C3D90  C0 1E 00 08 */	lfs f0, 8(r30)
/* 806C3D94  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806C3D98  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 806C3D9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806C3DA0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806C3DA4  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 806C3DA8  38 80 00 06 */	li r4, 6
/* 806C3DAC  38 A0 00 1F */	li r5, 0x1f
/* 806C3DB0  38 C1 00 14 */	addi r6, r1, 0x14
/* 806C3DB4  4B 9A BC 70 */	b StartShock__12dVibration_cFii4cXyz
/* 806C3DB8  48 00 01 3C */	b lbl_806C3EF4
lbl_806C3DBC:
/* 806C3DBC  38 7F 09 AC */	addi r3, r31, 0x9ac
/* 806C3DC0  4B 9C 06 A0 */	b ChkTgHit__12dCcD_GObjInfFv
/* 806C3DC4  28 03 00 00 */	cmplwi r3, 0
/* 806C3DC8  41 82 01 2C */	beq lbl_806C3EF4
/* 806C3DCC  38 00 00 06 */	li r0, 6
/* 806C3DD0  B0 1F 06 CE */	sth r0, 0x6ce(r31)
/* 806C3DD4  38 7F 09 AC */	addi r3, r31, 0x9ac
/* 806C3DD8  4B 9C 07 20 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 806C3DDC  90 7F 0C 24 */	stw r3, 0xc24(r31)
/* 806C3DE0  7F E3 FB 78 */	mr r3, r31
/* 806C3DE4  38 9F 0C 24 */	addi r4, r31, 0xc24
/* 806C3DE8  4B 9C 3E 1C */	b cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 806C3DEC  88 1F 0C 44 */	lbz r0, 0xc44(r31)
/* 806C3DF0  28 00 00 10 */	cmplwi r0, 0x10
/* 806C3DF4  40 82 00 78 */	bne lbl_806C3E6C
/* 806C3DF8  38 00 00 01 */	li r0, 1
/* 806C3DFC  B0 1F 06 9A */	sth r0, 0x69a(r31)
/* 806C3E00  38 00 00 05 */	li r0, 5
/* 806C3E04  B0 1F 06 9C */	sth r0, 0x69c(r31)
/* 806C3E08  38 00 13 88 */	li r0, 0x1388
/* 806C3E0C  B0 1F 09 48 */	sth r0, 0x948(r31)
/* 806C3E10  38 00 0B B8 */	li r0, 0xbb8
/* 806C3E14  B0 1F 09 52 */	sth r0, 0x952(r31)
/* 806C3E18  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 806C3E1C  D0 1F 09 4C */	stfs f0, 0x94c(r31)
/* 806C3E20  7F E3 FB 78 */	mr r3, r31
/* 806C3E24  38 80 00 11 */	li r4, 0x11
/* 806C3E28  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 806C3E2C  38 A0 00 02 */	li r5, 2
/* 806C3E30  C0 5E 00 08 */	lfs f2, 8(r30)
/* 806C3E34  4B FF DF 09 */	bl head_anm_init__FP10e_gb_classifUcf
/* 806C3E38  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070151@ha */
/* 806C3E3C  38 03 01 51 */	addi r0, r3, 0x0151 /* 0x00070151@l */
/* 806C3E40  90 01 00 10 */	stw r0, 0x10(r1)
/* 806C3E44  38 7F 05 C4 */	addi r3, r31, 0x5c4
/* 806C3E48  38 81 00 10 */	addi r4, r1, 0x10
/* 806C3E4C  38 A0 FF FF */	li r5, -1
/* 806C3E50  81 9F 05 C4 */	lwz r12, 0x5c4(r31)
/* 806C3E54  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806C3E58  7D 89 03 A6 */	mtctr r12
/* 806C3E5C  4E 80 04 21 */	bctrl 
/* 806C3E60  38 00 00 1E */	li r0, 0x1e
/* 806C3E64  B0 1F 06 C4 */	sth r0, 0x6c4(r31)
/* 806C3E68  48 00 00 8C */	b lbl_806C3EF4
lbl_806C3E6C:
/* 806C3E6C  38 00 00 03 */	li r0, 3
/* 806C3E70  B0 1F 06 9A */	sth r0, 0x69a(r31)
/* 806C3E74  38 00 00 00 */	li r0, 0
/* 806C3E78  B0 1F 06 9C */	sth r0, 0x69c(r31)
/* 806C3E7C  7F E3 FB 78 */	mr r3, r31
/* 806C3E80  38 80 00 0B */	li r4, 0xb
/* 806C3E84  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 806C3E88  38 A0 00 00 */	li r5, 0
/* 806C3E8C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 806C3E90  4B FF DE AD */	bl head_anm_init__FP10e_gb_classifUcf
/* 806C3E94  A8 1F 05 62 */	lha r0, 0x562(r31)
/* 806C3E98  2C 00 00 00 */	cmpwi r0, 0
/* 806C3E9C  41 81 00 30 */	bgt lbl_806C3ECC
/* 806C3EA0  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070154@ha */
/* 806C3EA4  38 03 01 54 */	addi r0, r3, 0x0154 /* 0x00070154@l */
/* 806C3EA8  90 01 00 0C */	stw r0, 0xc(r1)
/* 806C3EAC  38 7F 05 C4 */	addi r3, r31, 0x5c4
/* 806C3EB0  38 81 00 0C */	addi r4, r1, 0xc
/* 806C3EB4  38 A0 FF FF */	li r5, -1
/* 806C3EB8  81 9F 05 C4 */	lwz r12, 0x5c4(r31)
/* 806C3EBC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806C3EC0  7D 89 03 A6 */	mtctr r12
/* 806C3EC4  4E 80 04 21 */	bctrl 
/* 806C3EC8  48 00 00 2C */	b lbl_806C3EF4
lbl_806C3ECC:
/* 806C3ECC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070150@ha */
/* 806C3ED0  38 03 01 50 */	addi r0, r3, 0x0150 /* 0x00070150@l */
/* 806C3ED4  90 01 00 08 */	stw r0, 8(r1)
/* 806C3ED8  38 7F 05 C4 */	addi r3, r31, 0x5c4
/* 806C3EDC  38 81 00 08 */	addi r4, r1, 8
/* 806C3EE0  38 A0 FF FF */	li r5, -1
/* 806C3EE4  81 9F 05 C4 */	lwz r12, 0x5c4(r31)
/* 806C3EE8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806C3EEC  7D 89 03 A6 */	mtctr r12
/* 806C3EF0  4E 80 04 21 */	bctrl 
lbl_806C3EF4:
/* 806C3EF4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 806C3EF8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 806C3EFC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806C3F00  7C 08 03 A6 */	mtlr r0
/* 806C3F04  38 21 00 30 */	addi r1, r1, 0x30
/* 806C3F08  4E 80 00 20 */	blr 
