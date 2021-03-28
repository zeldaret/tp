lbl_80D48C58:
/* 80D48C58  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D48C5C  7C 08 02 A6 */	mflr r0
/* 80D48C60  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D48C64  39 61 00 30 */	addi r11, r1, 0x30
/* 80D48C68  4B 61 95 74 */	b _savegpr_29
/* 80D48C6C  7C 7F 1B 78 */	mr r31, r3
/* 80D48C70  3C 60 80 D5 */	lis r3, m__14daPeru_Param_c@ha
/* 80D48C74  3B C3 C0 60 */	addi r30, r3, m__14daPeru_Param_c@l
/* 80D48C78  A0 1F 0E 22 */	lhz r0, 0xe22(r31)
/* 80D48C7C  2C 00 00 01 */	cmpwi r0, 1
/* 80D48C80  41 82 00 28 */	beq lbl_80D48CA8
/* 80D48C84  40 80 00 14 */	bge lbl_80D48C98
/* 80D48C88  2C 00 FF FF */	cmpwi r0, -1
/* 80D48C8C  41 82 01 84 */	beq lbl_80D48E10
/* 80D48C90  40 80 00 14 */	bge lbl_80D48CA4
/* 80D48C94  48 00 01 84 */	b lbl_80D48E18
lbl_80D48C98:
/* 80D48C98  2C 00 00 03 */	cmpwi r0, 3
/* 80D48C9C  40 80 01 7C */	bge lbl_80D48E18
/* 80D48CA0  48 00 00 74 */	b lbl_80D48D14
lbl_80D48CA4:
/* 80D48CA4  90 9F 0E 58 */	stw r4, 0xe58(r31)
lbl_80D48CA8:
/* 80D48CA8  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80D48CAC  2C 00 00 02 */	cmpwi r0, 2
/* 80D48CB0  41 82 00 24 */	beq lbl_80D48CD4
/* 80D48CB4  83 BF 0B 5C */	lwz r29, 0xb5c(r31)
/* 80D48CB8  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80D48CBC  4B 3F CB DC */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80D48CC0  93 BF 0B 5C */	stw r29, 0xb5c(r31)
/* 80D48CC4  38 00 00 02 */	li r0, 2
/* 80D48CC8  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80D48CCC  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80D48CD0  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80D48CD4:
/* 80D48CD4  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80D48CD8  2C 00 00 07 */	cmpwi r0, 7
/* 80D48CDC  41 82 00 24 */	beq lbl_80D48D00
/* 80D48CE0  83 BF 0B 80 */	lwz r29, 0xb80(r31)
/* 80D48CE4  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80D48CE8  4B 3F CB B0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80D48CEC  93 BF 0B 80 */	stw r29, 0xb80(r31)
/* 80D48CF0  38 00 00 07 */	li r0, 7
/* 80D48CF4  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80D48CF8  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80D48CFC  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80D48D00:
/* 80D48D00  38 00 00 00 */	li r0, 0
/* 80D48D04  98 1F 0E 7C */	stb r0, 0xe7c(r31)
/* 80D48D08  38 00 00 02 */	li r0, 2
/* 80D48D0C  B0 1F 0E 22 */	sth r0, 0xe22(r31)
/* 80D48D10  48 00 01 08 */	b lbl_80D48E18
lbl_80D48D14:
/* 80D48D14  80 1F 06 B8 */	lwz r0, 0x6b8(r31)
/* 80D48D18  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80D48D1C  41 82 00 FC */	beq lbl_80D48E18
/* 80D48D20  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80D48D24  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80D48D28  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80D48D2C  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80D48D30  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80D48D34  80 1F 0E 58 */	lwz r0, 0xe58(r31)
/* 80D48D38  2C 00 00 00 */	cmpwi r0, 0
/* 80D48D3C  40 82 00 AC */	bne lbl_80D48DE8
/* 80D48D40  88 1F 0E 7C */	lbz r0, 0xe7c(r31)
/* 80D48D44  7C 00 07 75 */	extsb. r0, r0
/* 80D48D48  40 82 00 38 */	bne lbl_80D48D80
/* 80D48D4C  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600B3@ha */
/* 80D48D50  38 03 00 B3 */	addi r0, r3, 0x00B3 /* 0x000600B3@l */
/* 80D48D54  90 01 00 08 */	stw r0, 8(r1)
/* 80D48D58  38 7F 05 80 */	addi r3, r31, 0x580
/* 80D48D5C  38 81 00 08 */	addi r4, r1, 8
/* 80D48D60  38 A0 00 00 */	li r5, 0
/* 80D48D64  38 C0 FF FF */	li r6, -1
/* 80D48D68  81 9F 05 80 */	lwz r12, 0x580(r31)
/* 80D48D6C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80D48D70  7D 89 03 A6 */	mtctr r12
/* 80D48D74  4E 80 04 21 */	bctrl 
/* 80D48D78  38 00 00 01 */	li r0, 1
/* 80D48D7C  98 1F 0E 7C */	stb r0, 0xe7c(r31)
lbl_80D48D80:
/* 80D48D80  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80D48D84  38 80 00 01 */	li r4, 1
/* 80D48D88  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80D48D8C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80D48D90  40 82 00 18 */	bne lbl_80D48DA8
/* 80D48D94  C0 3E 00 A8 */	lfs f1, 0xa8(r30)
/* 80D48D98  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80D48D9C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80D48DA0  41 82 00 08 */	beq lbl_80D48DA8
/* 80D48DA4  38 80 00 00 */	li r4, 0
lbl_80D48DA8:
/* 80D48DA8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80D48DAC  41 82 00 6C */	beq lbl_80D48E18
/* 80D48DB0  3C 60 80 D5 */	lis r3, lit_5082@ha
/* 80D48DB4  38 83 C5 74 */	addi r4, r3, lit_5082@l
/* 80D48DB8  80 64 00 00 */	lwz r3, 0(r4)
/* 80D48DBC  80 04 00 04 */	lwz r0, 4(r4)
/* 80D48DC0  90 61 00 0C */	stw r3, 0xc(r1)
/* 80D48DC4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D48DC8  80 04 00 08 */	lwz r0, 8(r4)
/* 80D48DCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D48DD0  7F E3 FB 78 */	mr r3, r31
/* 80D48DD4  38 81 00 0C */	addi r4, r1, 0xc
/* 80D48DD8  38 A0 00 00 */	li r5, 0
/* 80D48DDC  4B FF F5 89 */	bl setAction__8daPeru_cFM8daPeru_cFPCvPvi_ii
/* 80D48DE0  38 60 00 01 */	li r3, 1
/* 80D48DE4  48 00 00 38 */	b lbl_80D48E1C
lbl_80D48DE8:
/* 80D48DE8  2C 00 00 01 */	cmpwi r0, 1
/* 80D48DEC  40 82 00 2C */	bne lbl_80D48E18
/* 80D48DF0  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80D48DF4  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80D48DF8  C0 1E 00 CC */	lfs f0, 0xcc(r30)
/* 80D48DFC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D48E00  4C 41 13 82 */	cror 2, 1, 2
/* 80D48E04  40 82 00 14 */	bne lbl_80D48E18
/* 80D48E08  38 60 00 01 */	li r3, 1
/* 80D48E0C  48 00 00 10 */	b lbl_80D48E1C
lbl_80D48E10:
/* 80D48E10  38 00 00 00 */	li r0, 0
/* 80D48E14  90 1F 0E 58 */	stw r0, 0xe58(r31)
lbl_80D48E18:
/* 80D48E18  38 60 00 00 */	li r3, 0
lbl_80D48E1C:
/* 80D48E1C  39 61 00 30 */	addi r11, r1, 0x30
/* 80D48E20  4B 61 94 08 */	b _restgpr_29
/* 80D48E24  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D48E28  7C 08 03 A6 */	mtlr r0
/* 80D48E2C  38 21 00 30 */	addi r1, r1, 0x30
/* 80D48E30  4E 80 00 20 */	blr 
