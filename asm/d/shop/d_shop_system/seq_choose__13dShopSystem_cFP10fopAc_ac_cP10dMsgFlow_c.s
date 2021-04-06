lbl_80199D14:
/* 80199D14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80199D18  7C 08 02 A6 */	mflr r0
/* 80199D1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80199D20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80199D24  93 C1 00 08 */	stw r30, 8(r1)
/* 80199D28  7C 7E 1B 78 */	mr r30, r3
/* 80199D2C  7C BF 2B 78 */	mr r31, r5
/* 80199D30  38 00 00 22 */	li r0, 0x22
/* 80199D34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80199D38  38 A3 61 C0 */	addi r5, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80199D3C  98 05 5E 3C */	stb r0, 0x5e3c(r5)
/* 80199D40  38 60 00 00 */	li r3, 0
/* 80199D44  98 65 5E 57 */	stb r3, 0x5e57(r5)
/* 80199D48  88 1F 00 24 */	lbz r0, 0x24(r31)
/* 80199D4C  28 00 00 00 */	cmplwi r0, 0
/* 80199D50  40 82 00 14 */	bne lbl_80199D64
/* 80199D54  38 00 00 2A */	li r0, 0x2a
/* 80199D58  98 05 5E 35 */	stb r0, 0x5e35(r5)
/* 80199D5C  98 65 5E 50 */	stb r3, 0x5e50(r5)
/* 80199D60  48 00 00 20 */	b lbl_80199D80
lbl_80199D64:
/* 80199D64  80 C5 5D BC */	lwz r6, 0x5dbc(r5)
/* 80199D68  88 06 01 A1 */	lbz r0, 0x1a1(r6)
/* 80199D6C  28 00 00 00 */	cmplwi r0, 0
/* 80199D70  41 82 00 10 */	beq lbl_80199D80
/* 80199D74  38 00 00 2A */	li r0, 0x2a
/* 80199D78  98 05 5E 35 */	stb r0, 0x5e35(r5)
/* 80199D7C  98 65 5E 50 */	stb r3, 0x5e50(r5)
lbl_80199D80:
/* 80199D80  7F E3 FB 78 */	mr r3, r31
/* 80199D84  38 A0 00 00 */	li r5, 0
/* 80199D88  38 C0 00 00 */	li r6, 0
/* 80199D8C  48 0B 05 4D */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 80199D90  7F E3 FB 78 */	mr r3, r31
/* 80199D94  38 80 00 00 */	li r4, 0
/* 80199D98  38 A0 00 00 */	li r5, 0
/* 80199D9C  38 C0 00 00 */	li r6, 0
/* 80199DA0  48 0B 15 21 */	bl query005__10dMsgFlow_cFP21mesg_flow_node_branchP10fopAc_ac_ci
/* 80199DA4  7C 7F 1B 78 */	mr r31, r3
/* 80199DA8  48 09 E4 85 */	bl getStatus__12dMsgObject_cFv
/* 80199DAC  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80199DB0  28 00 00 06 */	cmplwi r0, 6
/* 80199DB4  41 82 00 58 */	beq lbl_80199E0C
/* 80199DB8  48 09 E4 75 */	bl getStatus__12dMsgObject_cFv
/* 80199DBC  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80199DC0  28 00 00 08 */	cmplwi r0, 8
/* 80199DC4  41 82 00 48 */	beq lbl_80199E0C
/* 80199DC8  48 09 E4 65 */	bl getStatus__12dMsgObject_cFv
/* 80199DCC  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80199DD0  28 00 00 09 */	cmplwi r0, 9
/* 80199DD4  41 82 00 38 */	beq lbl_80199E0C
/* 80199DD8  48 09 E4 55 */	bl getStatus__12dMsgObject_cFv
/* 80199DDC  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80199DE0  28 00 00 14 */	cmplwi r0, 0x14
/* 80199DE4  41 82 00 28 */	beq lbl_80199E0C
/* 80199DE8  57 E0 04 3F */	clrlwi. r0, r31, 0x10
/* 80199DEC  40 82 00 14 */	bne lbl_80199E00
/* 80199DF0  7F C3 F3 78 */	mr r3, r30
/* 80199DF4  38 80 00 08 */	li r4, 8
/* 80199DF8  48 00 05 4D */	bl setSeq__13dShopSystem_cFUc
/* 80199DFC  48 00 00 10 */	b lbl_80199E0C
lbl_80199E00:
/* 80199E00  7F C3 F3 78 */	mr r3, r30
/* 80199E04  38 80 00 09 */	li r4, 9
/* 80199E08  48 00 05 3D */	bl setSeq__13dShopSystem_cFUc
lbl_80199E0C:
/* 80199E0C  38 60 00 00 */	li r3, 0
/* 80199E10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80199E14  83 C1 00 08 */	lwz r30, 8(r1)
/* 80199E18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80199E1C  7C 08 03 A6 */	mtlr r0
/* 80199E20  38 21 00 10 */	addi r1, r1, 0x10
/* 80199E24  4E 80 00 20 */	blr 
