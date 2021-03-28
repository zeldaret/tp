lbl_8073F8C8:
/* 8073F8C8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8073F8CC  7C 08 02 A6 */	mflr r0
/* 8073F8D0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8073F8D4  39 61 00 30 */	addi r11, r1, 0x30
/* 8073F8D8  4B C2 29 04 */	b _savegpr_29
/* 8073F8DC  7C 7E 1B 78 */	mr r30, r3
/* 8073F8E0  3C 60 80 74 */	lis r3, lit_3767@ha
/* 8073F8E4  3B E3 1B F4 */	addi r31, r3, lit_3767@l
/* 8073F8E8  80 1E 06 28 */	lwz r0, 0x628(r30)
/* 8073F8EC  2C 00 00 06 */	cmpwi r0, 6
/* 8073F8F0  41 82 00 14 */	beq lbl_8073F904
/* 8073F8F4  2C 00 00 0B */	cmpwi r0, 0xb
/* 8073F8F8  41 82 00 0C */	beq lbl_8073F904
/* 8073F8FC  2C 00 00 0C */	cmpwi r0, 0xc
/* 8073F900  40 82 00 FC */	bne lbl_8073F9FC
lbl_8073F904:
/* 8073F904  80 7E 07 1C */	lwz r3, 0x71c(r30)
/* 8073F908  38 80 00 01 */	li r4, 1
/* 8073F90C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8073F910  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8073F914  40 82 00 18 */	bne lbl_8073F92C
/* 8073F918  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8073F91C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8073F920  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8073F924  41 82 00 08 */	beq lbl_8073F92C
/* 8073F928  38 80 00 00 */	li r4, 0
lbl_8073F92C:
/* 8073F92C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8073F930  41 82 00 1C */	beq lbl_8073F94C
/* 8073F934  7F C3 F3 78 */	mr r3, r30
/* 8073F938  38 80 00 0E */	li r4, 0xe
/* 8073F93C  38 A0 00 02 */	li r5, 2
/* 8073F940  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 8073F944  C0 5E 06 24 */	lfs f2, 0x624(r30)
/* 8073F948  4B FF E1 E1 */	bl SetAnm__8daE_PH_cFiiff
lbl_8073F94C:
/* 8073F94C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8073F950  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 8073F954  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 8073F958  38 00 00 FF */	li r0, 0xff
/* 8073F95C  90 01 00 08 */	stw r0, 8(r1)
/* 8073F960  38 80 00 00 */	li r4, 0
/* 8073F964  90 81 00 0C */	stw r4, 0xc(r1)
/* 8073F968  38 00 FF FF */	li r0, -1
/* 8073F96C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8073F970  90 81 00 14 */	stw r4, 0x14(r1)
/* 8073F974  90 81 00 18 */	stw r4, 0x18(r1)
/* 8073F978  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8073F97C  80 9E 05 F8 */	lwz r4, 0x5f8(r30)
/* 8073F980  38 A0 00 00 */	li r5, 0
/* 8073F984  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000878C@ha */
/* 8073F988  38 C6 87 8C */	addi r6, r6, 0x878C /* 0x0000878C@l */
/* 8073F98C  38 FE 04 D0 */	addi r7, r30, 0x4d0
/* 8073F990  39 1E 01 0C */	addi r8, r30, 0x10c
/* 8073F994  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 8073F998  39 40 00 00 */	li r10, 0
/* 8073F99C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8073F9A0  4B 90 DB 2C */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8073F9A4  90 7E 05 F8 */	stw r3, 0x5f8(r30)
/* 8073F9A8  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 8073F9AC  38 00 00 FF */	li r0, 0xff
/* 8073F9B0  90 01 00 08 */	stw r0, 8(r1)
/* 8073F9B4  38 80 00 00 */	li r4, 0
/* 8073F9B8  90 81 00 0C */	stw r4, 0xc(r1)
/* 8073F9BC  38 00 FF FF */	li r0, -1
/* 8073F9C0  90 01 00 10 */	stw r0, 0x10(r1)
/* 8073F9C4  90 81 00 14 */	stw r4, 0x14(r1)
/* 8073F9C8  90 81 00 18 */	stw r4, 0x18(r1)
/* 8073F9CC  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8073F9D0  80 9E 05 FC */	lwz r4, 0x5fc(r30)
/* 8073F9D4  38 A0 00 00 */	li r5, 0
/* 8073F9D8  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000878D@ha */
/* 8073F9DC  38 C6 87 8D */	addi r6, r6, 0x878D /* 0x0000878D@l */
/* 8073F9E0  38 FE 04 D0 */	addi r7, r30, 0x4d0
/* 8073F9E4  39 1E 01 0C */	addi r8, r30, 0x10c
/* 8073F9E8  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 8073F9EC  39 40 00 00 */	li r10, 0
/* 8073F9F0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8073F9F4  4B 90 DA D8 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8073F9F8  90 7E 05 FC */	stw r3, 0x5fc(r30)
lbl_8073F9FC:
/* 8073F9FC  80 1E 06 28 */	lwz r0, 0x628(r30)
/* 8073FA00  2C 00 00 0E */	cmpwi r0, 0xe
/* 8073FA04  40 82 00 B8 */	bne lbl_8073FABC
/* 8073FA08  7F C3 F3 78 */	mr r3, r30
/* 8073FA0C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8073FA10  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8073FA14  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8073FA18  4B 8D AD C8 */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8073FA1C  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 8073FA20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8073FA24  40 80 00 58 */	bge lbl_8073FA7C
/* 8073FA28  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8073FA2C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8073FA30  80 03 5F 1C */	lwz r0, 0x5f1c(r3)
/* 8073FA34  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 8073FA38  41 82 00 44 */	beq lbl_8073FA7C
/* 8073FA3C  38 00 00 00 */	li r0, 0
/* 8073FA40  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 8073FA44  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 8073FA48  D0 1E 06 30 */	stfs f0, 0x630(r30)
/* 8073FA4C  38 00 00 0F */	li r0, 0xf
/* 8073FA50  B0 1E 05 AE */	sth r0, 0x5ae(r30)
/* 8073FA54  38 00 10 00 */	li r0, 0x1000
/* 8073FA58  B0 1E 06 16 */	sth r0, 0x616(r30)
/* 8073FA5C  B0 1E 06 18 */	sth r0, 0x618(r30)
/* 8073FA60  7F C3 F3 78 */	mr r3, r30
/* 8073FA64  38 80 00 0C */	li r4, 0xc
/* 8073FA68  38 A0 00 02 */	li r5, 2
/* 8073FA6C  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 8073FA70  C0 5E 06 24 */	lfs f2, 0x624(r30)
/* 8073FA74  4B FF E0 B5 */	bl SetAnm__8daE_PH_cFiiff
/* 8073FA78  48 00 00 E0 */	b lbl_8073FB58
lbl_8073FA7C:
/* 8073FA7C  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 8073FA80  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 8073FA84  41 82 00 10 */	beq lbl_8073FA94
/* 8073FA88  38 00 00 00 */	li r0, 0
/* 8073FA8C  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 8073FA90  48 00 00 C8 */	b lbl_8073FB58
lbl_8073FA94:
/* 8073FA94  80 1E 06 28 */	lwz r0, 0x628(r30)
/* 8073FA98  2C 00 00 0E */	cmpwi r0, 0xe
/* 8073FA9C  41 82 00 BC */	beq lbl_8073FB58
/* 8073FAA0  7F C3 F3 78 */	mr r3, r30
/* 8073FAA4  38 80 00 0E */	li r4, 0xe
/* 8073FAA8  38 A0 00 02 */	li r5, 2
/* 8073FAAC  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 8073FAB0  C0 5E 06 24 */	lfs f2, 0x624(r30)
/* 8073FAB4  4B FF E0 75 */	bl SetAnm__8daE_PH_cFiiff
/* 8073FAB8  48 00 00 A0 */	b lbl_8073FB58
lbl_8073FABC:
/* 8073FABC  2C 00 00 0C */	cmpwi r0, 0xc
/* 8073FAC0  40 82 00 48 */	bne lbl_8073FB08
/* 8073FAC4  38 00 00 00 */	li r0, 0
/* 8073FAC8  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 8073FACC  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 8073FAD0  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 8073FAD4  41 82 00 18 */	beq lbl_8073FAEC
/* 8073FAD8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8073FADC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8073FAE0  80 03 5F 1C */	lwz r0, 0x5f1c(r3)
/* 8073FAE4  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 8073FAE8  40 82 00 70 */	bne lbl_8073FB58
lbl_8073FAEC:
/* 8073FAEC  7F C3 F3 78 */	mr r3, r30
/* 8073FAF0  38 80 00 0A */	li r4, 0xa
/* 8073FAF4  38 A0 00 00 */	li r5, 0
/* 8073FAF8  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 8073FAFC  C0 5E 06 24 */	lfs f2, 0x624(r30)
/* 8073FB00  4B FF E0 29 */	bl SetAnm__8daE_PH_cFiiff
/* 8073FB04  48 00 00 54 */	b lbl_8073FB58
lbl_8073FB08:
/* 8073FB08  2C 00 00 0A */	cmpwi r0, 0xa
/* 8073FB0C  40 82 00 4C */	bne lbl_8073FB58
/* 8073FB10  80 7E 07 1C */	lwz r3, 0x71c(r30)
/* 8073FB14  38 80 00 01 */	li r4, 1
/* 8073FB18  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8073FB1C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8073FB20  40 82 00 18 */	bne lbl_8073FB38
/* 8073FB24  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8073FB28  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8073FB2C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8073FB30  41 82 00 08 */	beq lbl_8073FB38
/* 8073FB34  38 80 00 00 */	li r4, 0
lbl_8073FB38:
/* 8073FB38  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8073FB3C  41 82 00 1C */	beq lbl_8073FB58
/* 8073FB40  7F C3 F3 78 */	mr r3, r30
/* 8073FB44  38 80 00 0E */	li r4, 0xe
/* 8073FB48  38 A0 00 02 */	li r5, 2
/* 8073FB4C  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 8073FB50  C0 5E 06 24 */	lfs f2, 0x624(r30)
/* 8073FB54  4B FF DF D5 */	bl SetAnm__8daE_PH_cFiiff
lbl_8073FB58:
/* 8073FB58  39 61 00 30 */	addi r11, r1, 0x30
/* 8073FB5C  4B C2 26 CC */	b _restgpr_29
/* 8073FB60  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8073FB64  7C 08 03 A6 */	mtlr r0
/* 8073FB68  38 21 00 30 */	addi r1, r1, 0x30
/* 8073FB6C  4E 80 00 20 */	blr 
