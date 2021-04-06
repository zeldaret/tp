lbl_804E91D4:
/* 804E91D4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804E91D8  7C 08 02 A6 */	mflr r0
/* 804E91DC  90 01 00 34 */	stw r0, 0x34(r1)
/* 804E91E0  39 61 00 30 */	addi r11, r1, 0x30
/* 804E91E4  4B E7 8F F5 */	bl _savegpr_28
/* 804E91E8  7C 7D 1B 78 */	mr r29, r3
/* 804E91EC  80 63 05 DC */	lwz r3, 0x5dc(r3)
/* 804E91F0  83 C3 00 04 */	lwz r30, 4(r3)
/* 804E91F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804E91F8  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804E91FC  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 804E9200  38 00 00 FF */	li r0, 0xff
/* 804E9204  90 01 00 08 */	stw r0, 8(r1)
/* 804E9208  38 80 00 00 */	li r4, 0
/* 804E920C  90 81 00 0C */	stw r4, 0xc(r1)
/* 804E9210  38 00 FF FF */	li r0, -1
/* 804E9214  90 01 00 10 */	stw r0, 0x10(r1)
/* 804E9218  90 81 00 14 */	stw r4, 0x14(r1)
/* 804E921C  90 81 00 18 */	stw r4, 0x18(r1)
/* 804E9220  90 81 00 1C */	stw r4, 0x1c(r1)
/* 804E9224  80 9D 10 F8 */	lwz r4, 0x10f8(r29)
/* 804E9228  38 A0 00 00 */	li r5, 0
/* 804E922C  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000815F@ha */
/* 804E9230  38 C6 81 5F */	addi r6, r6, 0x815F /* 0x0000815F@l */
/* 804E9234  38 FD 04 D0 */	addi r7, r29, 0x4d0
/* 804E9238  39 00 00 00 */	li r8, 0
/* 804E923C  39 20 00 00 */	li r9, 0
/* 804E9240  39 40 00 00 */	li r10, 0
/* 804E9244  3D 60 80 4F */	lis r11, lit_3791@ha /* 0x804EE8B4@ha */
/* 804E9248  C0 2B E8 B4 */	lfs f1, lit_3791@l(r11)  /* 0x804EE8B4@l */
/* 804E924C  4B B6 42 81 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 804E9250  90 7D 10 F8 */	stw r3, 0x10f8(r29)
/* 804E9254  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 804E9258  38 63 02 10 */	addi r3, r3, 0x210
/* 804E925C  80 9D 10 F8 */	lwz r4, 0x10f8(r29)
/* 804E9260  4B B6 26 B9 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 804E9264  7C 7C 1B 79 */	or. r28, r3, r3
/* 804E9268  41 82 00 34 */	beq lbl_804E929C
/* 804E926C  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 804E9270  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804E9274  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 804E9278  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 804E927C  80 84 00 00 */	lwz r4, 0(r4)
/* 804E9280  4B E5 D2 31 */	bl PSMTXCopy
/* 804E9284  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804E9288  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804E928C  80 63 00 00 */	lwz r3, 0(r3)
/* 804E9290  38 9C 00 68 */	addi r4, r28, 0x68
/* 804E9294  38 BC 00 A4 */	addi r5, r28, 0xa4
/* 804E9298  4B D9 75 49 */	bl func_802807E0
lbl_804E929C:
/* 804E929C  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 804E92A0  38 00 00 FF */	li r0, 0xff
/* 804E92A4  90 01 00 08 */	stw r0, 8(r1)
/* 804E92A8  38 80 00 00 */	li r4, 0
/* 804E92AC  90 81 00 0C */	stw r4, 0xc(r1)
/* 804E92B0  38 00 FF FF */	li r0, -1
/* 804E92B4  90 01 00 10 */	stw r0, 0x10(r1)
/* 804E92B8  90 81 00 14 */	stw r4, 0x14(r1)
/* 804E92BC  90 81 00 18 */	stw r4, 0x18(r1)
/* 804E92C0  90 81 00 1C */	stw r4, 0x1c(r1)
/* 804E92C4  80 9D 10 FC */	lwz r4, 0x10fc(r29)
/* 804E92C8  38 A0 00 00 */	li r5, 0
/* 804E92CC  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008160@ha */
/* 804E92D0  38 C6 81 60 */	addi r6, r6, 0x8160 /* 0x00008160@l */
/* 804E92D4  38 FD 04 D0 */	addi r7, r29, 0x4d0
/* 804E92D8  39 00 00 00 */	li r8, 0
/* 804E92DC  39 20 00 00 */	li r9, 0
/* 804E92E0  39 40 00 00 */	li r10, 0
/* 804E92E4  3D 60 80 4F */	lis r11, lit_3791@ha /* 0x804EE8B4@ha */
/* 804E92E8  C0 2B E8 B4 */	lfs f1, lit_3791@l(r11)  /* 0x804EE8B4@l */
/* 804E92EC  4B B6 41 E1 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 804E92F0  90 7D 10 FC */	stw r3, 0x10fc(r29)
/* 804E92F4  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 804E92F8  38 63 02 10 */	addi r3, r3, 0x210
/* 804E92FC  80 9D 10 FC */	lwz r4, 0x10fc(r29)
/* 804E9300  4B B6 26 19 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 804E9304  7C 7D 1B 79 */	or. r29, r3, r3
/* 804E9308  41 82 00 34 */	beq lbl_804E933C
/* 804E930C  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 804E9310  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804E9314  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 804E9318  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 804E931C  80 84 00 00 */	lwz r4, 0(r4)
/* 804E9320  4B E5 D1 91 */	bl PSMTXCopy
/* 804E9324  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804E9328  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804E932C  80 63 00 00 */	lwz r3, 0(r3)
/* 804E9330  38 9D 00 68 */	addi r4, r29, 0x68
/* 804E9334  38 BD 00 A4 */	addi r5, r29, 0xa4
/* 804E9338  4B D9 74 A9 */	bl func_802807E0
lbl_804E933C:
/* 804E933C  39 61 00 30 */	addi r11, r1, 0x30
/* 804E9340  4B E7 8E E5 */	bl _restgpr_28
/* 804E9344  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804E9348  7C 08 03 A6 */	mtlr r0
/* 804E934C  38 21 00 30 */	addi r1, r1, 0x30
/* 804E9350  4E 80 00 20 */	blr 
