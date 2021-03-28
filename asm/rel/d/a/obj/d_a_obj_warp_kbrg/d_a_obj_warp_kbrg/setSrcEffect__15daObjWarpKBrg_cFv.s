lbl_80D28D4C:
/* 80D28D4C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80D28D50  7C 08 02 A6 */	mflr r0
/* 80D28D54  90 01 00 44 */	stw r0, 0x44(r1)
/* 80D28D58  39 61 00 40 */	addi r11, r1, 0x40
/* 80D28D5C  4B 63 94 70 */	b _savegpr_25
/* 80D28D60  7C 7D 1B 78 */	mr r29, r3
/* 80D28D64  3C 60 80 D3 */	lis r3, l_bmd_idx@ha
/* 80D28D68  3B C3 95 B4 */	addi r30, r3, l_bmd_idx@l
/* 80D28D6C  3B 20 00 00 */	li r25, 0
/* 80D28D70  3B 60 00 00 */	li r27, 0
/* 80D28D74  3B 80 00 00 */	li r28, 0
/* 80D28D78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D28D7C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80D28D80  3B 5E 00 20 */	addi r26, r30, 0x20
lbl_80D28D84:
/* 80D28D84  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80D28D88  38 80 00 00 */	li r4, 0
/* 80D28D8C  90 81 00 08 */	stw r4, 8(r1)
/* 80D28D90  38 00 FF FF */	li r0, -1
/* 80D28D94  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D28D98  90 81 00 10 */	stw r4, 0x10(r1)
/* 80D28D9C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D28DA0  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D28DA4  38 80 00 00 */	li r4, 0
/* 80D28DA8  7C BA E2 2E */	lhzx r5, r26, r28
/* 80D28DAC  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 80D28DB0  38 E0 00 00 */	li r7, 0
/* 80D28DB4  39 1D 04 B4 */	addi r8, r29, 0x4b4
/* 80D28DB8  39 3D 04 EC */	addi r9, r29, 0x4ec
/* 80D28DBC  39 40 00 FF */	li r10, 0xff
/* 80D28DC0  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 80D28DC4  4B 32 3C CC */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D28DC8  38 1B 06 4C */	addi r0, r27, 0x64c
/* 80D28DCC  7C 7D 01 2E */	stwx r3, r29, r0
/* 80D28DD0  7C 7D 00 2E */	lwzx r3, r29, r0
/* 80D28DD4  28 03 00 00 */	cmplwi r3, 0
/* 80D28DD8  41 82 00 10 */	beq lbl_80D28DE8
/* 80D28DDC  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80D28DE0  60 00 00 40 */	ori r0, r0, 0x40
/* 80D28DE4  90 03 00 F4 */	stw r0, 0xf4(r3)
lbl_80D28DE8:
/* 80D28DE8  3B 39 00 01 */	addi r25, r25, 1
/* 80D28DEC  2C 19 00 05 */	cmpwi r25, 5
/* 80D28DF0  3B 7B 00 04 */	addi r27, r27, 4
/* 80D28DF4  3B 9C 00 02 */	addi r28, r28, 2
/* 80D28DF8  41 80 FF 8C */	blt lbl_80D28D84
/* 80D28DFC  3B 20 00 00 */	li r25, 0
/* 80D28E00  3B 80 00 00 */	li r28, 0
/* 80D28E04  3B 60 00 00 */	li r27, 0
/* 80D28E08  3B 5E 00 2C */	addi r26, r30, 0x2c
lbl_80D28E0C:
/* 80D28E0C  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80D28E10  38 80 00 00 */	li r4, 0
/* 80D28E14  90 81 00 08 */	stw r4, 8(r1)
/* 80D28E18  38 00 FF FF */	li r0, -1
/* 80D28E1C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D28E20  90 81 00 10 */	stw r4, 0x10(r1)
/* 80D28E24  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D28E28  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D28E2C  38 80 00 00 */	li r4, 0
/* 80D28E30  7C BA DA 2E */	lhzx r5, r26, r27
/* 80D28E34  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 80D28E38  38 E0 00 00 */	li r7, 0
/* 80D28E3C  39 1D 04 B4 */	addi r8, r29, 0x4b4
/* 80D28E40  39 3D 04 EC */	addi r9, r29, 0x4ec
/* 80D28E44  39 40 00 FF */	li r10, 0xff
/* 80D28E48  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 80D28E4C  4B 32 3C 44 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D28E50  38 1C 06 40 */	addi r0, r28, 0x640
/* 80D28E54  7C 7D 01 2E */	stwx r3, r29, r0
/* 80D28E58  7C 7D 00 2E */	lwzx r3, r29, r0
/* 80D28E5C  28 03 00 00 */	cmplwi r3, 0
/* 80D28E60  41 82 00 10 */	beq lbl_80D28E70
/* 80D28E64  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80D28E68  60 00 00 40 */	ori r0, r0, 0x40
/* 80D28E6C  90 03 00 F4 */	stw r0, 0xf4(r3)
lbl_80D28E70:
/* 80D28E70  3B 39 00 01 */	addi r25, r25, 1
/* 80D28E74  2C 19 00 03 */	cmpwi r25, 3
/* 80D28E78  3B 9C 00 04 */	addi r28, r28, 4
/* 80D28E7C  3B 7B 00 02 */	addi r27, r27, 2
/* 80D28E80  41 80 FF 8C */	blt lbl_80D28E0C
/* 80D28E84  39 61 00 40 */	addi r11, r1, 0x40
/* 80D28E88  4B 63 93 90 */	b _restgpr_25
/* 80D28E8C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80D28E90  7C 08 03 A6 */	mtlr r0
/* 80D28E94  38 21 00 40 */	addi r1, r1, 0x40
/* 80D28E98  4E 80 00 20 */	blr 
