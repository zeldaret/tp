lbl_80783B4C:
/* 80783B4C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80783B50  7C 08 02 A6 */	mflr r0
/* 80783B54  90 01 00 24 */	stw r0, 0x24(r1)
/* 80783B58  39 61 00 20 */	addi r11, r1, 0x20
/* 80783B5C  4B BD E6 7D */	bl _savegpr_28
/* 80783B60  7C 7C 1B 78 */	mr r28, r3
/* 80783B64  3C 60 80 78 */	lis r3, lit_1109@ha /* 0x80784F38@ha */
/* 80783B68  3B A3 4F 38 */	addi r29, r3, lit_1109@l /* 0x80784F38@l */
/* 80783B6C  3C 60 80 78 */	lis r3, lit_3658@ha /* 0x80784D68@ha */
/* 80783B70  3B C3 4D 68 */	addi r30, r3, lit_3658@l /* 0x80784D68@l */
/* 80783B74  80 1C 06 0C */	lwz r0, 0x60c(r28)
/* 80783B78  2C 00 00 00 */	cmpwi r0, 0
/* 80783B7C  40 81 00 28 */	ble lbl_80783BA4
/* 80783B80  80 1C 0A 74 */	lwz r0, 0xa74(r28)
/* 80783B84  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80783B88  90 1C 0A 74 */	stw r0, 0xa74(r28)
/* 80783B8C  38 7C 0A 5C */	addi r3, r28, 0xa5c
/* 80783B90  81 9C 0A 98 */	lwz r12, 0xa98(r28)
/* 80783B94  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80783B98  7D 89 03 A6 */	mtctr r12
/* 80783B9C  4E 80 04 21 */	bctrl 
/* 80783BA0  48 00 04 04 */	b lbl_80783FA4
lbl_80783BA4:
/* 80783BA4  80 1C 0A 74 */	lwz r0, 0xa74(r28)
/* 80783BA8  60 00 00 01 */	ori r0, r0, 1
/* 80783BAC  90 1C 0A 74 */	stw r0, 0xa74(r28)
/* 80783BB0  38 7C 09 04 */	addi r3, r28, 0x904
/* 80783BB4  4B 8F FC 7D */	bl Move__10dCcD_GSttsFv
/* 80783BB8  38 7C 0A 5C */	addi r3, r28, 0xa5c
/* 80783BBC  4B 90 08 A5 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80783BC0  28 03 00 00 */	cmplwi r3, 0
/* 80783BC4  41 82 03 E0 */	beq lbl_80783FA4
/* 80783BC8  38 7C 0A 5C */	addi r3, r28, 0xa5c
/* 80783BCC  4B 90 09 2D */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 80783BD0  90 7C 0B 98 */	stw r3, 0xb98(r28)
/* 80783BD4  88 1C 05 D0 */	lbz r0, 0x5d0(r28)
/* 80783BD8  28 00 00 00 */	cmplwi r0, 0
/* 80783BDC  41 82 00 10 */	beq lbl_80783BEC
/* 80783BE0  38 00 00 2A */	li r0, 0x2a
/* 80783BE4  90 1C 0B B0 */	stw r0, 0xbb0(r28)
/* 80783BE8  48 00 00 0C */	b lbl_80783BF4
lbl_80783BEC:
/* 80783BEC  38 00 00 1E */	li r0, 0x1e
/* 80783BF0  90 1C 0B B0 */	stw r0, 0xbb0(r28)
lbl_80783BF4:
/* 80783BF4  38 7C 0A 5C */	addi r3, r28, 0xa5c
/* 80783BF8  4B 90 09 01 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 80783BFC  7C 7F 1B 78 */	mr r31, r3
/* 80783C00  7F 83 E3 78 */	mr r3, r28
/* 80783C04  38 9C 0B 98 */	addi r4, r28, 0xb98
/* 80783C08  4B 90 3F FD */	bl cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 80783C0C  38 00 00 0F */	li r0, 0xf
/* 80783C10  90 1C 06 0C */	stw r0, 0x60c(r28)
/* 80783C14  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 80783C18  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80783C1C  41 82 00 0C */	beq lbl_80783C28
/* 80783C20  38 00 00 0A */	li r0, 0xa
/* 80783C24  90 1C 06 0C */	stw r0, 0x60c(r28)
lbl_80783C28:
/* 80783C28  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 80783C2C  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 80783C30  41 82 00 0C */	beq lbl_80783C3C
/* 80783C34  38 00 00 05 */	li r0, 5
/* 80783C38  90 1C 06 0C */	stw r0, 0x60c(r28)
lbl_80783C3C:
/* 80783C3C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80783C40  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80783C44  80 A3 5D AC */	lwz r5, 0x5dac(r3)
/* 80783C48  88 65 05 69 */	lbz r3, 0x569(r5)
/* 80783C4C  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 80783C50  54 80 06 F7 */	rlwinm. r0, r4, 0, 0x1b, 0x1b
/* 80783C54  40 82 00 14 */	bne lbl_80783C68
/* 80783C58  54 80 04 63 */	rlwinm. r0, r4, 0, 0x11, 0x11
/* 80783C5C  40 82 00 0C */	bne lbl_80783C68
/* 80783C60  54 80 06 B5 */	rlwinm. r0, r4, 0, 0x1a, 0x1a
/* 80783C64  41 82 01 68 */	beq lbl_80783DCC
lbl_80783C68:
/* 80783C68  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80783C6C  80 9D 00 94 */	lwz r4, 0x94(r29)
/* 80783C70  4B AE CF 95 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80783C74  7C 63 07 34 */	extsh r3, r3
/* 80783C78  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 80783C7C  7C 03 00 50 */	subf r0, r3, r0
/* 80783C80  7C 00 07 34 */	extsh r0, r0
/* 80783C84  2C 00 60 00 */	cmpwi r0, 0x6000
/* 80783C88  40 80 01 38 */	bge lbl_80783DC0
/* 80783C8C  2C 00 A0 00 */	cmpwi r0, -24576
/* 80783C90  40 81 01 30 */	ble lbl_80783DC0
/* 80783C94  80 1C 07 3C */	lwz r0, 0x73c(r28)
/* 80783C98  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80783C9C  41 82 03 08 */	beq lbl_80783FA4
/* 80783CA0  C0 3C 04 FC */	lfs f1, 0x4fc(r28)
/* 80783CA4  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 80783CA8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80783CAC  4C 40 13 82 */	cror 2, 0, 2
/* 80783CB0  40 82 02 F4 */	bne lbl_80783FA4
/* 80783CB4  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 80783CB8  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 80783CBC  41 82 00 50 */	beq lbl_80783D0C
/* 80783CC0  7F 83 E3 78 */	mr r3, r28
/* 80783CC4  38 80 00 05 */	li r4, 5
/* 80783CC8  38 A0 00 00 */	li r5, 0
/* 80783CCC  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 80783CD0  38 DD 00 4C */	addi r6, r29, 0x4c
/* 80783CD4  C0 46 00 2C */	lfs f2, 0x2c(r6)
/* 80783CD8  4B FF DD 75 */	bl SetAnm__8daE_SB_cFiiff
/* 80783CDC  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702B4@ha */
/* 80783CE0  38 03 02 B4 */	addi r0, r3, 0x02B4 /* 0x000702B4@l */
/* 80783CE4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80783CE8  38 7C 06 2C */	addi r3, r28, 0x62c
/* 80783CEC  38 81 00 0C */	addi r4, r1, 0xc
/* 80783CF0  38 A0 00 00 */	li r5, 0
/* 80783CF4  38 C0 FF FF */	li r6, -1
/* 80783CF8  81 9C 06 2C */	lwz r12, 0x62c(r28)
/* 80783CFC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80783D00  7D 89 03 A6 */	mtctr r12
/* 80783D04  4E 80 04 21 */	bctrl 
/* 80783D08  48 00 00 4C */	b lbl_80783D54
lbl_80783D0C:
/* 80783D0C  7F 83 E3 78 */	mr r3, r28
/* 80783D10  38 80 00 0B */	li r4, 0xb
/* 80783D14  38 A0 00 00 */	li r5, 0
/* 80783D18  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 80783D1C  38 DD 00 4C */	addi r6, r29, 0x4c
/* 80783D20  C0 46 00 2C */	lfs f2, 0x2c(r6)
/* 80783D24  4B FF DD 29 */	bl SetAnm__8daE_SB_cFiiff
/* 80783D28  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702B3@ha */
/* 80783D2C  38 03 02 B3 */	addi r0, r3, 0x02B3 /* 0x000702B3@l */
/* 80783D30  90 01 00 08 */	stw r0, 8(r1)
/* 80783D34  38 7C 06 2C */	addi r3, r28, 0x62c
/* 80783D38  38 81 00 08 */	addi r4, r1, 8
/* 80783D3C  38 A0 00 00 */	li r5, 0
/* 80783D40  38 C0 FF FF */	li r6, -1
/* 80783D44  81 9C 06 2C */	lwz r12, 0x62c(r28)
/* 80783D48  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80783D4C  7D 89 03 A6 */	mtctr r12
/* 80783D50  4E 80 04 21 */	bctrl 
lbl_80783D54:
/* 80783D54  38 00 00 01 */	li r0, 1
/* 80783D58  98 1C 06 02 */	stb r0, 0x602(r28)
/* 80783D5C  80 1C 0A F8 */	lwz r0, 0xaf8(r28)
/* 80783D60  60 00 00 01 */	ori r0, r0, 1
/* 80783D64  90 1C 0A F8 */	stw r0, 0xaf8(r28)
/* 80783D68  38 00 00 02 */	li r0, 2
/* 80783D6C  98 1C 0B 16 */	stb r0, 0xb16(r28)
/* 80783D70  A8 1D 00 90 */	lha r0, 0x90(r29)
/* 80783D74  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 80783D78  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 80783D7C  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80783D80  7F 83 E3 78 */	mr r3, r28
/* 80783D84  4B FF DD 75 */	bl MemberClear__8daE_SB_cFv
/* 80783D88  38 00 00 05 */	li r0, 5
/* 80783D8C  90 1C 05 B0 */	stw r0, 0x5b0(r28)
/* 80783D90  80 1C 0A 5C */	lwz r0, 0xa5c(r28)
/* 80783D94  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80783D98  90 1C 0A 5C */	stw r0, 0xa5c(r28)
/* 80783D9C  7F 83 E3 78 */	mr r3, r28
/* 80783DA0  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000849E@ha */
/* 80783DA4  38 84 84 9E */	addi r4, r4, 0x849E /* 0x0000849E@l */
/* 80783DA8  4B FF DC 35 */	bl Particle_Set__8daE_SB_cFUs
/* 80783DAC  7F 83 E3 78 */	mr r3, r28
/* 80783DB0  3C 80 00 01 */	lis r4, 0x0001 /* 0x00008478@ha */
/* 80783DB4  38 84 84 78 */	addi r4, r4, 0x8478 /* 0x00008478@l */
/* 80783DB8  4B FF DC 25 */	bl Particle_Set__8daE_SB_cFUs
/* 80783DBC  48 00 01 E8 */	b lbl_80783FA4
lbl_80783DC0:
/* 80783DC0  7F 83 E3 78 */	mr r3, r28
/* 80783DC4  4B FF FC D9 */	bl NoChanceMotion__8daE_SB_cFv
/* 80783DC8  48 00 01 DC */	b lbl_80783FA4
lbl_80783DCC:
/* 80783DCC  80 1C 05 B0 */	lwz r0, 0x5b0(r28)
/* 80783DD0  2C 00 00 00 */	cmpwi r0, 0
/* 80783DD4  41 82 00 10 */	beq lbl_80783DE4
/* 80783DD8  88 1C 06 02 */	lbz r0, 0x602(r28)
/* 80783DDC  28 00 00 01 */	cmplwi r0, 1
/* 80783DE0  40 82 01 BC */	bne lbl_80783F9C
lbl_80783DE4:
/* 80783DE4  54 80 07 BD */	rlwinm. r0, r4, 0, 0x1e, 0x1e
/* 80783DE8  41 82 01 BC */	beq lbl_80783FA4
/* 80783DEC  8B E5 05 68 */	lbz r31, 0x568(r5)
/* 80783DF0  88 1C 05 E8 */	lbz r0, 0x5e8(r28)
/* 80783DF4  28 00 00 01 */	cmplwi r0, 1
/* 80783DF8  40 82 00 B8 */	bne lbl_80783EB0
/* 80783DFC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80783E00  28 00 00 01 */	cmplwi r0, 1
/* 80783E04  40 81 00 AC */	ble lbl_80783EB0
/* 80783E08  A8 7D 00 90 */	lha r3, 0x90(r29)
/* 80783E0C  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 80783E10  7C 03 00 50 */	subf r0, r3, r0
/* 80783E14  7C 00 07 34 */	extsh r0, r0
/* 80783E18  2C 00 D0 00 */	cmpwi r0, -12288
/* 80783E1C  40 81 00 94 */	ble lbl_80783EB0
/* 80783E20  2C 00 30 00 */	cmpwi r0, 0x3000
/* 80783E24  40 80 00 8C */	bge lbl_80783EB0
/* 80783E28  7F 83 E3 78 */	mr r3, r28
/* 80783E2C  4B FF FA E9 */	bl ChanceMotion__8daE_SB_cFv
/* 80783E30  A8 7C 05 E6 */	lha r3, 0x5e6(r28)
/* 80783E34  38 03 FF FF */	addi r0, r3, -1
/* 80783E38  B0 1C 05 E6 */	sth r0, 0x5e6(r28)
/* 80783E3C  4B 9D B5 5D */	bl checkMasterSwordEquip__9daPy_py_cFv
/* 80783E40  2C 03 00 00 */	cmpwi r3, 0
/* 80783E44  41 82 00 10 */	beq lbl_80783E54
/* 80783E48  A8 7C 05 E6 */	lha r3, 0x5e6(r28)
/* 80783E4C  38 03 FF FF */	addi r0, r3, -1
/* 80783E50  B0 1C 05 E6 */	sth r0, 0x5e6(r28)
lbl_80783E54:
/* 80783E54  28 1F 00 08 */	cmplwi r31, 8
/* 80783E58  41 82 00 38 */	beq lbl_80783E90
/* 80783E5C  38 1F FF EE */	addi r0, r31, -18
/* 80783E60  28 00 00 02 */	cmplwi r0, 2
/* 80783E64  40 81 00 2C */	ble lbl_80783E90
/* 80783E68  28 1F 00 1A */	cmplwi r31, 0x1a
/* 80783E6C  41 82 00 24 */	beq lbl_80783E90
/* 80783E70  38 1F FF E2 */	addi r0, r31, -30
/* 80783E74  28 00 00 01 */	cmplwi r0, 1
/* 80783E78  40 81 00 18 */	ble lbl_80783E90
/* 80783E7C  38 1F FF EA */	addi r0, r31, -22
/* 80783E80  28 00 00 01 */	cmplwi r0, 1
/* 80783E84  40 81 00 0C */	ble lbl_80783E90
/* 80783E88  28 1F 00 18 */	cmplwi r31, 0x18
/* 80783E8C  40 82 01 18 */	bne lbl_80783FA4
lbl_80783E90:
/* 80783E90  A8 7C 05 E6 */	lha r3, 0x5e6(r28)
/* 80783E94  38 03 FF FB */	addi r0, r3, -5
/* 80783E98  B0 1C 05 E6 */	sth r0, 0x5e6(r28)
/* 80783E9C  7F 83 E3 78 */	mr r3, r28
/* 80783EA0  4B FF FA 75 */	bl ChanceMotion__8daE_SB_cFv
/* 80783EA4  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 80783EA8  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80783EAC  48 00 00 F8 */	b lbl_80783FA4
lbl_80783EB0:
/* 80783EB0  28 1F 00 01 */	cmplwi r31, 1
/* 80783EB4  41 82 00 D4 */	beq lbl_80783F88
/* 80783EB8  28 1F 00 0A */	cmplwi r31, 0xa
/* 80783EBC  41 82 00 CC */	beq lbl_80783F88
/* 80783EC0  A8 7D 00 90 */	lha r3, 0x90(r29)
/* 80783EC4  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 80783EC8  7C 03 00 50 */	subf r0, r3, r0
/* 80783ECC  7C 00 07 34 */	extsh r0, r0
/* 80783ED0  2C 00 D0 00 */	cmpwi r0, -12288
/* 80783ED4  40 81 00 B4 */	ble lbl_80783F88
/* 80783ED8  2C 00 30 00 */	cmpwi r0, 0x3000
/* 80783EDC  40 80 00 AC */	bge lbl_80783F88
/* 80783EE0  28 1F 00 08 */	cmplwi r31, 8
/* 80783EE4  41 82 00 38 */	beq lbl_80783F1C
/* 80783EE8  38 1F FF EE */	addi r0, r31, -18
/* 80783EEC  28 00 00 02 */	cmplwi r0, 2
/* 80783EF0  40 81 00 2C */	ble lbl_80783F1C
/* 80783EF4  28 1F 00 1A */	cmplwi r31, 0x1a
/* 80783EF8  41 82 00 24 */	beq lbl_80783F1C
/* 80783EFC  38 1F FF E2 */	addi r0, r31, -30
/* 80783F00  28 00 00 01 */	cmplwi r0, 1
/* 80783F04  40 81 00 18 */	ble lbl_80783F1C
/* 80783F08  38 1F FF EA */	addi r0, r31, -22
/* 80783F0C  28 00 00 01 */	cmplwi r0, 1
/* 80783F10  40 81 00 0C */	ble lbl_80783F1C
/* 80783F14  28 1F 00 18 */	cmplwi r31, 0x18
/* 80783F18  40 82 00 20 */	bne lbl_80783F38
lbl_80783F1C:
/* 80783F1C  A8 7C 05 E6 */	lha r3, 0x5e6(r28)
/* 80783F20  38 03 FF FB */	addi r0, r3, -5
/* 80783F24  B0 1C 05 E6 */	sth r0, 0x5e6(r28)
/* 80783F28  7F 83 E3 78 */	mr r3, r28
/* 80783F2C  4B FF F9 E9 */	bl ChanceMotion__8daE_SB_cFv
/* 80783F30  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 80783F34  D0 1C 05 2C */	stfs f0, 0x52c(r28)
lbl_80783F38:
/* 80783F38  80 1C 05 AC */	lwz r0, 0x5ac(r28)
/* 80783F3C  2C 00 00 03 */	cmpwi r0, 3
/* 80783F40  40 82 00 10 */	bne lbl_80783F50
/* 80783F44  38 00 00 01 */	li r0, 1
/* 80783F48  98 1C 06 03 */	stb r0, 0x603(r28)
/* 80783F4C  48 00 00 58 */	b lbl_80783FA4
lbl_80783F50:
/* 80783F50  7F 83 E3 78 */	mr r3, r28
/* 80783F54  4B FF F9 C1 */	bl ChanceMotion__8daE_SB_cFv
/* 80783F58  A8 7C 05 E6 */	lha r3, 0x5e6(r28)
/* 80783F5C  38 03 FF FF */	addi r0, r3, -1
/* 80783F60  B0 1C 05 E6 */	sth r0, 0x5e6(r28)
/* 80783F64  4B 9D B4 35 */	bl checkMasterSwordEquip__9daPy_py_cFv
/* 80783F68  2C 03 00 00 */	cmpwi r3, 0
/* 80783F6C  41 82 00 10 */	beq lbl_80783F7C
/* 80783F70  A8 7C 05 E6 */	lha r3, 0x5e6(r28)
/* 80783F74  38 03 FF FF */	addi r0, r3, -1
/* 80783F78  B0 1C 05 E6 */	sth r0, 0x5e6(r28)
lbl_80783F7C:
/* 80783F7C  38 00 00 01 */	li r0, 1
/* 80783F80  98 1C 05 E8 */	stb r0, 0x5e8(r28)
/* 80783F84  48 00 00 20 */	b lbl_80783FA4
lbl_80783F88:
/* 80783F88  7F 83 E3 78 */	mr r3, r28
/* 80783F8C  4B FF FB 11 */	bl NoChanceMotion__8daE_SB_cFv
/* 80783F90  38 00 00 00 */	li r0, 0
/* 80783F94  98 1C 05 E8 */	stb r0, 0x5e8(r28)
/* 80783F98  48 00 00 0C */	b lbl_80783FA4
lbl_80783F9C:
/* 80783F9C  7F 83 E3 78 */	mr r3, r28
/* 80783FA0  4B FF FA FD */	bl NoChanceMotion__8daE_SB_cFv
lbl_80783FA4:
/* 80783FA4  39 61 00 20 */	addi r11, r1, 0x20
/* 80783FA8  4B BD E2 7D */	bl _restgpr_28
/* 80783FAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80783FB0  7C 08 03 A6 */	mtlr r0
/* 80783FB4  38 21 00 20 */	addi r1, r1, 0x20
/* 80783FB8  4E 80 00 20 */	blr 
