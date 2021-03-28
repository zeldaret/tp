lbl_805D1E30:
/* 805D1E30  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805D1E34  7C 08 02 A6 */	mflr r0
/* 805D1E38  90 01 00 34 */	stw r0, 0x34(r1)
/* 805D1E3C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 805D1E40  93 C1 00 28 */	stw r30, 0x28(r1)
/* 805D1E44  7C 7E 1B 78 */	mr r30, r3
/* 805D1E48  3C 80 80 5E */	lis r4, lit_3932@ha
/* 805D1E4C  3B E4 CA 54 */	addi r31, r4, lit_3932@l
/* 805D1E50  80 A3 06 84 */	lwz r5, 0x684(r3)
/* 805D1E54  2C 05 00 02 */	cmpwi r5, 2
/* 805D1E58  41 82 01 04 */	beq lbl_805D1F5C
/* 805D1E5C  40 80 00 14 */	bge lbl_805D1E70
/* 805D1E60  2C 05 00 00 */	cmpwi r5, 0
/* 805D1E64  41 82 00 1C */	beq lbl_805D1E80
/* 805D1E68  40 80 00 84 */	bge lbl_805D1EEC
/* 805D1E6C  48 00 01 B8 */	b lbl_805D2024
lbl_805D1E70:
/* 805D1E70  2C 05 00 05 */	cmpwi r5, 5
/* 805D1E74  41 82 01 70 */	beq lbl_805D1FE4
/* 805D1E78  40 80 01 AC */	bge lbl_805D2024
/* 805D1E7C  48 00 01 1C */	b lbl_805D1F98
lbl_805D1E80:
/* 805D1E80  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805D1E84  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 805D1E88  C0 1F 00 08 */	lfs f0, 8(r31)
/* 805D1E8C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805D1E90  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 805D1E94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805D1E98  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805D1E9C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 805D1EA0  38 80 00 07 */	li r4, 7
/* 805D1EA4  38 A0 00 1F */	li r5, 0x1f
/* 805D1EA8  38 C1 00 14 */	addi r6, r1, 0x14
/* 805D1EAC  4B A9 DB 78 */	b StartShock__12dVibration_cFii4cXyz
/* 805D1EB0  7F C3 F3 78 */	mr r3, r30
/* 805D1EB4  88 1E 08 4F */	lbz r0, 0x84f(r30)
/* 805D1EB8  54 00 10 3A */	slwi r0, r0, 2
/* 805D1EBC  3C 80 80 5E */	lis r4, Ds_Etc_damage_id@ha
/* 805D1EC0  38 84 D5 B8 */	addi r4, r4, Ds_Etc_damage_id@l
/* 805D1EC4  7C 84 00 2E */	lwzx r4, r4, r0
/* 805D1EC8  38 A0 00 00 */	li r5, 0
/* 805D1ECC  C0 3F 03 B8 */	lfs f1, 0x3b8(r31)
/* 805D1ED0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 805D1ED4  4B FF 9B F5 */	bl setBck__8daB_DS_cFiUcff
/* 805D1ED8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805D1EDC  D0 1E 07 FC */	stfs f0, 0x7fc(r30)
/* 805D1EE0  38 00 00 03 */	li r0, 3
/* 805D1EE4  90 1E 06 84 */	stw r0, 0x684(r30)
/* 805D1EE8  48 00 01 3C */	b lbl_805D2024
lbl_805D1EEC:
/* 805D1EEC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805D1EF0  D0 21 00 08 */	stfs f1, 8(r1)
/* 805D1EF4  C0 1F 00 08 */	lfs f0, 8(r31)
/* 805D1EF8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805D1EFC  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 805D1F00  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805D1F04  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805D1F08  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 805D1F0C  38 80 00 07 */	li r4, 7
/* 805D1F10  38 A0 00 1F */	li r5, 0x1f
/* 805D1F14  38 C1 00 08 */	addi r6, r1, 8
/* 805D1F18  4B A9 DB 0C */	b StartShock__12dVibration_cFii4cXyz
/* 805D1F1C  7F C3 F3 78 */	mr r3, r30
/* 805D1F20  3C 80 80 5E */	lis r4, Ds_Etc_damage_id@ha
/* 805D1F24  38 84 D5 B8 */	addi r4, r4, Ds_Etc_damage_id@l
/* 805D1F28  88 1E 08 4F */	lbz r0, 0x84f(r30)
/* 805D1F2C  54 00 10 3A */	slwi r0, r0, 2
/* 805D1F30  7C 84 02 14 */	add r4, r4, r0
/* 805D1F34  80 84 00 0C */	lwz r4, 0xc(r4)
/* 805D1F38  38 A0 00 00 */	li r5, 0
/* 805D1F3C  C0 3F 03 B8 */	lfs f1, 0x3b8(r31)
/* 805D1F40  C0 5F 00 08 */	lfs f2, 8(r31)
/* 805D1F44  4B FF 9B 85 */	bl setBck__8daB_DS_cFiUcff
/* 805D1F48  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805D1F4C  D0 1E 07 FC */	stfs f0, 0x7fc(r30)
/* 805D1F50  38 00 00 04 */	li r0, 4
/* 805D1F54  90 1E 06 84 */	stw r0, 0x684(r30)
/* 805D1F58  48 00 00 CC */	b lbl_805D2024
lbl_805D1F5C:
/* 805D1F5C  3C 80 80 5E */	lis r4, Ds_Etc_damage_id@ha
/* 805D1F60  38 84 D5 B8 */	addi r4, r4, Ds_Etc_damage_id@l
/* 805D1F64  88 1E 08 4F */	lbz r0, 0x84f(r30)
/* 805D1F68  54 00 10 3A */	slwi r0, r0, 2
/* 805D1F6C  7C 84 02 14 */	add r4, r4, r0
/* 805D1F70  80 84 00 18 */	lwz r4, 0x18(r4)
/* 805D1F74  38 A0 00 00 */	li r5, 0
/* 805D1F78  C0 3F 03 B8 */	lfs f1, 0x3b8(r31)
/* 805D1F7C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 805D1F80  4B FF 9B 49 */	bl setBck__8daB_DS_cFiUcff
/* 805D1F84  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805D1F88  D0 1E 07 FC */	stfs f0, 0x7fc(r30)
/* 805D1F8C  38 00 00 05 */	li r0, 5
/* 805D1F90  90 1E 06 84 */	stw r0, 0x684(r30)
/* 805D1F94  48 00 00 90 */	b lbl_805D2024
lbl_805D1F98:
/* 805D1F98  80 9E 05 B4 */	lwz r4, 0x5b4(r30)
/* 805D1F9C  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 805D1FA0  88 1E 08 4F */	lbz r0, 0x84f(r30)
/* 805D1FA4  54 00 10 3A */	slwi r0, r0, 2
/* 805D1FA8  3C 80 80 5E */	lis r4, smokeSet_dt@ha
/* 805D1FAC  38 84 D5 DC */	addi r4, r4, smokeSet_dt@l
/* 805D1FB0  7C 84 00 2E */	lwzx r4, r4, r0
/* 805D1FB4  FC 00 00 1E */	fctiwz f0, f0
/* 805D1FB8  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 805D1FBC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805D1FC0  7C 04 00 00 */	cmpw r4, r0
/* 805D1FC4  40 82 00 20 */	bne lbl_805D1FE4
/* 805D1FC8  2C 05 00 04 */	cmpwi r5, 4
/* 805D1FCC  40 82 00 10 */	bne lbl_805D1FDC
/* 805D1FD0  38 80 00 01 */	li r4, 1
/* 805D1FD4  4B FF A1 85 */	bl hand_smokeSet__8daB_DS_cFUc
/* 805D1FD8  48 00 00 0C */	b lbl_805D1FE4
lbl_805D1FDC:
/* 805D1FDC  38 80 00 02 */	li r4, 2
/* 805D1FE0  4B FF A1 79 */	bl hand_smokeSet__8daB_DS_cFUc
lbl_805D1FE4:
/* 805D1FE4  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 805D1FE8  38 80 00 01 */	li r4, 1
/* 805D1FEC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805D1FF0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805D1FF4  40 82 00 18 */	bne lbl_805D200C
/* 805D1FF8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805D1FFC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805D2000  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805D2004  41 82 00 08 */	beq lbl_805D200C
/* 805D2008  38 80 00 00 */	li r4, 0
lbl_805D200C:
/* 805D200C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805D2010  41 82 00 14 */	beq lbl_805D2024
/* 805D2014  7F C3 F3 78 */	mr r3, r30
/* 805D2018  38 80 00 00 */	li r4, 0
/* 805D201C  38 A0 00 00 */	li r5, 0
/* 805D2020  4B FF 9B 55 */	bl setActionMode__8daB_DS_cFii
lbl_805D2024:
/* 805D2024  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 805D2028  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 805D202C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805D2030  7C 08 03 A6 */	mtlr r0
/* 805D2034  38 21 00 30 */	addi r1, r1, 0x30
/* 805D2038  4E 80 00 20 */	blr 
