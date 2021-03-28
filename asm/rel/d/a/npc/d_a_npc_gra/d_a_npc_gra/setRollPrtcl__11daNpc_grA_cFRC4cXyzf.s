lbl_809C389C:
/* 809C389C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 809C38A0  7C 08 02 A6 */	mflr r0
/* 809C38A4  90 01 00 74 */	stw r0, 0x74(r1)
/* 809C38A8  39 61 00 70 */	addi r11, r1, 0x70
/* 809C38AC  4B 99 E9 20 */	b _savegpr_25
/* 809C38B0  7C 7C 1B 78 */	mr r28, r3
/* 809C38B4  3C 60 80 9D */	lis r3, m__17daNpc_grA_Param_c@ha
/* 809C38B8  3B C3 9D 98 */	addi r30, r3, m__17daNpc_grA_Param_c@l
/* 809C38BC  C0 04 00 00 */	lfs f0, 0(r4)
/* 809C38C0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 809C38C4  C0 04 00 04 */	lfs f0, 4(r4)
/* 809C38C8  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 809C38CC  C0 04 00 08 */	lfs f0, 8(r4)
/* 809C38D0  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 809C38D4  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 809C38D8  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 809C38DC  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 809C38E0  3B A0 00 00 */	li r29, 0
/* 809C38E4  3B 60 00 00 */	li r27, 0
/* 809C38E8  3B 40 00 00 */	li r26, 0
/* 809C38EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809C38F0  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
lbl_809C38F4:
/* 809C38F4  2C 1D 00 00 */	cmpwi r29, 0
/* 809C38F8  40 82 00 60 */	bne lbl_809C3958
/* 809C38FC  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 809C3900  38 00 00 FF */	li r0, 0xff
/* 809C3904  90 01 00 08 */	stw r0, 8(r1)
/* 809C3908  38 80 00 00 */	li r4, 0
/* 809C390C  90 81 00 0C */	stw r4, 0xc(r1)
/* 809C3910  38 00 FF FF */	li r0, -1
/* 809C3914  90 01 00 10 */	stw r0, 0x10(r1)
/* 809C3918  90 81 00 14 */	stw r4, 0x14(r1)
/* 809C391C  90 81 00 18 */	stw r4, 0x18(r1)
/* 809C3920  90 81 00 1C */	stw r4, 0x1c(r1)
/* 809C3924  3B 3A 15 10 */	addi r25, r26, 0x1510
/* 809C3928  7C 9C C8 2E */	lwzx r4, r28, r25
/* 809C392C  38 A0 00 00 */	li r5, 0
/* 809C3930  38 DE 06 94 */	addi r6, r30, 0x694
/* 809C3934  7C C6 DA 2E */	lhzx r6, r6, r27
/* 809C3938  38 E1 00 44 */	addi r7, r1, 0x44
/* 809C393C  39 1C 01 0C */	addi r8, r28, 0x10c
/* 809C3940  39 3C 04 DC */	addi r9, r28, 0x4dc
/* 809C3944  39 41 00 38 */	addi r10, r1, 0x38
/* 809C3948  C0 3E 00 98 */	lfs f1, 0x98(r30)
/* 809C394C  4B 68 9B 80 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 809C3950  7C 7C C9 2E */	stwx r3, r28, r25
/* 809C3954  48 00 00 4C */	b lbl_809C39A0
lbl_809C3958:
/* 809C3958  38 60 00 00 */	li r3, 0
/* 809C395C  90 61 00 08 */	stw r3, 8(r1)
/* 809C3960  90 61 00 0C */	stw r3, 0xc(r1)
/* 809C3964  38 00 FF FF */	li r0, -1
/* 809C3968  90 01 00 10 */	stw r0, 0x10(r1)
/* 809C396C  90 61 00 14 */	stw r3, 0x14(r1)
/* 809C3970  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 809C3974  3B 3A 15 10 */	addi r25, r26, 0x1510
/* 809C3978  7C 9C C8 2E */	lwzx r4, r28, r25
/* 809C397C  38 BE 06 94 */	addi r5, r30, 0x694
/* 809C3980  7C A5 DA 2E */	lhzx r5, r5, r27
/* 809C3984  38 DC 06 C0 */	addi r6, r28, 0x6c0
/* 809C3988  38 E1 00 44 */	addi r7, r1, 0x44
/* 809C398C  39 1C 01 0C */	addi r8, r28, 0x10c
/* 809C3990  39 3C 04 DC */	addi r9, r28, 0x4dc
/* 809C3994  39 41 00 38 */	addi r10, r1, 0x38
/* 809C3998  4B 68 9D 0C */	b setPoly__13dPa_control_cFUlUsR13cBgS_PolyInfoPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyziP18dPa_levelEcallBackScPC4cXyz
/* 809C399C  7C 7C C9 2E */	stwx r3, r28, r25
lbl_809C39A0:
/* 809C39A0  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 809C39A4  38 63 02 10 */	addi r3, r3, 0x210
/* 809C39A8  38 1A 15 10 */	addi r0, r26, 0x1510
/* 809C39AC  7C 9C 00 2E */	lwzx r4, r28, r0
/* 809C39B0  4B 68 7F 68 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 809C39B4  7C 79 1B 79 */	or. r25, r3, r3
/* 809C39B8  41 82 00 70 */	beq lbl_809C3A28
/* 809C39BC  C0 41 00 4C */	lfs f2, 0x4c(r1)
/* 809C39C0  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 809C39C4  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 809C39C8  D0 19 00 A4 */	stfs f0, 0xa4(r25)
/* 809C39CC  D0 39 00 A8 */	stfs f1, 0xa8(r25)
/* 809C39D0  D0 59 00 AC */	stfs f2, 0xac(r25)
/* 809C39D4  C0 39 00 9C */	lfs f1, 0x9c(r25)
/* 809C39D8  C0 59 00 A0 */	lfs f2, 0xa0(r25)
/* 809C39DC  C0 19 00 98 */	lfs f0, 0x98(r25)
/* 809C39E0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 809C39E4  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 809C39E8  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 809C39EC  38 61 00 2C */	addi r3, r1, 0x2c
/* 809C39F0  38 81 00 38 */	addi r4, r1, 0x38
/* 809C39F4  C0 3E 06 9C */	lfs f1, 0x69c(r30)
/* 809C39F8  4B 8A CD B4 */	b cLib_chasePos__FP4cXyzRC4cXyzf
/* 809C39FC  E0 01 00 2C */	psq_l f0, 44(r1), 0, 0 /* qr0 */
/* 809C3A00  C0 41 00 34 */	lfs f2, 0x34(r1)
/* 809C3A04  F0 01 00 20 */	psq_st f0, 32(r1), 0, 0 /* qr0 */
/* 809C3A08  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 809C3A0C  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 809C3A10  D0 39 00 98 */	stfs f1, 0x98(r25)
/* 809C3A14  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 809C3A18  D0 19 00 9C */	stfs f0, 0x9c(r25)
/* 809C3A1C  D0 59 00 A0 */	stfs f2, 0xa0(r25)
/* 809C3A20  D0 39 00 B0 */	stfs f1, 0xb0(r25)
/* 809C3A24  D0 19 00 B4 */	stfs f0, 0xb4(r25)
lbl_809C3A28:
/* 809C3A28  3B BD 00 01 */	addi r29, r29, 1
/* 809C3A2C  2C 1D 00 03 */	cmpwi r29, 3
/* 809C3A30  3B 7B 00 02 */	addi r27, r27, 2
/* 809C3A34  3B 5A 00 04 */	addi r26, r26, 4
/* 809C3A38  41 80 FE BC */	blt lbl_809C38F4
/* 809C3A3C  39 61 00 70 */	addi r11, r1, 0x70
/* 809C3A40  4B 99 E7 D8 */	b _restgpr_25
/* 809C3A44  80 01 00 74 */	lwz r0, 0x74(r1)
/* 809C3A48  7C 08 03 A6 */	mtlr r0
/* 809C3A4C  38 21 00 70 */	addi r1, r1, 0x70
/* 809C3A50  4E 80 00 20 */	blr 
