lbl_807A3B38:
/* 807A3B38  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 807A3B3C  7C 08 02 A6 */	mflr r0
/* 807A3B40  90 01 00 44 */	stw r0, 0x44(r1)
/* 807A3B44  39 61 00 40 */	addi r11, r1, 0x40
/* 807A3B48  4B BB E6 94 */	b _savegpr_29
/* 807A3B4C  7C 7E 1B 78 */	mr r30, r3
/* 807A3B50  3C 60 80 7A */	lis r3, lit_3903@ha
/* 807A3B54  3B E3 68 24 */	addi r31, r3, lit_3903@l
/* 807A3B58  38 7E 0A 38 */	addi r3, r30, 0xa38
/* 807A3B5C  4B 8D FC D4 */	b Move__10dCcD_GSttsFv
/* 807A3B60  A8 1E 06 8A */	lha r0, 0x68a(r30)
/* 807A3B64  2C 00 00 00 */	cmpwi r0, 0
/* 807A3B68  40 82 02 C4 */	bne lbl_807A3E2C
/* 807A3B6C  38 7E 0A 5C */	addi r3, r30, 0xa5c
/* 807A3B70  4B 8E 08 F0 */	b ChkTgHit__12dCcD_GObjInfFv
/* 807A3B74  28 03 00 00 */	cmplwi r3, 0
/* 807A3B78  41 82 01 88 */	beq lbl_807A3D00
/* 807A3B7C  38 7E 0A 5C */	addi r3, r30, 0xa5c
/* 807A3B80  4B 8E 09 78 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 807A3B84  90 7E 0C D0 */	stw r3, 0xcd0(r30)
/* 807A3B88  80 7E 0C D0 */	lwz r3, 0xcd0(r30)
/* 807A3B8C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 807A3B90  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 807A3B94  41 82 00 20 */	beq lbl_807A3BB4
/* 807A3B98  38 00 00 37 */	li r0, 0x37
/* 807A3B9C  B0 1E 06 7E */	sth r0, 0x67e(r30)
/* 807A3BA0  38 00 00 00 */	li r0, 0
/* 807A3BA4  B0 1E 06 80 */	sth r0, 0x680(r30)
/* 807A3BA8  38 00 00 0A */	li r0, 0xa
/* 807A3BAC  B0 1E 06 8A */	sth r0, 0x68a(r30)
/* 807A3BB0  48 00 02 7C */	b lbl_807A3E2C
lbl_807A3BB4:
/* 807A3BB4  7F C3 F3 78 */	mr r3, r30
/* 807A3BB8  38 9E 0C D0 */	addi r4, r30, 0xcd0
/* 807A3BBC  4B 8E 40 48 */	b cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 807A3BC0  38 60 00 0A */	li r3, 0xa
/* 807A3BC4  B0 7E 06 8A */	sth r3, 0x68a(r30)
/* 807A3BC8  88 1E 0C F0 */	lbz r0, 0xcf0(r30)
/* 807A3BCC  28 00 00 10 */	cmplwi r0, 0x10
/* 807A3BD0  40 82 00 20 */	bne lbl_807A3BF0
/* 807A3BD4  38 00 00 36 */	li r0, 0x36
/* 807A3BD8  B0 1E 06 7E */	sth r0, 0x67e(r30)
/* 807A3BDC  38 00 00 00 */	li r0, 0
/* 807A3BE0  B0 1E 06 80 */	sth r0, 0x680(r30)
/* 807A3BE4  C0 1F 01 34 */	lfs f0, 0x134(r31)
/* 807A3BE8  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 807A3BEC  48 00 01 14 */	b lbl_807A3D00
lbl_807A3BF0:
/* 807A3BF0  A8 1E 05 62 */	lha r0, 0x562(r30)
/* 807A3BF4  2C 00 00 00 */	cmpwi r0, 0
/* 807A3BF8  41 81 00 4C */	bgt lbl_807A3C44
/* 807A3BFC  38 00 00 39 */	li r0, 0x39
/* 807A3C00  B0 1E 06 7E */	sth r0, 0x67e(r30)
/* 807A3C04  B0 7E 06 80 */	sth r3, 0x680(r30)
/* 807A3C08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807A3C0C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807A3C10  80 83 5D AC */	lwz r4, 0x5dac(r3)
/* 807A3C14  80 04 05 88 */	lwz r0, 0x588(r4)
/* 807A3C18  64 00 01 00 */	oris r0, r0, 0x100
/* 807A3C1C  90 04 05 88 */	stw r0, 0x588(r4)
/* 807A3C20  C0 1F 01 38 */	lfs f0, 0x138(r31)
/* 807A3C24  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 807A3C28  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 807A3C2C  80 03 05 88 */	lwz r0, 0x588(r3)
/* 807A3C30  64 00 01 00 */	oris r0, r0, 0x100
/* 807A3C34  90 03 05 88 */	stw r0, 0x588(r3)
/* 807A3C38  38 00 00 01 */	li r0, 1
/* 807A3C3C  98 1E 07 E4 */	stb r0, 0x7e4(r30)
/* 807A3C40  48 00 00 C0 */	b lbl_807A3D00
lbl_807A3C44:
/* 807A3C44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807A3C48  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 807A3C4C  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 807A3C50  88 03 05 68 */	lbz r0, 0x568(r3)
/* 807A3C54  28 00 00 0A */	cmplwi r0, 0xa
/* 807A3C58  40 82 00 24 */	bne lbl_807A3C7C
/* 807A3C5C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 807A3C60  81 8C 01 3C */	lwz r12, 0x13c(r12)
/* 807A3C64  7D 89 03 A6 */	mtctr r12
/* 807A3C68  4E 80 04 21 */	bctrl 
/* 807A3C6C  2C 03 00 00 */	cmpwi r3, 0
/* 807A3C70  41 82 00 0C */	beq lbl_807A3C7C
/* 807A3C74  38 00 00 03 */	li r0, 3
/* 807A3C78  B0 1E 06 8A */	sth r0, 0x68a(r30)
lbl_807A3C7C:
/* 807A3C7C  88 1E 0C F0 */	lbz r0, 0xcf0(r30)
/* 807A3C80  28 00 00 01 */	cmplwi r0, 1
/* 807A3C84  40 82 00 38 */	bne lbl_807A3CBC
/* 807A3C88  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 807A3C8C  88 03 05 68 */	lbz r0, 0x568(r3)
/* 807A3C90  28 00 00 08 */	cmplwi r0, 8
/* 807A3C94  41 82 00 0C */	beq lbl_807A3CA0
/* 807A3C98  28 00 00 09 */	cmplwi r0, 9
/* 807A3C9C  40 82 00 20 */	bne lbl_807A3CBC
lbl_807A3CA0:
/* 807A3CA0  38 00 00 38 */	li r0, 0x38
/* 807A3CA4  B0 1E 06 7E */	sth r0, 0x67e(r30)
/* 807A3CA8  C0 1F 01 38 */	lfs f0, 0x138(r31)
/* 807A3CAC  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 807A3CB0  38 00 00 1E */	li r0, 0x1e
/* 807A3CB4  B0 1E 06 8A */	sth r0, 0x68a(r30)
/* 807A3CB8  48 00 00 40 */	b lbl_807A3CF8
lbl_807A3CBC:
/* 807A3CBC  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 807A3CC0  88 03 05 69 */	lbz r0, 0x569(r3)
/* 807A3CC4  28 00 00 04 */	cmplwi r0, 4
/* 807A3CC8  41 80 00 20 */	blt lbl_807A3CE8
/* 807A3CCC  38 00 00 38 */	li r0, 0x38
/* 807A3CD0  B0 1E 06 7E */	sth r0, 0x67e(r30)
/* 807A3CD4  C0 1F 01 38 */	lfs f0, 0x138(r31)
/* 807A3CD8  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 807A3CDC  38 00 00 14 */	li r0, 0x14
/* 807A3CE0  B0 1E 06 8A */	sth r0, 0x68a(r30)
/* 807A3CE4  48 00 00 14 */	b lbl_807A3CF8
lbl_807A3CE8:
/* 807A3CE8  38 00 00 35 */	li r0, 0x35
/* 807A3CEC  B0 1E 06 7E */	sth r0, 0x67e(r30)
/* 807A3CF0  C0 1F 01 3C */	lfs f0, 0x13c(r31)
/* 807A3CF4  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_807A3CF8:
/* 807A3CF8  38 00 00 00 */	li r0, 0
/* 807A3CFC  B0 1E 06 80 */	sth r0, 0x680(r30)
lbl_807A3D00:
/* 807A3D00  A8 1E 05 62 */	lha r0, 0x562(r30)
/* 807A3D04  2C 00 00 0A */	cmpwi r0, 0xa
/* 807A3D08  41 81 00 14 */	bgt lbl_807A3D1C
/* 807A3D0C  38 00 00 00 */	li r0, 0
/* 807A3D10  B0 1E 05 62 */	sth r0, 0x562(r30)
/* 807A3D14  38 00 00 03 */	li r0, 3
/* 807A3D18  98 1E 0B 16 */	stb r0, 0xb16(r30)
lbl_807A3D1C:
/* 807A3D1C  A8 1E 06 8C */	lha r0, 0x68c(r30)
/* 807A3D20  2C 00 00 00 */	cmpwi r0, 0
/* 807A3D24  40 82 01 08 */	bne lbl_807A3E2C
/* 807A3D28  38 7E 0C F8 */	addi r3, r30, 0xcf8
/* 807A3D2C  4B 8E 07 34 */	b ChkTgHit__12dCcD_GObjInfFv
/* 807A3D30  28 03 00 00 */	cmplwi r3, 0
/* 807A3D34  41 82 00 F8 */	beq lbl_807A3E2C
/* 807A3D38  38 7E 0C F8 */	addi r3, r30, 0xcf8
/* 807A3D3C  4B 8E 07 BC */	b GetTgHitObj__12dCcD_GObjInfFv
/* 807A3D40  7C 64 1B 78 */	mr r4, r3
/* 807A3D44  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 807A3D48  38 A0 00 34 */	li r5, 0x34
/* 807A3D4C  38 C0 00 00 */	li r6, 0
/* 807A3D50  4B 8E 37 C4 */	b def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c
/* 807A3D54  38 00 00 04 */	li r0, 4
/* 807A3D58  3C 60 80 45 */	lis r3, struct_80451124+0x1@ha
/* 807A3D5C  98 03 11 25 */	stb r0, struct_80451124+0x1@l(r3)
/* 807A3D60  38 00 00 0A */	li r0, 0xa
/* 807A3D64  B0 1E 06 8C */	sth r0, 0x68c(r30)
/* 807A3D68  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807A3D6C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 807A3D70  80 63 00 00 */	lwz r3, 0(r3)
/* 807A3D74  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 807A3D78  4B 86 86 64 */	b mDoMtx_YrotS__FPA4_fs
/* 807A3D7C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807A3D80  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807A3D84  C0 1F 00 00 */	lfs f0, 0(r31)
/* 807A3D88  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807A3D8C  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 807A3D90  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807A3D94  38 61 00 18 */	addi r3, r1, 0x18
/* 807A3D98  38 81 00 0C */	addi r4, r1, 0xc
/* 807A3D9C  4B AC D1 50 */	b MtxPosition__FP4cXyzP4cXyz
/* 807A3DA0  38 61 00 0C */	addi r3, r1, 0xc
/* 807A3DA4  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 807A3DA8  7C 65 1B 78 */	mr r5, r3
/* 807A3DAC  4B BA 32 E4 */	b PSVECAdd
/* 807A3DB0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807A3DB4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807A3DB8  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 807A3DBC  38 80 00 02 */	li r4, 2
/* 807A3DC0  38 A0 00 00 */	li r5, 0
/* 807A3DC4  38 C1 00 0C */	addi r6, r1, 0xc
/* 807A3DC8  38 FE 04 E4 */	addi r7, r30, 0x4e4
/* 807A3DCC  39 00 00 00 */	li r8, 0
/* 807A3DD0  39 20 00 00 */	li r9, 0
/* 807A3DD4  4B 8A 84 44 */	b setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
/* 807A3DD8  80 1E 06 74 */	lwz r0, 0x674(r30)
/* 807A3DDC  2C 00 00 0B */	cmpwi r0, 0xb
/* 807A3DE0  40 82 00 44 */	bne lbl_807A3E24
/* 807A3DE4  7F C3 F3 78 */	mr r3, r30
/* 807A3DE8  38 80 00 0C */	li r4, 0xc
/* 807A3DEC  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 807A3DF0  38 A0 00 00 */	li r5, 0
/* 807A3DF4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807A3DF8  4B FF A0 55 */	bl anm_init__FP10e_st_classifUcf
/* 807A3DFC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070167@ha */
/* 807A3E00  38 03 01 67 */	addi r0, r3, 0x0167 /* 0x00070167@l */
/* 807A3E04  90 01 00 08 */	stw r0, 8(r1)
/* 807A3E08  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 807A3E0C  38 81 00 08 */	addi r4, r1, 8
/* 807A3E10  38 A0 FF FF */	li r5, -1
/* 807A3E14  81 9E 05 D0 */	lwz r12, 0x5d0(r30)
/* 807A3E18  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807A3E1C  7D 89 03 A6 */	mtctr r12
/* 807A3E20  4E 80 04 21 */	bctrl 
lbl_807A3E24:
/* 807A3E24  C0 1F 01 40 */	lfs f0, 0x140(r31)
/* 807A3E28  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_807A3E2C:
/* 807A3E2C  39 61 00 40 */	addi r11, r1, 0x40
/* 807A3E30  4B BB E3 F8 */	b _restgpr_29
/* 807A3E34  80 01 00 44 */	lwz r0, 0x44(r1)
/* 807A3E38  7C 08 03 A6 */	mtlr r0
/* 807A3E3C  38 21 00 40 */	addi r1, r1, 0x40
/* 807A3E40  4E 80 00 20 */	blr 
