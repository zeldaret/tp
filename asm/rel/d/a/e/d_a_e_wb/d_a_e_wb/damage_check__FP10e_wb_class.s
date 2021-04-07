lbl_807D98D4:
/* 807D98D4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 807D98D8  7C 08 02 A6 */	mflr r0
/* 807D98DC  90 01 00 64 */	stw r0, 0x64(r1)
/* 807D98E0  39 61 00 60 */	addi r11, r1, 0x60
/* 807D98E4  4B B8 88 E1 */	bl _savegpr_23
/* 807D98E8  7C 7B 1B 78 */	mr r27, r3
/* 807D98EC  3C 60 80 7E */	lis r3, lit_3882@ha /* 0x807E298C@ha */
/* 807D98F0  3B A3 29 8C */	addi r29, r3, lit_3882@l /* 0x807E298C@l */
/* 807D98F4  38 00 00 64 */	li r0, 0x64
/* 807D98F8  B0 1B 05 62 */	sth r0, 0x562(r27)
/* 807D98FC  A8 7B 06 BA */	lha r3, 0x6ba(r27)
/* 807D9900  2C 03 00 00 */	cmpwi r3, 0
/* 807D9904  41 82 00 0C */	beq lbl_807D9910
/* 807D9908  38 03 FF FF */	addi r0, r3, -1
/* 807D990C  B0 1B 06 BA */	sth r0, 0x6ba(r27)
lbl_807D9910:
/* 807D9910  3B 40 00 00 */	li r26, 0
/* 807D9914  3B 20 00 00 */	li r25, 0
/* 807D9918  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807D991C  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
lbl_807D9920:
/* 807D9920  3B 99 0A 00 */	addi r28, r25, 0xa00
/* 807D9924  7F 9B E2 14 */	add r28, r27, r28
/* 807D9928  7F 83 E3 78 */	mr r3, r28
/* 807D992C  4B 8A AD 2D */	bl ChkCoHit__12dCcD_GObjInfFv
/* 807D9930  28 03 00 00 */	cmplwi r3, 0
/* 807D9934  41 82 02 A4 */	beq lbl_807D9BD8
/* 807D9938  7F 83 E3 78 */	mr r3, r28
/* 807D993C  4B 8A AD B5 */	bl GetCoHitObj__12dCcD_GObjInfFv
/* 807D9940  4B A8 A1 09 */	bl GetAc__8cCcD_ObjFv
/* 807D9944  7C 7F 1B 78 */	mr r31, r3
/* 807D9948  82 FE 5D B4 */	lwz r23, 0x5db4(r30)
/* 807D994C  3B 00 00 00 */	li r24, 0
/* 807D9950  7E E3 BB 78 */	mr r3, r23
/* 807D9954  81 97 06 28 */	lwz r12, 0x628(r23)
/* 807D9958  81 8C 01 8C */	lwz r12, 0x18c(r12)
/* 807D995C  7D 89 03 A6 */	mtctr r12
/* 807D9960  4E 80 04 21 */	bctrl 
/* 807D9964  28 03 00 00 */	cmplwi r3, 0
/* 807D9968  41 82 00 14 */	beq lbl_807D997C
/* 807D996C  80 17 28 18 */	lwz r0, 0x2818(r23)
/* 807D9970  7C 00 D8 40 */	cmplw r0, r27
/* 807D9974  40 82 00 08 */	bne lbl_807D997C
/* 807D9978  3B 00 00 01 */	li r24, 1
lbl_807D997C:
/* 807D997C  57 00 06 3F */	clrlwi. r0, r24, 0x18
/* 807D9980  40 82 00 68 */	bne lbl_807D99E8
/* 807D9984  A8 1B 06 A0 */	lha r0, 0x6a0(r27)
/* 807D9988  2C 00 00 00 */	cmpwi r0, 0
/* 807D998C  40 82 00 5C */	bne lbl_807D99E8
/* 807D9990  C0 3B 05 2C */	lfs f1, 0x52c(r27)
/* 807D9994  C0 1D 00 60 */	lfs f0, 0x60(r29)
/* 807D9998  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D999C  40 80 00 4C */	bge lbl_807D99E8
/* 807D99A0  A8 1F 00 08 */	lha r0, 8(r31)
/* 807D99A4  2C 00 00 FD */	cmpwi r0, 0xfd
/* 807D99A8  40 82 00 40 */	bne lbl_807D99E8
/* 807D99AC  A8 7B 06 BA */	lha r3, 0x6ba(r27)
/* 807D99B0  38 03 00 02 */	addi r0, r3, 2
/* 807D99B4  B0 1B 06 BA */	sth r0, 0x6ba(r27)
/* 807D99B8  A8 1B 06 BA */	lha r0, 0x6ba(r27)
/* 807D99BC  2C 00 00 96 */	cmpwi r0, 0x96
/* 807D99C0  41 80 00 28 */	blt lbl_807D99E8
/* 807D99C4  A8 1B 06 90 */	lha r0, 0x690(r27)
/* 807D99C8  B0 1B 06 92 */	sth r0, 0x692(r27)
/* 807D99CC  38 00 00 15 */	li r0, 0x15
/* 807D99D0  B0 1B 06 90 */	sth r0, 0x690(r27)
/* 807D99D4  38 00 00 00 */	li r0, 0
/* 807D99D8  B0 1B 05 B4 */	sth r0, 0x5b4(r27)
/* 807D99DC  38 00 00 14 */	li r0, 0x14
/* 807D99E0  B0 1B 06 A0 */	sth r0, 0x6a0(r27)
/* 807D99E4  48 00 03 48 */	b lbl_807D9D2C
lbl_807D99E8:
/* 807D99E8  3C 60 80 7E */	lis r3, struct_807E35B4+0x3@ha /* 0x807E35B7@ha */
/* 807D99EC  88 03 35 B7 */	lbz r0, struct_807E35B4+0x3@l(r3)  /* 0x807E35B7@l */
/* 807D99F0  7C 00 07 75 */	extsb. r0, r0
/* 807D99F4  40 82 00 14 */	bne lbl_807D9A08
/* 807D99F8  3C 60 80 7E */	lis r3, struct_807E35B4+0x1@ha /* 0x807E35B5@ha */
/* 807D99FC  88 03 35 B5 */	lbz r0, struct_807E35B4+0x1@l(r3)  /* 0x807E35B5@l */
/* 807D9A00  7C 00 07 75 */	extsb. r0, r0
/* 807D9A04  41 82 00 58 */	beq lbl_807D9A5C
lbl_807D9A08:
/* 807D9A08  A8 1F 00 08 */	lha r0, 8(r31)
/* 807D9A0C  2C 00 00 EF */	cmpwi r0, 0xef
/* 807D9A10  40 82 00 4C */	bne lbl_807D9A5C
/* 807D9A14  A8 1B 06 A0 */	lha r0, 0x6a0(r27)
/* 807D9A18  2C 00 00 00 */	cmpwi r0, 0
/* 807D9A1C  40 82 00 40 */	bne lbl_807D9A5C
/* 807D9A20  A8 1F 06 A0 */	lha r0, 0x6a0(r31)
/* 807D9A24  2C 00 00 00 */	cmpwi r0, 0
/* 807D9A28  40 82 00 34 */	bne lbl_807D9A5C
/* 807D9A2C  88 1B 07 9D */	lbz r0, 0x79d(r27)
/* 807D9A30  7C 00 07 75 */	extsb. r0, r0
/* 807D9A34  40 82 00 28 */	bne lbl_807D9A5C
/* 807D9A38  88 1F 07 9D */	lbz r0, 0x79d(r31)
/* 807D9A3C  7C 00 07 75 */	extsb. r0, r0
/* 807D9A40  40 82 00 1C */	bne lbl_807D9A5C
/* 807D9A44  88 7F 05 BD */	lbz r3, 0x5bd(r31)
/* 807D9A48  88 1B 05 BD */	lbz r0, 0x5bd(r27)
/* 807D9A4C  98 1F 05 BD */	stb r0, 0x5bd(r31)
/* 807D9A50  98 7B 05 BD */	stb r3, 0x5bd(r27)
/* 807D9A54  38 00 00 0A */	li r0, 0xa
/* 807D9A58  B0 1B 06 A0 */	sth r0, 0x6a0(r27)
lbl_807D9A5C:
/* 807D9A5C  88 7B 07 9D */	lbz r3, 0x79d(r27)
/* 807D9A60  7C 60 07 74 */	extsb r0, r3
/* 807D9A64  2C 00 00 02 */	cmpwi r0, 2
/* 807D9A68  41 80 00 90 */	blt lbl_807D9AF8
/* 807D9A6C  C0 3B 05 2C */	lfs f1, 0x52c(r27)
/* 807D9A70  C0 1D 00 38 */	lfs f0, 0x38(r29)
/* 807D9A74  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D9A78  4C 41 13 82 */	cror 2, 1, 2
/* 807D9A7C  40 82 00 7C */	bne lbl_807D9AF8
/* 807D9A80  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070138@ha */
/* 807D9A84  38 03 01 38 */	addi r0, r3, 0x0138 /* 0x00070138@l */
/* 807D9A88  90 01 00 10 */	stw r0, 0x10(r1)
/* 807D9A8C  38 7B 05 EC */	addi r3, r27, 0x5ec
/* 807D9A90  38 81 00 10 */	addi r4, r1, 0x10
/* 807D9A94  38 A0 FF FF */	li r5, -1
/* 807D9A98  81 9B 05 EC */	lwz r12, 0x5ec(r27)
/* 807D9A9C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807D9AA0  7D 89 03 A6 */	mtctr r12
/* 807D9AA4  4E 80 04 21 */	bctrl 
/* 807D9AA8  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070139@ha */
/* 807D9AAC  38 03 01 39 */	addi r0, r3, 0x0139 /* 0x00070139@l */
/* 807D9AB0  90 01 00 0C */	stw r0, 0xc(r1)
/* 807D9AB4  38 7B 05 EC */	addi r3, r27, 0x5ec
/* 807D9AB8  38 81 00 0C */	addi r4, r1, 0xc
/* 807D9ABC  38 A0 00 00 */	li r5, 0
/* 807D9AC0  38 C0 FF FF */	li r6, -1
/* 807D9AC4  81 9B 05 EC */	lwz r12, 0x5ec(r27)
/* 807D9AC8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807D9ACC  7D 89 03 A6 */	mtctr r12
/* 807D9AD0  4E 80 04 21 */	bctrl 
/* 807D9AD4  80 1B 14 34 */	lwz r0, 0x1434(r27)
/* 807D9AD8  90 01 00 08 */	stw r0, 8(r1)
/* 807D9ADC  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 807D9AE0  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 807D9AE4  38 81 00 08 */	addi r4, r1, 8
/* 807D9AE8  4B 83 FD 11 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 807D9AEC  38 00 00 14 */	li r0, 0x14
/* 807D9AF0  B0 03 09 98 */	sth r0, 0x998(r3)
/* 807D9AF4  48 00 00 E4 */	b lbl_807D9BD8
lbl_807D9AF8:
/* 807D9AF8  7C 60 07 75 */	extsb. r0, r3
/* 807D9AFC  41 82 00 10 */	beq lbl_807D9B0C
/* 807D9B00  88 1B 14 2F */	lbz r0, 0x142f(r27)
/* 807D9B04  7C 00 07 75 */	extsb. r0, r0
/* 807D9B08  40 82 00 D0 */	bne lbl_807D9BD8
lbl_807D9B0C:
/* 807D9B0C  7F 83 E3 78 */	mr r3, r28
/* 807D9B10  4B 8A AB E1 */	bl GetCoHitObj__12dCcD_GObjInfFv
/* 807D9B14  4B A8 9F 35 */	bl GetAc__8cCcD_ObjFv
/* 807D9B18  7C 7F 1B 78 */	mr r31, r3
/* 807D9B1C  C0 3B 05 2C */	lfs f1, 0x52c(r27)
/* 807D9B20  C0 1D 00 50 */	lfs f0, 0x50(r29)
/* 807D9B24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D9B28  4C 41 13 82 */	cror 2, 1, 2
/* 807D9B2C  40 82 00 AC */	bne lbl_807D9BD8
/* 807D9B30  7F 83 E3 78 */	mr r3, r28
/* 807D9B34  4B 8A AB BD */	bl GetCoHitObj__12dCcD_GObjInfFv
/* 807D9B38  80 63 00 44 */	lwz r3, 0x44(r3)
/* 807D9B3C  88 03 00 14 */	lbz r0, 0x14(r3)
/* 807D9B40  28 00 00 64 */	cmplwi r0, 0x64
/* 807D9B44  40 81 00 94 */	ble lbl_807D9BD8
/* 807D9B48  A8 1B 06 90 */	lha r0, 0x690(r27)
/* 807D9B4C  2C 00 00 06 */	cmpwi r0, 6
/* 807D9B50  41 82 00 0C */	beq lbl_807D9B5C
/* 807D9B54  2C 00 00 0A */	cmpwi r0, 0xa
/* 807D9B58  40 82 00 80 */	bne lbl_807D9BD8
lbl_807D9B5C:
/* 807D9B5C  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 807D9B60  C0 1D 00 50 */	lfs f0, 0x50(r29)
/* 807D9B64  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D9B68  4C 41 13 82 */	cror 2, 1, 2
/* 807D9B6C  40 82 00 6C */	bne lbl_807D9BD8
/* 807D9B70  38 61 00 14 */	addi r3, r1, 0x14
/* 807D9B74  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 807D9B78  38 BB 04 D0 */	addi r5, r27, 0x4d0
/* 807D9B7C  4B A8 CF B9 */	bl __mi__4cXyzCFRC3Vec
/* 807D9B80  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 807D9B84  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 807D9B88  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 807D9B8C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807D9B90  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 807D9B94  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 807D9B98  4B A8 DA DD */	bl cM_atan2s__Fff
/* 807D9B9C  A8 1B 04 E6 */	lha r0, 0x4e6(r27)
/* 807D9BA0  7C 00 18 50 */	subf r0, r0, r3
/* 807D9BA4  7C 00 07 35 */	extsh. r0, r0
/* 807D9BA8  40 80 00 1C */	bge lbl_807D9BC4
/* 807D9BAC  38 00 10 00 */	li r0, 0x1000
/* 807D9BB0  B0 1B 05 DE */	sth r0, 0x5de(r27)
/* 807D9BB4  A8 7B 04 DE */	lha r3, 0x4de(r27)
/* 807D9BB8  38 03 08 00 */	addi r0, r3, 0x800
/* 807D9BBC  B0 1B 04 DE */	sth r0, 0x4de(r27)
/* 807D9BC0  48 00 00 18 */	b lbl_807D9BD8
lbl_807D9BC4:
/* 807D9BC4  38 00 F0 00 */	li r0, -4096
/* 807D9BC8  B0 1B 05 DE */	sth r0, 0x5de(r27)
/* 807D9BCC  A8 7B 04 DE */	lha r3, 0x4de(r27)
/* 807D9BD0  38 03 F8 00 */	addi r0, r3, -2048
/* 807D9BD4  B0 1B 04 DE */	sth r0, 0x4de(r27)
lbl_807D9BD8:
/* 807D9BD8  3B 5A 00 01 */	addi r26, r26, 1
/* 807D9BDC  2C 1A 00 02 */	cmpwi r26, 2
/* 807D9BE0  3B 39 01 38 */	addi r25, r25, 0x138
/* 807D9BE4  40 81 FD 3C */	ble lbl_807D9920
/* 807D9BE8  38 7B 09 E0 */	addi r3, r27, 0x9e0
/* 807D9BEC  4B 8A 9C 45 */	bl Move__10dCcD_GSttsFv
/* 807D9BF0  A8 1B 06 A0 */	lha r0, 0x6a0(r27)
/* 807D9BF4  2C 00 00 00 */	cmpwi r0, 0
/* 807D9BF8  40 82 01 34 */	bne lbl_807D9D2C
/* 807D9BFC  3B 00 00 00 */	li r24, 0
/* 807D9C00  3B 40 00 00 */	li r26, 0
lbl_807D9C04:
/* 807D9C04  3A FA 0A 00 */	addi r23, r26, 0xa00
/* 807D9C08  7E FB BA 14 */	add r23, r27, r23
/* 807D9C0C  7E E3 BB 78 */	mr r3, r23
/* 807D9C10  4B 8A A8 51 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 807D9C14  28 03 00 00 */	cmplwi r3, 0
/* 807D9C18  41 82 01 04 */	beq lbl_807D9D1C
/* 807D9C1C  7E E3 BB 78 */	mr r3, r23
/* 807D9C20  4B 8A A8 D9 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 807D9C24  90 7B 13 C0 */	stw r3, 0x13c0(r27)
/* 807D9C28  88 1B 07 9D */	lbz r0, 0x79d(r27)
/* 807D9C2C  7C 00 07 75 */	extsb. r0, r0
/* 807D9C30  40 82 00 34 */	bne lbl_807D9C64
/* 807D9C34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807D9C38  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807D9C3C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 807D9C40  81 83 06 28 */	lwz r12, 0x628(r3)
/* 807D9C44  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 807D9C48  7D 89 03 A6 */	mtctr r12
/* 807D9C4C  4E 80 04 21 */	bctrl 
/* 807D9C50  28 03 00 00 */	cmplwi r3, 0
/* 807D9C54  41 82 00 34 */	beq lbl_807D9C88
/* 807D9C58  A0 1B 06 BE */	lhz r0, 0x6be(r27)
/* 807D9C5C  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 807D9C60  41 82 00 28 */	beq lbl_807D9C88
lbl_807D9C64:
/* 807D9C64  88 1B 07 9D */	lbz r0, 0x79d(r27)
/* 807D9C68  7C 00 07 75 */	extsb. r0, r0
/* 807D9C6C  41 82 00 80 */	beq lbl_807D9CEC
/* 807D9C70  38 7B 05 EC */	addi r3, r27, 0x5ec
/* 807D9C74  80 9B 13 C0 */	lwz r4, 0x13c0(r27)
/* 807D9C78  38 A0 00 28 */	li r5, 0x28
/* 807D9C7C  38 C0 00 00 */	li r6, 0
/* 807D9C80  4B 8A D8 95 */	bl def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c
/* 807D9C84  48 00 00 68 */	b lbl_807D9CEC
lbl_807D9C88:
/* 807D9C88  38 7B 13 C0 */	addi r3, r27, 0x13c0
/* 807D9C8C  4B 8A DD CD */	bl at_power_check__FP11dCcU_AtInfo
/* 807D9C90  7F 63 DB 78 */	mr r3, r27
/* 807D9C94  38 9B 13 C0 */	addi r4, r27, 0x13c0
/* 807D9C98  4B 8A DF 6D */	bl cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 807D9C9C  A0 1B 06 BE */	lhz r0, 0x6be(r27)
/* 807D9CA0  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 807D9CA4  41 82 00 38 */	beq lbl_807D9CDC
/* 807D9CA8  A0 1B 13 DC */	lhz r0, 0x13dc(r27)
/* 807D9CAC  28 00 00 1E */	cmplwi r0, 0x1e
/* 807D9CB0  40 80 00 18 */	bge lbl_807D9CC8
/* 807D9CB4  A8 1B 06 90 */	lha r0, 0x690(r27)
/* 807D9CB8  B0 1B 06 92 */	sth r0, 0x692(r27)
/* 807D9CBC  38 00 00 15 */	li r0, 0x15
/* 807D9CC0  B0 1B 06 90 */	sth r0, 0x690(r27)
/* 807D9CC4  48 00 00 0C */	b lbl_807D9CD0
lbl_807D9CC8:
/* 807D9CC8  38 00 00 18 */	li r0, 0x18
/* 807D9CCC  B0 1B 06 90 */	sth r0, 0x690(r27)
lbl_807D9CD0:
/* 807D9CD0  38 00 00 00 */	li r0, 0
/* 807D9CD4  B0 1B 05 B4 */	sth r0, 0x5b4(r27)
/* 807D9CD8  48 00 00 14 */	b lbl_807D9CEC
lbl_807D9CDC:
/* 807D9CDC  38 00 00 15 */	li r0, 0x15
/* 807D9CE0  B0 1B 06 90 */	sth r0, 0x690(r27)
/* 807D9CE4  38 00 00 00 */	li r0, 0
/* 807D9CE8  B0 1B 05 B4 */	sth r0, 0x5b4(r27)
lbl_807D9CEC:
/* 807D9CEC  80 7B 13 C0 */	lwz r3, 0x13c0(r27)
/* 807D9CF0  80 03 00 10 */	lwz r0, 0x10(r3)
/* 807D9CF4  74 00 D8 00 */	andis. r0, r0, 0xd800
/* 807D9CF8  41 82 00 10 */	beq lbl_807D9D08
/* 807D9CFC  38 00 00 14 */	li r0, 0x14
/* 807D9D00  B0 1B 06 A0 */	sth r0, 0x6a0(r27)
/* 807D9D04  48 00 00 0C */	b lbl_807D9D10
lbl_807D9D08:
/* 807D9D08  38 00 00 0A */	li r0, 0xa
/* 807D9D0C  B0 1B 06 A0 */	sth r0, 0x6a0(r27)
lbl_807D9D10:
/* 807D9D10  C0 1D 00 38 */	lfs f0, 0x38(r29)
/* 807D9D14  D0 1B 16 84 */	stfs f0, 0x1684(r27)
/* 807D9D18  48 00 00 14 */	b lbl_807D9D2C
lbl_807D9D1C:
/* 807D9D1C  3B 18 00 01 */	addi r24, r24, 1
/* 807D9D20  2C 18 00 06 */	cmpwi r24, 6
/* 807D9D24  3B 5A 01 38 */	addi r26, r26, 0x138
/* 807D9D28  40 81 FE DC */	ble lbl_807D9C04
lbl_807D9D2C:
/* 807D9D2C  39 61 00 60 */	addi r11, r1, 0x60
/* 807D9D30  4B B8 84 E1 */	bl _restgpr_23
/* 807D9D34  80 01 00 64 */	lwz r0, 0x64(r1)
/* 807D9D38  7C 08 03 A6 */	mtlr r0
/* 807D9D3C  38 21 00 60 */	addi r1, r1, 0x60
/* 807D9D40  4E 80 00 20 */	blr 
