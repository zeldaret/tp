lbl_80512D14:
/* 80512D14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80512D18  7C 08 02 A6 */	mflr r0
/* 80512D1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80512D20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80512D24  7C 7F 1B 78 */	mr r31, r3
/* 80512D28  4B B0 5F B8 */	b fopAc_IsActor__FPv
/* 80512D2C  2C 03 00 00 */	cmpwi r3, 0
/* 80512D30  41 82 00 C0 */	beq lbl_80512DF0
/* 80512D34  A8 1F 00 08 */	lha r0, 8(r31)
/* 80512D38  2C 00 01 D4 */	cmpwi r0, 0x1d4
/* 80512D3C  40 82 00 B4 */	bne lbl_80512DF0
/* 80512D40  88 9F 05 B7 */	lbz r4, 0x5b7(r31)
/* 80512D44  3C 60 80 52 */	lis r3, data_80519338@ha
/* 80512D48  88 03 93 38 */	lbz r0, data_80519338@l(r3)
/* 80512D4C  7C 04 00 40 */	cmplw r4, r0
/* 80512D50  40 82 00 A0 */	bne lbl_80512DF0
/* 80512D54  A8 1F 09 72 */	lha r0, 0x972(r31)
/* 80512D58  2C 00 00 16 */	cmpwi r0, 0x16
/* 80512D5C  41 82 00 94 */	beq lbl_80512DF0
/* 80512D60  38 00 00 16 */	li r0, 0x16
/* 80512D64  B0 1F 09 72 */	sth r0, 0x972(r31)
/* 80512D68  38 00 00 02 */	li r0, 2
/* 80512D6C  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 80512D70  7F E3 FB 78 */	mr r3, r31
/* 80512D74  38 80 00 16 */	li r4, 0x16
/* 80512D78  3C A0 80 52 */	lis r5, lit_5450@ha
/* 80512D7C  C0 25 86 2C */	lfs f1, lit_5450@l(r5)
/* 80512D80  38 A0 00 02 */	li r5, 2
/* 80512D84  3C C0 80 52 */	lis r6, lit_4210@ha
/* 80512D88  C0 46 85 8C */	lfs f2, lit_4210@l(r6)
/* 80512D8C  4B FF 1E 49 */	bl anm_init__FP10e_rd_classifUcf
/* 80512D90  38 00 03 E8 */	li r0, 0x3e8
/* 80512D94  B0 1F 09 90 */	sth r0, 0x990(r31)
/* 80512D98  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 80512D9C  B0 1F 05 CC */	sth r0, 0x5cc(r31)
/* 80512DA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80512DA4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80512DA8  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80512DAC  38 80 00 01 */	li r4, 1
/* 80512DB0  7F E5 FB 78 */	mr r5, r31
/* 80512DB4  38 DF 05 38 */	addi r6, r31, 0x538
/* 80512DB8  38 E0 00 00 */	li r7, 0
/* 80512DBC  39 00 00 00 */	li r8, 0
/* 80512DC0  39 20 00 00 */	li r9, 0
/* 80512DC4  4B B3 94 54 */	b setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
/* 80512DC8  38 7F 05 D4 */	addi r3, r31, 0x5d4
/* 80512DCC  3C 80 00 04 */	lis r4, 0x0004 /* 0x00040005@ha */
/* 80512DD0  38 84 00 05 */	addi r4, r4, 0x0005 /* 0x00040005@l */
/* 80512DD4  38 A0 00 1F */	li r5, 0x1f
/* 80512DD8  81 9F 05 D4 */	lwz r12, 0x5d4(r31)
/* 80512DDC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80512DE0  7D 89 03 A6 */	mtctr r12
/* 80512DE4  4E 80 04 21 */	bctrl 
/* 80512DE8  7F E3 FB 78 */	mr r3, r31
/* 80512DEC  48 00 00 08 */	b lbl_80512DF4
lbl_80512DF0:
/* 80512DF0  38 60 00 00 */	li r3, 0
lbl_80512DF4:
/* 80512DF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80512DF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80512DFC  7C 08 03 A6 */	mtlr r0
/* 80512E00  38 21 00 10 */	addi r1, r1, 0x10
/* 80512E04  4E 80 00 20 */	blr 
