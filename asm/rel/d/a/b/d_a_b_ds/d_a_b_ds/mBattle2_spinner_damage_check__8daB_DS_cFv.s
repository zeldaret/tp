lbl_805D9CFC:
/* 805D9CFC  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 805D9D00  7C 08 02 A6 */	mflr r0
/* 805D9D04  90 01 00 64 */	stw r0, 0x64(r1)
/* 805D9D08  39 61 00 60 */	addi r11, r1, 0x60
/* 805D9D0C  4B D8 84 C0 */	b _savegpr_25
/* 805D9D10  7C 7C 1B 78 */	mr r28, r3
/* 805D9D14  3C 60 80 5E */	lis r3, lit_3932@ha
/* 805D9D18  3B C3 CA 54 */	addi r30, r3, lit_3932@l
/* 805D9D1C  38 7C 08 4E */	addi r3, r28, 0x84e
/* 805D9D20  48 00 2B E1 */	bl func_805DC900
/* 805D9D24  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805D9D28  40 82 02 B4 */	bne lbl_805D9FDC
/* 805D9D2C  80 1C 06 8C */	lwz r0, 0x68c(r28)
/* 805D9D30  2C 00 00 2D */	cmpwi r0, 0x2d
/* 805D9D34  41 82 02 A8 */	beq lbl_805D9FDC
/* 805D9D38  80 1C 06 80 */	lwz r0, 0x680(r28)
/* 805D9D3C  2C 00 00 04 */	cmpwi r0, 4
/* 805D9D40  41 82 02 9C */	beq lbl_805D9FDC
/* 805D9D44  2C 00 00 05 */	cmpwi r0, 5
/* 805D9D48  41 82 02 94 */	beq lbl_805D9FDC
/* 805D9D4C  A8 1C 05 62 */	lha r0, 0x562(r28)
/* 805D9D50  2C 00 00 01 */	cmpwi r0, 1
/* 805D9D54  40 80 00 08 */	bge lbl_805D9D5C
/* 805D9D58  48 00 02 84 */	b lbl_805D9FDC
lbl_805D9D5C:
/* 805D9D5C  3B 20 00 00 */	li r25, 0
/* 805D9D60  3B 60 00 00 */	li r27, 0
lbl_805D9D64:
/* 805D9D64  3B BB 13 4C */	addi r29, r27, 0x134c
/* 805D9D68  7F BC EA 14 */	add r29, r28, r29
/* 805D9D6C  7F A3 EB 78 */	mr r3, r29
/* 805D9D70  4B AA A6 F0 */	b ChkTgHit__12dCcD_GObjInfFv
/* 805D9D74  28 03 00 00 */	cmplwi r3, 0
/* 805D9D78  41 82 00 5C */	beq lbl_805D9DD4
/* 805D9D7C  38 00 00 08 */	li r0, 8
/* 805D9D80  98 1C 08 4E */	stb r0, 0x84e(r28)
/* 805D9D84  7F A3 EB 78 */	mr r3, r29
/* 805D9D88  4B AA A7 70 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 805D9D8C  90 7C 2C F0 */	stw r3, 0x2cf0(r28)
/* 805D9D90  C0 1D 00 D4 */	lfs f0, 0xd4(r29)
/* 805D9D94  D0 1C 06 C4 */	stfs f0, 0x6c4(r28)
/* 805D9D98  C0 1D 00 D8 */	lfs f0, 0xd8(r29)
/* 805D9D9C  D0 1C 06 C8 */	stfs f0, 0x6c8(r28)
/* 805D9DA0  C0 1D 00 DC */	lfs f0, 0xdc(r29)
/* 805D9DA4  D0 1C 06 CC */	stfs f0, 0x6cc(r28)
/* 805D9DA8  38 7C 05 DC */	addi r3, r28, 0x5dc
/* 805D9DAC  80 9C 2C F0 */	lwz r4, 0x2cf0(r28)
/* 805D9DB0  38 A0 00 02 */	li r5, 2
/* 805D9DB4  38 C0 00 00 */	li r6, 0
/* 805D9DB8  4B AA D7 5C */	b def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c
/* 805D9DBC  7F A3 EB 78 */	mr r3, r29
/* 805D9DC0  81 9D 00 3C */	lwz r12, 0x3c(r29)
/* 805D9DC4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 805D9DC8  7D 89 03 A6 */	mtctr r12
/* 805D9DCC  4E 80 04 21 */	bctrl 
/* 805D9DD0  48 00 02 0C */	b lbl_805D9FDC
lbl_805D9DD4:
/* 805D9DD4  3B 39 00 01 */	addi r25, r25, 1
/* 805D9DD8  2C 19 00 12 */	cmpwi r25, 0x12
/* 805D9DDC  3B 7B 01 38 */	addi r27, r27, 0x138
/* 805D9DE0  41 80 FF 84 */	blt lbl_805D9D64
/* 805D9DE4  80 1C 06 80 */	lwz r0, 0x680(r28)
/* 805D9DE8  2C 00 00 00 */	cmpwi r0, 0
/* 805D9DEC  41 82 01 F0 */	beq lbl_805D9FDC
/* 805D9DF0  2C 00 00 04 */	cmpwi r0, 4
/* 805D9DF4  41 82 01 E8 */	beq lbl_805D9FDC
/* 805D9DF8  2C 00 00 05 */	cmpwi r0, 5
/* 805D9DFC  40 82 00 08 */	bne lbl_805D9E04
/* 805D9E00  48 00 01 DC */	b lbl_805D9FDC
lbl_805D9E04:
/* 805D9E04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805D9E08  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 805D9E0C  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 805D9E10  80 03 05 88 */	lwz r0, 0x588(r3)
/* 805D9E14  64 00 02 00 */	oris r0, r0, 0x200
/* 805D9E18  90 03 05 88 */	stw r0, 0x588(r3)
/* 805D9E1C  3B A0 00 00 */	li r29, 0
/* 805D9E20  3B 60 00 00 */	li r27, 0
lbl_805D9E24:
/* 805D9E24  3B 5B 0B FC */	addi r26, r27, 0xbfc
/* 805D9E28  7F 5C D2 14 */	add r26, r28, r26
/* 805D9E2C  7F 43 D3 78 */	mr r3, r26
/* 805D9E30  4B AA A6 30 */	b ChkTgHit__12dCcD_GObjInfFv
/* 805D9E34  28 03 00 00 */	cmplwi r3, 0
/* 805D9E38  41 82 01 8C */	beq lbl_805D9FC4
/* 805D9E3C  7F 43 D3 78 */	mr r3, r26
/* 805D9E40  4B AA A6 B8 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 805D9E44  90 7C 2C F0 */	stw r3, 0x2cf0(r28)
/* 805D9E48  38 61 00 14 */	addi r3, r1, 0x14
/* 805D9E4C  38 9C 06 E8 */	addi r4, r28, 0x6e8
/* 805D9E50  3B 3A 00 D4 */	addi r25, r26, 0xd4
/* 805D9E54  7F 25 CB 78 */	mr r5, r25
/* 805D9E58  4B C8 CC DC */	b __mi__4cXyzCFRC3Vec
/* 805D9E5C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 805D9E60  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805D9E64  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 805D9E68  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805D9E6C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 805D9E70  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 805D9E74  C0 19 00 00 */	lfs f0, 0(r25)
/* 805D9E78  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 805D9E7C  C0 19 00 04 */	lfs f0, 4(r25)
/* 805D9E80  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805D9E84  C0 19 00 08 */	lfs f0, 8(r25)
/* 805D9E88  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805D9E8C  38 00 00 08 */	li r0, 8
/* 805D9E90  98 1C 08 4E */	stb r0, 0x84e(r28)
/* 805D9E94  38 00 00 00 */	li r0, 0
/* 805D9E98  B0 01 00 0C */	sth r0, 0xc(r1)
/* 805D9E9C  38 61 00 2C */	addi r3, r1, 0x2c
/* 805D9EA0  4B C8 D2 88 */	b atan2sX_Z__4cXyzCFv
/* 805D9EA4  B0 61 00 0E */	sth r3, 0xe(r1)
/* 805D9EA8  38 00 00 00 */	li r0, 0
/* 805D9EAC  B0 01 00 10 */	sth r0, 0x10(r1)
/* 805D9EB0  7F 43 D3 78 */	mr r3, r26
/* 805D9EB4  4B AA A6 44 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 805D9EB8  80 03 00 10 */	lwz r0, 0x10(r3)
/* 805D9EBC  54 00 03 19 */	rlwinm. r0, r0, 0, 0xc, 0xc
/* 805D9EC0  41 82 00 BC */	beq lbl_805D9F7C
/* 805D9EC4  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704D7@ha */
/* 805D9EC8  38 03 04 D7 */	addi r0, r3, 0x04D7 /* 0x000704D7@l */
/* 805D9ECC  90 01 00 08 */	stw r0, 8(r1)
/* 805D9ED0  38 7C 05 DC */	addi r3, r28, 0x5dc
/* 805D9ED4  38 81 00 08 */	addi r4, r1, 8
/* 805D9ED8  38 A0 FF FF */	li r5, -1
/* 805D9EDC  81 9C 05 DC */	lwz r12, 0x5dc(r28)
/* 805D9EE0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805D9EE4  7D 89 03 A6 */	mtctr r12
/* 805D9EE8  4E 80 04 21 */	bctrl 
/* 805D9EEC  38 00 00 00 */	li r0, 0
/* 805D9EF0  98 1C 08 5A */	stb r0, 0x85a(r28)
/* 805D9EF4  38 7C 05 DC */	addi r3, r28, 0x5dc
/* 805D9EF8  80 9C 2C F0 */	lwz r4, 0x2cf0(r28)
/* 805D9EFC  38 A0 00 1F */	li r5, 0x1f
/* 805D9F00  38 C0 00 00 */	li r6, 0
/* 805D9F04  4B AA D6 10 */	b def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c
/* 805D9F08  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 805D9F0C  38 80 00 03 */	li r4, 3
/* 805D9F10  7F 85 E3 78 */	mr r5, r28
/* 805D9F14  38 C1 00 20 */	addi r6, r1, 0x20
/* 805D9F18  38 E1 00 0C */	addi r7, r1, 0xc
/* 805D9F1C  39 00 00 00 */	li r8, 0
/* 805D9F20  39 20 00 00 */	li r9, 0
/* 805D9F24  4B A7 22 F4 */	b setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
/* 805D9F28  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 805D9F2C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 805D9F30  80 63 00 00 */	lwz r3, 0(r3)
/* 805D9F34  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 805D9F38  38 80 00 02 */	li r4, 2
/* 805D9F3C  4B CD 60 50 */	b changeBgmStatus__8Z2SeqMgrFl
/* 805D9F40  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805D9F44  D0 1C 07 90 */	stfs f0, 0x790(r28)
/* 805D9F48  D0 1C 07 94 */	stfs f0, 0x794(r28)
/* 805D9F4C  D0 1C 07 98 */	stfs f0, 0x798(r28)
/* 805D9F50  7F 83 E3 78 */	mr r3, r28
/* 805D9F54  38 80 00 29 */	li r4, 0x29
/* 805D9F58  38 A0 00 00 */	li r5, 0
/* 805D9F5C  C0 3E 03 B8 */	lfs f1, 0x3b8(r30)
/* 805D9F60  C0 5E 00 08 */	lfs f2, 8(r30)
/* 805D9F64  4B FF 1B 65 */	bl setBck__8daB_DS_cFiUcff
/* 805D9F68  7F 83 E3 78 */	mr r3, r28
/* 805D9F6C  38 80 00 04 */	li r4, 4
/* 805D9F70  38 A0 00 00 */	li r5, 0
/* 805D9F74  4B FF 1C 01 */	bl setActionMode__8daB_DS_cFii
/* 805D9F78  48 00 00 38 */	b lbl_805D9FB0
lbl_805D9F7C:
/* 805D9F7C  38 7C 05 DC */	addi r3, r28, 0x5dc
/* 805D9F80  80 9C 2C F0 */	lwz r4, 0x2cf0(r28)
/* 805D9F84  38 A0 00 02 */	li r5, 2
/* 805D9F88  38 C0 00 00 */	li r6, 0
/* 805D9F8C  4B AA D5 88 */	b def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c
/* 805D9F90  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 805D9F94  38 80 00 02 */	li r4, 2
/* 805D9F98  7F 85 E3 78 */	mr r5, r28
/* 805D9F9C  38 C1 00 20 */	addi r6, r1, 0x20
/* 805D9FA0  38 E1 00 0C */	addi r7, r1, 0xc
/* 805D9FA4  39 00 00 00 */	li r8, 0
/* 805D9FA8  39 20 00 00 */	li r9, 0
/* 805D9FAC  4B A7 22 6C */	b setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
lbl_805D9FB0:
/* 805D9FB0  7F 43 D3 78 */	mr r3, r26
/* 805D9FB4  81 9A 00 3C */	lwz r12, 0x3c(r26)
/* 805D9FB8  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 805D9FBC  7D 89 03 A6 */	mtctr r12
/* 805D9FC0  4E 80 04 21 */	bctrl 
lbl_805D9FC4:
/* 805D9FC4  3B BD 00 01 */	addi r29, r29, 1
/* 805D9FC8  2C 1D 00 05 */	cmpwi r29, 5
/* 805D9FCC  3B 7B 01 38 */	addi r27, r27, 0x138
/* 805D9FD0  41 80 FE 54 */	blt lbl_805D9E24
/* 805D9FD4  38 7C 0A A4 */	addi r3, r28, 0xaa4
/* 805D9FD8  4B AA 98 58 */	b Move__10dCcD_GSttsFv
lbl_805D9FDC:
/* 805D9FDC  39 61 00 60 */	addi r11, r1, 0x60
/* 805D9FE0  4B D8 82 38 */	b _restgpr_25
/* 805D9FE4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805D9FE8  7C 08 03 A6 */	mtlr r0
/* 805D9FEC  38 21 00 60 */	addi r1, r1, 0x60
/* 805D9FF0  4E 80 00 20 */	blr 
