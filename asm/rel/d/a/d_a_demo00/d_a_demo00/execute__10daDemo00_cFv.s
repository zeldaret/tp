lbl_804A7BA8:
/* 804A7BA8  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 804A7BAC  7C 08 02 A6 */	mflr r0
/* 804A7BB0  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 804A7BB4  39 61 00 C0 */	addi r11, r1, 0xc0
/* 804A7BB8  4B EB A6 10 */	b _savegpr_24
/* 804A7BBC  7C 7E 1B 78 */	mr r30, r3
/* 804A7BC0  3C 60 80 4B */	lis r3, lit_3727@ha
/* 804A7BC4  3B E3 88 60 */	addi r31, r3, lit_3727@l
/* 804A7BC8  38 00 00 00 */	li r0, 0
/* 804A7BCC  98 1E 06 A1 */	stb r0, 0x6a1(r30)
/* 804A7BD0  3C 60 80 45 */	lis r3, m_object__7dDemo_c@ha
/* 804A7BD4  38 63 0E 20 */	addi r3, r3, m_object__7dDemo_c@l
/* 804A7BD8  80 63 00 00 */	lwz r3, 0(r3)
/* 804A7BDC  88 9E 04 98 */	lbz r4, 0x498(r30)
/* 804A7BE0  4B B9 14 A8 */	b getActor__14dDemo_object_cFUc
/* 804A7BE4  7C 7C 1B 79 */	or. r28, r3, r3
/* 804A7BE8  40 82 00 10 */	bne lbl_804A7BF8
/* 804A7BEC  7F C3 F3 78 */	mr r3, r30
/* 804A7BF0  4B B7 20 8C */	b fopAcM_delete__FP10fopAc_ac_c
/* 804A7BF4  48 00 07 A8 */	b lbl_804A839C
lbl_804A7BF8:
/* 804A7BF8  A0 1C 00 04 */	lhz r0, 4(r28)
/* 804A7BFC  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 804A7C00  41 82 00 0C */	beq lbl_804A7C0C
/* 804A7C04  80 1C 00 28 */	lwz r0, 0x28(r28)
/* 804A7C08  90 1E 05 88 */	stw r0, 0x588(r30)
lbl_804A7C0C:
/* 804A7C0C  A0 1C 00 04 */	lhz r0, 4(r28)
/* 804A7C10  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 804A7C14  41 82 00 0C */	beq lbl_804A7C20
/* 804A7C18  80 1C 00 2C */	lwz r0, 0x2c(r28)
/* 804A7C1C  90 1E 05 8C */	stw r0, 0x58c(r30)
lbl_804A7C20:
/* 804A7C20  A0 1C 00 04 */	lhz r0, 4(r28)
/* 804A7C24  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804A7C28  41 82 07 60 */	beq lbl_804A8388
/* 804A7C2C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804A7C30  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 804A7C34  3B 7D 5B D4 */	addi r27, r29, 0x5bd4
/* 804A7C38  3C 60 80 43 */	lis r3, g_env_light@ha
/* 804A7C3C  3B 03 CA 54 */	addi r24, r3, g_env_light@l
/* 804A7C40  3B 3D 07 F0 */	addi r25, r29, 0x7f0
/* 804A7C44  3B 5D 0D D8 */	addi r26, r29, 0xdd8
/* 804A7C48  48 00 07 10 */	b lbl_804A8358
lbl_804A7C4C:
/* 804A7C4C  80 01 00 30 */	lwz r0, 0x30(r1)
/* 804A7C50  2C 00 00 00 */	cmpwi r0, 0
/* 804A7C54  40 82 06 44 */	bne lbl_804A8298
/* 804A7C58  80 01 00 28 */	lwz r0, 0x28(r1)
/* 804A7C5C  2C 00 00 02 */	cmpwi r0, 2
/* 804A7C60  41 82 05 B4 */	beq lbl_804A8214
/* 804A7C64  40 80 00 14 */	bge lbl_804A7C78
/* 804A7C68  2C 00 00 00 */	cmpwi r0, 0
/* 804A7C6C  41 82 00 18 */	beq lbl_804A7C84
/* 804A7C70  40 80 05 84 */	bge lbl_804A81F4
/* 804A7C74  48 00 06 E4 */	b lbl_804A8358
lbl_804A7C78:
/* 804A7C78  2C 00 00 04 */	cmpwi r0, 4
/* 804A7C7C  40 80 06 DC */	bge lbl_804A8358
/* 804A7C80  48 00 05 F8 */	b lbl_804A8278
lbl_804A7C84:
/* 804A7C84  A0 01 00 22 */	lhz r0, 0x22(r1)
/* 804A7C88  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 804A7C8C  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 804A7C90  28 04 00 19 */	cmplwi r4, 0x19
/* 804A7C94  41 81 06 C4 */	bgt lbl_804A8358
/* 804A7C98  3C 60 80 4B */	lis r3, lit_6395@ha
/* 804A7C9C  38 63 8B 2C */	addi r3, r3, lit_6395@l
/* 804A7CA0  54 80 10 3A */	slwi r0, r4, 2
/* 804A7CA4  7C 03 00 2E */	lwzx r0, r3, r0
/* 804A7CA8  7C 09 03 A6 */	mtctr r0
/* 804A7CAC  4E 80 04 20 */	bctr 
lbl_804A7CB0:
/* 804A7CB0  28 05 00 06 */	cmplwi r5, 6
/* 804A7CB4  41 81 06 A4 */	bgt lbl_804A8358
/* 804A7CB8  3C 60 80 4B */	lis r3, lit_6396@ha
/* 804A7CBC  38 63 8B 10 */	addi r3, r3, lit_6396@l
/* 804A7CC0  54 A0 10 3A */	slwi r0, r5, 2
/* 804A7CC4  7C 03 00 2E */	lwzx r0, r3, r0
/* 804A7CC8  7C 09 03 A6 */	mtctr r0
/* 804A7CCC  4E 80 04 20 */	bctr 
lbl_804A7CD0:
/* 804A7CD0  38 00 00 01 */	li r0, 1
/* 804A7CD4  98 1E 06 B4 */	stb r0, 0x6b4(r30)
/* 804A7CD8  48 00 06 80 */	b lbl_804A8358
lbl_804A7CDC:
/* 804A7CDC  38 00 00 01 */	li r0, 1
/* 804A7CE0  98 1E 06 A5 */	stb r0, 0x6a5(r30)
/* 804A7CE4  48 00 06 74 */	b lbl_804A8358
lbl_804A7CE8:
/* 804A7CE8  38 00 00 02 */	li r0, 2
/* 804A7CEC  98 1E 06 A5 */	stb r0, 0x6a5(r30)
/* 804A7CF0  48 00 06 68 */	b lbl_804A8358
lbl_804A7CF4:
/* 804A7CF4  38 00 00 01 */	li r0, 1
/* 804A7CF8  98 1E 06 A6 */	stb r0, 0x6a6(r30)
/* 804A7CFC  48 00 06 5C */	b lbl_804A8358
lbl_804A7D00:
/* 804A7D00  38 00 00 02 */	li r0, 2
/* 804A7D04  98 1E 06 A6 */	stb r0, 0x6a6(r30)
/* 804A7D08  48 00 06 50 */	b lbl_804A8358
lbl_804A7D0C:
/* 804A7D0C  38 00 00 03 */	li r0, 3
/* 804A7D10  98 1E 06 A6 */	stb r0, 0x6a6(r30)
/* 804A7D14  48 00 06 44 */	b lbl_804A8358
lbl_804A7D18:
/* 804A7D18  28 05 00 00 */	cmplwi r5, 0
/* 804A7D1C  40 82 00 14 */	bne lbl_804A7D30
/* 804A7D20  38 00 00 00 */	li r0, 0
/* 804A7D24  98 1E 06 A2 */	stb r0, 0x6a2(r30)
/* 804A7D28  98 1E 06 A3 */	stb r0, 0x6a3(r30)
/* 804A7D2C  48 00 06 2C */	b lbl_804A8358
lbl_804A7D30:
/* 804A7D30  28 05 00 01 */	cmplwi r5, 1
/* 804A7D34  40 82 00 10 */	bne lbl_804A7D44
/* 804A7D38  38 00 00 01 */	li r0, 1
/* 804A7D3C  98 1E 06 A2 */	stb r0, 0x6a2(r30)
/* 804A7D40  48 00 06 18 */	b lbl_804A8358
lbl_804A7D44:
/* 804A7D44  38 00 00 01 */	li r0, 1
/* 804A7D48  98 1E 06 A3 */	stb r0, 0x6a3(r30)
/* 804A7D4C  48 00 06 0C */	b lbl_804A8358
lbl_804A7D50:
/* 804A7D50  3C 60 80 4B */	lis r3, data_804A88CC@ha
/* 804A7D54  38 63 88 CC */	addi r3, r3, data_804A88CC@l
/* 804A7D58  7C 63 28 AE */	lbzx r3, r3, r5
/* 804A7D5C  28 03 00 FF */	cmplwi r3, 0xff
/* 804A7D60  41 82 05 F8 */	beq lbl_804A8358
/* 804A7D64  4B BF 01 28 */	b execItemGet__FUc
/* 804A7D68  48 00 05 F0 */	b lbl_804A8358
lbl_804A7D6C:
/* 804A7D6C  38 00 00 00 */	li r0, 0
/* 804A7D70  38 60 00 00 */	li r3, 0
/* 804A7D74  28 04 00 05 */	cmplwi r4, 5
/* 804A7D78  41 82 00 0C */	beq lbl_804A7D84
/* 804A7D7C  28 04 00 07 */	cmplwi r4, 7
/* 804A7D80  40 82 00 08 */	bne lbl_804A7D88
lbl_804A7D84:
/* 804A7D84  38 00 00 01 */	li r0, 1
lbl_804A7D88:
/* 804A7D88  28 04 00 06 */	cmplwi r4, 6
/* 804A7D8C  41 82 00 0C */	beq lbl_804A7D98
/* 804A7D90  28 04 00 07 */	cmplwi r4, 7
/* 804A7D94  40 82 00 08 */	bne lbl_804A7D9C
lbl_804A7D98:
/* 804A7D98  38 60 00 01 */	li r3, 1
lbl_804A7D9C:
/* 804A7D9C  2C 05 00 FF */	cmpwi r5, 0xff
/* 804A7DA0  40 82 00 08 */	bne lbl_804A7DA8
/* 804A7DA4  38 A0 00 1A */	li r5, 0x1a
lbl_804A7DA8:
/* 804A7DA8  2C 00 00 01 */	cmpwi r0, 1
/* 804A7DAC  41 82 00 5C */	beq lbl_804A7E08
/* 804A7DB0  40 80 05 A8 */	bge lbl_804A8358
/* 804A7DB4  2C 00 00 00 */	cmpwi r0, 0
/* 804A7DB8  40 80 00 08 */	bge lbl_804A7DC0
/* 804A7DBC  48 00 05 9C */	b lbl_804A8358
lbl_804A7DC0:
/* 804A7DC0  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 804A7DC4  C8 3F 00 58 */	lfd f1, 0x58(r31)
/* 804A7DC8  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 804A7DCC  90 01 00 6C */	stw r0, 0x6c(r1)
/* 804A7DD0  3C 00 43 30 */	lis r0, 0x4330
/* 804A7DD4  90 01 00 68 */	stw r0, 0x68(r1)
/* 804A7DD8  C8 01 00 68 */	lfd f0, 0x68(r1)
/* 804A7DDC  EC 00 08 28 */	fsubs f0, f0, f1
/* 804A7DE0  EC 02 00 24 */	fdivs f0, f2, f0
/* 804A7DE4  FC 20 00 50 */	fneg f1, f0
/* 804A7DE8  2C 03 00 00 */	cmpwi r3, 0
/* 804A7DEC  3C 60 80 45 */	lis r3, g_saftyWhiteColor@ha
/* 804A7DF0  38 63 06 0C */	addi r3, r3, g_saftyWhiteColor@l
/* 804A7DF4  40 82 00 0C */	bne lbl_804A7E00
/* 804A7DF8  3C 60 80 45 */	lis r3, g_blackColor@ha
/* 804A7DFC  38 63 06 04 */	addi r3, r3, g_blackColor@l
lbl_804A7E00:
/* 804A7E00  4B B6 01 D8 */	b fadeOut__13mDoGph_gInf_cFfR8_GXColor
/* 804A7E04  48 00 05 54 */	b lbl_804A8358
lbl_804A7E08:
/* 804A7E08  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 804A7E0C  C8 3F 00 58 */	lfd f1, 0x58(r31)
/* 804A7E10  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 804A7E14  90 01 00 6C */	stw r0, 0x6c(r1)
/* 804A7E18  3C 00 43 30 */	lis r0, 0x4330
/* 804A7E1C  90 01 00 68 */	stw r0, 0x68(r1)
/* 804A7E20  C8 01 00 68 */	lfd f0, 0x68(r1)
/* 804A7E24  EC 00 08 28 */	fsubs f0, f0, f1
/* 804A7E28  EC 22 00 24 */	fdivs f1, f2, f0
/* 804A7E2C  2C 03 00 00 */	cmpwi r3, 0
/* 804A7E30  3C 60 80 45 */	lis r3, g_saftyWhiteColor@ha
/* 804A7E34  38 63 06 0C */	addi r3, r3, g_saftyWhiteColor@l
/* 804A7E38  40 82 00 0C */	bne lbl_804A7E44
/* 804A7E3C  3C 60 80 45 */	lis r3, g_blackColor@ha
/* 804A7E40  38 63 06 04 */	addi r3, r3, g_blackColor@l
lbl_804A7E44:
/* 804A7E44  4B B6 01 94 */	b fadeOut__13mDoGph_gInf_cFfR8_GXColor
/* 804A7E48  48 00 05 10 */	b lbl_804A8358
lbl_804A7E4C:
/* 804A7E4C  54 A4 06 BE */	clrlwi r4, r5, 0x1a
/* 804A7E50  54 A0 D7 BE */	rlwinm r0, r5, 0x1a, 0x1e, 0x1f
/* 804A7E54  2C 00 00 01 */	cmpwi r0, 1
/* 804A7E58  41 82 00 30 */	beq lbl_804A7E88
/* 804A7E5C  40 80 00 10 */	bge lbl_804A7E6C
/* 804A7E60  2C 00 00 00 */	cmpwi r0, 0
/* 804A7E64  40 80 00 14 */	bge lbl_804A7E78
/* 804A7E68  48 00 04 F0 */	b lbl_804A8358
lbl_804A7E6C:
/* 804A7E6C  2C 00 00 03 */	cmpwi r0, 3
/* 804A7E70  40 80 04 E8 */	bge lbl_804A8358
/* 804A7E74  48 00 00 3C */	b lbl_804A7EB0
lbl_804A7E78:
/* 804A7E78  7F 63 DB 78 */	mr r3, r27
/* 804A7E7C  38 80 00 01 */	li r4, 1
/* 804A7E80  4B BC 7F 14 */	b StopQuake__12dVibration_cFi
/* 804A7E84  48 00 04 D4 */	b lbl_804A8358
lbl_804A7E88:
/* 804A7E88  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 804A7E8C  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 804A7E90  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 804A7E94  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 804A7E98  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 804A7E9C  7F 63 DB 78 */	mr r3, r27
/* 804A7EA0  38 A0 00 01 */	li r5, 1
/* 804A7EA4  38 C1 00 40 */	addi r6, r1, 0x40
/* 804A7EA8  4B BC 7B 7C */	b StartShock__12dVibration_cFii4cXyz
/* 804A7EAC  48 00 04 AC */	b lbl_804A8358
lbl_804A7EB0:
/* 804A7EB0  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 804A7EB4  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 804A7EB8  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 804A7EBC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 804A7EC0  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 804A7EC4  7F 63 DB 78 */	mr r3, r27
/* 804A7EC8  38 A0 00 01 */	li r5, 1
/* 804A7ECC  38 C1 00 34 */	addi r6, r1, 0x34
/* 804A7ED0  4B BC 7C 40 */	b StartQuake__12dVibration_cFii4cXyz
/* 804A7ED4  48 00 04 84 */	b lbl_804A8358
lbl_804A7ED8:
/* 804A7ED8  28 05 00 00 */	cmplwi r5, 0
/* 804A7EDC  40 82 00 10 */	bne lbl_804A7EEC
/* 804A7EE0  38 00 00 00 */	li r0, 0
/* 804A7EE4  98 1E 06 A4 */	stb r0, 0x6a4(r30)
/* 804A7EE8  48 00 04 70 */	b lbl_804A8358
lbl_804A7EEC:
/* 804A7EEC  38 00 00 01 */	li r0, 1
/* 804A7EF0  98 1E 06 A4 */	stb r0, 0x6a4(r30)
/* 804A7EF4  48 00 04 64 */	b lbl_804A8358
lbl_804A7EF8:
/* 804A7EF8  2C 05 00 40 */	cmpwi r5, 0x40
/* 804A7EFC  40 80 04 5C */	bge lbl_804A8358
/* 804A7F00  54 A3 06 3E */	clrlwi r3, r5, 0x18
/* 804A7F04  4B D0 08 E0 */	b dKy_change_colpat__FUc
/* 804A7F08  48 00 04 50 */	b lbl_804A8358
lbl_804A7F0C:
/* 804A7F0C  28 05 00 06 */	cmplwi r5, 6
/* 804A7F10  41 81 04 48 */	bgt lbl_804A8358
/* 804A7F14  3C 60 80 4B */	lis r3, lit_6398@ha
/* 804A7F18  38 63 8A F4 */	addi r3, r3, lit_6398@l
/* 804A7F1C  54 A0 10 3A */	slwi r0, r5, 2
/* 804A7F20  7C 03 00 2E */	lwzx r0, r3, r0
/* 804A7F24  7C 09 03 A6 */	mtctr r0
/* 804A7F28  4E 80 04 20 */	bctr 
lbl_804A7F2C:
/* 804A7F2C  38 00 00 01 */	li r0, 1
/* 804A7F30  98 18 0E D6 */	stb r0, 0xed6(r24)
/* 804A7F34  48 00 04 24 */	b lbl_804A8358
lbl_804A7F38:
/* 804A7F38  38 00 00 01 */	li r0, 1
/* 804A7F3C  98 1E 06 B2 */	stb r0, 0x6b2(r30)
/* 804A7F40  48 00 04 18 */	b lbl_804A8358
lbl_804A7F44:
/* 804A7F44  38 00 00 02 */	li r0, 2
/* 804A7F48  98 1E 06 B2 */	stb r0, 0x6b2(r30)
/* 804A7F4C  48 00 04 0C */	b lbl_804A8358
lbl_804A7F50:
/* 804A7F50  38 00 00 FA */	li r0, 0xfa
/* 804A7F54  B0 1E 06 9C */	sth r0, 0x69c(r30)
/* 804A7F58  48 00 04 00 */	b lbl_804A8358
lbl_804A7F5C:
/* 804A7F5C  38 00 00 00 */	li r0, 0
/* 804A7F60  B0 1E 06 9C */	sth r0, 0x69c(r30)
/* 804A7F64  48 00 03 F4 */	b lbl_804A8358
lbl_804A7F68:
/* 804A7F68  38 00 00 32 */	li r0, 0x32
/* 804A7F6C  B0 1E 06 9E */	sth r0, 0x69e(r30)
/* 804A7F70  48 00 03 E8 */	b lbl_804A8358
lbl_804A7F74:
/* 804A7F74  38 00 00 00 */	li r0, 0
/* 804A7F78  B0 1E 06 9E */	sth r0, 0x69e(r30)
/* 804A7F7C  48 00 03 DC */	b lbl_804A8358
lbl_804A7F80:
/* 804A7F80  28 05 00 0A */	cmplwi r5, 0xa
/* 804A7F84  41 81 03 D4 */	bgt lbl_804A8358
/* 804A7F88  3C 60 80 4B */	lis r3, lit_6399@ha
/* 804A7F8C  38 63 8A C8 */	addi r3, r3, lit_6399@l
/* 804A7F90  54 A0 10 3A */	slwi r0, r5, 2
/* 804A7F94  7C 03 00 2E */	lwzx r0, r3, r0
/* 804A7F98  7C 09 03 A6 */	mtctr r0
/* 804A7F9C  4E 80 04 20 */	bctr 
lbl_804A7FA0:
/* 804A7FA0  38 00 00 00 */	li r0, 0
/* 804A7FA4  98 1E 06 A7 */	stb r0, 0x6a7(r30)
/* 804A7FA8  48 00 03 B0 */	b lbl_804A8358
lbl_804A7FAC:
/* 804A7FAC  38 00 00 02 */	li r0, 2
/* 804A7FB0  98 1E 06 A7 */	stb r0, 0x6a7(r30)
/* 804A7FB4  48 00 03 A4 */	b lbl_804A8358
lbl_804A7FB8:
/* 804A7FB8  38 00 00 03 */	li r0, 3
/* 804A7FBC  98 1E 06 A7 */	stb r0, 0x6a7(r30)
/* 804A7FC0  48 00 03 98 */	b lbl_804A8358
lbl_804A7FC4:
/* 804A7FC4  38 00 00 01 */	li r0, 1
/* 804A7FC8  98 1E 06 A7 */	stb r0, 0x6a7(r30)
/* 804A7FCC  48 00 03 8C */	b lbl_804A8358
lbl_804A7FD0:
/* 804A7FD0  38 00 00 08 */	li r0, 8
/* 804A7FD4  98 1E 06 A7 */	stb r0, 0x6a7(r30)
/* 804A7FD8  48 00 03 80 */	b lbl_804A8358
lbl_804A7FDC:
/* 804A7FDC  38 00 00 04 */	li r0, 4
/* 804A7FE0  98 1E 06 A7 */	stb r0, 0x6a7(r30)
/* 804A7FE4  48 00 03 74 */	b lbl_804A8358
lbl_804A7FE8:
/* 804A7FE8  38 00 00 01 */	li r0, 1
/* 804A7FEC  98 1E 06 B6 */	stb r0, 0x6b6(r30)
/* 804A7FF0  48 00 03 68 */	b lbl_804A8358
lbl_804A7FF4:
/* 804A7FF4  38 00 00 02 */	li r0, 2
/* 804A7FF8  98 1E 06 B6 */	stb r0, 0x6b6(r30)
/* 804A7FFC  48 00 03 5C */	b lbl_804A8358
lbl_804A8000:
/* 804A8000  38 00 00 06 */	li r0, 6
/* 804A8004  98 1E 06 A7 */	stb r0, 0x6a7(r30)
/* 804A8008  48 00 03 50 */	b lbl_804A8358
lbl_804A800C:
/* 804A800C  38 00 00 07 */	li r0, 7
/* 804A8010  98 1E 06 A7 */	stb r0, 0x6a7(r30)
/* 804A8014  48 00 03 44 */	b lbl_804A8358
lbl_804A8018:
/* 804A8018  38 00 00 05 */	li r0, 5
/* 804A801C  98 1E 06 A7 */	stb r0, 0x6a7(r30)
/* 804A8020  48 00 03 38 */	b lbl_804A8358
lbl_804A8024:
/* 804A8024  98 BE 06 A9 */	stb r5, 0x6a9(r30)
/* 804A8028  48 00 03 30 */	b lbl_804A8358
lbl_804A802C:
/* 804A802C  98 BE 06 A8 */	stb r5, 0x6a8(r30)
/* 804A8030  48 00 03 28 */	b lbl_804A8358
lbl_804A8034:
/* 804A8034  28 05 00 01 */	cmplwi r5, 1
/* 804A8038  40 82 00 10 */	bne lbl_804A8048
/* 804A803C  38 00 00 01 */	li r0, 1
/* 804A8040  98 1E 06 AA */	stb r0, 0x6aa(r30)
/* 804A8044  48 00 03 14 */	b lbl_804A8358
lbl_804A8048:
/* 804A8048  38 00 00 00 */	li r0, 0
/* 804A804C  98 1E 06 AA */	stb r0, 0x6aa(r30)
/* 804A8050  48 00 03 08 */	b lbl_804A8358
lbl_804A8054:
/* 804A8054  98 BE 06 AB */	stb r5, 0x6ab(r30)
/* 804A8058  48 00 03 00 */	b lbl_804A8358
lbl_804A805C:
/* 804A805C  28 05 00 0E */	cmplwi r5, 0xe
/* 804A8060  41 81 02 F8 */	bgt lbl_804A8358
/* 804A8064  3C 60 80 4B */	lis r3, lit_6400@ha
/* 804A8068  38 63 8A 8C */	addi r3, r3, lit_6400@l
/* 804A806C  54 A0 10 3A */	slwi r0, r5, 2
/* 804A8070  7C 03 00 2E */	lwzx r0, r3, r0
/* 804A8074  7C 09 03 A6 */	mtctr r0
/* 804A8078  4E 80 04 20 */	bctr 
lbl_804A807C:
/* 804A807C  38 00 00 02 */	li r0, 2
/* 804A8080  98 1E 06 AC */	stb r0, 0x6ac(r30)
/* 804A8084  48 00 02 D4 */	b lbl_804A8358
lbl_804A8088:
/* 804A8088  38 00 00 04 */	li r0, 4
/* 804A808C  98 1E 06 AC */	stb r0, 0x6ac(r30)
/* 804A8090  48 00 02 C8 */	b lbl_804A8358
lbl_804A8094:
/* 804A8094  38 00 00 07 */	li r0, 7
/* 804A8098  98 1E 06 AC */	stb r0, 0x6ac(r30)
/* 804A809C  48 00 02 BC */	b lbl_804A8358
lbl_804A80A0:
/* 804A80A0  38 00 00 09 */	li r0, 9
/* 804A80A4  98 1E 06 AC */	stb r0, 0x6ac(r30)
/* 804A80A8  48 00 02 B0 */	b lbl_804A8358
lbl_804A80AC:
/* 804A80AC  38 00 00 01 */	li r0, 1
/* 804A80B0  98 1E 06 AC */	stb r0, 0x6ac(r30)
/* 804A80B4  48 00 02 A4 */	b lbl_804A8358
lbl_804A80B8:
/* 804A80B8  38 00 00 10 */	li r0, 0x10
/* 804A80BC  98 1E 06 AC */	stb r0, 0x6ac(r30)
/* 804A80C0  48 00 02 98 */	b lbl_804A8358
lbl_804A80C4:
/* 804A80C4  38 00 00 11 */	li r0, 0x11
/* 804A80C8  98 1E 06 AC */	stb r0, 0x6ac(r30)
/* 804A80CC  48 00 02 8C */	b lbl_804A8358
lbl_804A80D0:
/* 804A80D0  38 00 00 12 */	li r0, 0x12
/* 804A80D4  98 1E 06 AC */	stb r0, 0x6ac(r30)
/* 804A80D8  48 00 02 80 */	b lbl_804A8358
lbl_804A80DC:
/* 804A80DC  38 00 00 13 */	li r0, 0x13
/* 804A80E0  98 1E 06 AC */	stb r0, 0x6ac(r30)
/* 804A80E4  48 00 02 74 */	b lbl_804A8358
lbl_804A80E8:
/* 804A80E8  38 00 00 0A */	li r0, 0xa
/* 804A80EC  98 1E 06 AC */	stb r0, 0x6ac(r30)
/* 804A80F0  48 00 02 68 */	b lbl_804A8358
lbl_804A80F4:
/* 804A80F4  38 00 00 0E */	li r0, 0xe
/* 804A80F8  98 1E 06 AC */	stb r0, 0x6ac(r30)
/* 804A80FC  48 00 02 5C */	b lbl_804A8358
lbl_804A8100:
/* 804A8100  38 00 00 03 */	li r0, 3
/* 804A8104  98 1E 06 AC */	stb r0, 0x6ac(r30)
/* 804A8108  48 00 02 50 */	b lbl_804A8358
lbl_804A810C:
/* 804A810C  38 00 00 05 */	li r0, 5
/* 804A8110  98 1E 06 AC */	stb r0, 0x6ac(r30)
/* 804A8114  48 00 02 44 */	b lbl_804A8358
lbl_804A8118:
/* 804A8118  38 00 00 0F */	li r0, 0xf
/* 804A811C  98 1E 06 AC */	stb r0, 0x6ac(r30)
/* 804A8120  48 00 02 38 */	b lbl_804A8358
lbl_804A8124:
/* 804A8124  38 00 00 01 */	li r0, 1
/* 804A8128  98 1E 06 AE */	stb r0, 0x6ae(r30)
/* 804A812C  48 00 02 2C */	b lbl_804A8358
lbl_804A8130:
/* 804A8130  98 BE 06 AF */	stb r5, 0x6af(r30)
/* 804A8134  48 00 02 24 */	b lbl_804A8358
lbl_804A8138:
/* 804A8138  98 BE 06 B0 */	stb r5, 0x6b0(r30)
/* 804A813C  48 00 02 1C */	b lbl_804A8358
lbl_804A8140:
/* 804A8140  38 00 00 01 */	li r0, 1
/* 804A8144  98 1E 06 B1 */	stb r0, 0x6b1(r30)
/* 804A8148  48 00 02 10 */	b lbl_804A8358
lbl_804A814C:
/* 804A814C  98 BE 06 B5 */	stb r5, 0x6b5(r30)
/* 804A8150  48 00 02 08 */	b lbl_804A8358
lbl_804A8154:
/* 804A8154  98 BE 06 B7 */	stb r5, 0x6b7(r30)
/* 804A8158  48 00 02 00 */	b lbl_804A8358
lbl_804A815C:
/* 804A815C  38 00 00 01 */	li r0, 1
/* 804A8160  98 1E 06 B8 */	stb r0, 0x6b8(r30)
/* 804A8164  48 00 01 F4 */	b lbl_804A8358
lbl_804A8168:
/* 804A8168  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 804A816C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 804A8170  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 804A8174  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 804A8178  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 804A817C  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 804A8180  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 804A8184  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 804A8188  38 00 00 01 */	li r0, 1
/* 804A818C  98 1E 06 B9 */	stb r0, 0x6b9(r30)
/* 804A8190  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 804A8194  38 80 00 00 */	li r4, 0
/* 804A8198  90 81 00 08 */	stw r4, 8(r1)
/* 804A819C  38 00 FF FF */	li r0, -1
/* 804A81A0  90 01 00 0C */	stw r0, 0xc(r1)
/* 804A81A4  90 81 00 10 */	stw r4, 0x10(r1)
/* 804A81A8  90 81 00 14 */	stw r4, 0x14(r1)
/* 804A81AC  90 81 00 18 */	stw r4, 0x18(r1)
/* 804A81B0  38 80 00 00 */	li r4, 0
/* 804A81B4  80 1E 05 88 */	lwz r0, 0x588(r30)
/* 804A81B8  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 804A81BC  38 C1 00 58 */	addi r6, r1, 0x58
/* 804A81C0  38 E0 00 00 */	li r7, 0
/* 804A81C4  39 00 00 00 */	li r8, 0
/* 804A81C8  39 21 00 4C */	addi r9, r1, 0x4c
/* 804A81CC  39 40 00 FF */	li r10, 0xff
/* 804A81D0  4B BA 48 C0 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 804A81D4  38 7E 05 88 */	addi r3, r30, 0x588
/* 804A81D8  4B FF C1 35 */	bl reset__16daDemo00_resID_cFv
/* 804A81DC  38 00 FF FF */	li r0, -1
/* 804A81E0  90 1E 05 88 */	stw r0, 0x588(r30)
/* 804A81E4  A0 1C 00 04 */	lhz r0, 4(r28)
/* 804A81E8  70 00 FF EF */	andi. r0, r0, 0xffef
/* 804A81EC  B0 1C 00 04 */	sth r0, 4(r28)
/* 804A81F0  48 00 01 68 */	b lbl_804A8358
lbl_804A81F4:
/* 804A81F4  7F 23 CB 78 */	mr r3, r25
/* 804A81F8  A0 01 00 22 */	lhz r0, 0x22(r1)
/* 804A81FC  54 00 08 3C */	slwi r0, r0, 1
/* 804A8200  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 804A8204  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 804A8208  7C 84 02 2E */	lhzx r4, r4, r0
/* 804A820C  4B B8 C7 80 */	b onEventBit__11dSv_event_cFUs
/* 804A8210  48 00 01 48 */	b lbl_804A8358
lbl_804A8214:
/* 804A8214  A0 01 00 22 */	lhz r0, 0x22(r1)
/* 804A8218  54 04 04 BE */	clrlwi r4, r0, 0x12
/* 804A821C  54 00 04 23 */	rlwinm. r0, r0, 0, 0x10, 0x11
/* 804A8220  40 82 00 30 */	bne lbl_804A8250
/* 804A8224  38 60 02 E0 */	li r3, 0x2e0
/* 804A8228  38 A0 00 00 */	li r5, 0
/* 804A822C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 804A8230  7C 06 07 74 */	extsb r6, r0
/* 804A8234  38 E0 00 00 */	li r7, 0
/* 804A8238  39 00 00 00 */	li r8, 0
/* 804A823C  39 20 FF FF */	li r9, -1
/* 804A8240  4B B7 1B 58 */	b fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 804A8244  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 804A8248  4B B5 FE 88 */	b fadeOut__13mDoGph_gInf_cFf
/* 804A824C  48 00 01 0C */	b lbl_804A8358
lbl_804A8250:
/* 804A8250  2C 04 00 01 */	cmpwi r4, 1
/* 804A8254  41 82 00 1C */	beq lbl_804A8270
/* 804A8258  40 80 01 00 */	bge lbl_804A8358
/* 804A825C  2C 04 00 00 */	cmpwi r4, 0
/* 804A8260  40 80 00 08 */	bge lbl_804A8268
/* 804A8264  48 00 00 F4 */	b lbl_804A8358
lbl_804A8268:
/* 804A8268  4B B8 98 68 */	b daMP_c_THPPlayerPlay__6daMP_cFv
/* 804A826C  48 00 00 EC */	b lbl_804A8358
lbl_804A8270:
/* 804A8270  4B B8 98 B4 */	b daMP_c_THPPlayerPause__6daMP_cFv
/* 804A8274  48 00 00 E4 */	b lbl_804A8358
lbl_804A8278:
/* 804A8278  7F 43 D3 78 */	mr r3, r26
/* 804A827C  A0 01 00 22 */	lhz r0, 0x22(r1)
/* 804A8280  54 00 08 3C */	slwi r0, r0, 1
/* 804A8284  3C 80 80 38 */	lis r4, tempBitLabels__20dSv_event_tmp_flag_c@ha
/* 804A8288  38 84 90 C0 */	addi r4, r4, tempBitLabels__20dSv_event_tmp_flag_c@l
/* 804A828C  7C 84 02 2E */	lhzx r4, r4, r0
/* 804A8290  4B B8 C6 FC */	b onEventBit__11dSv_event_cFUs
/* 804A8294  48 00 00 C4 */	b lbl_804A8358
lbl_804A8298:
/* 804A8298  80 01 00 28 */	lwz r0, 0x28(r1)
/* 804A829C  28 00 00 08 */	cmplwi r0, 8
/* 804A82A0  41 81 00 B8 */	bgt lbl_804A8358
/* 804A82A4  3C 60 80 4B */	lis r3, lit_6401@ha
/* 804A82A8  38 63 8A 68 */	addi r3, r3, lit_6401@l
/* 804A82AC  54 00 10 3A */	slwi r0, r0, 2
/* 804A82B0  7C 03 00 2E */	lwzx r0, r3, r0
/* 804A82B4  7C 09 03 A6 */	mtctr r0
/* 804A82B8  4E 80 04 20 */	bctr 
lbl_804A82BC:
/* 804A82BC  38 7E 05 88 */	addi r3, r30, 0x588
/* 804A82C0  4B FF C0 4D */	bl reset__16daDemo00_resID_cFv
/* 804A82C4  A0 01 00 22 */	lhz r0, 0x22(r1)
/* 804A82C8  90 1E 05 88 */	stw r0, 0x588(r30)
/* 804A82CC  48 00 00 8C */	b lbl_804A8358
lbl_804A82D0:
/* 804A82D0  A0 01 00 22 */	lhz r0, 0x22(r1)
/* 804A82D4  90 1E 05 8C */	stw r0, 0x58c(r30)
/* 804A82D8  48 00 00 80 */	b lbl_804A8358
lbl_804A82DC:
/* 804A82DC  88 01 00 20 */	lbz r0, 0x20(r1)
/* 804A82E0  28 00 00 00 */	cmplwi r0, 0
/* 804A82E4  40 82 00 10 */	bne lbl_804A82F4
/* 804A82E8  A0 01 00 22 */	lhz r0, 0x22(r1)
/* 804A82EC  90 1E 05 98 */	stw r0, 0x598(r30)
/* 804A82F0  48 00 00 68 */	b lbl_804A8358
lbl_804A82F4:
/* 804A82F4  A0 01 00 22 */	lhz r0, 0x22(r1)
/* 804A82F8  64 00 10 00 */	oris r0, r0, 0x1000
/* 804A82FC  90 1E 05 98 */	stw r0, 0x598(r30)
/* 804A8300  48 00 00 58 */	b lbl_804A8358
lbl_804A8304:
/* 804A8304  88 01 00 20 */	lbz r0, 0x20(r1)
/* 804A8308  28 00 00 00 */	cmplwi r0, 0
/* 804A830C  40 82 00 10 */	bne lbl_804A831C
/* 804A8310  A0 01 00 22 */	lhz r0, 0x22(r1)
/* 804A8314  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 804A8318  48 00 00 40 */	b lbl_804A8358
lbl_804A831C:
/* 804A831C  A0 01 00 22 */	lhz r0, 0x22(r1)
/* 804A8320  64 00 10 00 */	oris r0, r0, 0x1000
/* 804A8324  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 804A8328  48 00 00 30 */	b lbl_804A8358
lbl_804A832C:
/* 804A832C  A0 01 00 22 */	lhz r0, 0x22(r1)
/* 804A8330  90 1E 05 94 */	stw r0, 0x594(r30)
/* 804A8334  48 00 00 24 */	b lbl_804A8358
lbl_804A8338:
/* 804A8338  A0 01 00 22 */	lhz r0, 0x22(r1)
/* 804A833C  90 1E 05 A4 */	stw r0, 0x5a4(r30)
/* 804A8340  48 00 00 18 */	b lbl_804A8358
lbl_804A8344:
/* 804A8344  A0 01 00 22 */	lhz r0, 0x22(r1)
/* 804A8348  90 1E 05 A8 */	stw r0, 0x5a8(r30)
/* 804A834C  48 00 00 0C */	b lbl_804A8358
lbl_804A8350:
/* 804A8350  A0 01 00 22 */	lhz r0, 0x22(r1)
/* 804A8354  90 1E 05 90 */	stw r0, 0x590(r30)
lbl_804A8358:
/* 804A8358  7F 83 E3 78 */	mr r3, r28
/* 804A835C  38 81 00 30 */	addi r4, r1, 0x30
/* 804A8360  38 A1 00 2C */	addi r5, r1, 0x2c
/* 804A8364  38 C1 00 28 */	addi r6, r1, 0x28
/* 804A8368  38 E1 00 22 */	addi r7, r1, 0x22
/* 804A836C  39 01 00 20 */	addi r8, r1, 0x20
/* 804A8370  4B B8 FF C8 */	b getDemoIDData__13dDemo_actor_cFPiPiPiPUsPUc
/* 804A8374  2C 03 00 00 */	cmpwi r3, 0
/* 804A8378  40 82 F8 D4 */	bne lbl_804A7C4C
/* 804A837C  A0 1C 00 04 */	lhz r0, 4(r28)
/* 804A8380  54 00 04 3C */	rlwinm r0, r0, 0, 0x10, 0x1e
/* 804A8384  B0 1C 00 04 */	sth r0, 4(r28)
lbl_804A8388:
/* 804A8388  7F C3 F3 78 */	mr r3, r30
/* 804A838C  7F 84 E3 78 */	mr r4, r28
/* 804A8390  39 9E 05 7C */	addi r12, r30, 0x57c
/* 804A8394  4B EB 9C F0 */	b __ptmf_scall
/* 804A8398  60 00 00 00 */	nop 
lbl_804A839C:
/* 804A839C  88 1E 06 AE */	lbz r0, 0x6ae(r30)
/* 804A83A0  28 00 00 00 */	cmplwi r0, 0
/* 804A83A4  41 82 00 C8 */	beq lbl_804A846C
/* 804A83A8  A8 1E 04 E8 */	lha r0, 0x4e8(r30)
/* 804A83AC  C8 9F 00 58 */	lfd f4, 0x58(r31)
/* 804A83B0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804A83B4  90 01 00 6C */	stw r0, 0x6c(r1)
/* 804A83B8  3C 80 43 30 */	lis r4, 0x4330
/* 804A83BC  90 81 00 68 */	stw r4, 0x68(r1)
/* 804A83C0  C8 01 00 68 */	lfd f0, 0x68(r1)
/* 804A83C4  EC 00 20 28 */	fsubs f0, f0, f4
/* 804A83C8  C0 5F 01 30 */	lfs f2, 0x130(r31)
/* 804A83CC  EC 60 10 24 */	fdivs f3, f0, f2
/* 804A83D0  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 804A83D4  FC 00 00 1E */	fctiwz f0, f0
/* 804A83D8  D8 01 00 70 */	stfd f0, 0x70(r1)
/* 804A83DC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 804A83E0  98 01 00 24 */	stb r0, 0x24(r1)
/* 804A83E4  C0 1E 04 F0 */	lfs f0, 0x4f0(r30)
/* 804A83E8  FC 00 00 1E */	fctiwz f0, f0
/* 804A83EC  D8 01 00 78 */	stfd f0, 0x78(r1)
/* 804A83F0  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 804A83F4  98 01 00 25 */	stb r0, 0x25(r1)
/* 804A83F8  C0 1E 04 F4 */	lfs f0, 0x4f4(r30)
/* 804A83FC  FC 00 00 1E */	fctiwz f0, f0
/* 804A8400  D8 01 00 80 */	stfd f0, 0x80(r1)
/* 804A8404  80 01 00 84 */	lwz r0, 0x84(r1)
/* 804A8408  98 01 00 26 */	stb r0, 0x26(r1)
/* 804A840C  38 00 00 FF */	li r0, 0xff
/* 804A8410  98 01 00 27 */	stb r0, 0x27(r1)
/* 804A8414  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 804A8418  A8 1E 04 E4 */	lha r0, 0x4e4(r30)
/* 804A841C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804A8420  90 01 00 8C */	stw r0, 0x8c(r1)
/* 804A8424  90 81 00 88 */	stw r4, 0x88(r1)
/* 804A8428  C8 01 00 88 */	lfd f0, 0x88(r1)
/* 804A842C  EC 00 20 28 */	fsubs f0, f0, f4
/* 804A8430  EC 20 10 24 */	fdivs f1, f0, f2
/* 804A8434  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 804A8438  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804A843C  90 01 00 94 */	stw r0, 0x94(r1)
/* 804A8440  90 81 00 90 */	stw r4, 0x90(r1)
/* 804A8444  C8 01 00 90 */	lfd f0, 0x90(r1)
/* 804A8448  EC 00 20 28 */	fsubs f0, f0, f4
/* 804A844C  EC 40 10 24 */	fdivs f2, f0, f2
/* 804A8450  C0 1F 01 34 */	lfs f0, 0x134(r31)
/* 804A8454  EC 42 00 28 */	fsubs f2, f2, f0
/* 804A8458  38 81 00 24 */	addi r4, r1, 0x24
/* 804A845C  C0 9E 05 30 */	lfs f4, 0x530(r30)
/* 804A8460  88 BE 06 B0 */	lbz r5, 0x6b0(r30)
/* 804A8464  88 DE 06 AF */	lbz r6, 0x6af(r30)
/* 804A8468  4B D0 21 FC */	b dKy_BossSpotLight_set__FP4cXyzfffP8_GXColorfUcUc
lbl_804A846C:
/* 804A846C  88 1E 06 B8 */	lbz r0, 0x6b8(r30)
/* 804A8470  28 00 00 00 */	cmplwi r0, 0
/* 804A8474  41 82 00 1C */	beq lbl_804A8490
/* 804A8478  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804A847C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804A8480  C0 3F 00 88 */	lfs f1, 0x88(r31)
/* 804A8484  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 804A8488  EC 01 00 32 */	fmuls f0, f1, f0
/* 804A848C  D0 03 00 34 */	stfs f0, 0x34(r3)
lbl_804A8490:
/* 804A8490  38 60 00 01 */	li r3, 1
/* 804A8494  39 61 00 C0 */	addi r11, r1, 0xc0
/* 804A8498  4B EB 9D 7C */	b _restgpr_24
/* 804A849C  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 804A84A0  7C 08 03 A6 */	mtlr r0
/* 804A84A4  38 21 00 C0 */	addi r1, r1, 0xc0
/* 804A84A8  4E 80 00 20 */	blr 
