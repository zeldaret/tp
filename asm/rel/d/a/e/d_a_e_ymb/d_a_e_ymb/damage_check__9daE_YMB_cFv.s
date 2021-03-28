lbl_80816B7C:
/* 80816B7C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80816B80  7C 08 02 A6 */	mflr r0
/* 80816B84  90 01 00 44 */	stw r0, 0x44(r1)
/* 80816B88  39 61 00 40 */	addi r11, r1, 0x40
/* 80816B8C  4B B4 B6 34 */	b _savegpr_22
/* 80816B90  7C 79 1B 78 */	mr r25, r3
/* 80816B94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80816B98  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80816B9C  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 80816BA0  80 19 06 F8 */	lwz r0, 0x6f8(r25)
/* 80816BA4  2C 00 00 00 */	cmpwi r0, 0
/* 80816BA8  40 82 01 94 */	bne lbl_80816D3C
/* 80816BAC  38 79 0A 9C */	addi r3, r25, 0xa9c
/* 80816BB0  4B 86 D8 B0 */	b ChkTgHit__12dCcD_GObjInfFv
/* 80816BB4  28 03 00 00 */	cmplwi r3, 0
/* 80816BB8  41 82 00 D4 */	beq lbl_80816C8C
/* 80816BBC  80 19 07 04 */	lwz r0, 0x704(r25)
/* 80816BC0  2C 00 00 00 */	cmpwi r0, 0
/* 80816BC4  40 82 00 C8 */	bne lbl_80816C8C
/* 80816BC8  38 79 0A 9C */	addi r3, r25, 0xa9c
/* 80816BCC  4B 86 D9 2C */	b GetTgHitObj__12dCcD_GObjInfFv
/* 80816BD0  90 79 14 5C */	stw r3, 0x145c(r25)
/* 80816BD4  38 00 00 64 */	li r0, 0x64
/* 80816BD8  B0 19 05 62 */	sth r0, 0x562(r25)
/* 80816BDC  7F 23 CB 78 */	mr r3, r25
/* 80816BE0  38 99 14 5C */	addi r4, r25, 0x145c
/* 80816BE4  4B 87 10 20 */	b cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 80816BE8  80 79 14 5C */	lwz r3, 0x145c(r25)
/* 80816BEC  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80816BF0  74 00 D8 00 */	andis. r0, r0, 0xd800
/* 80816BF4  41 82 00 10 */	beq lbl_80816C04
/* 80816BF8  38 00 00 14 */	li r0, 0x14
/* 80816BFC  90 19 06 F8 */	stw r0, 0x6f8(r25)
/* 80816C00  48 00 00 0C */	b lbl_80816C0C
lbl_80816C04:
/* 80816C04  38 00 00 0A */	li r0, 0xa
/* 80816C08  90 19 06 F8 */	stw r0, 0x6f8(r25)
lbl_80816C0C:
/* 80816C0C  A0 19 14 78 */	lhz r0, 0x1478(r25)
/* 80816C10  28 00 00 01 */	cmplwi r0, 1
/* 80816C14  41 81 00 0C */	bgt lbl_80816C20
/* 80816C18  38 00 00 0A */	li r0, 0xa
/* 80816C1C  90 19 06 F8 */	stw r0, 0x6f8(r25)
lbl_80816C20:
/* 80816C20  80 19 06 B4 */	lwz r0, 0x6b4(r25)
/* 80816C24  2C 00 00 08 */	cmpwi r0, 8
/* 80816C28  41 82 00 64 */	beq lbl_80816C8C
/* 80816C2C  88 1D 05 68 */	lbz r0, 0x568(r29)
/* 80816C30  28 00 00 2C */	cmplwi r0, 0x2c
/* 80816C34  41 82 00 58 */	beq lbl_80816C8C
/* 80816C38  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80816C3C  28 00 00 2D */	cmplwi r0, 0x2d
/* 80816C40  41 82 00 4C */	beq lbl_80816C8C
/* 80816C44  80 79 14 5C */	lwz r3, 0x145c(r25)
/* 80816C48  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80816C4C  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 80816C50  41 82 00 3C */	beq lbl_80816C8C
/* 80816C54  7F A3 EB 78 */	mr r3, r29
/* 80816C58  7F 24 CB 78 */	mr r4, r25
/* 80816C5C  38 A0 00 40 */	li r5, 0x40
/* 80816C60  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80816C64  81 8C 01 DC */	lwz r12, 0x1dc(r12)
/* 80816C68  7D 89 03 A6 */	mtctr r12
/* 80816C6C  4E 80 04 21 */	bctrl 
/* 80816C70  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80816C74  41 82 00 18 */	beq lbl_80816C8C
/* 80816C78  7F 23 CB 78 */	mr r3, r25
/* 80816C7C  38 80 00 07 */	li r4, 7
/* 80816C80  38 A0 00 00 */	li r5, 0
/* 80816C84  4B FF FD F9 */	bl setActionMode__9daE_YMB_cFii
/* 80816C88  48 00 01 D8 */	b lbl_80816E60
lbl_80816C8C:
/* 80816C8C  3A C0 00 00 */	li r22, 0
/* 80816C90  80 19 08 C8 */	lwz r0, 0x8c8(r25)
/* 80816C94  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80816C98  41 82 00 20 */	beq lbl_80816CB8
/* 80816C9C  38 79 08 2C */	addi r3, r25, 0x82c
/* 80816CA0  4B 86 D7 C0 */	b ChkTgHit__12dCcD_GObjInfFv
/* 80816CA4  28 03 00 00 */	cmplwi r3, 0
/* 80816CA8  41 82 00 10 */	beq lbl_80816CB8
/* 80816CAC  38 79 08 2C */	addi r3, r25, 0x82c
/* 80816CB0  4B 86 D8 48 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 80816CB4  7C 76 1B 78 */	mr r22, r3
lbl_80816CB8:
/* 80816CB8  80 19 0A 00 */	lwz r0, 0xa00(r25)
/* 80816CBC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80816CC0  41 82 00 20 */	beq lbl_80816CE0
/* 80816CC4  38 79 09 64 */	addi r3, r25, 0x964
/* 80816CC8  4B 86 D7 98 */	b ChkTgHit__12dCcD_GObjInfFv
/* 80816CCC  28 03 00 00 */	cmplwi r3, 0
/* 80816CD0  41 82 00 10 */	beq lbl_80816CE0
/* 80816CD4  38 79 09 64 */	addi r3, r25, 0x964
/* 80816CD8  4B 86 D8 20 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 80816CDC  7C 76 1B 78 */	mr r22, r3
lbl_80816CE0:
/* 80816CE0  80 19 0B 38 */	lwz r0, 0xb38(r25)
/* 80816CE4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80816CE8  41 82 00 20 */	beq lbl_80816D08
/* 80816CEC  38 79 0A 9C */	addi r3, r25, 0xa9c
/* 80816CF0  4B 86 D7 70 */	b ChkTgHit__12dCcD_GObjInfFv
/* 80816CF4  28 03 00 00 */	cmplwi r3, 0
/* 80816CF8  41 82 00 10 */	beq lbl_80816D08
/* 80816CFC  38 79 0A 9C */	addi r3, r25, 0xa9c
/* 80816D00  4B 86 D7 F8 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 80816D04  7C 76 1B 78 */	mr r22, r3
lbl_80816D08:
/* 80816D08  28 16 00 00 */	cmplwi r22, 0
/* 80816D0C  41 82 00 30 */	beq lbl_80816D3C
/* 80816D10  80 19 06 B4 */	lwz r0, 0x6b4(r25)
/* 80816D14  2C 00 00 01 */	cmpwi r0, 1
/* 80816D18  41 82 00 14 */	beq lbl_80816D2C
/* 80816D1C  2C 00 00 02 */	cmpwi r0, 2
/* 80816D20  41 82 00 0C */	beq lbl_80816D2C
/* 80816D24  2C 00 00 04 */	cmpwi r0, 4
/* 80816D28  40 82 00 14 */	bne lbl_80816D3C
lbl_80816D2C:
/* 80816D2C  7F 23 CB 78 */	mr r3, r25
/* 80816D30  38 80 00 04 */	li r4, 4
/* 80816D34  38 A0 00 00 */	li r5, 0
/* 80816D38  4B FF FD 45 */	bl setActionMode__9daE_YMB_cFii
lbl_80816D3C:
/* 80816D3C  3B 60 00 00 */	li r27, 0
/* 80816D40  3B 40 00 00 */	li r26, 0
/* 80816D44  3B 00 00 00 */	li r24, 0
/* 80816D48  3A E0 00 00 */	li r23, 0
/* 80816D4C  3A C0 00 00 */	li r22, 0
/* 80816D50  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80816D54  3B A3 D4 70 */	addi r29, r3, now__14mDoMtx_stack_c@l
/* 80816D58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80816D5C  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
lbl_80816D60:
/* 80816D60  3B 96 0B D4 */	addi r28, r22, 0xbd4
/* 80816D64  7F 99 E2 14 */	add r28, r25, r28
/* 80816D68  7F 83 E3 78 */	mr r3, r28
/* 80816D6C  4B 86 D6 F4 */	b ChkTgHit__12dCcD_GObjInfFv
/* 80816D70  28 03 00 00 */	cmplwi r3, 0
/* 80816D74  41 82 00 D4 */	beq lbl_80816E48
/* 80816D78  7F 83 E3 78 */	mr r3, r28
/* 80816D7C  4B 86 D7 7C */	b GetTgHitObj__12dCcD_GObjInfFv
/* 80816D80  7C 7F 1B 78 */	mr r31, r3
/* 80816D84  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80816D88  54 00 01 09 */	rlwinm. r0, r0, 0, 4, 4
/* 80816D8C  40 82 00 BC */	bne lbl_80816E48
/* 80816D90  7F 83 E3 78 */	mr r3, r28
/* 80816D94  4B 86 D7 64 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 80816D98  90 79 14 5C */	stw r3, 0x145c(r25)
/* 80816D9C  38 00 00 64 */	li r0, 0x64
/* 80816DA0  B0 19 05 62 */	sth r0, 0x562(r25)
/* 80816DA4  38 00 00 1E */	li r0, 0x1e
/* 80816DA8  90 19 14 74 */	stw r0, 0x1474(r25)
/* 80816DAC  7F 23 CB 78 */	mr r3, r25
/* 80816DB0  38 99 14 5C */	addi r4, r25, 0x145c
/* 80816DB4  4B 87 0E 50 */	b cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 80816DB8  80 79 05 BC */	lwz r3, 0x5bc(r25)
/* 80816DBC  80 63 00 04 */	lwz r3, 4(r3)
/* 80816DC0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80816DC4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80816DC8  38 17 00 14 */	addi r0, r23, 0x14
/* 80816DCC  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80816DD0  7C 63 02 14 */	add r3, r3, r0
/* 80816DD4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80816DD8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80816DDC  4B B2 F6 D4 */	b PSMTXCopy
/* 80816DE0  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 80816DE4  D0 01 00 08 */	stfs f0, 8(r1)
/* 80816DE8  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 80816DEC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80816DF0  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 80816DF4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80816DF8  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80816DFC  38 80 00 01 */	li r4, 1
/* 80816E00  7F 25 CB 78 */	mr r5, r25
/* 80816E04  38 C1 00 08 */	addi r6, r1, 8
/* 80816E08  38 E0 00 00 */	li r7, 0
/* 80816E0C  39 00 00 00 */	li r8, 0
/* 80816E10  39 20 00 00 */	li r9, 0
/* 80816E14  4B 83 54 04 */	b setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
/* 80816E18  38 60 00 1E */	li r3, 0x1e
/* 80816E1C  38 18 06 80 */	addi r0, r24, 0x680
/* 80816E20  7C 79 01 2E */	stwx r3, r25, r0
/* 80816E24  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 80816E28  54 00 00 43 */	rlwinm. r0, r0, 0, 1, 1
/* 80816E2C  41 82 00 0C */	beq lbl_80816E38
/* 80816E30  90 79 06 98 */	stw r3, 0x698(r25)
/* 80816E34  3B 7B 00 01 */	addi r27, r27, 1
lbl_80816E38:
/* 80816E38  7F 83 E3 78 */	mr r3, r28
/* 80816E3C  4B 86 D6 7C */	b ResetTgHit__12dCcD_GObjInfFv
/* 80816E40  2C 1B 00 04 */	cmpwi r27, 4
/* 80816E44  40 80 00 1C */	bge lbl_80816E60
lbl_80816E48:
/* 80816E48  3B 5A 00 01 */	addi r26, r26, 1
/* 80816E4C  2C 1A 00 06 */	cmpwi r26, 6
/* 80816E50  3B 18 00 04 */	addi r24, r24, 4
/* 80816E54  3A F7 00 02 */	addi r23, r23, 2
/* 80816E58  3A D6 01 38 */	addi r22, r22, 0x138
/* 80816E5C  41 80 FF 04 */	blt lbl_80816D60
lbl_80816E60:
/* 80816E60  39 61 00 40 */	addi r11, r1, 0x40
/* 80816E64  4B B4 B3 A8 */	b _restgpr_22
/* 80816E68  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80816E6C  7C 08 03 A6 */	mtlr r0
/* 80816E70  38 21 00 40 */	addi r1, r1, 0x40
/* 80816E74  4E 80 00 20 */	blr 
