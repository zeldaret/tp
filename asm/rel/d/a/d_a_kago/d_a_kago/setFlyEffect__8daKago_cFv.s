lbl_80852D90:
/* 80852D90  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80852D94  7C 08 02 A6 */	mflr r0
/* 80852D98  90 01 00 34 */	stw r0, 0x34(r1)
/* 80852D9C  39 61 00 30 */	addi r11, r1, 0x30
/* 80852DA0  4B B0 F4 39 */	bl _savegpr_28
/* 80852DA4  7C 7D 1B 78 */	mr r29, r3
/* 80852DA8  88 03 06 E7 */	lbz r0, 0x6e7(r3)
/* 80852DAC  28 00 00 01 */	cmplwi r0, 1
/* 80852DB0  41 82 01 4C */	beq lbl_80852EFC
/* 80852DB4  80 7D 05 70 */	lwz r3, 0x570(r29)
/* 80852DB8  83 C3 00 04 */	lwz r30, 4(r3)
/* 80852DBC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80852DC0  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80852DC4  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80852DC8  38 00 00 FF */	li r0, 0xff
/* 80852DCC  90 01 00 08 */	stw r0, 8(r1)
/* 80852DD0  38 80 00 00 */	li r4, 0
/* 80852DD4  90 81 00 0C */	stw r4, 0xc(r1)
/* 80852DD8  38 00 FF FF */	li r0, -1
/* 80852DDC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80852DE0  90 81 00 14 */	stw r4, 0x14(r1)
/* 80852DE4  90 81 00 18 */	stw r4, 0x18(r1)
/* 80852DE8  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80852DEC  80 9D 0B 30 */	lwz r4, 0xb30(r29)
/* 80852DF0  38 A0 00 00 */	li r5, 0
/* 80852DF4  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008607@ha */
/* 80852DF8  38 C6 86 07 */	addi r6, r6, 0x8607 /* 0x00008607@l */
/* 80852DFC  38 FD 04 D0 */	addi r7, r29, 0x4d0
/* 80852E00  39 1D 01 0C */	addi r8, r29, 0x10c
/* 80852E04  39 20 00 00 */	li r9, 0
/* 80852E08  39 40 00 00 */	li r10, 0
/* 80852E0C  3D 60 80 85 */	lis r11, lit_3932@ha /* 0x80854B10@ha */
/* 80852E10  C0 2B 4B 10 */	lfs f1, lit_3932@l(r11)  /* 0x80854B10@l */
/* 80852E14  4B 7F A6 B9 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80852E18  90 7D 0B 30 */	stw r3, 0xb30(r29)
/* 80852E1C  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80852E20  38 63 02 10 */	addi r3, r3, 0x210
/* 80852E24  80 9D 0B 30 */	lwz r4, 0xb30(r29)
/* 80852E28  4B 7F 8A F1 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 80852E2C  7C 7C 1B 79 */	or. r28, r3, r3
/* 80852E30  41 82 00 30 */	beq lbl_80852E60
/* 80852E34  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 80852E38  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80852E3C  38 63 02 70 */	addi r3, r3, 0x270
/* 80852E40  38 9C 00 68 */	addi r4, r28, 0x68
/* 80852E44  38 BC 00 98 */	addi r5, r28, 0x98
/* 80852E48  38 DC 00 A4 */	addi r6, r28, 0xa4
/* 80852E4C  4B A2 D9 BD */	bl func_80280808
/* 80852E50  C0 3C 00 9C */	lfs f1, 0x9c(r28)
/* 80852E54  C0 1C 00 98 */	lfs f0, 0x98(r28)
/* 80852E58  D0 1C 00 B0 */	stfs f0, 0xb0(r28)
/* 80852E5C  D0 3C 00 B4 */	stfs f1, 0xb4(r28)
lbl_80852E60:
/* 80852E60  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80852E64  38 00 00 FF */	li r0, 0xff
/* 80852E68  90 01 00 08 */	stw r0, 8(r1)
/* 80852E6C  38 80 00 00 */	li r4, 0
/* 80852E70  90 81 00 0C */	stw r4, 0xc(r1)
/* 80852E74  38 00 FF FF */	li r0, -1
/* 80852E78  90 01 00 10 */	stw r0, 0x10(r1)
/* 80852E7C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80852E80  90 81 00 18 */	stw r4, 0x18(r1)
/* 80852E84  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80852E88  80 9D 0B 34 */	lwz r4, 0xb34(r29)
/* 80852E8C  38 A0 00 00 */	li r5, 0
/* 80852E90  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008607@ha */
/* 80852E94  38 C6 86 07 */	addi r6, r6, 0x8607 /* 0x00008607@l */
/* 80852E98  38 FD 04 D0 */	addi r7, r29, 0x4d0
/* 80852E9C  39 1D 01 0C */	addi r8, r29, 0x10c
/* 80852EA0  39 20 00 00 */	li r9, 0
/* 80852EA4  39 40 00 00 */	li r10, 0
/* 80852EA8  3D 60 80 85 */	lis r11, lit_3932@ha /* 0x80854B10@ha */
/* 80852EAC  C0 2B 4B 10 */	lfs f1, lit_3932@l(r11)  /* 0x80854B10@l */
/* 80852EB0  4B 7F A6 1D */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80852EB4  90 7D 0B 34 */	stw r3, 0xb34(r29)
/* 80852EB8  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80852EBC  38 63 02 10 */	addi r3, r3, 0x210
/* 80852EC0  80 9D 0B 34 */	lwz r4, 0xb34(r29)
/* 80852EC4  4B 7F 8A 55 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 80852EC8  7C 7D 1B 79 */	or. r29, r3, r3
/* 80852ECC  41 82 00 30 */	beq lbl_80852EFC
/* 80852ED0  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 80852ED4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80852ED8  38 63 03 60 */	addi r3, r3, 0x360
/* 80852EDC  38 9D 00 68 */	addi r4, r29, 0x68
/* 80852EE0  38 BD 00 98 */	addi r5, r29, 0x98
/* 80852EE4  38 DD 00 A4 */	addi r6, r29, 0xa4
/* 80852EE8  4B A2 D9 21 */	bl func_80280808
/* 80852EEC  C0 3D 00 9C */	lfs f1, 0x9c(r29)
/* 80852EF0  C0 1D 00 98 */	lfs f0, 0x98(r29)
/* 80852EF4  D0 1D 00 B0 */	stfs f0, 0xb0(r29)
/* 80852EF8  D0 3D 00 B4 */	stfs f1, 0xb4(r29)
lbl_80852EFC:
/* 80852EFC  39 61 00 30 */	addi r11, r1, 0x30
/* 80852F00  4B B0 F3 25 */	bl _restgpr_28
/* 80852F04  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80852F08  7C 08 03 A6 */	mtlr r0
/* 80852F0C  38 21 00 30 */	addi r1, r1, 0x30
/* 80852F10  4E 80 00 20 */	blr 
