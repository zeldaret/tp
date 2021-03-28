lbl_8073BB9C:
/* 8073BB9C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8073BBA0  7C 08 02 A6 */	mflr r0
/* 8073BBA4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8073BBA8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8073BBAC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8073BBB0  7C 7F 1B 78 */	mr r31, r3
/* 8073BBB4  3C 60 80 74 */	lis r3, lit_3910@ha
/* 8073BBB8  3B C3 CE A8 */	addi r30, r3, lit_3910@l
/* 8073BBBC  38 60 02 00 */	li r3, 0x200
/* 8073BBC0  38 9F 06 70 */	addi r4, r31, 0x670
/* 8073BBC4  4B 8D DE 68 */	b fopAcM_SearchByName__FsPP10fopAc_ac_c
/* 8073BBC8  80 7F 06 70 */	lwz r3, 0x670(r31)
/* 8073BBCC  28 03 00 00 */	cmplwi r3, 0
/* 8073BBD0  41 82 00 30 */	beq lbl_8073BC00
/* 8073BBD4  41 82 00 0C */	beq lbl_8073BBE0
/* 8073BBD8  80 63 00 04 */	lwz r3, 4(r3)
/* 8073BBDC  48 00 00 08 */	b lbl_8073BBE4
lbl_8073BBE0:
/* 8073BBE0  38 60 FF FF */	li r3, -1
lbl_8073BBE4:
/* 8073BBE4  4B 8E 65 54 */	b fpcM_IsCreating__FUi
/* 8073BBE8  2C 03 00 00 */	cmpwi r3, 0
/* 8073BBEC  40 82 00 14 */	bne lbl_8073BC00
/* 8073BBF0  80 7F 06 70 */	lwz r3, 0x670(r31)
/* 8073BBF4  88 03 07 79 */	lbz r0, 0x779(r3)
/* 8073BBF8  28 00 00 02 */	cmplwi r0, 2
/* 8073BBFC  40 82 00 10 */	bne lbl_8073BC0C
lbl_8073BC00:
/* 8073BC00  7F E3 FB 78 */	mr r3, r31
/* 8073BC04  4B 8D E0 78 */	b fopAcM_delete__FP10fopAc_ac_c
/* 8073BC08  48 00 01 58 */	b lbl_8073BD60
lbl_8073BC0C:
/* 8073BC0C  88 03 07 76 */	lbz r0, 0x776(r3)
/* 8073BC10  28 00 00 00 */	cmplwi r0, 0
/* 8073BC14  41 82 00 30 */	beq lbl_8073BC44
/* 8073BC18  3C 60 80 74 */	lis r3, struct_8073D2DC+0x1@ha
/* 8073BC1C  38 83 D2 DD */	addi r4, r3, struct_8073D2DC+0x1@l
/* 8073BC20  88 04 00 00 */	lbz r0, 0(r4)
/* 8073BC24  28 00 00 00 */	cmplwi r0, 0
/* 8073BC28  40 82 00 28 */	bne lbl_8073BC50
/* 8073BC2C  38 00 00 00 */	li r0, 0
/* 8073BC30  3C 60 80 74 */	lis r3, struct_8073D2DC+0x0@ha
/* 8073BC34  98 03 D2 DC */	stb r0, struct_8073D2DC+0x0@l(r3)
/* 8073BC38  38 00 00 01 */	li r0, 1
/* 8073BC3C  98 04 00 00 */	stb r0, 0(r4)
/* 8073BC40  48 00 00 10 */	b lbl_8073BC50
lbl_8073BC44:
/* 8073BC44  38 00 00 00 */	li r0, 0
/* 8073BC48  3C 60 80 74 */	lis r3, struct_8073D2DC+0x1@ha
/* 8073BC4C  98 03 D2 DD */	stb r0, struct_8073D2DC+0x1@l(r3)
lbl_8073BC50:
/* 8073BC50  7F E3 FB 78 */	mr r3, r31
/* 8073BC54  4B FF E8 BD */	bl damage_check__8daE_OT_cFv
/* 8073BC58  80 1F 06 74 */	lwz r0, 0x674(r31)
/* 8073BC5C  2C 00 00 02 */	cmpwi r0, 2
/* 8073BC60  41 82 00 40 */	beq lbl_8073BCA0
/* 8073BC64  40 80 00 14 */	bge lbl_8073BC78
/* 8073BC68  2C 00 00 00 */	cmpwi r0, 0
/* 8073BC6C  41 82 00 1C */	beq lbl_8073BC88
/* 8073BC70  40 80 00 24 */	bge lbl_8073BC94
/* 8073BC74  48 00 00 4C */	b lbl_8073BCC0
lbl_8073BC78:
/* 8073BC78  2C 00 00 04 */	cmpwi r0, 4
/* 8073BC7C  41 82 00 3C */	beq lbl_8073BCB8
/* 8073BC80  40 80 00 40 */	bge lbl_8073BCC0
/* 8073BC84  48 00 00 28 */	b lbl_8073BCAC
lbl_8073BC88:
/* 8073BC88  7F E3 FB 78 */	mr r3, r31
/* 8073BC8C  4B FF EF 89 */	bl executeEgg__8daE_OT_cFv
/* 8073BC90  48 00 00 30 */	b lbl_8073BCC0
lbl_8073BC94:
/* 8073BC94  7F E3 FB 78 */	mr r3, r31
/* 8073BC98  4B FF F2 D9 */	bl executeBorn__8daE_OT_cFv
/* 8073BC9C  48 00 00 24 */	b lbl_8073BCC0
lbl_8073BCA0:
/* 8073BCA0  7F E3 FB 78 */	mr r3, r31
/* 8073BCA4  4B FF F4 2D */	bl executeAttack__8daE_OT_cFv
/* 8073BCA8  48 00 00 18 */	b lbl_8073BCC0
lbl_8073BCAC:
/* 8073BCAC  7F E3 FB 78 */	mr r3, r31
/* 8073BCB0  4B FF F7 79 */	bl executePanic__8daE_OT_cFv
/* 8073BCB4  48 00 00 0C */	b lbl_8073BCC0
lbl_8073BCB8:
/* 8073BCB8  7F E3 FB 78 */	mr r3, r31
/* 8073BCBC  4B FF FB 99 */	bl executeDamage__8daE_OT_cFv
lbl_8073BCC0:
/* 8073BCC0  7F E3 FB 78 */	mr r3, r31
/* 8073BCC4  38 9F 08 B0 */	addi r4, r31, 0x8b0
/* 8073BCC8  4B 8D EA 04 */	b fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 8073BCCC  C0 3F 06 88 */	lfs f1, 0x688(r31)
/* 8073BCD0  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8073BCD4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8073BCD8  4C 41 13 82 */	cror 2, 1, 2
/* 8073BCDC  40 82 00 40 */	bne lbl_8073BD1C
/* 8073BCE0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8073BCE4  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 8073BCE8  C0 1F 06 88 */	lfs f0, 0x688(r31)
/* 8073BCEC  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 8073BCF0  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 8073BCF4  C0 3F 06 88 */	lfs f1, 0x688(r31)
/* 8073BCF8  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8073BCFC  D0 01 00 08 */	stfs f0, 8(r1)
/* 8073BD00  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8073BD04  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8073BD08  38 7F 0B 90 */	addi r3, r31, 0xb90
/* 8073BD0C  38 81 00 08 */	addi r4, r1, 8
/* 8073BD10  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 8073BD14  C0 5E 00 44 */	lfs f2, 0x44(r30)
/* 8073BD18  4B 8E 13 F4 */	b fopAcM_effHamonSet__FPUlPC4cXyzff
lbl_8073BD1C:
/* 8073BD1C  38 7F 06 D8 */	addi r3, r31, 0x6d8
/* 8073BD20  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8073BD24  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8073BD28  38 84 0F 38 */	addi r4, r4, 0xf38
/* 8073BD2C  4B 93 AD 80 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 8073BD30  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8073BD34  7C 03 07 74 */	extsb r3, r0
/* 8073BD38  4B 8F 13 34 */	b dComIfGp_getReverb__Fi
/* 8073BD3C  7C 65 1B 78 */	mr r5, r3
/* 8073BD40  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 8073BD44  38 80 00 00 */	li r4, 0
/* 8073BD48  4B 8D 53 68 */	b play__16mDoExt_McaMorfSOFUlSc
/* 8073BD4C  88 1F 06 93 */	lbz r0, 0x693(r31)
/* 8073BD50  28 00 00 00 */	cmplwi r0, 0
/* 8073BD54  40 82 00 0C */	bne lbl_8073BD60
/* 8073BD58  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8073BD5C  4B 8D 16 CC */	b play__14mDoExt_baseAnmFv
lbl_8073BD60:
/* 8073BD60  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8073BD64  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8073BD68  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8073BD6C  7C 08 03 A6 */	mtlr r0
/* 8073BD70  38 21 00 20 */	addi r1, r1, 0x20
/* 8073BD74  4E 80 00 20 */	blr 
