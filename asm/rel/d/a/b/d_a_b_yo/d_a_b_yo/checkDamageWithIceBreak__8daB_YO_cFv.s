lbl_80634CEC:
/* 80634CEC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80634CF0  7C 08 02 A6 */	mflr r0
/* 80634CF4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80634CF8  39 61 00 30 */	addi r11, r1, 0x30
/* 80634CFC  4B D2 D4 D0 */	b _savegpr_25
/* 80634D00  7C 7F 1B 78 */	mr r31, r3
/* 80634D04  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80634D08  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l
/* 80634D0C  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80634D10  4B 9E 5A 00 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80634D14  7C 7B 1B 78 */	mr r27, r3
/* 80634D18  38 7F 12 AC */	addi r3, r31, 0x12ac
/* 80634D1C  4B A4 F5 A4 */	b ChkAtHit__12dCcD_GObjInfFv
/* 80634D20  28 03 00 00 */	cmplwi r3, 0
/* 80634D24  41 82 00 C8 */	beq lbl_80634DEC
/* 80634D28  38 7F 12 AC */	addi r3, r31, 0x12ac
/* 80634D2C  4B A4 F6 2C */	b GetAtHitObj__12dCcD_GObjInfFv
/* 80634D30  4B C2 ED 18 */	b GetAc__8cCcD_ObjFv
/* 80634D34  A8 03 00 08 */	lha r0, 8(r3)
/* 80634D38  2C 00 00 FD */	cmpwi r0, 0xfd
/* 80634D3C  40 82 00 B0 */	bne lbl_80634DEC
/* 80634D40  3B 20 00 00 */	li r25, 0
/* 80634D44  3B C0 00 00 */	li r30, 0
/* 80634D48  3B A0 00 00 */	li r29, 0
/* 80634D4C  7F 7A 07 34 */	extsh r26, r27
lbl_80634D50:
/* 80634D50  A8 1F 0F 5C */	lha r0, 0xf5c(r31)
/* 80634D54  7C 00 EA 14 */	add r0, r0, r29
/* 80634D58  7C 1A 00 50 */	subf r0, r26, r0
/* 80634D5C  7C 03 07 34 */	extsh r3, r0
/* 80634D60  4B D3 03 70 */	b abs
/* 80634D64  2C 03 0C CC */	cmpwi r3, 0xccc
/* 80634D68  40 80 00 34 */	bge lbl_80634D9C
/* 80634D6C  38 1E 06 08 */	addi r0, r30, 0x608
/* 80634D70  7C 7F 00 2E */	lwzx r3, r31, r0
/* 80634D74  3C 03 00 01 */	addis r0, r3, 1
/* 80634D78  28 00 FF FF */	cmplwi r0, 0xffff
/* 80634D7C  41 82 00 20 */	beq lbl_80634D9C
/* 80634D80  38 81 00 08 */	addi r4, r1, 8
/* 80634D84  4B 9E 4C 38 */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 80634D88  80 61 00 08 */	lwz r3, 8(r1)
/* 80634D8C  28 03 00 00 */	cmplwi r3, 0
/* 80634D90  41 82 00 0C */	beq lbl_80634D9C
/* 80634D94  38 80 00 07 */	li r4, 7
/* 80634D98  48 00 56 E8 */	b setOperate__9daB_YOI_cFi
lbl_80634D9C:
/* 80634D9C  3B 39 00 01 */	addi r25, r25, 1
/* 80634DA0  2C 19 00 0A */	cmpwi r25, 0xa
/* 80634DA4  3B DE 00 04 */	addi r30, r30, 4
/* 80634DA8  3B BD 19 99 */	addi r29, r29, 0x1999
/* 80634DAC  41 80 FF A4 */	blt lbl_80634D50
/* 80634DB0  80 7C 5D AC */	lwz r3, 0x5dac(r28)
/* 80634DB4  7F 64 DB 78 */	mr r4, r27
/* 80634DB8  3C A0 80 64 */	lis r5, lit_6259@ha
/* 80634DBC  C0 25 99 B8 */	lfs f1, lit_6259@l(r5)
/* 80634DC0  3C A0 80 64 */	lis r5, lit_5343@ha
/* 80634DC4  C0 45 98 F8 */	lfs f2, lit_5343@l(r5)
/* 80634DC8  38 A0 00 04 */	li r5, 4
/* 80634DCC  38 C0 00 00 */	li r6, 0
/* 80634DD0  38 E0 00 00 */	li r7, 0
/* 80634DD4  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80634DD8  81 8C 01 60 */	lwz r12, 0x160(r12)
/* 80634DDC  7D 89 03 A6 */	mtctr r12
/* 80634DE0  4E 80 04 21 */	bctrl 
/* 80634DE4  38 00 00 3C */	li r0, 0x3c
/* 80634DE8  90 1F 0F A4 */	stw r0, 0xfa4(r31)
lbl_80634DEC:
/* 80634DEC  39 61 00 30 */	addi r11, r1, 0x30
/* 80634DF0  4B D2 D4 28 */	b _restgpr_25
/* 80634DF4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80634DF8  7C 08 03 A6 */	mtlr r0
/* 80634DFC  38 21 00 30 */	addi r1, r1, 0x30
/* 80634E00  4E 80 00 20 */	blr 
