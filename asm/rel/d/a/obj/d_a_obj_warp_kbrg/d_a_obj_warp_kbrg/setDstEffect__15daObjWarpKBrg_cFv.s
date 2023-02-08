lbl_80D28E9C:
/* 80D28E9C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80D28EA0  7C 08 02 A6 */	mflr r0
/* 80D28EA4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80D28EA8  39 61 00 40 */	addi r11, r1, 0x40
/* 80D28EAC  4B 63 93 21 */	bl _savegpr_25
/* 80D28EB0  7C 7D 1B 78 */	mr r29, r3
/* 80D28EB4  3C 60 80 D3 */	lis r3, l_bmd_idx@ha /* 0x80D295B4@ha */
/* 80D28EB8  3B C3 95 B4 */	addi r30, r3, l_bmd_idx@l /* 0x80D295B4@l */
/* 80D28EBC  3B 20 00 00 */	li r25, 0
/* 80D28EC0  3B 60 00 00 */	li r27, 0
/* 80D28EC4  3B 80 00 00 */	li r28, 0
/* 80D28EC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D28ECC  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D28ED0  3B 5E 00 34 */	addi r26, r30, 0x34
lbl_80D28ED4:
/* 80D28ED4  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80D28ED8  38 80 00 00 */	li r4, 0
/* 80D28EDC  90 81 00 08 */	stw r4, 8(r1)
/* 80D28EE0  38 00 FF FF */	li r0, -1
/* 80D28EE4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D28EE8  90 81 00 10 */	stw r4, 0x10(r1)
/* 80D28EEC  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D28EF0  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D28EF4  38 80 00 00 */	li r4, 0
/* 80D28EF8  7C BA E2 2E */	lhzx r5, r26, r28
/* 80D28EFC  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 80D28F00  38 E0 00 00 */	li r7, 0
/* 80D28F04  39 1D 04 B4 */	addi r8, r29, 0x4b4
/* 80D28F08  39 3D 04 EC */	addi r9, r29, 0x4ec
/* 80D28F0C  39 40 00 FF */	li r10, 0xff
/* 80D28F10  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 80D28F14  4B 32 3B 7D */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D28F18  38 1B 06 60 */	addi r0, r27, 0x660
/* 80D28F1C  7C 7D 01 2E */	stwx r3, r29, r0
/* 80D28F20  7C 7D 00 2E */	lwzx r3, r29, r0
/* 80D28F24  28 03 00 00 */	cmplwi r3, 0
/* 80D28F28  41 82 00 10 */	beq lbl_80D28F38
/* 80D28F2C  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80D28F30  60 00 00 40 */	ori r0, r0, 0x40
/* 80D28F34  90 03 00 F4 */	stw r0, 0xf4(r3)
lbl_80D28F38:
/* 80D28F38  3B 39 00 01 */	addi r25, r25, 1
/* 80D28F3C  2C 19 00 06 */	cmpwi r25, 6
/* 80D28F40  3B 7B 00 04 */	addi r27, r27, 4
/* 80D28F44  3B 9C 00 02 */	addi r28, r28, 2
/* 80D28F48  41 80 FF 8C */	blt lbl_80D28ED4
/* 80D28F4C  3B 20 00 00 */	li r25, 0
/* 80D28F50  3B 80 00 00 */	li r28, 0
/* 80D28F54  3B 60 00 00 */	li r27, 0
/* 80D28F58  3B 5E 00 40 */	addi r26, r30, 0x40
lbl_80D28F5C:
/* 80D28F5C  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80D28F60  38 80 00 00 */	li r4, 0
/* 80D28F64  90 81 00 08 */	stw r4, 8(r1)
/* 80D28F68  38 00 FF FF */	li r0, -1
/* 80D28F6C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D28F70  90 81 00 10 */	stw r4, 0x10(r1)
/* 80D28F74  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D28F78  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D28F7C  38 80 00 00 */	li r4, 0
/* 80D28F80  7C BA DA 2E */	lhzx r5, r26, r27
/* 80D28F84  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 80D28F88  38 E0 00 00 */	li r7, 0
/* 80D28F8C  39 1D 04 B4 */	addi r8, r29, 0x4b4
/* 80D28F90  39 3D 04 EC */	addi r9, r29, 0x4ec
/* 80D28F94  39 40 00 FF */	li r10, 0xff
/* 80D28F98  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 80D28F9C  4B 32 3A F5 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D28FA0  38 1C 06 78 */	addi r0, r28, 0x678
/* 80D28FA4  7C 7D 01 2E */	stwx r3, r29, r0
/* 80D28FA8  7C 7D 00 2E */	lwzx r3, r29, r0
/* 80D28FAC  28 03 00 00 */	cmplwi r3, 0
/* 80D28FB0  41 82 00 10 */	beq lbl_80D28FC0
/* 80D28FB4  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80D28FB8  60 00 00 40 */	ori r0, r0, 0x40
/* 80D28FBC  90 03 00 F4 */	stw r0, 0xf4(r3)
lbl_80D28FC0:
/* 80D28FC0  3B 39 00 01 */	addi r25, r25, 1
/* 80D28FC4  2C 19 00 02 */	cmpwi r25, 2
/* 80D28FC8  3B 9C 00 04 */	addi r28, r28, 4
/* 80D28FCC  3B 7B 00 02 */	addi r27, r27, 2
/* 80D28FD0  41 80 FF 8C */	blt lbl_80D28F5C
/* 80D28FD4  39 61 00 40 */	addi r11, r1, 0x40
/* 80D28FD8  4B 63 92 41 */	bl _restgpr_25
/* 80D28FDC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80D28FE0  7C 08 03 A6 */	mtlr r0
/* 80D28FE4  38 21 00 40 */	addi r1, r1, 0x40
/* 80D28FE8  4E 80 00 20 */	blr 
