lbl_80C14CF0:
/* 80C14CF0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80C14CF4  7C 08 02 A6 */	mflr r0
/* 80C14CF8  90 01 00 54 */	stw r0, 0x54(r1)
/* 80C14CFC  39 61 00 50 */	addi r11, r1, 0x50
/* 80C14D00  4B 74 D4 D0 */	b _savegpr_26
/* 80C14D04  7C 7A 1B 78 */	mr r26, r3
/* 80C14D08  3C 60 80 C1 */	lis r3, l_prticles_id@ha
/* 80C14D0C  3B 83 53 60 */	addi r28, r3, l_prticles_id@l
/* 80C14D10  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80C14D14  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80C14D18  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80C14D1C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C14D20  3B 60 00 00 */	li r27, 0
/* 80C14D24  3B E0 00 00 */	li r31, 0
/* 80C14D28  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C14D2C  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 80C14D30  3B DC 00 00 */	addi r30, r28, 0
lbl_80C14D34:
/* 80C14D34  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80C14D38  38 80 00 00 */	li r4, 0
/* 80C14D3C  90 81 00 08 */	stw r4, 8(r1)
/* 80C14D40  38 00 FF FF */	li r0, -1
/* 80C14D44  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C14D48  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C14D4C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C14D50  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C14D54  38 80 00 00 */	li r4, 0
/* 80C14D58  7C BE FA 2E */	lhzx r5, r30, r31
/* 80C14D5C  38 DA 04 D0 */	addi r6, r26, 0x4d0
/* 80C14D60  38 FA 01 0C */	addi r7, r26, 0x10c
/* 80C14D64  39 1A 04 DC */	addi r8, r26, 0x4dc
/* 80C14D68  39 21 00 20 */	addi r9, r1, 0x20
/* 80C14D6C  39 40 00 FF */	li r10, 0xff
/* 80C14D70  C0 3C 00 10 */	lfs f1, 0x10(r28)
/* 80C14D74  4B 43 7D 1C */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C14D78  3B 7B 00 01 */	addi r27, r27, 1
/* 80C14D7C  2C 1B 00 06 */	cmpwi r27, 6
/* 80C14D80  3B FF 00 02 */	addi r31, r31, 2
/* 80C14D84  41 80 FF B0 */	blt lbl_80C14D34
/* 80C14D88  39 61 00 50 */	addi r11, r1, 0x50
/* 80C14D8C  4B 74 D4 90 */	b _restgpr_26
/* 80C14D90  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80C14D94  7C 08 03 A6 */	mtlr r0
/* 80C14D98  38 21 00 50 */	addi r1, r1, 0x50
/* 80C14D9C  4E 80 00 20 */	blr 
