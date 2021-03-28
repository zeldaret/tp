lbl_80B61C8C:
/* 80B61C8C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B61C90  7C 08 02 A6 */	mflr r0
/* 80B61C94  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B61C98  39 61 00 30 */	addi r11, r1, 0x30
/* 80B61C9C  4B 80 05 2C */	b _savegpr_24
/* 80B61CA0  7C 79 1B 78 */	mr r25, r3
/* 80B61CA4  7C 9A 23 78 */	mr r26, r4
/* 80B61CA8  3B E0 00 00 */	li r31, 0
/* 80B61CAC  3B C0 FF FF */	li r30, -1
/* 80B61CB0  3B A0 00 00 */	li r29, 0
/* 80B61CB4  3B 80 00 00 */	li r28, 0
/* 80B61CB8  3B 60 00 00 */	li r27, 0
/* 80B61CBC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B61CC0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B61CC4  3B 03 4F F8 */	addi r24, r3, 0x4ff8
/* 80B61CC8  7F 03 C3 78 */	mr r3, r24
/* 80B61CCC  3C A0 80 B6 */	lis r5, struct_80B67E68+0x0@ha
/* 80B61CD0  38 A5 7E 68 */	addi r5, r5, struct_80B67E68+0x0@l
/* 80B61CD4  38 A5 00 B4 */	addi r5, r5, 0xb4
/* 80B61CD8  38 C0 00 03 */	li r6, 3
/* 80B61CDC  4B 4E 64 10 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B61CE0  28 03 00 00 */	cmplwi r3, 0
/* 80B61CE4  41 82 00 08 */	beq lbl_80B61CEC
/* 80B61CE8  83 C3 00 00 */	lwz r30, 0(r3)
lbl_80B61CEC:
/* 80B61CEC  7F 03 C3 78 */	mr r3, r24
/* 80B61CF0  7F 44 D3 78 */	mr r4, r26
/* 80B61CF4  3C A0 80 B6 */	lis r5, struct_80B67E68+0x0@ha
/* 80B61CF8  38 A5 7E 68 */	addi r5, r5, struct_80B67E68+0x0@l
/* 80B61CFC  38 A5 00 B8 */	addi r5, r5, 0xb8
/* 80B61D00  38 C0 00 03 */	li r6, 3
/* 80B61D04  4B 4E 63 E8 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B61D08  28 03 00 00 */	cmplwi r3, 0
/* 80B61D0C  41 82 00 08 */	beq lbl_80B61D14
/* 80B61D10  83 A3 00 00 */	lwz r29, 0(r3)
lbl_80B61D14:
/* 80B61D14  7F 03 C3 78 */	mr r3, r24
/* 80B61D18  7F 44 D3 78 */	mr r4, r26
/* 80B61D1C  3C A0 80 B6 */	lis r5, struct_80B67E68+0x0@ha
/* 80B61D20  38 A5 7E 68 */	addi r5, r5, struct_80B67E68+0x0@l
/* 80B61D24  38 A5 00 BE */	addi r5, r5, 0xbe
/* 80B61D28  38 C0 00 03 */	li r6, 3
/* 80B61D2C  4B 4E 63 C0 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B61D30  28 03 00 00 */	cmplwi r3, 0
/* 80B61D34  41 82 00 08 */	beq lbl_80B61D3C
/* 80B61D38  83 83 00 00 */	lwz r28, 0(r3)
lbl_80B61D3C:
/* 80B61D3C  7F 03 C3 78 */	mr r3, r24
/* 80B61D40  7F 44 D3 78 */	mr r4, r26
/* 80B61D44  3C A0 80 B6 */	lis r5, struct_80B67E68+0x0@ha
/* 80B61D48  38 A5 7E 68 */	addi r5, r5, struct_80B67E68+0x0@l
/* 80B61D4C  38 A5 00 C4 */	addi r5, r5, 0xc4
/* 80B61D50  38 C0 00 03 */	li r6, 3
/* 80B61D54  4B 4E 63 98 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B61D58  28 03 00 00 */	cmplwi r3, 0
/* 80B61D5C  41 82 00 08 */	beq lbl_80B61D64
/* 80B61D60  83 63 00 00 */	lwz r27, 0(r3)
lbl_80B61D64:
/* 80B61D64  7F 03 C3 78 */	mr r3, r24
/* 80B61D68  7F 44 D3 78 */	mr r4, r26
/* 80B61D6C  4B 4E 5F E0 */	b getIsAddvance__16dEvent_manager_cFi
/* 80B61D70  2C 03 00 00 */	cmpwi r3, 0
/* 80B61D74  41 82 00 48 */	beq lbl_80B61DBC
/* 80B61D78  2C 1E 00 01 */	cmpwi r30, 1
/* 80B61D7C  41 82 00 30 */	beq lbl_80B61DAC
/* 80B61D80  40 80 00 3C */	bge lbl_80B61DBC
/* 80B61D84  2C 1E 00 00 */	cmpwi r30, 0
/* 80B61D88  40 80 00 0C */	bge lbl_80B61D94
/* 80B61D8C  48 00 00 30 */	b lbl_80B61DBC
/* 80B61D90  48 00 00 2C */	b lbl_80B61DBC
lbl_80B61D94:
/* 80B61D94  38 00 00 04 */	li r0, 4
/* 80B61D98  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80B61D9C  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 80B61DA0  98 03 00 C1 */	stb r0, 0xc1(r3)
/* 80B61DA4  93 B9 0D C4 */	stw r29, 0xdc4(r25)
/* 80B61DA8  48 00 00 14 */	b lbl_80B61DBC
lbl_80B61DAC:
/* 80B61DAC  7F 23 CB 78 */	mr r3, r25
/* 80B61DB0  80 99 0A 7C */	lwz r4, 0xa7c(r25)
/* 80B61DB4  38 A0 00 00 */	li r5, 0
/* 80B61DB8  4B 5E 9E 38 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
lbl_80B61DBC:
/* 80B61DBC  3C 60 80 B6 */	lis r3, lit_5758@ha
/* 80B61DC0  38 83 7D B4 */	addi r4, r3, lit_5758@l
/* 80B61DC4  80 64 00 00 */	lwz r3, 0(r4)
/* 80B61DC8  80 04 00 04 */	lwz r0, 4(r4)
/* 80B61DCC  90 61 00 08 */	stw r3, 8(r1)
/* 80B61DD0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B61DD4  2C 1E 00 00 */	cmpwi r30, 0
/* 80B61DD8  41 82 00 14 */	beq lbl_80B61DEC
/* 80B61DDC  41 80 00 7C */	blt lbl_80B61E58
/* 80B61DE0  2C 1E 00 03 */	cmpwi r30, 3
/* 80B61DE4  40 80 00 74 */	bge lbl_80B61E58
/* 80B61DE8  48 00 00 1C */	b lbl_80B61E04
lbl_80B61DEC:
/* 80B61DEC  38 79 0D C4 */	addi r3, r25, 0xdc4
/* 80B61DF0  48 00 5A E1 */	bl func_80B678D0
/* 80B61DF4  2C 03 00 00 */	cmpwi r3, 0
/* 80B61DF8  40 82 00 60 */	bne lbl_80B61E58
/* 80B61DFC  3B E0 00 01 */	li r31, 1
/* 80B61E00  48 00 00 58 */	b lbl_80B61E58
lbl_80B61E04:
/* 80B61E04  93 81 00 08 */	stw r28, 8(r1)
/* 80B61E08  7F 23 CB 78 */	mr r3, r25
/* 80B61E0C  38 81 00 08 */	addi r4, r1, 8
/* 80B61E10  7F 65 DB 78 */	mr r5, r27
/* 80B61E14  38 C0 00 00 */	li r6, 0
/* 80B61E18  38 E0 00 00 */	li r7, 0
/* 80B61E1C  4B 5E 9E 5C */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80B61E20  2C 03 00 00 */	cmpwi r3, 0
/* 80B61E24  41 82 00 34 */	beq lbl_80B61E58
/* 80B61E28  2C 1C 00 00 */	cmpwi r28, 0
/* 80B61E2C  40 82 00 28 */	bne lbl_80B61E54
/* 80B61E30  88 19 09 9A */	lbz r0, 0x99a(r25)
/* 80B61E34  28 00 00 01 */	cmplwi r0, 1
/* 80B61E38  40 82 00 20 */	bne lbl_80B61E58
/* 80B61E3C  2C 1E 00 02 */	cmpwi r30, 2
/* 80B61E40  40 82 00 0C */	bne lbl_80B61E4C
/* 80B61E44  38 00 00 00 */	li r0, 0
/* 80B61E48  98 19 10 62 */	stb r0, 0x1062(r25)
lbl_80B61E4C:
/* 80B61E4C  3B E0 00 01 */	li r31, 1
/* 80B61E50  48 00 00 08 */	b lbl_80B61E58
lbl_80B61E54:
/* 80B61E54  3B E0 00 01 */	li r31, 1
lbl_80B61E58:
/* 80B61E58  7F E3 FB 78 */	mr r3, r31
/* 80B61E5C  39 61 00 30 */	addi r11, r1, 0x30
/* 80B61E60  4B 80 03 B4 */	b _restgpr_24
/* 80B61E64  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B61E68  7C 08 03 A6 */	mtlr r0
/* 80B61E6C  38 21 00 30 */	addi r1, r1, 0x30
/* 80B61E70  4E 80 00 20 */	blr 
