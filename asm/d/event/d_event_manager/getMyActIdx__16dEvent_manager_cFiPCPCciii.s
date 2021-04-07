lbl_80047E10:
/* 80047E10  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80047E14  7C 08 02 A6 */	mflr r0
/* 80047E18  90 01 00 34 */	stw r0, 0x34(r1)
/* 80047E1C  39 61 00 30 */	addi r11, r1, 0x30
/* 80047E20  48 31 A3 AD */	bl _savegpr_25
/* 80047E24  7C BD 2B 78 */	mr r29, r5
/* 80047E28  7C DE 33 78 */	mr r30, r6
/* 80047E2C  7D 1F 43 78 */	mr r31, r8
/* 80047E30  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80047E34  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80047E38  88 05 4F AC */	lbz r0, 0x4fac(r5)
/* 80047E3C  28 00 00 00 */	cmplwi r0, 0
/* 80047E40  40 82 00 0C */	bne lbl_80047E4C
/* 80047E44  38 60 00 00 */	li r3, 0
/* 80047E48  48 00 00 FC */	b lbl_80047F44
lbl_80047E4C:
/* 80047E4C  2C 04 FF FF */	cmpwi r4, -1
/* 80047E50  40 82 00 0C */	bne lbl_80047E5C
/* 80047E54  38 60 FF FF */	li r3, -1
/* 80047E58  48 00 00 EC */	b lbl_80047F44
lbl_80047E5C:
/* 80047E5C  A8 03 01 AA */	lha r0, 0x1aa(r3)
/* 80047E60  2C 00 FF FF */	cmpwi r0, -1
/* 80047E64  40 82 00 0C */	bne lbl_80047E70
/* 80047E68  38 60 FF FF */	li r3, -1
/* 80047E6C  48 00 00 D8 */	b lbl_80047F44
lbl_80047E70:
/* 80047E70  80 03 01 B4 */	lwz r0, 0x1b4(r3)
/* 80047E74  1C 00 00 24 */	mulli r0, r0, 0x24
/* 80047E78  7C A3 02 14 */	add r5, r3, r0
/* 80047E7C  80 A5 00 08 */	lwz r5, 8(r5)
/* 80047E80  1C 04 00 50 */	mulli r0, r4, 0x50
/* 80047E84  7F 65 02 15 */	add. r27, r5, r0
/* 80047E88  41 82 00 20 */	beq lbl_80047EA8
/* 80047E8C  88 1B 00 41 */	lbz r0, 0x41(r27)
/* 80047E90  28 00 00 00 */	cmplwi r0, 0
/* 80047E94  41 82 00 1C */	beq lbl_80047EB0
/* 80047E98  2C 07 00 00 */	cmpwi r7, 0
/* 80047E9C  40 82 00 14 */	bne lbl_80047EB0
/* 80047EA0  80 7B 00 3C */	lwz r3, 0x3c(r27)
/* 80047EA4  48 00 00 A0 */	b lbl_80047F44
lbl_80047EA8:
/* 80047EA8  38 60 FF FF */	li r3, -1
/* 80047EAC  48 00 00 98 */	b lbl_80047F44
lbl_80047EB0:
/* 80047EB0  48 00 00 AD */	bl getMyNowCutName__16dEvent_manager_cFi
/* 80047EB4  7C 79 1B 79 */	or. r25, r3, r3
/* 80047EB8  40 82 00 14 */	bne lbl_80047ECC
/* 80047EBC  38 00 FF FF */	li r0, -1
/* 80047EC0  90 1B 00 3C */	stw r0, 0x3c(r27)
/* 80047EC4  38 60 FF FF */	li r3, -1
/* 80047EC8  48 00 00 7C */	b lbl_80047F44
lbl_80047ECC:
/* 80047ECC  38 00 00 01 */	li r0, 1
/* 80047ED0  98 1B 00 41 */	stb r0, 0x41(r27)
/* 80047ED4  3B 40 00 00 */	li r26, 0
/* 80047ED8  3B 80 00 00 */	li r28, 0
/* 80047EDC  48 00 00 54 */	b lbl_80047F30
lbl_80047EE0:
/* 80047EE0  2C 1F 00 00 */	cmpwi r31, 0
/* 80047EE4  41 82 00 24 */	beq lbl_80047F08
/* 80047EE8  7C 7D E0 2E */	lwzx r3, r29, r28
/* 80047EEC  7F 24 CB 78 */	mr r4, r25
/* 80047EF0  4B FF FE BD */	bl dEvmng_strcmp__FPCcPc
/* 80047EF4  2C 03 00 00 */	cmpwi r3, 0
/* 80047EF8  40 82 00 30 */	bne lbl_80047F28
/* 80047EFC  93 5B 00 3C */	stw r26, 0x3c(r27)
/* 80047F00  7F 43 D3 78 */	mr r3, r26
/* 80047F04  48 00 00 40 */	b lbl_80047F44
lbl_80047F08:
/* 80047F08  7C 7D E0 2E */	lwzx r3, r29, r28
/* 80047F0C  7F 24 CB 78 */	mr r4, r25
/* 80047F10  48 32 0A 85 */	bl strcmp
/* 80047F14  2C 03 00 00 */	cmpwi r3, 0
/* 80047F18  40 82 00 10 */	bne lbl_80047F28
/* 80047F1C  93 5B 00 3C */	stw r26, 0x3c(r27)
/* 80047F20  7F 43 D3 78 */	mr r3, r26
/* 80047F24  48 00 00 20 */	b lbl_80047F44
lbl_80047F28:
/* 80047F28  3B 5A 00 01 */	addi r26, r26, 1
/* 80047F2C  3B 9C 00 04 */	addi r28, r28, 4
lbl_80047F30:
/* 80047F30  7C 1A F0 00 */	cmpw r26, r30
/* 80047F34  41 80 FF AC */	blt lbl_80047EE0
/* 80047F38  38 00 FF FF */	li r0, -1
/* 80047F3C  90 1B 00 3C */	stw r0, 0x3c(r27)
/* 80047F40  38 60 00 00 */	li r3, 0
lbl_80047F44:
/* 80047F44  39 61 00 30 */	addi r11, r1, 0x30
/* 80047F48  48 31 A2 D1 */	bl _restgpr_25
/* 80047F4C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80047F50  7C 08 03 A6 */	mtlr r0
/* 80047F54  38 21 00 30 */	addi r1, r1, 0x30
/* 80047F58  4E 80 00 20 */	blr 
