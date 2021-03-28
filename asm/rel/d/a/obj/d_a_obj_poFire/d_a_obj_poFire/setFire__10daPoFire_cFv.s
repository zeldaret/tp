lbl_80CB2D84:
/* 80CB2D84  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80CB2D88  7C 08 02 A6 */	mflr r0
/* 80CB2D8C  90 01 00 84 */	stw r0, 0x84(r1)
/* 80CB2D90  39 61 00 80 */	addi r11, r1, 0x80
/* 80CB2D94  4B 6A F4 3C */	b _savegpr_26
/* 80CB2D98  7C 7E 1B 78 */	mr r30, r3
/* 80CB2D9C  3C 60 80 CB */	lis r3, lit_3662@ha
/* 80CB2DA0  3B E3 3E EC */	addi r31, r3, lit_3662@l
/* 80CB2DA4  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80CB2DA8  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80CB2DAC  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80CB2DB0  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80CB2DB4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CB2DB8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CB2DBC  C0 3E 05 F8 */	lfs f1, 0x5f8(r30)
/* 80CB2DC0  C0 5E 05 FC */	lfs f2, 0x5fc(r30)
/* 80CB2DC4  C0 7E 06 00 */	lfs f3, 0x600(r30)
/* 80CB2DC8  4B 69 3B 20 */	b PSMTXTrans
/* 80CB2DCC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CB2DD0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CB2DD4  38 81 00 50 */	addi r4, r1, 0x50
/* 80CB2DD8  7C 85 23 78 */	mr r5, r4
/* 80CB2DDC  4B 69 3F 90 */	b PSMTXMultVec
/* 80CB2DE0  38 61 00 38 */	addi r3, r1, 0x38
/* 80CB2DE4  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80CB2DE8  38 A1 00 50 */	addi r5, r1, 0x50
/* 80CB2DEC  4B 5B 3C F8 */	b __pl__4cXyzCFRC3Vec
/* 80CB2DF0  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80CB2DF4  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80CB2DF8  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80CB2DFC  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80CB2E00  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80CB2E04  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80CB2E08  38 61 00 2C */	addi r3, r1, 0x2c
/* 80CB2E0C  38 81 00 44 */	addi r4, r1, 0x44
/* 80CB2E10  38 BE 05 AC */	addi r5, r30, 0x5ac
/* 80CB2E14  4B 5B 3D 20 */	b __mi__4cXyzCFRC3Vec
/* 80CB2E18  38 61 00 20 */	addi r3, r1, 0x20
/* 80CB2E1C  38 81 00 2C */	addi r4, r1, 0x2c
/* 80CB2E20  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80CB2E24  4B 5B 3D 60 */	b __ml__4cXyzCFf
/* 80CB2E28  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80CB2E2C  D0 1E 05 A0 */	stfs f0, 0x5a0(r30)
/* 80CB2E30  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80CB2E34  D0 1E 05 A4 */	stfs f0, 0x5a4(r30)
/* 80CB2E38  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80CB2E3C  D0 1E 05 A8 */	stfs f0, 0x5a8(r30)
/* 80CB2E40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CB2E44  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
/* 80CB2E48  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 80CB2E4C  38 00 00 FF */	li r0, 0xff
/* 80CB2E50  90 01 00 08 */	stw r0, 8(r1)
/* 80CB2E54  38 80 00 00 */	li r4, 0
/* 80CB2E58  90 81 00 0C */	stw r4, 0xc(r1)
/* 80CB2E5C  38 00 FF FF */	li r0, -1
/* 80CB2E60  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CB2E64  90 81 00 14 */	stw r4, 0x14(r1)
/* 80CB2E68  90 81 00 18 */	stw r4, 0x18(r1)
/* 80CB2E6C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80CB2E70  80 9E 05 98 */	lwz r4, 0x598(r30)
/* 80CB2E74  38 A0 00 00 */	li r5, 0
/* 80CB2E78  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000866D@ha */
/* 80CB2E7C  38 C6 86 6D */	addi r6, r6, 0x866D /* 0x0000866D@l */
/* 80CB2E80  38 E1 00 44 */	addi r7, r1, 0x44
/* 80CB2E84  39 00 00 00 */	li r8, 0
/* 80CB2E88  39 20 00 00 */	li r9, 0
/* 80CB2E8C  39 40 00 00 */	li r10, 0
/* 80CB2E90  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80CB2E94  4B 39 A6 38 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80CB2E98  90 7E 05 98 */	stw r3, 0x598(r30)
/* 80CB2E9C  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 80CB2EA0  38 00 00 FF */	li r0, 0xff
/* 80CB2EA4  90 01 00 08 */	stw r0, 8(r1)
/* 80CB2EA8  38 80 00 00 */	li r4, 0
/* 80CB2EAC  90 81 00 0C */	stw r4, 0xc(r1)
/* 80CB2EB0  38 00 FF FF */	li r0, -1
/* 80CB2EB4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CB2EB8  90 81 00 14 */	stw r4, 0x14(r1)
/* 80CB2EBC  90 81 00 18 */	stw r4, 0x18(r1)
/* 80CB2EC0  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80CB2EC4  80 9E 05 9C */	lwz r4, 0x59c(r30)
/* 80CB2EC8  38 A0 00 00 */	li r5, 0
/* 80CB2ECC  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000869B@ha */
/* 80CB2ED0  38 C6 86 9B */	addi r6, r6, 0x869B /* 0x0000869B@l */
/* 80CB2ED4  38 E1 00 44 */	addi r7, r1, 0x44
/* 80CB2ED8  39 00 00 00 */	li r8, 0
/* 80CB2EDC  39 20 00 00 */	li r9, 0
/* 80CB2EE0  39 40 00 00 */	li r10, 0
/* 80CB2EE4  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80CB2EE8  4B 39 A5 E4 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80CB2EEC  90 7E 05 9C */	stw r3, 0x59c(r30)
/* 80CB2EF0  3B 40 00 00 */	li r26, 0
/* 80CB2EF4  3B E0 00 00 */	li r31, 0
/* 80CB2EF8  3B 7E 05 A0 */	addi r27, r30, 0x5a0
/* 80CB2EFC  3C 60 80 45 */	lis r3, mParticleTracePCB__13dPa_control_c@ha
/* 80CB2F00  3B A3 0E C8 */	addi r29, r3, mParticleTracePCB__13dPa_control_c@l
lbl_80CB2F04:
/* 80CB2F04  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 80CB2F08  38 63 02 10 */	addi r3, r3, 0x210
/* 80CB2F0C  38 1F 05 98 */	addi r0, r31, 0x598
/* 80CB2F10  7C 9E 00 2E */	lwzx r4, r30, r0
/* 80CB2F14  4B 39 8A 04 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 80CB2F18  28 03 00 00 */	cmplwi r3, 0
/* 80CB2F1C  41 82 00 0C */	beq lbl_80CB2F28
/* 80CB2F20  93 A3 00 F0 */	stw r29, 0xf0(r3)
/* 80CB2F24  93 63 00 C0 */	stw r27, 0xc0(r3)
lbl_80CB2F28:
/* 80CB2F28  3B 5A 00 01 */	addi r26, r26, 1
/* 80CB2F2C  2C 1A 00 02 */	cmpwi r26, 2
/* 80CB2F30  3B FF 00 04 */	addi r31, r31, 4
/* 80CB2F34  41 80 FF D0 */	blt lbl_80CB2F04
/* 80CB2F38  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80CB2F3C  D0 1E 05 AC */	stfs f0, 0x5ac(r30)
/* 80CB2F40  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80CB2F44  D0 1E 05 B0 */	stfs f0, 0x5b0(r30)
/* 80CB2F48  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80CB2F4C  D0 1E 05 B4 */	stfs f0, 0x5b4(r30)
/* 80CB2F50  39 61 00 80 */	addi r11, r1, 0x80
/* 80CB2F54  4B 6A F2 C8 */	b _restgpr_26
/* 80CB2F58  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80CB2F5C  7C 08 03 A6 */	mtlr r0
/* 80CB2F60  38 21 00 80 */	addi r1, r1, 0x80
/* 80CB2F64  4E 80 00 20 */	blr 
