lbl_80754AD8:
/* 80754AD8  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80754ADC  7C 08 02 A6 */	mflr r0
/* 80754AE0  90 01 00 84 */	stw r0, 0x84(r1)
/* 80754AE4  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80754AE8  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 80754AEC  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 80754AF0  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 80754AF4  39 61 00 60 */	addi r11, r1, 0x60
/* 80754AF8  4B C0 D6 DD */	bl _savegpr_27
/* 80754AFC  7C 7C 1B 78 */	mr r28, r3
/* 80754B00  3C 80 80 75 */	lis r4, lit_3917@ha /* 0x807576FC@ha */
/* 80754B04  3B C4 76 FC */	addi r30, r4, lit_3917@l /* 0x807576FC@l */
/* 80754B08  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80754B0C  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80754B10  83 BF 5D AC */	lwz r29, 0x5dac(r31)
/* 80754B14  7F A4 EB 78 */	mr r4, r29
/* 80754B18  4B 8C 5C C9 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80754B1C  D0 3C 07 44 */	stfs f1, 0x744(r28)
/* 80754B20  C3 FE 00 04 */	lfs f31, 4(r30)
/* 80754B24  C3 DE 00 78 */	lfs f30, 0x78(r30)
/* 80754B28  7F 83 E3 78 */	mr r3, r28
/* 80754B2C  38 80 00 02 */	li r4, 2
/* 80754B30  4B FF 7A BD */	bl mArg0Check__FP10e_po_classs
/* 80754B34  2C 03 00 00 */	cmpwi r3, 0
/* 80754B38  41 82 00 20 */	beq lbl_80754B58
/* 80754B3C  7F 83 E3 78 */	mr r3, r28
/* 80754B40  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80754B44  4B 8C 82 B9 */	bl fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80754B48  2C 03 00 00 */	cmpwi r3, 0
/* 80754B4C  41 82 00 0C */	beq lbl_80754B58
/* 80754B50  38 00 00 05 */	li r0, 5
/* 80754B54  B0 1C 07 50 */	sth r0, 0x750(r28)
lbl_80754B58:
/* 80754B58  88 1C 07 5A */	lbz r0, 0x75a(r28)
/* 80754B5C  28 00 00 00 */	cmplwi r0, 0
/* 80754B60  40 82 01 5C */	bne lbl_80754CBC
/* 80754B64  A8 1C 07 42 */	lha r0, 0x742(r28)
/* 80754B68  2C 00 00 14 */	cmpwi r0, 0x14
/* 80754B6C  41 82 01 50 */	beq lbl_80754CBC
/* 80754B70  4B A0 A8 B5 */	bl checkNowWolfEyeUp__9daPy_py_cFv
/* 80754B74  2C 03 00 00 */	cmpwi r3, 0
/* 80754B78  40 82 00 1C */	bne lbl_80754B94
/* 80754B7C  A8 1C 07 42 */	lha r0, 0x742(r28)
/* 80754B80  2C 00 00 0C */	cmpwi r0, 0xc
/* 80754B84  40 82 00 FC */	bne lbl_80754C80
/* 80754B88  80 1C 05 B4 */	lwz r0, 0x5b4(r28)
/* 80754B8C  2C 00 00 02 */	cmpwi r0, 2
/* 80754B90  40 82 00 F0 */	bne lbl_80754C80
lbl_80754B94:
/* 80754B94  A8 1C 07 50 */	lha r0, 0x750(r28)
/* 80754B98  2C 00 00 00 */	cmpwi r0, 0
/* 80754B9C  40 82 01 20 */	bne lbl_80754CBC
/* 80754BA0  C3 FE 03 48 */	lfs f31, 0x348(r30)
/* 80754BA4  C3 DE 00 A0 */	lfs f30, 0xa0(r30)
/* 80754BA8  80 1C 05 5C */	lwz r0, 0x55c(r28)
/* 80754BAC  60 00 00 04 */	ori r0, r0, 4
/* 80754BB0  90 1C 05 5C */	stw r0, 0x55c(r28)
/* 80754BB4  88 1C 05 C1 */	lbz r0, 0x5c1(r28)
/* 80754BB8  28 00 00 00 */	cmplwi r0, 0
/* 80754BBC  41 82 00 10 */	beq lbl_80754BCC
/* 80754BC0  3C 60 00 40 */	lis r3, 0x0040 /* 0x00400004@ha */
/* 80754BC4  38 03 00 04 */	addi r0, r3, 0x0004 /* 0x00400004@l */
/* 80754BC8  90 1C 05 5C */	stw r0, 0x55c(r28)
lbl_80754BCC:
/* 80754BCC  A8 1C 07 42 */	lha r0, 0x742(r28)
/* 80754BD0  2C 00 00 02 */	cmpwi r0, 2
/* 80754BD4  41 82 00 4C */	beq lbl_80754C20
/* 80754BD8  2C 00 00 0A */	cmpwi r0, 0xa
/* 80754BDC  41 82 00 44 */	beq lbl_80754C20
/* 80754BE0  2C 00 00 0B */	cmpwi r0, 0xb
/* 80754BE4  41 82 00 3C */	beq lbl_80754C20
/* 80754BE8  2C 00 00 0C */	cmpwi r0, 0xc
/* 80754BEC  41 82 00 34 */	beq lbl_80754C20
/* 80754BF0  2C 00 00 04 */	cmpwi r0, 4
/* 80754BF4  41 82 00 2C */	beq lbl_80754C20
/* 80754BF8  7F 83 E3 78 */	mr r3, r28
/* 80754BFC  3C 80 80 75 */	lis r4, mAttackNo@ha /* 0x80757ADA@ha */
/* 80754C00  38 84 7A DA */	addi r4, r4, mAttackNo@l /* 0x80757ADA@l */
/* 80754C04  A8 84 00 00 */	lha r4, 0(r4)
/* 80754C08  4B FF 79 E5 */	bl mArg0Check__FP10e_po_classs
/* 80754C0C  2C 03 00 00 */	cmpwi r3, 0
/* 80754C10  41 82 00 18 */	beq lbl_80754C28
/* 80754C14  A8 1C 07 4E */	lha r0, 0x74e(r28)
/* 80754C18  2C 00 00 00 */	cmpwi r0, 0
/* 80754C1C  41 82 00 0C */	beq lbl_80754C28
lbl_80754C20:
/* 80754C20  C3 FE 03 4C */	lfs f31, 0x34c(r30)
/* 80754C24  C3 DE 00 A0 */	lfs f30, 0xa0(r30)
lbl_80754C28:
/* 80754C28  A8 1C 07 42 */	lha r0, 0x742(r28)
/* 80754C2C  2C 00 00 04 */	cmpwi r0, 4
/* 80754C30  40 82 00 8C */	bne lbl_80754CBC
/* 80754C34  C3 FE 03 4C */	lfs f31, 0x34c(r30)
/* 80754C38  C3 DE 00 78 */	lfs f30, 0x78(r30)
/* 80754C3C  7F 83 E3 78 */	mr r3, r28
/* 80754C40  38 80 00 FF */	li r4, 0xff
/* 80754C44  4B FF 79 A9 */	bl mArg0Check__FP10e_po_classs
/* 80754C48  2C 03 00 02 */	cmpwi r3, 2
/* 80754C4C  40 82 00 70 */	bne lbl_80754CBC
/* 80754C50  7F 83 E3 78 */	mr r3, r28
/* 80754C54  3C 80 80 75 */	lis r4, mAttackNo@ha /* 0x80757ADA@ha */
/* 80754C58  38 84 7A DA */	addi r4, r4, mAttackNo@l /* 0x80757ADA@l */
/* 80754C5C  A8 84 00 00 */	lha r4, 0(r4)
/* 80754C60  4B FF 79 8D */	bl mArg0Check__FP10e_po_classs
/* 80754C64  2C 03 00 00 */	cmpwi r3, 0
/* 80754C68  40 82 00 54 */	bne lbl_80754CBC
/* 80754C6C  C3 FE 00 9C */	lfs f31, 0x9c(r30)
/* 80754C70  C3 DE 00 A0 */	lfs f30, 0xa0(r30)
/* 80754C74  38 00 00 0A */	li r0, 0xa
/* 80754C78  B0 1C 07 54 */	sth r0, 0x754(r28)
/* 80754C7C  48 00 00 40 */	b lbl_80754CBC
lbl_80754C80:
/* 80754C80  38 00 00 05 */	li r0, 5
/* 80754C84  B0 1C 07 50 */	sth r0, 0x750(r28)
/* 80754C88  38 00 00 0A */	li r0, 0xa
/* 80754C8C  B0 1C 07 54 */	sth r0, 0x754(r28)
/* 80754C90  80 1C 04 9C */	lwz r0, 0x49c(r28)
/* 80754C94  54 00 00 3E */	slwi r0, r0, 0
/* 80754C98  90 1C 04 9C */	stw r0, 0x49c(r28)
/* 80754C9C  80 1C 05 5C */	lwz r0, 0x55c(r28)
/* 80754CA0  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 80754CA4  90 1C 05 5C */	stw r0, 0x55c(r28)
/* 80754CA8  88 1C 05 C1 */	lbz r0, 0x5c1(r28)
/* 80754CAC  28 00 00 00 */	cmplwi r0, 0
/* 80754CB0  41 82 00 0C */	beq lbl_80754CBC
/* 80754CB4  3C 00 00 40 */	lis r0, 0x40
/* 80754CB8  90 1C 05 5C */	stw r0, 0x55c(r28)
lbl_80754CBC:
/* 80754CBC  88 1C 07 59 */	lbz r0, 0x759(r28)
/* 80754CC0  28 00 00 00 */	cmplwi r0, 0
/* 80754CC4  40 82 00 78 */	bne lbl_80754D3C
/* 80754CC8  A8 1C 05 62 */	lha r0, 0x562(r28)
/* 80754CCC  2C 00 00 01 */	cmpwi r0, 1
/* 80754CD0  40 81 00 6C */	ble lbl_80754D3C
/* 80754CD4  80 1C 05 E4 */	lwz r0, 0x5e4(r28)
/* 80754CD8  2C 00 00 13 */	cmpwi r0, 0x13
/* 80754CDC  40 82 00 34 */	bne lbl_80754D10
/* 80754CE0  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700CE@ha */
/* 80754CE4  38 03 00 CE */	addi r0, r3, 0x00CE /* 0x000700CE@l */
/* 80754CE8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80754CEC  38 7C 05 F8 */	addi r3, r28, 0x5f8
/* 80754CF0  38 81 00 0C */	addi r4, r1, 0xc
/* 80754CF4  38 A0 00 00 */	li r5, 0
/* 80754CF8  38 C0 FF FF */	li r6, -1
/* 80754CFC  81 9C 05 F8 */	lwz r12, 0x5f8(r28)
/* 80754D00  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80754D04  7D 89 03 A6 */	mtctr r12
/* 80754D08  4E 80 04 21 */	bctrl 
/* 80754D0C  48 00 00 30 */	b lbl_80754D3C
lbl_80754D10:
/* 80754D10  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700D1@ha */
/* 80754D14  38 03 00 D1 */	addi r0, r3, 0x00D1 /* 0x000700D1@l */
/* 80754D18  90 01 00 08 */	stw r0, 8(r1)
/* 80754D1C  38 7C 05 F8 */	addi r3, r28, 0x5f8
/* 80754D20  38 81 00 08 */	addi r4, r1, 8
/* 80754D24  38 A0 00 00 */	li r5, 0
/* 80754D28  38 C0 FF FF */	li r6, -1
/* 80754D2C  81 9C 05 F8 */	lwz r12, 0x5f8(r28)
/* 80754D30  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80754D34  7D 89 03 A6 */	mtctr r12
/* 80754D38  4E 80 04 21 */	bctrl 
lbl_80754D3C:
/* 80754D3C  A8 1C 07 42 */	lha r0, 0x742(r28)
/* 80754D40  2C 00 00 0C */	cmpwi r0, 0xc
/* 80754D44  40 82 00 24 */	bne lbl_80754D68
/* 80754D48  80 1C 05 B4 */	lwz r0, 0x5b4(r28)
/* 80754D4C  2C 00 00 03 */	cmpwi r0, 3
/* 80754D50  41 82 00 10 */	beq lbl_80754D60
/* 80754D54  A8 1C 07 4E */	lha r0, 0x74e(r28)
/* 80754D58  2C 00 00 00 */	cmpwi r0, 0
/* 80754D5C  41 82 00 0C */	beq lbl_80754D68
lbl_80754D60:
/* 80754D60  C3 FE 03 4C */	lfs f31, 0x34c(r30)
/* 80754D64  C3 DE 00 A0 */	lfs f30, 0xa0(r30)
lbl_80754D68:
/* 80754D68  38 7C 05 F4 */	addi r3, r28, 0x5f4
/* 80754D6C  FC 20 F8 90 */	fmr f1, f31
/* 80754D70  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80754D74  FC 60 F0 90 */	fmr f3, f30
/* 80754D78  4B B1 AC C5 */	bl cLib_addCalc2__FPffff
/* 80754D7C  3B 60 00 00 */	li r27, 0
/* 80754D80  7F 83 E3 78 */	mr r3, r28
/* 80754D84  4B FF 93 E5 */	bl damage_check__FP10e_po_class
/* 80754D88  A8 1C 07 42 */	lha r0, 0x742(r28)
/* 80754D8C  28 00 00 14 */	cmplwi r0, 0x14
/* 80754D90  41 81 00 B4 */	bgt lbl_80754E44
/* 80754D94  3C 60 80 75 */	lis r3, lit_7233@ha /* 0x80757C24@ha */
/* 80754D98  38 63 7C 24 */	addi r3, r3, lit_7233@l /* 0x80757C24@l */
/* 80754D9C  54 00 10 3A */	slwi r0, r0, 2
/* 80754DA0  7C 03 00 2E */	lwzx r0, r3, r0
/* 80754DA4  7C 09 03 A6 */	mtctr r0
/* 80754DA8  4E 80 04 20 */	bctr 
lbl_80754DAC:
/* 80754DAC  7F 83 E3 78 */	mr r3, r28
/* 80754DB0  4B FF 83 BD */	bl e_po_wait__FP10e_po_class
/* 80754DB4  48 00 00 90 */	b lbl_80754E44
lbl_80754DB8:
/* 80754DB8  7F 83 E3 78 */	mr r3, r28
/* 80754DBC  4B FF 85 7D */	bl e_po_avoid__FP10e_po_class
/* 80754DC0  48 00 00 84 */	b lbl_80754E44
lbl_80754DC4:
/* 80754DC4  7F 83 E3 78 */	mr r3, r28
/* 80754DC8  4B FF 7F 05 */	bl e_po_opening__FP10e_po_class
/* 80754DCC  48 00 00 78 */	b lbl_80754E44
lbl_80754DD0:
/* 80754DD0  7F 83 E3 78 */	mr r3, r28
/* 80754DD4  4B FF 87 2D */	bl e_po_search__FP10e_po_class
/* 80754DD8  3B 60 00 01 */	li r27, 1
/* 80754DDC  38 00 00 01 */	li r0, 1
/* 80754DE0  98 1C 08 12 */	stb r0, 0x812(r28)
/* 80754DE4  48 00 00 60 */	b lbl_80754E44
lbl_80754DE8:
/* 80754DE8  7F 83 E3 78 */	mr r3, r28
/* 80754DEC  4B FF 8E 55 */	bl e_po_attack__FP10e_po_class
/* 80754DF0  3B 60 00 01 */	li r27, 1
/* 80754DF4  38 00 00 01 */	li r0, 1
/* 80754DF8  98 1C 08 12 */	stb r0, 0x812(r28)
/* 80754DFC  48 00 00 48 */	b lbl_80754E44
lbl_80754E00:
/* 80754E00  7F 83 E3 78 */	mr r3, r28
/* 80754E04  4B FF 96 E9 */	bl e_po_damage__FP10e_po_class
/* 80754E08  48 00 00 3C */	b lbl_80754E44
lbl_80754E0C:
/* 80754E0C  7F 83 E3 78 */	mr r3, r28
/* 80754E10  4B FF 98 85 */	bl e_po_wolfbite__FP10e_po_class
/* 80754E14  48 00 00 30 */	b lbl_80754E44
lbl_80754E18:
/* 80754E18  7F 83 E3 78 */	mr r3, r28
/* 80754E1C  4B FF 9C 51 */	bl e_po_dead__FP10e_po_class
/* 80754E20  48 00 00 24 */	b lbl_80754E44
lbl_80754E24:
/* 80754E24  7F 83 E3 78 */	mr r3, r28
/* 80754E28  4B FF B4 E5 */	bl e_po_limbering__FP10e_po_class
/* 80754E2C  48 00 00 18 */	b lbl_80754E44
lbl_80754E30:
/* 80754E30  7F 83 E3 78 */	mr r3, r28
/* 80754E34  4B FF C0 55 */	bl e_po_roll_move__FP10e_po_class
/* 80754E38  48 00 00 0C */	b lbl_80754E44
lbl_80754E3C:
/* 80754E3C  7F 83 E3 78 */	mr r3, r28
/* 80754E40  4B FF C5 C9 */	bl e_po_holl_demo__FP10e_po_class
lbl_80754E44:
/* 80754E44  A8 1C 07 42 */	lha r0, 0x742(r28)
/* 80754E48  2C 00 00 0C */	cmpwi r0, 0xc
/* 80754E4C  41 82 00 24 */	beq lbl_80754E70
/* 80754E50  80 1C 05 B4 */	lwz r0, 0x5b4(r28)
/* 80754E54  2C 00 00 0A */	cmpwi r0, 0xa
/* 80754E58  41 82 00 18 */	beq lbl_80754E70
/* 80754E5C  38 7C 05 F8 */	addi r3, r28, 0x5f8
/* 80754E60  30 1B FF FF */	addic r0, r27, -1
/* 80754E64  7C 00 D9 10 */	subfe r0, r0, r27
/* 80754E68  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80754E6C  4B B6 CD 11 */	bl setLinkSearch__15Z2CreatureEnemyFb
lbl_80754E70:
/* 80754E70  88 1C 07 5A */	lbz r0, 0x75a(r28)
/* 80754E74  28 00 00 00 */	cmplwi r0, 0
/* 80754E78  40 82 00 94 */	bne lbl_80754F0C
/* 80754E7C  A8 7C 07 42 */	lha r3, 0x742(r28)
/* 80754E80  2C 03 00 01 */	cmpwi r3, 1
/* 80754E84  41 82 00 88 */	beq lbl_80754F0C
/* 80754E88  2C 03 00 02 */	cmpwi r3, 2
/* 80754E8C  40 82 00 10 */	bne lbl_80754E9C
/* 80754E90  88 1C 05 C0 */	lbz r0, 0x5c0(r28)
/* 80754E94  28 00 00 00 */	cmplwi r0, 0
/* 80754E98  40 82 00 74 */	bne lbl_80754F0C
lbl_80754E9C:
/* 80754E9C  2C 03 00 05 */	cmpwi r3, 5
/* 80754EA0  41 82 00 6C */	beq lbl_80754F0C
/* 80754EA4  2C 03 00 06 */	cmpwi r3, 6
/* 80754EA8  41 82 00 64 */	beq lbl_80754F0C
/* 80754EAC  2C 03 00 14 */	cmpwi r3, 0x14
/* 80754EB0  41 82 00 5C */	beq lbl_80754F0C
/* 80754EB4  AB 7C 04 DE */	lha r27, 0x4de(r28)
/* 80754EB8  88 1C 05 C1 */	lbz r0, 0x5c1(r28)
/* 80754EBC  28 00 00 00 */	cmplwi r0, 0
/* 80754EC0  41 82 00 38 */	beq lbl_80754EF8
/* 80754EC4  4B A0 A5 61 */	bl checkNowWolfEyeUp__9daPy_py_cFv
/* 80754EC8  2C 03 00 00 */	cmpwi r3, 0
/* 80754ECC  40 82 00 14 */	bne lbl_80754EE0
/* 80754ED0  C0 3C 05 F4 */	lfs f1, 0x5f4(r28)
/* 80754ED4  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 80754ED8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80754EDC  40 81 00 1C */	ble lbl_80754EF8
lbl_80754EE0:
/* 80754EE0  7F 83 E3 78 */	mr r3, r28
/* 80754EE4  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80754EE8  4B 8C 58 29 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80754EEC  3C 63 00 01 */	addis r3, r3, 1
/* 80754EF0  38 03 80 00 */	addi r0, r3, -32768
/* 80754EF4  7C 1B 07 34 */	extsh r27, r0
lbl_80754EF8:
/* 80754EF8  38 7C 04 E6 */	addi r3, r28, 0x4e6
/* 80754EFC  7F 64 DB 78 */	mr r4, r27
/* 80754F00  38 A0 00 02 */	li r5, 2
/* 80754F04  38 C0 20 00 */	li r6, 0x2000
/* 80754F08  4B B1 B7 01 */	bl cLib_addCalcAngleS2__FPssss
lbl_80754F0C:
/* 80754F0C  A8 1C 07 42 */	lha r0, 0x742(r28)
/* 80754F10  2C 00 00 14 */	cmpwi r0, 0x14
/* 80754F14  41 82 00 2C */	beq lbl_80754F40
/* 80754F18  38 7C 04 E4 */	addi r3, r28, 0x4e4
/* 80754F1C  A8 9C 04 DC */	lha r4, 0x4dc(r28)
/* 80754F20  38 A0 00 02 */	li r5, 2
/* 80754F24  38 C0 20 00 */	li r6, 0x2000
/* 80754F28  4B B1 B6 E1 */	bl cLib_addCalcAngleS2__FPssss
/* 80754F2C  38 7C 04 DC */	addi r3, r28, 0x4dc
/* 80754F30  38 80 00 00 */	li r4, 0
/* 80754F34  38 A0 00 04 */	li r5, 4
/* 80754F38  38 C0 00 C8 */	li r6, 0xc8
/* 80754F3C  4B B1 B6 CD */	bl cLib_addCalcAngleS2__FPssss
lbl_80754F40:
/* 80754F40  A8 1C 07 42 */	lha r0, 0x742(r28)
/* 80754F44  2C 00 00 0C */	cmpwi r0, 0xc
/* 80754F48  41 82 00 A8 */	beq lbl_80754FF0
/* 80754F4C  2C 00 00 05 */	cmpwi r0, 5
/* 80754F50  41 82 00 A0 */	beq lbl_80754FF0
/* 80754F54  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80754F58  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80754F5C  80 63 00 00 */	lwz r3, 0(r3)
/* 80754F60  A8 9C 04 DE */	lha r4, 0x4de(r28)
/* 80754F64  4B 8B 74 79 */	bl mDoMtx_YrotS__FPA4_fs
/* 80754F68  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80754F6C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80754F70  80 63 00 00 */	lwz r3, 0(r3)
/* 80754F74  A8 9C 04 DC */	lha r4, 0x4dc(r28)
/* 80754F78  4B 8B 74 25 */	bl mDoMtx_XrotM__FPA4_fs
/* 80754F7C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80754F80  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80754F84  80 63 00 00 */	lwz r3, 0(r3)
/* 80754F88  A8 9C 04 E0 */	lha r4, 0x4e0(r28)
/* 80754F8C  4B 8B 75 41 */	bl mDoMtx_ZrotM__FPA4_fs
/* 80754F90  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80754F94  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80754F98  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80754F9C  C0 1C 05 2C */	lfs f0, 0x52c(r28)
/* 80754FA0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80754FA4  38 61 00 34 */	addi r3, r1, 0x34
/* 80754FA8  38 81 00 28 */	addi r4, r1, 0x28
/* 80754FAC  4B B1 BF 41 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80754FB0  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80754FB4  D0 1C 04 F8 */	stfs f0, 0x4f8(r28)
/* 80754FB8  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80754FBC  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80754FC0  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80754FC4  D0 1C 05 00 */	stfs f0, 0x500(r28)
/* 80754FC8  38 61 00 1C */	addi r3, r1, 0x1c
/* 80754FCC  38 9C 04 F8 */	addi r4, r28, 0x4f8
/* 80754FD0  3C A0 80 75 */	lis r5, l_HIO@ha /* 0x80757E5C@ha */
/* 80754FD4  38 A5 7E 5C */	addi r5, r5, l_HIO@l /* 0x80757E5C@l */
/* 80754FD8  C0 25 00 08 */	lfs f1, 8(r5)
/* 80754FDC  4B B1 1B A9 */	bl __ml__4cXyzCFf
/* 80754FE0  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80754FE4  38 81 00 1C */	addi r4, r1, 0x1c
/* 80754FE8  7C 65 1B 78 */	mr r5, r3
/* 80754FEC  4B BF 20 A5 */	bl PSVECAdd
lbl_80754FF0:
/* 80754FF0  38 80 00 00 */	li r4, 0
/* 80754FF4  88 1C 08 12 */	lbz r0, 0x812(r28)
/* 80754FF8  7C 00 07 75 */	extsb. r0, r0
/* 80754FFC  41 82 00 5C */	beq lbl_80755058
/* 80755000  38 61 00 10 */	addi r3, r1, 0x10
/* 80755004  38 9D 05 38 */	addi r4, r29, 0x538
/* 80755008  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 8075500C  4B B1 1B 29 */	bl __mi__4cXyzCFRC3Vec
/* 80755010  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80755014  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80755018  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8075501C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80755020  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80755024  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80755028  38 61 00 34 */	addi r3, r1, 0x34
/* 8075502C  4B B1 20 FD */	bl atan2sX_Z__4cXyzCFv
/* 80755030  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 80755034  7C 00 18 50 */	subf r0, r0, r3
/* 80755038  7C 04 07 34 */	extsh r4, r0
/* 8075503C  2C 04 17 70 */	cmpwi r4, 0x1770
/* 80755040  41 81 00 0C */	bgt lbl_8075504C
/* 80755044  2C 04 E8 90 */	cmpwi r4, -6000
/* 80755048  40 80 00 08 */	bge lbl_80755050
lbl_8075504C:
/* 8075504C  38 80 00 00 */	li r4, 0
lbl_80755050:
/* 80755050  38 00 00 00 */	li r0, 0
/* 80755054  98 1C 08 12 */	stb r0, 0x812(r28)
lbl_80755058:
/* 80755058  38 7C 08 10 */	addi r3, r28, 0x810
/* 8075505C  38 A0 00 02 */	li r5, 2
/* 80755060  38 C0 10 00 */	li r6, 0x1000
/* 80755064  4B B1 B5 A5 */	bl cLib_addCalcAngleS2__FPssss
/* 80755068  A8 1C 07 42 */	lha r0, 0x742(r28)
/* 8075506C  2C 00 00 0C */	cmpwi r0, 0xc
/* 80755070  41 82 00 34 */	beq lbl_807550A4
/* 80755074  3B 60 00 00 */	li r27, 0
/* 80755078  3B A0 00 00 */	li r29, 0
lbl_8075507C:
/* 8075507C  38 7D 07 E6 */	addi r3, r29, 0x7e6
/* 80755080  7C 7C 1A 14 */	add r3, r28, r3
/* 80755084  38 80 00 00 */	li r4, 0
/* 80755088  38 A0 00 04 */	li r5, 4
/* 8075508C  38 C0 00 64 */	li r6, 0x64
/* 80755090  4B B1 B5 79 */	bl cLib_addCalcAngleS2__FPssss
/* 80755094  3B 7B 00 01 */	addi r27, r27, 1
/* 80755098  2C 1B 00 04 */	cmpwi r27, 4
/* 8075509C  3B BD 00 06 */	addi r29, r29, 6
/* 807550A0  41 80 FF DC */	blt lbl_8075507C
lbl_807550A4:
/* 807550A4  A8 1C 07 42 */	lha r0, 0x742(r28)
/* 807550A8  2C 00 00 0C */	cmpwi r0, 0xc
/* 807550AC  40 82 00 18 */	bne lbl_807550C4
/* 807550B0  38 7C 08 90 */	addi r3, r28, 0x890
/* 807550B4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807550B8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807550BC  38 84 0F 38 */	addi r4, r4, 0xf38
/* 807550C0  4B 92 19 ED */	bl CrrPos__9dBgS_AcchFR4dBgS
lbl_807550C4:
/* 807550C4  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 807550C8  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 807550CC  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 807550D0  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 807550D4  39 61 00 60 */	addi r11, r1, 0x60
/* 807550D8  4B C0 D1 49 */	bl _restgpr_27
/* 807550DC  80 01 00 84 */	lwz r0, 0x84(r1)
/* 807550E0  7C 08 03 A6 */	mtlr r0
/* 807550E4  38 21 00 80 */	addi r1, r1, 0x80
/* 807550E8  4E 80 00 20 */	blr 
