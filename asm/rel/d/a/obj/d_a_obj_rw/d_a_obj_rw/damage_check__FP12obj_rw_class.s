lbl_80CC2BA4:
/* 80CC2BA4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80CC2BA8  7C 08 02 A6 */	mflr r0
/* 80CC2BAC  90 01 00 54 */	stw r0, 0x54(r1)
/* 80CC2BB0  39 61 00 50 */	addi r11, r1, 0x50
/* 80CC2BB4  4B 69 F6 18 */	b _savegpr_25
/* 80CC2BB8  7C 7E 1B 78 */	mr r30, r3
/* 80CC2BBC  3C 60 80 CC */	lis r3, lit_3649@ha
/* 80CC2BC0  3B E3 3A F4 */	addi r31, r3, lit_3649@l
/* 80CC2BC4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CC2BC8  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
/* 80CC2BCC  83 5C 5D AC */	lwz r26, 0x5dac(r28)
/* 80CC2BD0  38 7E 06 94 */	addi r3, r30, 0x694
/* 80CC2BD4  4B 3C 0C 5C */	b Move__10dCcD_GSttsFv
/* 80CC2BD8  A8 1E 06 6A */	lha r0, 0x66a(r30)
/* 80CC2BDC  2C 00 00 00 */	cmpwi r0, 0
/* 80CC2BE0  40 82 02 68 */	bne lbl_80CC2E48
/* 80CC2BE4  3B 20 00 00 */	li r25, 0
/* 80CC2BE8  3B A0 00 00 */	li r29, 0
lbl_80CC2BEC:
/* 80CC2BEC  3B 7D 06 B4 */	addi r27, r29, 0x6b4
/* 80CC2BF0  7F 7E DA 14 */	add r27, r30, r27
/* 80CC2BF4  7F 63 DB 78 */	mr r3, r27
/* 80CC2BF8  4B 3C 18 68 */	b ChkTgHit__12dCcD_GObjInfFv
/* 80CC2BFC  28 03 00 00 */	cmplwi r3, 0
/* 80CC2C00  41 82 01 D4 */	beq lbl_80CC2DD4
/* 80CC2C04  7F 63 DB 78 */	mr r3, r27
/* 80CC2C08  4B 3C 18 F0 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 80CC2C0C  90 7E 0E 14 */	stw r3, 0xe14(r30)
/* 80CC2C10  7F C3 F3 78 */	mr r3, r30
/* 80CC2C14  38 9E 0E 14 */	addi r4, r30, 0xe14
/* 80CC2C18  4B 3C 4F EC */	b cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 80CC2C1C  88 1A 05 68 */	lbz r0, 0x568(r26)
/* 80CC2C20  28 00 00 0A */	cmplwi r0, 0xa
/* 80CC2C24  40 82 00 2C */	bne lbl_80CC2C50
/* 80CC2C28  7F 43 D3 78 */	mr r3, r26
/* 80CC2C2C  81 9A 06 28 */	lwz r12, 0x628(r26)
/* 80CC2C30  81 8C 01 3C */	lwz r12, 0x13c(r12)
/* 80CC2C34  7D 89 03 A6 */	mtctr r12
/* 80CC2C38  4E 80 04 21 */	bctrl 
/* 80CC2C3C  2C 03 00 00 */	cmpwi r3, 0
/* 80CC2C40  41 82 00 10 */	beq lbl_80CC2C50
/* 80CC2C44  38 00 00 03 */	li r0, 3
/* 80CC2C48  B0 1E 06 6A */	sth r0, 0x66a(r30)
/* 80CC2C4C  48 00 00 0C */	b lbl_80CC2C58
lbl_80CC2C50:
/* 80CC2C50  38 00 00 0A */	li r0, 0xa
/* 80CC2C54  B0 1E 06 6A */	sth r0, 0x66a(r30)
lbl_80CC2C58:
/* 80CC2C58  C0 3E 06 6C */	lfs f1, 0x66c(r30)
/* 80CC2C5C  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80CC2C60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CC2C64  40 80 00 38 */	bge lbl_80CC2C9C
/* 80CC2C68  7F C3 F3 78 */	mr r3, r30
/* 80CC2C6C  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80CC2C70  4B 35 7A A0 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80CC2C74  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80CC2C78  38 04 40 00 */	addi r0, r4, 0x4000
/* 80CC2C7C  7C 03 00 50 */	subf r0, r3, r0
/* 80CC2C80  7C 00 07 35 */	extsh. r0, r0
/* 80CC2C84  40 80 00 10 */	bge lbl_80CC2C94
/* 80CC2C88  38 00 00 00 */	li r0, 0
/* 80CC2C8C  B0 1E 06 72 */	sth r0, 0x672(r30)
/* 80CC2C90  48 00 00 0C */	b lbl_80CC2C9C
lbl_80CC2C94:
/* 80CC2C94  38 00 80 00 */	li r0, -32768
/* 80CC2C98  B0 1E 06 72 */	sth r0, 0x672(r30)
lbl_80CC2C9C:
/* 80CC2C9C  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80CC2CA0  D0 1E 06 6C */	stfs f0, 0x66c(r30)
/* 80CC2CA4  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80CC2CA8  4B 5A 4C AC */	b cM_rndF__Ff
/* 80CC2CAC  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80CC2CB0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CC2CB4  40 80 00 68 */	bge lbl_80CC2D1C
/* 80CC2CB8  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80CC2CBC  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80CC2CC0  80 63 00 00 */	lwz r3, 0(r3)
/* 80CC2CC4  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80CC2CC8  4B 34 97 14 */	b mDoMtx_YrotS__FPA4_fs
/* 80CC2CCC  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80CC2CD0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80CC2CD4  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80CC2CD8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80CC2CDC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80CC2CE0  38 61 00 20 */	addi r3, r1, 0x20
/* 80CC2CE4  38 81 00 14 */	addi r4, r1, 0x14
/* 80CC2CE8  4B 5A E2 04 */	b MtxPosition__FP4cXyzP4cXyz
/* 80CC2CEC  38 61 00 14 */	addi r3, r1, 0x14
/* 80CC2CF0  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80CC2CF4  7C 65 1B 78 */	mr r5, r3
/* 80CC2CF8  4B 68 43 98 */	b PSVECAdd
/* 80CC2CFC  38 61 00 14 */	addi r3, r1, 0x14
/* 80CC2D00  38 80 00 00 */	li r4, 0
/* 80CC2D04  38 A0 FF FF */	li r5, -1
/* 80CC2D08  38 C0 FF FF */	li r6, -1
/* 80CC2D0C  38 E0 00 00 */	li r7, 0
/* 80CC2D10  39 00 00 00 */	li r8, 0
/* 80CC2D14  39 20 00 00 */	li r9, 0
/* 80CC2D18  4B 35 95 28 */	b fopAcM_createItem__FPC4cXyziiiPC5csXyzPC4cXyzi
lbl_80CC2D1C:
/* 80CC2D1C  38 00 00 0F */	li r0, 0xf
/* 80CC2D20  B0 1E 06 74 */	sth r0, 0x674(r30)
/* 80CC2D24  A8 1E 05 62 */	lha r0, 0x562(r30)
/* 80CC2D28  2C 00 00 00 */	cmpwi r0, 0
/* 80CC2D2C  41 81 00 B8 */	bgt lbl_80CC2DE4
/* 80CC2D30  38 00 00 01 */	li r0, 1
/* 80CC2D34  98 1E 0E 38 */	stb r0, 0xe38(r30)
/* 80CC2D38  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80CC2D3C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80CC2D40  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80CC2D44  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80CC2D48  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80CC2D4C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80CC2D50  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80CC2D54  EC 01 00 2A */	fadds f0, f1, f0
/* 80CC2D58  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80CC2D5C  7F C3 F3 78 */	mr r3, r30
/* 80CC2D60  38 81 00 14 */	addi r4, r1, 0x14
/* 80CC2D64  38 A0 00 14 */	li r5, 0x14
/* 80CC2D68  38 C0 00 00 */	li r6, 0
/* 80CC2D6C  88 FE 05 64 */	lbz r7, 0x564(r30)
/* 80CC2D70  4B 35 9D 68 */	b fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
/* 80CC2D74  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80CC2D78  D0 01 00 08 */	stfs f0, 8(r1)
/* 80CC2D7C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80CC2D80  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CC2D84  38 61 00 14 */	addi r3, r1, 0x14
/* 80CC2D88  38 80 00 21 */	li r4, 0x21
/* 80CC2D8C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80CC2D90  7C 05 07 74 */	extsb r5, r0
/* 80CC2D94  38 DE 04 E4 */	addi r6, r30, 0x4e4
/* 80CC2D98  38 E1 00 08 */	addi r7, r1, 8
/* 80CC2D9C  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80CC2DA0  FC 40 08 90 */	fmr f2, f1
/* 80CC2DA4  89 1E 05 64 */	lbz r8, 0x564(r30)
/* 80CC2DA8  4B 35 93 2C */	b fopAcM_createItemForBoss__FPC4cXyziiPC5csXyzPC4cXyzffi
/* 80CC2DAC  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80CC2DB0  54 04 46 3E */	srwi r4, r0, 0x18
/* 80CC2DB4  2C 04 00 FF */	cmpwi r4, 0xff
/* 80CC2DB8  41 82 00 2C */	beq lbl_80CC2DE4
/* 80CC2DBC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CC2DC0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CC2DC4  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80CC2DC8  7C 05 07 74 */	extsb r5, r0
/* 80CC2DCC  4B 37 24 34 */	b onSwitch__10dSv_info_cFii
/* 80CC2DD0  48 00 00 14 */	b lbl_80CC2DE4
lbl_80CC2DD4:
/* 80CC2DD4  3B 39 00 01 */	addi r25, r25, 1
/* 80CC2DD8  2C 19 00 02 */	cmpwi r25, 2
/* 80CC2DDC  3B BD 01 38 */	addi r29, r29, 0x138
/* 80CC2DE0  41 80 FE 0C */	blt lbl_80CC2BEC
lbl_80CC2DE4:
/* 80CC2DE4  3B 20 00 00 */	li r25, 0
/* 80CC2DE8  3B A0 00 00 */	li r29, 0
lbl_80CC2DEC:
/* 80CC2DEC  3B 7D 09 24 */	addi r27, r29, 0x924
/* 80CC2DF0  7F 7E DA 14 */	add r27, r30, r27
/* 80CC2DF4  7F 63 DB 78 */	mr r3, r27
/* 80CC2DF8  4B 3C 16 68 */	b ChkTgHit__12dCcD_GObjInfFv
/* 80CC2DFC  28 03 00 00 */	cmplwi r3, 0
/* 80CC2E00  41 82 00 38 */	beq lbl_80CC2E38
/* 80CC2E04  38 00 00 0A */	li r0, 0xa
/* 80CC2E08  B0 1E 06 6A */	sth r0, 0x66a(r30)
/* 80CC2E0C  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80CC2E10  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80CC2E14  7C 04 07 74 */	extsb r4, r0
/* 80CC2E18  7F 65 DB 78 */	mr r5, r27
/* 80CC2E1C  38 C0 00 0B */	li r6, 0xb
/* 80CC2E20  4B 37 4A E0 */	b HitSeStart__5daObjFPC4cXyziPC12dCcD_GObjInfUl
/* 80CC2E24  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80CC2E28  D0 1E 06 6C */	stfs f0, 0x66c(r30)
/* 80CC2E2C  38 00 00 0F */	li r0, 0xf
/* 80CC2E30  B0 1E 06 74 */	sth r0, 0x674(r30)
/* 80CC2E34  48 00 00 14 */	b lbl_80CC2E48
lbl_80CC2E38:
/* 80CC2E38  3B 39 00 01 */	addi r25, r25, 1
/* 80CC2E3C  2C 19 00 04 */	cmpwi r25, 4
/* 80CC2E40  3B BD 01 3C */	addi r29, r29, 0x13c
/* 80CC2E44  41 80 FF A8 */	blt lbl_80CC2DEC
lbl_80CC2E48:
/* 80CC2E48  39 61 00 50 */	addi r11, r1, 0x50
/* 80CC2E4C  4B 69 F3 CC */	b _restgpr_25
/* 80CC2E50  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80CC2E54  7C 08 03 A6 */	mtlr r0
/* 80CC2E58  38 21 00 50 */	addi r1, r1, 0x50
/* 80CC2E5C  4E 80 00 20 */	blr 
