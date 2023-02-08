lbl_80462C2C:
/* 80462C2C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80462C30  7C 08 02 A6 */	mflr r0
/* 80462C34  90 01 00 24 */	stw r0, 0x24(r1)
/* 80462C38  39 61 00 20 */	addi r11, r1, 0x20
/* 80462C3C  4B EF F5 A1 */	bl _savegpr_29
/* 80462C40  7C 7F 1B 78 */	mr r31, r3
/* 80462C44  3C 60 80 46 */	lis r3, lit_4018@ha /* 0x80466820@ha */
/* 80462C48  3B C3 68 20 */	addi r30, r3, lit_4018@l /* 0x80466820@l */
/* 80462C4C  38 00 00 00 */	li r0, 0
/* 80462C50  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 80462C54  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80462C58  B0 1F 04 E0 */	sth r0, 0x4e0(r31)
/* 80462C5C  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 80462C60  38 7F 08 B8 */	addi r3, r31, 0x8b8
/* 80462C64  C0 3E 00 68 */	lfs f1, 0x68(r30)
/* 80462C68  FC 40 08 90 */	fmr f2, f1
/* 80462C6C  4B C1 32 ED */	bl SetWall__12dBgS_AcchCirFff
/* 80462C70  38 00 00 00 */	li r0, 0
/* 80462C74  90 01 00 08 */	stw r0, 8(r1)
/* 80462C78  38 7F 06 E0 */	addi r3, r31, 0x6e0
/* 80462C7C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80462C80  38 BF 04 BC */	addi r5, r31, 0x4bc
/* 80462C84  7F E6 FB 78 */	mr r6, r31
/* 80462C88  38 E0 00 01 */	li r7, 1
/* 80462C8C  39 1F 08 B8 */	addi r8, r31, 0x8b8
/* 80462C90  39 3F 04 F8 */	addi r9, r31, 0x4f8
/* 80462C94  39 40 00 00 */	li r10, 0
/* 80462C98  4B C1 35 B1 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80462C9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80462CA0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80462CA4  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 80462CA8  7F A3 EB 78 */	mr r3, r29
/* 80462CAC  80 9F 05 C4 */	lwz r4, 0x5c4(r31)
/* 80462CB0  7F E5 FB 78 */	mr r5, r31
/* 80462CB4  4B C1 1D 55 */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80462CB8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80462CBC  98 1F 04 8C */	stb r0, 0x48c(r31)
/* 80462CC0  38 00 00 00 */	li r0, 0
/* 80462CC4  98 1F 06 90 */	stb r0, 0x690(r31)
/* 80462CC8  C0 1F 05 54 */	lfs f0, 0x554(r31)
/* 80462CCC  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 80462CD0  EC 00 08 2A */	fadds f0, f0, f1
/* 80462CD4  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80462CD8  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 80462CDC  EC 00 08 2A */	fadds f0, f0, f1
/* 80462CE0  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 80462CE4  38 00 00 20 */	li r0, 0x20
/* 80462CE8  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80462CEC  38 1F 05 F4 */	addi r0, r31, 0x5f4
/* 80462CF0  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80462CF4  7F E3 FB 78 */	mr r3, r31
/* 80462CF8  4B BD 74 91 */	bl getKind__13door_param2_cFP10fopAc_ac_c
/* 80462CFC  2C 03 00 0A */	cmpwi r3, 0xa
/* 80462D00  40 82 00 28 */	bne lbl_80462D28
/* 80462D04  7F E3 FB 78 */	mr r3, r31
/* 80462D08  C0 3E 00 70 */	lfs f1, 0x70(r30)
/* 80462D0C  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 80462D10  C0 7E 00 74 */	lfs f3, 0x74(r30)
/* 80462D14  C0 9E 00 78 */	lfs f4, 0x78(r30)
/* 80462D18  C0 BE 00 7C */	lfs f5, 0x7c(r30)
/* 80462D1C  C0 DE 00 80 */	lfs f6, 0x80(r30)
/* 80462D20  4B BB 78 29 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80462D24  48 00 00 24 */	b lbl_80462D48
lbl_80462D28:
/* 80462D28  7F E3 FB 78 */	mr r3, r31
/* 80462D2C  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 80462D30  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 80462D34  C0 7E 00 74 */	lfs f3, 0x74(r30)
/* 80462D38  C0 9E 00 58 */	lfs f4, 0x58(r30)
/* 80462D3C  C0 BE 00 88 */	lfs f5, 0x88(r30)
/* 80462D40  C0 DE 00 80 */	lfs f6, 0x80(r30)
/* 80462D44  4B BB 78 05 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
lbl_80462D48:
/* 80462D48  C0 1E 00 8C */	lfs f0, 0x8c(r30)
/* 80462D4C  D0 1F 05 20 */	stfs f0, 0x520(r31)
/* 80462D50  7F E3 FB 78 */	mr r3, r31
/* 80462D54  48 00 01 61 */	bl setKey__10daDoor20_cFv
/* 80462D58  38 00 FF FF */	li r0, -1
/* 80462D5C  90 1F 05 EC */	stw r0, 0x5ec(r31)
/* 80462D60  7F E3 FB 78 */	mr r3, r31
/* 80462D64  4B BD 74 25 */	bl getKind__13door_param2_cFP10fopAc_ac_c
/* 80462D68  2C 03 00 09 */	cmpwi r3, 9
/* 80462D6C  40 82 00 2C */	bne lbl_80462D98
/* 80462D70  38 7D 3E C8 */	addi r3, r29, 0x3ec8
/* 80462D74  3C 80 80 46 */	lis r4, d_a_door_shutter__stringBase0@ha /* 0x804668D8@ha */
/* 80462D78  38 84 68 D8 */	addi r4, r4, d_a_door_shutter__stringBase0@l /* 0x804668D8@l */
/* 80462D7C  38 84 01 52 */	addi r4, r4, 0x152
/* 80462D80  4B F0 5C 15 */	bl strcmp
/* 80462D84  2C 03 00 00 */	cmpwi r3, 0
/* 80462D88  41 82 00 10 */	beq lbl_80462D98
/* 80462D8C  38 00 00 01 */	li r0, 1
/* 80462D90  98 1F 06 73 */	stb r0, 0x673(r31)
/* 80462D94  48 00 00 0C */	b lbl_80462DA0
lbl_80462D98:
/* 80462D98  38 00 00 00 */	li r0, 0
/* 80462D9C  98 1F 06 73 */	stb r0, 0x673(r31)
lbl_80462DA0:
/* 80462DA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80462DA4  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80462DA8  88 1E 4E 0A */	lbz r0, 0x4e0a(r30)
/* 80462DAC  7C 1D 07 74 */	extsb r29, r0
/* 80462DB0  7F E3 FB 78 */	mr r3, r31
/* 80462DB4  4B BD 74 05 */	bl getFRoomNo__13door_param2_cFP10fopAc_ac_c
/* 80462DB8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80462DBC  7C 00 E8 00 */	cmpw r0, r29
/* 80462DC0  41 82 00 20 */	beq lbl_80462DE0
/* 80462DC4  88 1E 4E 0A */	lbz r0, 0x4e0a(r30)
/* 80462DC8  7C 1D 07 74 */	extsb r29, r0
/* 80462DCC  7F E3 FB 78 */	mr r3, r31
/* 80462DD0  4B BD 73 F5 */	bl getBRoomNo__13door_param2_cFP10fopAc_ac_c
/* 80462DD4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80462DD8  7C 00 E8 00 */	cmpw r0, r29
/* 80462DDC  40 82 00 0C */	bne lbl_80462DE8
lbl_80462DE0:
/* 80462DE0  7F E3 FB 78 */	mr r3, r31
/* 80462DE4  48 00 1A 75 */	bl createKey__10daDoor20_cFv
lbl_80462DE8:
/* 80462DE8  7F E3 FB 78 */	mr r3, r31
/* 80462DEC  4B FF FD 6D */	bl calcMtx__10daDoor20_cFv
/* 80462DF0  80 7F 05 C4 */	lwz r3, 0x5c4(r31)
/* 80462DF4  4B C1 8B CD */	bl Move__4dBgWFv
/* 80462DF8  7F E3 FB 78 */	mr r3, r31
/* 80462DFC  4B BD 73 BD */	bl getFRoomNo__13door_param2_cFP10fopAc_ac_c
/* 80462E00  80 9F 05 C4 */	lwz r4, 0x5c4(r31)
/* 80462E04  98 64 00 09 */	stb r3, 9(r4)
/* 80462E08  7F E3 FB 78 */	mr r3, r31
/* 80462E0C  4B BD 73 7D */	bl getKind__13door_param2_cFP10fopAc_ac_c
/* 80462E10  28 03 00 0C */	cmplwi r3, 0xc
/* 80462E14  41 81 00 28 */	bgt lbl_80462E3C
/* 80462E18  3C 80 80 46 */	lis r4, lit_4926@ha /* 0x80467008@ha */
/* 80462E1C  38 84 70 08 */	addi r4, r4, lit_4926@l /* 0x80467008@l */
/* 80462E20  54 60 10 3A */	slwi r0, r3, 2
/* 80462E24  7C 04 00 2E */	lwzx r0, r4, r0
/* 80462E28  7C 09 03 A6 */	mtctr r0
/* 80462E2C  4E 80 04 20 */	bctr 
lbl_80462E30:
/* 80462E30  38 00 00 03 */	li r0, 3
/* 80462E34  98 1F 06 91 */	stb r0, 0x691(r31)
/* 80462E38  48 00 00 3C */	b lbl_80462E74
lbl_80462E3C:
/* 80462E3C  38 00 00 01 */	li r0, 1
/* 80462E40  98 1F 06 91 */	stb r0, 0x691(r31)
/* 80462E44  48 00 00 30 */	b lbl_80462E74
lbl_80462E48:
/* 80462E48  38 00 00 02 */	li r0, 2
/* 80462E4C  98 1F 06 91 */	stb r0, 0x691(r31)
/* 80462E50  48 00 00 24 */	b lbl_80462E74
lbl_80462E54:
/* 80462E54  38 00 00 04 */	li r0, 4
/* 80462E58  98 1F 06 91 */	stb r0, 0x691(r31)
/* 80462E5C  48 00 00 18 */	b lbl_80462E74
lbl_80462E60:
/* 80462E60  38 00 00 05 */	li r0, 5
/* 80462E64  98 1F 06 91 */	stb r0, 0x691(r31)
/* 80462E68  48 00 00 0C */	b lbl_80462E74
lbl_80462E6C:
/* 80462E6C  38 00 00 06 */	li r0, 6
/* 80462E70  98 1F 06 91 */	stb r0, 0x691(r31)
lbl_80462E74:
/* 80462E74  7F E3 FB 78 */	mr r3, r31
/* 80462E78  4B FF DD 2D */	bl getArcName__10daDoor20_cFv
/* 80462E7C  90 7F 01 00 */	stw r3, 0x100(r31)
/* 80462E80  7F E3 FB 78 */	mr r3, r31
/* 80462E84  48 00 25 2D */	bl initProc__10daDoor20_cFv
/* 80462E88  38 00 00 41 */	li r0, 0x41
/* 80462E8C  98 1F 06 8D */	stb r0, 0x68d(r31)
/* 80462E90  38 00 FF FF */	li r0, -1
/* 80462E94  98 1F 05 C8 */	stb r0, 0x5c8(r31)
/* 80462E98  38 60 00 01 */	li r3, 1
/* 80462E9C  39 61 00 20 */	addi r11, r1, 0x20
/* 80462EA0  4B EF F3 89 */	bl _restgpr_29
/* 80462EA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80462EA8  7C 08 03 A6 */	mtlr r0
/* 80462EAC  38 21 00 20 */	addi r1, r1, 0x20
/* 80462EB0  4E 80 00 20 */	blr 
