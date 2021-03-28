lbl_808530A4:
/* 808530A4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 808530A8  7C 08 02 A6 */	mflr r0
/* 808530AC  90 01 00 34 */	stw r0, 0x34(r1)
/* 808530B0  39 61 00 30 */	addi r11, r1, 0x30
/* 808530B4  4B B0 F1 24 */	b _savegpr_28
/* 808530B8  7C 7D 1B 78 */	mr r29, r3
/* 808530BC  80 63 05 70 */	lwz r3, 0x570(r3)
/* 808530C0  83 C3 00 04 */	lwz r30, 4(r3)
/* 808530C4  88 1D 06 E7 */	lbz r0, 0x6e7(r29)
/* 808530C8  28 00 00 01 */	cmplwi r0, 1
/* 808530CC  41 82 01 44 */	beq lbl_80853210
/* 808530D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 808530D4  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 808530D8  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 808530DC  38 00 00 FF */	li r0, 0xff
/* 808530E0  90 01 00 08 */	stw r0, 8(r1)
/* 808530E4  38 80 00 00 */	li r4, 0
/* 808530E8  90 81 00 0C */	stw r4, 0xc(r1)
/* 808530EC  38 00 FF FF */	li r0, -1
/* 808530F0  90 01 00 10 */	stw r0, 0x10(r1)
/* 808530F4  90 81 00 14 */	stw r4, 0x14(r1)
/* 808530F8  90 81 00 18 */	stw r4, 0x18(r1)
/* 808530FC  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80853100  80 9D 0B 38 */	lwz r4, 0xb38(r29)
/* 80853104  38 A0 00 00 */	li r5, 0
/* 80853108  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008603@ha */
/* 8085310C  38 C6 86 03 */	addi r6, r6, 0x8603 /* 0x00008603@l */
/* 80853110  38 FD 04 D0 */	addi r7, r29, 0x4d0
/* 80853114  39 1D 01 0C */	addi r8, r29, 0x10c
/* 80853118  39 20 00 00 */	li r9, 0
/* 8085311C  39 40 00 00 */	li r10, 0
/* 80853120  3D 60 80 85 */	lis r11, lit_3932@ha
/* 80853124  C0 2B 4B 10 */	lfs f1, lit_3932@l(r11)
/* 80853128  4B 7F A3 A4 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8085312C  90 7D 0B 38 */	stw r3, 0xb38(r29)
/* 80853130  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80853134  38 63 02 10 */	addi r3, r3, 0x210
/* 80853138  80 9D 0B 38 */	lwz r4, 0xb38(r29)
/* 8085313C  4B 7F 87 DC */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 80853140  7C 7C 1B 79 */	or. r28, r3, r3
/* 80853144  41 82 00 30 */	beq lbl_80853174
/* 80853148  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 8085314C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80853150  38 63 02 70 */	addi r3, r3, 0x270
/* 80853154  38 9C 00 68 */	addi r4, r28, 0x68
/* 80853158  38 BC 00 98 */	addi r5, r28, 0x98
/* 8085315C  38 DC 00 A4 */	addi r6, r28, 0xa4
/* 80853160  4B A2 D6 A8 */	b func_80280808
/* 80853164  C0 3C 00 9C */	lfs f1, 0x9c(r28)
/* 80853168  C0 1C 00 98 */	lfs f0, 0x98(r28)
/* 8085316C  D0 1C 00 B0 */	stfs f0, 0xb0(r28)
/* 80853170  D0 3C 00 B4 */	stfs f1, 0xb4(r28)
lbl_80853174:
/* 80853174  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80853178  38 00 00 FF */	li r0, 0xff
/* 8085317C  90 01 00 08 */	stw r0, 8(r1)
/* 80853180  38 80 00 00 */	li r4, 0
/* 80853184  90 81 00 0C */	stw r4, 0xc(r1)
/* 80853188  38 00 FF FF */	li r0, -1
/* 8085318C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80853190  90 81 00 14 */	stw r4, 0x14(r1)
/* 80853194  90 81 00 18 */	stw r4, 0x18(r1)
/* 80853198  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8085319C  80 9D 0B 3C */	lwz r4, 0xb3c(r29)
/* 808531A0  38 A0 00 00 */	li r5, 0
/* 808531A4  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008603@ha */
/* 808531A8  38 C6 86 03 */	addi r6, r6, 0x8603 /* 0x00008603@l */
/* 808531AC  38 FD 04 D0 */	addi r7, r29, 0x4d0
/* 808531B0  39 1D 01 0C */	addi r8, r29, 0x10c
/* 808531B4  39 20 00 00 */	li r9, 0
/* 808531B8  39 40 00 00 */	li r10, 0
/* 808531BC  3D 60 80 85 */	lis r11, lit_3932@ha
/* 808531C0  C0 2B 4B 10 */	lfs f1, lit_3932@l(r11)
/* 808531C4  4B 7F A3 08 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 808531C8  90 7D 0B 3C */	stw r3, 0xb3c(r29)
/* 808531CC  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 808531D0  38 63 02 10 */	addi r3, r3, 0x210
/* 808531D4  80 9D 0B 3C */	lwz r4, 0xb3c(r29)
/* 808531D8  4B 7F 87 40 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 808531DC  7C 7D 1B 79 */	or. r29, r3, r3
/* 808531E0  41 82 00 30 */	beq lbl_80853210
/* 808531E4  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 808531E8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 808531EC  38 63 03 60 */	addi r3, r3, 0x360
/* 808531F0  38 9D 00 68 */	addi r4, r29, 0x68
/* 808531F4  38 BD 00 98 */	addi r5, r29, 0x98
/* 808531F8  38 DD 00 A4 */	addi r6, r29, 0xa4
/* 808531FC  4B A2 D6 0C */	b func_80280808
/* 80853200  C0 3D 00 9C */	lfs f1, 0x9c(r29)
/* 80853204  C0 1D 00 98 */	lfs f0, 0x98(r29)
/* 80853208  D0 1D 00 B0 */	stfs f0, 0xb0(r29)
/* 8085320C  D0 3D 00 B4 */	stfs f1, 0xb4(r29)
lbl_80853210:
/* 80853210  39 61 00 30 */	addi r11, r1, 0x30
/* 80853214  4B B0 F0 10 */	b _restgpr_28
/* 80853218  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8085321C  7C 08 03 A6 */	mtlr r0
/* 80853220  38 21 00 30 */	addi r1, r1, 0x30
/* 80853224  4E 80 00 20 */	blr 
