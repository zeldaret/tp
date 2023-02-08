lbl_80612CC8:
/* 80612CC8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80612CCC  7C 08 02 A6 */	mflr r0
/* 80612CD0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80612CD4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80612CD8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80612CDC  7C 7E 1B 78 */	mr r30, r3
/* 80612CE0  3C 60 80 62 */	lis r3, lit_3772@ha /* 0x8061AD84@ha */
/* 80612CE4  3B E3 AD 84 */	addi r31, r3, lit_3772@l /* 0x8061AD84@l */
/* 80612CE8  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80612CEC  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 80612CF0  41 82 00 60 */	beq lbl_80612D50
/* 80612CF4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80612CF8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80612CFC  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80612D00  38 00 00 FF */	li r0, 0xff
/* 80612D04  90 01 00 08 */	stw r0, 8(r1)
/* 80612D08  38 80 00 00 */	li r4, 0
/* 80612D0C  90 81 00 0C */	stw r4, 0xc(r1)
/* 80612D10  38 00 FF FF */	li r0, -1
/* 80612D14  90 01 00 10 */	stw r0, 0x10(r1)
/* 80612D18  90 81 00 14 */	stw r4, 0x14(r1)
/* 80612D1C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80612D20  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80612D24  80 9E 5D 38 */	lwz r4, 0x5d38(r30)
/* 80612D28  38 A0 00 00 */	li r5, 0
/* 80612D2C  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008802@ha */
/* 80612D30  38 C6 88 02 */	addi r6, r6, 0x8802 /* 0x00008802@l */
/* 80612D34  38 FE 04 D0 */	addi r7, r30, 0x4d0
/* 80612D38  39 00 00 00 */	li r8, 0
/* 80612D3C  39 20 00 00 */	li r9, 0
/* 80612D40  39 40 00 00 */	li r10, 0
/* 80612D44  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80612D48  4B A3 A7 85 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80612D4C  90 7E 5D 38 */	stw r3, 0x5d38(r30)
lbl_80612D50:
/* 80612D50  38 7E 47 E8 */	addi r3, r30, 0x47e8
/* 80612D54  4B A7 0A DD */	bl Move__10dCcD_GSttsFv
/* 80612D58  A8 1E 47 84 */	lha r0, 0x4784(r30)
/* 80612D5C  2C 00 00 00 */	cmpwi r0, 0
/* 80612D60  40 82 01 5C */	bne lbl_80612EBC
/* 80612D64  38 7E 48 08 */	addi r3, r30, 0x4808
/* 80612D68  4B A7 16 F9 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80612D6C  28 03 00 00 */	cmplwi r3, 0
/* 80612D70  41 82 01 4C */	beq lbl_80612EBC
/* 80612D74  38 7E 48 08 */	addi r3, r30, 0x4808
/* 80612D78  4B A7 17 81 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 80612D7C  90 7E 4A 78 */	stw r3, 0x4a78(r30)
/* 80612D80  7F C3 F3 78 */	mr r3, r30
/* 80612D84  38 9E 4A 78 */	addi r4, r30, 0x4a78
/* 80612D88  4B A7 4E 7D */	bl cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 80612D8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80612D90  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80612D94  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80612D98  38 80 00 00 */	li r4, 0
/* 80612D9C  90 81 00 08 */	stw r4, 8(r1)
/* 80612DA0  38 00 FF FF */	li r0, -1
/* 80612DA4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80612DA8  90 81 00 10 */	stw r4, 0x10(r1)
/* 80612DAC  90 81 00 14 */	stw r4, 0x14(r1)
/* 80612DB0  90 81 00 18 */	stw r4, 0x18(r1)
/* 80612DB4  38 80 00 00 */	li r4, 0
/* 80612DB8  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008801@ha */
/* 80612DBC  38 A5 88 01 */	addi r5, r5, 0x8801 /* 0x00008801@l */
/* 80612DC0  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80612DC4  38 E0 00 00 */	li r7, 0
/* 80612DC8  39 00 00 00 */	li r8, 0
/* 80612DCC  39 20 00 00 */	li r9, 0
/* 80612DD0  39 40 00 FF */	li r10, 0xff
/* 80612DD4  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80612DD8  4B A3 9C B9 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80612DDC  80 7E 4A 78 */	lwz r3, 0x4a78(r30)
/* 80612DE0  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80612DE4  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 80612DE8  41 82 00 50 */	beq lbl_80612E38
/* 80612DEC  38 00 00 03 */	li r0, 3
/* 80612DF0  B0 1E 47 52 */	sth r0, 0x4752(r30)
/* 80612DF4  38 00 00 00 */	li r0, 0
/* 80612DF8  B0 1E 47 54 */	sth r0, 0x4754(r30)
/* 80612DFC  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007034B@ha */
/* 80612E00  38 03 03 4B */	addi r0, r3, 0x034B /* 0x0007034B@l */
/* 80612E04  90 01 00 24 */	stw r0, 0x24(r1)
/* 80612E08  38 7E 59 3C */	addi r3, r30, 0x593c
/* 80612E0C  38 81 00 24 */	addi r4, r1, 0x24
/* 80612E10  38 A0 00 00 */	li r5, 0
/* 80612E14  38 C0 FF FF */	li r6, -1
/* 80612E18  81 9E 59 3C */	lwz r12, 0x593c(r30)
/* 80612E1C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80612E20  7D 89 03 A6 */	mtctr r12
/* 80612E24  4E 80 04 21 */	bctrl 
/* 80612E28  38 60 00 07 */	li r3, 7
/* 80612E2C  38 80 FF FF */	li r4, -1
/* 80612E30  4B A1 AC 6D */	bl dComIfGs_onOneZoneSwitch__Fii
/* 80612E34  48 00 00 80 */	b lbl_80612EB4
lbl_80612E38:
/* 80612E38  A8 7E 47 6C */	lha r3, 0x476c(r30)
/* 80612E3C  3C 63 00 01 */	addis r3, r3, 1
/* 80612E40  38 03 80 00 */	addi r0, r3, -32768
/* 80612E44  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80612E48  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 80612E4C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80612E50  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80612E54  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80612E58  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007034C@ha */
/* 80612E5C  38 03 03 4C */	addi r0, r3, 0x034C /* 0x0007034C@l */
/* 80612E60  90 01 00 20 */	stw r0, 0x20(r1)
/* 80612E64  38 7E 59 3C */	addi r3, r30, 0x593c
/* 80612E68  38 81 00 20 */	addi r4, r1, 0x20
/* 80612E6C  38 A0 FF FF */	li r5, -1
/* 80612E70  81 9E 59 3C */	lwz r12, 0x593c(r30)
/* 80612E74  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80612E78  7D 89 03 A6 */	mtctr r12
/* 80612E7C  4E 80 04 21 */	bctrl 
/* 80612E80  A8 1E 05 62 */	lha r0, 0x562(r30)
/* 80612E84  2C 00 00 00 */	cmpwi r0, 0
/* 80612E88  41 81 00 24 */	bgt lbl_80612EAC
/* 80612E8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80612E90  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80612E94  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80612E98  28 00 00 00 */	cmplwi r0, 0
/* 80612E9C  40 82 00 10 */	bne lbl_80612EAC
/* 80612EA0  38 00 00 01 */	li r0, 1
/* 80612EA4  98 1E 47 44 */	stb r0, 0x4744(r30)
/* 80612EA8  48 00 00 0C */	b lbl_80612EB4
lbl_80612EAC:
/* 80612EAC  38 00 00 01 */	li r0, 1
/* 80612EB0  98 1E 5D 13 */	stb r0, 0x5d13(r30)
lbl_80612EB4:
/* 80612EB4  38 00 00 0A */	li r0, 0xa
/* 80612EB8  B0 1E 47 84 */	sth r0, 0x4784(r30)
lbl_80612EBC:
/* 80612EBC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80612EC0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80612EC4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80612EC8  7C 08 03 A6 */	mtlr r0
/* 80612ECC  38 21 00 30 */	addi r1, r1, 0x30
/* 80612ED0  4E 80 00 20 */	blr 
