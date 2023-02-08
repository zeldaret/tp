lbl_807968E4:
/* 807968E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 807968E8  7C 08 02 A6 */	mflr r0
/* 807968EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 807968F0  39 61 00 20 */	addi r11, r1, 0x20
/* 807968F4  4B BC B8 E9 */	bl _savegpr_29
/* 807968F8  7C 7E 1B 78 */	mr r30, r3
/* 807968FC  3C 80 80 7A */	lis r4, lit_3920@ha /* 0x807985E0@ha */
/* 80796900  3B E4 85 E0 */	addi r31, r4, lit_3920@l /* 0x807985E0@l */
/* 80796904  3B A0 00 00 */	li r29, 0
/* 80796908  A8 03 06 B0 */	lha r0, 0x6b0(r3)
/* 8079690C  28 00 00 07 */	cmplwi r0, 7
/* 80796910  41 81 00 D4 */	bgt lbl_807969E4
/* 80796914  3C 80 80 7A */	lis r4, lit_5683@ha /* 0x80798818@ha */
/* 80796918  38 84 88 18 */	addi r4, r4, lit_5683@l /* 0x80798818@l */
/* 8079691C  54 00 10 3A */	slwi r0, r0, 2
/* 80796920  7C 04 00 2E */	lwzx r0, r4, r0
/* 80796924  7C 09 03 A6 */	mtctr r0
/* 80796928  4E 80 04 20 */	bctr 
lbl_8079692C:
/* 8079692C  4B FF EF 75 */	bl C_DamageCheck__8daE_SM_cFv
/* 80796930  7F C3 F3 78 */	mr r3, r30
/* 80796934  4B FF DA 05 */	bl E_SM_C_Normal__8daE_SM_cFv
/* 80796938  80 1E 0F 64 */	lwz r0, 0xf64(r30)
/* 8079693C  60 00 00 04 */	ori r0, r0, 4
/* 80796940  90 1E 0F 64 */	stw r0, 0xf64(r30)
/* 80796944  48 00 00 A0 */	b lbl_807969E4
lbl_80796948:
/* 80796948  4B FF EF 59 */	bl C_DamageCheck__8daE_SM_cFv
/* 8079694C  7F C3 F3 78 */	mr r3, r30
/* 80796950  4B FF DA 75 */	bl E_SM_C_Fight__8daE_SM_cFv
/* 80796954  48 00 00 90 */	b lbl_807969E4
lbl_80796958:
/* 80796958  A8 1E 06 B6 */	lha r0, 0x6b6(r30)
/* 8079695C  2C 00 00 07 */	cmpwi r0, 7
/* 80796960  41 82 00 14 */	beq lbl_80796974
/* 80796964  2C 00 00 06 */	cmpwi r0, 6
/* 80796968  41 82 00 0C */	beq lbl_80796974
/* 8079696C  4B FF EF 35 */	bl C_DamageCheck__8daE_SM_cFv
/* 80796970  48 00 00 38 */	b lbl_807969A8
lbl_80796974:
/* 80796974  38 00 00 00 */	li r0, 0
/* 80796978  B0 1E 06 D6 */	sth r0, 0x6d6(r30)
/* 8079697C  B0 1E 06 D4 */	sth r0, 0x6d4(r30)
/* 80796980  38 7E 0E C8 */	addi r3, r30, 0xec8
/* 80796984  81 9E 0F 04 */	lwz r12, 0xf04(r30)
/* 80796988  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8079698C  7D 89 03 A6 */	mtctr r12
/* 80796990  4E 80 04 21 */	bctrl 
/* 80796994  38 7E 10 00 */	addi r3, r30, 0x1000
/* 80796998  81 9E 10 3C */	lwz r12, 0x103c(r30)
/* 8079699C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 807969A0  7D 89 03 A6 */	mtctr r12
/* 807969A4  4E 80 04 21 */	bctrl 
lbl_807969A8:
/* 807969A8  7F C3 F3 78 */	mr r3, r30
/* 807969AC  4B FF E8 99 */	bl E_SM_C_Free__8daE_SM_cFv
/* 807969B0  3B A0 00 01 */	li r29, 1
/* 807969B4  48 00 00 30 */	b lbl_807969E4
lbl_807969B8:
/* 807969B8  4B FF EB 79 */	bl E_SM_C_Death__8daE_SM_cFv
/* 807969BC  3B A0 00 01 */	li r29, 1
/* 807969C0  48 00 00 24 */	b lbl_807969E4
lbl_807969C4:
/* 807969C4  80 1E 0F 64 */	lwz r0, 0xf64(r30)
/* 807969C8  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 807969CC  90 1E 0F 64 */	stw r0, 0xf64(r30)
/* 807969D0  4B FF F4 95 */	bl E_SM_C_Hook__8daE_SM_cFv
/* 807969D4  3B A0 00 01 */	li r29, 1
/* 807969D8  48 00 00 0C */	b lbl_807969E4
lbl_807969DC:
/* 807969DC  4B FF FE C5 */	bl E_SM_C_Demo__8daE_SM_cFv
/* 807969E0  3B A0 00 01 */	li r29, 1
lbl_807969E4:
/* 807969E4  7F A0 07 75 */	extsb. r0, r29
/* 807969E8  40 82 00 58 */	bne lbl_80796A40
/* 807969EC  C0 5E 09 98 */	lfs f2, 0x998(r30)
/* 807969F0  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 807969F4  C0 1E 09 94 */	lfs f0, 0x994(r30)
/* 807969F8  EC 21 00 2A */	fadds f1, f1, f0
/* 807969FC  C0 1E 09 90 */	lfs f0, 0x990(r30)
/* 80796A00  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80796A04  D0 3E 04 D4 */	stfs f1, 0x4d4(r30)
/* 80796A08  D0 5E 04 D8 */	stfs f2, 0x4d8(r30)
/* 80796A0C  A8 1E 06 BE */	lha r0, 0x6be(r30)
/* 80796A10  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80796A14  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80796A18  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80796A1C  7C 03 04 2E */	lfsx f0, r3, r0
/* 80796A20  FC 00 02 10 */	fabs f0, f0
/* 80796A24  FC 40 00 18 */	frsp f2, f0
/* 80796A28  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80796A2C  C0 1F 01 6C */	lfs f0, 0x16c(r31)
/* 80796A30  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80796A34  EC 01 00 2A */	fadds f0, f1, f0
/* 80796A38  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80796A3C  48 00 00 84 */	b lbl_80796AC0
lbl_80796A40:
/* 80796A40  7F A0 07 74 */	extsb r0, r29
/* 80796A44  2C 00 00 01 */	cmpwi r0, 1
/* 80796A48  40 82 00 78 */	bne lbl_80796AC0
/* 80796A4C  7F C3 F3 78 */	mr r3, r30
/* 80796A50  38 9E 0E 50 */	addi r4, r30, 0xe50
/* 80796A54  4B 88 3C 79 */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 80796A58  A8 1E 06 B0 */	lha r0, 0x6b0(r30)
/* 80796A5C  2C 00 00 00 */	cmpwi r0, 0
/* 80796A60  41 82 00 38 */	beq lbl_80796A98
/* 80796A64  A8 1E 06 B6 */	lha r0, 0x6b6(r30)
/* 80796A68  2C 00 00 06 */	cmpwi r0, 6
/* 80796A6C  41 82 00 10 */	beq lbl_80796A7C
/* 80796A70  C0 1F 01 70 */	lfs f0, 0x170(r31)
/* 80796A74  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 80796A78  48 00 00 28 */	b lbl_80796AA0
lbl_80796A7C:
/* 80796A7C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80796A80  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 80796A84  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80796A88  C0 1E 04 FC */	lfs f0, 0x4fc(r30)
/* 80796A8C  EC 01 00 2A */	fadds f0, f1, f0
/* 80796A90  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80796A94  48 00 00 0C */	b lbl_80796AA0
lbl_80796A98:
/* 80796A98  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80796A9C  D0 1E 05 30 */	stfs f0, 0x530(r30)
lbl_80796AA0:
/* 80796AA0  38 7E 0A 60 */	addi r3, r30, 0xa60
/* 80796AA4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80796AA8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80796AAC  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80796AB0  4B 8D FF FD */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80796AB4  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80796AB8  54 00 06 2C */	rlwinm r0, r0, 0, 0x18, 0x16
/* 80796ABC  90 1E 04 9C */	stw r0, 0x49c(r30)
lbl_80796AC0:
/* 80796AC0  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 80796AC4  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 80796AC8  38 A0 00 05 */	li r5, 5
/* 80796ACC  38 C0 10 00 */	li r6, 0x1000
/* 80796AD0  4B AD 9B 39 */	bl cLib_addCalcAngleS2__FPssss
/* 80796AD4  39 61 00 20 */	addi r11, r1, 0x20
/* 80796AD8  4B BC B7 51 */	bl _restgpr_29
/* 80796ADC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80796AE0  7C 08 03 A6 */	mtlr r0
/* 80796AE4  38 21 00 20 */	addi r1, r1, 0x20
/* 80796AE8  4E 80 00 20 */	blr 
