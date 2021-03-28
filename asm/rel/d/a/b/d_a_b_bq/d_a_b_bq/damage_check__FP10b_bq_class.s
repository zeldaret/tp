lbl_805B3E00:
/* 805B3E00  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805B3E04  7C 08 02 A6 */	mflr r0
/* 805B3E08  90 01 00 24 */	stw r0, 0x24(r1)
/* 805B3E0C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805B3E10  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805B3E14  7C 7F 1B 78 */	mr r31, r3
/* 805B3E18  38 7F 08 90 */	addi r3, r31, 0x890
/* 805B3E1C  4B AC FA 14 */	b Move__10dCcD_GSttsFv
/* 805B3E20  38 7F 07 1C */	addi r3, r31, 0x71c
/* 805B3E24  4B AC FA 0C */	b Move__10dCcD_GSttsFv
/* 805B3E28  A8 1F 06 CA */	lha r0, 0x6ca(r31)
/* 805B3E2C  2C 00 00 03 */	cmpwi r0, 3
/* 805B3E30  41 82 00 F8 */	beq lbl_805B3F28
/* 805B3E34  38 7F 07 3C */	addi r3, r31, 0x73c
/* 805B3E38  4B AD 06 28 */	b ChkTgHit__12dCcD_GObjInfFv
/* 805B3E3C  28 03 00 00 */	cmplwi r3, 0
/* 805B3E40  41 82 01 F0 */	beq lbl_805B4030
/* 805B3E44  38 7F 07 3C */	addi r3, r31, 0x73c
/* 805B3E48  4B AD 06 B0 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 805B3E4C  90 7F 11 54 */	stw r3, 0x1154(r31)
/* 805B3E50  38 7F 11 54 */	addi r3, r31, 0x1154
/* 805B3E54  4B AD 3C 04 */	b at_power_check__FP11dCcU_AtInfo
/* 805B3E58  88 1F 11 74 */	lbz r0, 0x1174(r31)
/* 805B3E5C  28 00 00 02 */	cmplwi r0, 2
/* 805B3E60  40 82 00 60 */	bne lbl_805B3EC0
/* 805B3E64  38 00 00 03 */	li r0, 3
/* 805B3E68  B0 1F 06 CA */	sth r0, 0x6ca(r31)
/* 805B3E6C  38 00 00 00 */	li r0, 0
/* 805B3E70  B0 1F 06 CC */	sth r0, 0x6cc(r31)
/* 805B3E74  38 00 00 1E */	li r0, 0x1e
/* 805B3E78  B0 1F 06 DE */	sth r0, 0x6de(r31)
/* 805B3E7C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007010F@ha */
/* 805B3E80  38 03 01 0F */	addi r0, r3, 0x010F /* 0x0007010F@l */
/* 805B3E84  90 01 00 10 */	stw r0, 0x10(r1)
/* 805B3E88  38 7F 05 E0 */	addi r3, r31, 0x5e0
/* 805B3E8C  38 81 00 10 */	addi r4, r1, 0x10
/* 805B3E90  38 A0 FF FF */	li r5, -1
/* 805B3E94  81 9F 05 E0 */	lwz r12, 0x5e0(r31)
/* 805B3E98  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805B3E9C  7D 89 03 A6 */	mtctr r12
/* 805B3EA0  4E 80 04 21 */	bctrl 
/* 805B3EA4  88 7F 11 FC */	lbz r3, 0x11fc(r31)
/* 805B3EA8  38 03 00 01 */	addi r0, r3, 1
/* 805B3EAC  98 1F 11 FC */	stb r0, 0x11fc(r31)
/* 805B3EB0  38 60 00 08 */	li r3, 8
/* 805B3EB4  38 80 FF FF */	li r4, -1
/* 805B3EB8  4B A7 9B E4 */	b dComIfGs_onOneZoneSwitch__Fii
/* 805B3EBC  48 00 01 74 */	b lbl_805B4030
lbl_805B3EC0:
/* 805B3EC0  38 7F 05 E0 */	addi r3, r31, 0x5e0
/* 805B3EC4  80 9F 11 54 */	lwz r4, 0x1154(r31)
/* 805B3EC8  38 A0 00 2D */	li r5, 0x2d
/* 805B3ECC  38 C0 00 00 */	li r6, 0
/* 805B3ED0  4B AD 36 44 */	b def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c
/* 805B3ED4  7F E3 FB 78 */	mr r3, r31
/* 805B3ED8  38 80 00 11 */	li r4, 0x11
/* 805B3EDC  3C A0 80 5C */	lis r5, lit_4137@ha
/* 805B3EE0  C0 25 A5 AC */	lfs f1, lit_4137@l(r5)
/* 805B3EE4  38 A0 00 00 */	li r5, 0
/* 805B3EE8  3C C0 80 5C */	lis r6, lit_3816@ha
/* 805B3EEC  C0 46 A5 88 */	lfs f2, lit_3816@l(r6)
/* 805B3EF0  4B FF F6 B1 */	bl anm_init__FP10b_bq_classifUcf
/* 805B3EF4  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070143@ha */
/* 805B3EF8  38 03 01 43 */	addi r0, r3, 0x0143 /* 0x00070143@l */
/* 805B3EFC  90 01 00 0C */	stw r0, 0xc(r1)
/* 805B3F00  38 7F 05 E0 */	addi r3, r31, 0x5e0
/* 805B3F04  38 81 00 0C */	addi r4, r1, 0xc
/* 805B3F08  38 A0 FF FF */	li r5, -1
/* 805B3F0C  81 9F 05 E0 */	lwz r12, 0x5e0(r31)
/* 805B3F10  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805B3F14  7D 89 03 A6 */	mtctr r12
/* 805B3F18  4E 80 04 21 */	bctrl 
/* 805B3F1C  38 00 00 0A */	li r0, 0xa
/* 805B3F20  B0 1F 06 DE */	sth r0, 0x6de(r31)
/* 805B3F24  48 00 01 0C */	b lbl_805B4030
lbl_805B3F28:
/* 805B3F28  A8 1F 06 DE */	lha r0, 0x6de(r31)
/* 805B3F2C  2C 00 00 00 */	cmpwi r0, 0
/* 805B3F30  40 82 01 00 */	bne lbl_805B4030
/* 805B3F34  38 7F 08 B0 */	addi r3, r31, 0x8b0
/* 805B3F38  4B AD 05 28 */	b ChkTgHit__12dCcD_GObjInfFv
/* 805B3F3C  28 03 00 00 */	cmplwi r3, 0
/* 805B3F40  41 82 00 F0 */	beq lbl_805B4030
/* 805B3F44  38 7F 08 B0 */	addi r3, r31, 0x8b0
/* 805B3F48  4B AD 05 B0 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 805B3F4C  90 7F 11 54 */	stw r3, 0x1154(r31)
/* 805B3F50  7F E3 FB 78 */	mr r3, r31
/* 805B3F54  38 9F 11 54 */	addi r4, r31, 0x1154
/* 805B3F58  4B AD 3C AC */	b cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 805B3F5C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805B3F60  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 805B3F64  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 805B3F68  88 03 05 68 */	lbz r0, 0x568(r3)
/* 805B3F6C  28 00 00 0A */	cmplwi r0, 0xa
/* 805B3F70  40 82 00 28 */	bne lbl_805B3F98
/* 805B3F74  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805B3F78  81 8C 01 3C */	lwz r12, 0x13c(r12)
/* 805B3F7C  7D 89 03 A6 */	mtctr r12
/* 805B3F80  4E 80 04 21 */	bctrl 
/* 805B3F84  2C 03 00 00 */	cmpwi r3, 0
/* 805B3F88  41 82 00 10 */	beq lbl_805B3F98
/* 805B3F8C  38 00 00 03 */	li r0, 3
/* 805B3F90  B0 1F 06 DE */	sth r0, 0x6de(r31)
/* 805B3F94  48 00 00 0C */	b lbl_805B3FA0
lbl_805B3F98:
/* 805B3F98  38 00 00 06 */	li r0, 6
/* 805B3F9C  B0 1F 06 DE */	sth r0, 0x6de(r31)
lbl_805B3FA0:
/* 805B3FA0  A8 1F 06 CA */	lha r0, 0x6ca(r31)
/* 805B3FA4  2C 00 00 03 */	cmpwi r0, 3
/* 805B3FA8  40 82 00 88 */	bne lbl_805B4030
/* 805B3FAC  A8 1F 05 62 */	lha r0, 0x562(r31)
/* 805B3FB0  2C 00 00 00 */	cmpwi r0, 0
/* 805B3FB4  40 81 00 14 */	ble lbl_805B3FC8
/* 805B3FB8  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 805B3FBC  88 03 05 69 */	lbz r0, 0x569(r3)
/* 805B3FC0  28 00 00 04 */	cmplwi r0, 4
/* 805B3FC4  41 80 00 18 */	blt lbl_805B3FDC
lbl_805B3FC8:
/* 805B3FC8  38 00 00 14 */	li r0, 0x14
/* 805B3FCC  B0 1F 06 CC */	sth r0, 0x6cc(r31)
/* 805B3FD0  38 00 00 64 */	li r0, 0x64
/* 805B3FD4  B0 1F 06 DE */	sth r0, 0x6de(r31)
/* 805B3FD8  48 00 00 58 */	b lbl_805B4030
lbl_805B3FDC:
/* 805B3FDC  38 00 00 0A */	li r0, 0xa
/* 805B3FE0  B0 1F 06 CC */	sth r0, 0x6cc(r31)
/* 805B3FE4  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070111@ha */
/* 805B3FE8  38 03 01 11 */	addi r0, r3, 0x0111 /* 0x00070111@l */
/* 805B3FEC  90 01 00 08 */	stw r0, 8(r1)
/* 805B3FF0  38 7F 05 E0 */	addi r3, r31, 0x5e0
/* 805B3FF4  38 81 00 08 */	addi r4, r1, 8
/* 805B3FF8  38 A0 FF FF */	li r5, -1
/* 805B3FFC  81 9F 05 E0 */	lwz r12, 0x5e0(r31)
/* 805B4000  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805B4004  7D 89 03 A6 */	mtctr r12
/* 805B4008  4E 80 04 21 */	bctrl 
/* 805B400C  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 805B4010  88 03 05 69 */	lbz r0, 0x569(r3)
/* 805B4014  28 00 00 00 */	cmplwi r0, 0
/* 805B4018  41 82 00 18 */	beq lbl_805B4030
/* 805B401C  A8 1F 06 D4 */	lha r0, 0x6d4(r31)
/* 805B4020  2C 00 00 1E */	cmpwi r0, 0x1e
/* 805B4024  40 80 00 0C */	bge lbl_805B4030
/* 805B4028  38 00 00 1E */	li r0, 0x1e
/* 805B402C  B0 1F 06 D4 */	sth r0, 0x6d4(r31)
lbl_805B4030:
/* 805B4030  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805B4034  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805B4038  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805B403C  7C 08 03 A6 */	mtlr r0
/* 805B4040  38 21 00 20 */	addi r1, r1, 0x20
/* 805B4044  4E 80 00 20 */	blr 
