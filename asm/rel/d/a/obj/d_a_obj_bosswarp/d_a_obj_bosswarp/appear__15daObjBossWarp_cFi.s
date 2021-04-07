lbl_80579C30:
/* 80579C30  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80579C34  7C 08 02 A6 */	mflr r0
/* 80579C38  90 01 00 44 */	stw r0, 0x44(r1)
/* 80579C3C  39 61 00 40 */	addi r11, r1, 0x40
/* 80579C40  4B DE 85 8D */	bl _savegpr_25
/* 80579C44  7C 7B 1B 78 */	mr r27, r3
/* 80579C48  3C 60 80 58 */	lis r3, l_hair_offset@ha /* 0x8057B360@ha */
/* 80579C4C  3B C3 B3 60 */	addi r30, r3, l_hair_offset@l /* 0x8057B360@l */
/* 80579C50  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 80579C54  D0 1B 05 BC */	stfs f0, 0x5bc(r27)
/* 80579C58  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 80579C5C  D0 1B 05 C0 */	stfs f0, 0x5c0(r27)
/* 80579C60  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 80579C64  D0 1B 05 C4 */	stfs f0, 0x5c4(r27)
/* 80579C68  C0 3B 05 C0 */	lfs f1, 0x5c0(r27)
/* 80579C6C  C0 1E 00 D0 */	lfs f0, 0xd0(r30)
/* 80579C70  EC 01 00 2A */	fadds f0, f1, f0
/* 80579C74  D0 1B 05 C0 */	stfs f0, 0x5c0(r27)
/* 80579C78  3B 80 00 00 */	li r28, 0
/* 80579C7C  3B 40 00 00 */	li r26, 0
/* 80579C80  3B 20 00 00 */	li r25, 0
/* 80579C84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80579C88  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
lbl_80579C8C:
/* 80579C8C  3B B9 05 80 */	addi r29, r25, 0x580
/* 80579C90  7C 1B E8 2E */	lwzx r0, r27, r29
/* 80579C94  28 00 00 00 */	cmplwi r0, 0
/* 80579C98  40 82 00 B8 */	bne lbl_80579D50
/* 80579C9C  2C 1C 00 03 */	cmpwi r28, 3
/* 80579CA0  40 82 00 54 */	bne lbl_80579CF4
/* 80579CA4  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80579CA8  38 80 00 00 */	li r4, 0
/* 80579CAC  90 81 00 08 */	stw r4, 8(r1)
/* 80579CB0  38 00 FF FF */	li r0, -1
/* 80579CB4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80579CB8  90 81 00 10 */	stw r4, 0x10(r1)
/* 80579CBC  90 81 00 14 */	stw r4, 0x14(r1)
/* 80579CC0  90 81 00 18 */	stw r4, 0x18(r1)
/* 80579CC4  38 80 00 00 */	li r4, 0
/* 80579CC8  38 BE 00 EC */	addi r5, r30, 0xec
/* 80579CCC  7C A5 D2 2E */	lhzx r5, r5, r26
/* 80579CD0  38 DB 05 BC */	addi r6, r27, 0x5bc
/* 80579CD4  38 E0 00 00 */	li r7, 0
/* 80579CD8  39 00 00 00 */	li r8, 0
/* 80579CDC  39 3B 04 EC */	addi r9, r27, 0x4ec
/* 80579CE0  39 40 00 FF */	li r10, 0xff
/* 80579CE4  C0 3E 00 D4 */	lfs f1, 0xd4(r30)
/* 80579CE8  4B AD 2D A9 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80579CEC  7C 7B E9 2E */	stwx r3, r27, r29
/* 80579CF0  48 00 00 60 */	b lbl_80579D50
lbl_80579CF4:
/* 80579CF4  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80579CF8  38 80 00 00 */	li r4, 0
/* 80579CFC  90 81 00 08 */	stw r4, 8(r1)
/* 80579D00  38 00 FF FF */	li r0, -1
/* 80579D04  90 01 00 0C */	stw r0, 0xc(r1)
/* 80579D08  90 81 00 10 */	stw r4, 0x10(r1)
/* 80579D0C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80579D10  90 81 00 18 */	stw r4, 0x18(r1)
/* 80579D14  38 80 00 00 */	li r4, 0
/* 80579D18  38 BE 00 EC */	addi r5, r30, 0xec
/* 80579D1C  7C A5 D2 2E */	lhzx r5, r5, r26
/* 80579D20  38 DB 05 BC */	addi r6, r27, 0x5bc
/* 80579D24  38 E0 00 00 */	li r7, 0
/* 80579D28  39 00 00 00 */	li r8, 0
/* 80579D2C  39 20 00 00 */	li r9, 0
/* 80579D30  39 40 00 FF */	li r10, 0xff
/* 80579D34  C0 3E 00 D4 */	lfs f1, 0xd4(r30)
/* 80579D38  4B AD 2D 59 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80579D3C  7C 7B E9 2E */	stwx r3, r27, r29
/* 80579D40  2C 1C 00 00 */	cmpwi r28, 0
/* 80579D44  40 82 00 0C */	bne lbl_80579D50
/* 80579D48  38 00 00 00 */	li r0, 0
/* 80579D4C  90 1B 05 80 */	stw r0, 0x580(r27)
lbl_80579D50:
/* 80579D50  3B 9C 00 01 */	addi r28, r28, 1
/* 80579D54  2C 1C 00 04 */	cmpwi r28, 4
/* 80579D58  3B 5A 00 02 */	addi r26, r26, 2
/* 80579D5C  3B 39 00 04 */	addi r25, r25, 4
/* 80579D60  41 80 FF 2C */	blt lbl_80579C8C
/* 80579D64  C0 1E 00 D4 */	lfs f0, 0xd4(r30)
/* 80579D68  80 7B 05 7C */	lwz r3, 0x57c(r27)
/* 80579D6C  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80579D70  80 7B 05 74 */	lwz r3, 0x574(r27)
/* 80579D74  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80579D78  80 7B 05 78 */	lwz r3, 0x578(r27)
/* 80579D7C  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80579D80  39 61 00 40 */	addi r11, r1, 0x40
/* 80579D84  4B DE 84 95 */	bl _restgpr_25
/* 80579D88  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80579D8C  7C 08 03 A6 */	mtlr r0
/* 80579D90  38 21 00 40 */	addi r1, r1, 0x40
/* 80579D94  4E 80 00 20 */	blr 
