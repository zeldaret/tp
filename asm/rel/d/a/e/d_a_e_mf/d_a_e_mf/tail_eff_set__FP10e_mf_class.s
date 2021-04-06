lbl_8070E5E0:
/* 8070E5E0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8070E5E4  7C 08 02 A6 */	mflr r0
/* 8070E5E8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8070E5EC  39 61 00 30 */	addi r11, r1, 0x30
/* 8070E5F0  4B C5 3B E9 */	bl _savegpr_28
/* 8070E5F4  7C 7D 1B 78 */	mr r29, r3
/* 8070E5F8  80 63 05 DC */	lwz r3, 0x5dc(r3)
/* 8070E5FC  83 C3 00 04 */	lwz r30, 4(r3)
/* 8070E600  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8070E604  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8070E608  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 8070E60C  38 00 00 FF */	li r0, 0xff
/* 8070E610  90 01 00 08 */	stw r0, 8(r1)
/* 8070E614  38 80 00 00 */	li r4, 0
/* 8070E618  90 81 00 0C */	stw r4, 0xc(r1)
/* 8070E61C  38 00 FF FF */	li r0, -1
/* 8070E620  90 01 00 10 */	stw r0, 0x10(r1)
/* 8070E624  90 81 00 14 */	stw r4, 0x14(r1)
/* 8070E628  90 81 00 18 */	stw r4, 0x18(r1)
/* 8070E62C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8070E630  80 9D 10 E4 */	lwz r4, 0x10e4(r29)
/* 8070E634  38 A0 00 00 */	li r5, 0
/* 8070E638  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000815F@ha */
/* 8070E63C  38 C6 81 5F */	addi r6, r6, 0x815F /* 0x0000815F@l */
/* 8070E640  38 FD 04 D0 */	addi r7, r29, 0x4d0
/* 8070E644  39 00 00 00 */	li r8, 0
/* 8070E648  39 20 00 00 */	li r9, 0
/* 8070E64C  39 40 00 00 */	li r10, 0
/* 8070E650  3D 60 80 71 */	lis r11, lit_3830@ha /* 0x8071397C@ha */
/* 8070E654  C0 2B 39 7C */	lfs f1, lit_3830@l(r11)  /* 0x8071397C@l */
/* 8070E658  4B 93 EE 75 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8070E65C  90 7D 10 E4 */	stw r3, 0x10e4(r29)
/* 8070E660  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 8070E664  38 63 02 10 */	addi r3, r3, 0x210
/* 8070E668  80 9D 10 E4 */	lwz r4, 0x10e4(r29)
/* 8070E66C  4B 93 D2 AD */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 8070E670  7C 7C 1B 79 */	or. r28, r3, r3
/* 8070E674  41 82 00 34 */	beq lbl_8070E6A8
/* 8070E678  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 8070E67C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8070E680  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 8070E684  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 8070E688  80 84 00 00 */	lwz r4, 0(r4)
/* 8070E68C  4B C3 7E 25 */	bl PSMTXCopy
/* 8070E690  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8070E694  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8070E698  80 63 00 00 */	lwz r3, 0(r3)
/* 8070E69C  38 9C 00 68 */	addi r4, r28, 0x68
/* 8070E6A0  38 BC 00 A4 */	addi r5, r28, 0xa4
/* 8070E6A4  4B B7 21 3D */	bl func_802807E0
lbl_8070E6A8:
/* 8070E6A8  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 8070E6AC  38 00 00 FF */	li r0, 0xff
/* 8070E6B0  90 01 00 08 */	stw r0, 8(r1)
/* 8070E6B4  38 80 00 00 */	li r4, 0
/* 8070E6B8  90 81 00 0C */	stw r4, 0xc(r1)
/* 8070E6BC  38 00 FF FF */	li r0, -1
/* 8070E6C0  90 01 00 10 */	stw r0, 0x10(r1)
/* 8070E6C4  90 81 00 14 */	stw r4, 0x14(r1)
/* 8070E6C8  90 81 00 18 */	stw r4, 0x18(r1)
/* 8070E6CC  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8070E6D0  80 9D 10 E8 */	lwz r4, 0x10e8(r29)
/* 8070E6D4  38 A0 00 00 */	li r5, 0
/* 8070E6D8  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008160@ha */
/* 8070E6DC  38 C6 81 60 */	addi r6, r6, 0x8160 /* 0x00008160@l */
/* 8070E6E0  38 FD 04 D0 */	addi r7, r29, 0x4d0
/* 8070E6E4  39 00 00 00 */	li r8, 0
/* 8070E6E8  39 20 00 00 */	li r9, 0
/* 8070E6EC  39 40 00 00 */	li r10, 0
/* 8070E6F0  3D 60 80 71 */	lis r11, lit_3830@ha /* 0x8071397C@ha */
/* 8070E6F4  C0 2B 39 7C */	lfs f1, lit_3830@l(r11)  /* 0x8071397C@l */
/* 8070E6F8  4B 93 ED D5 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8070E6FC  90 7D 10 E8 */	stw r3, 0x10e8(r29)
/* 8070E700  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 8070E704  38 63 02 10 */	addi r3, r3, 0x210
/* 8070E708  80 9D 10 E8 */	lwz r4, 0x10e8(r29)
/* 8070E70C  4B 93 D2 0D */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 8070E710  7C 7D 1B 79 */	or. r29, r3, r3
/* 8070E714  41 82 00 34 */	beq lbl_8070E748
/* 8070E718  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 8070E71C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8070E720  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 8070E724  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 8070E728  80 84 00 00 */	lwz r4, 0(r4)
/* 8070E72C  4B C3 7D 85 */	bl PSMTXCopy
/* 8070E730  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8070E734  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8070E738  80 63 00 00 */	lwz r3, 0(r3)
/* 8070E73C  38 9D 00 68 */	addi r4, r29, 0x68
/* 8070E740  38 BD 00 A4 */	addi r5, r29, 0xa4
/* 8070E744  4B B7 20 9D */	bl func_802807E0
lbl_8070E748:
/* 8070E748  39 61 00 30 */	addi r11, r1, 0x30
/* 8070E74C  4B C5 3A D9 */	bl _restgpr_28
/* 8070E750  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8070E754  7C 08 03 A6 */	mtlr r0
/* 8070E758  38 21 00 30 */	addi r1, r1, 0x30
/* 8070E75C  4E 80 00 20 */	blr 
