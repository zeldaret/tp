lbl_80CB3380:
/* 80CB3380  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80CB3384  7C 08 02 A6 */	mflr r0
/* 80CB3388  90 01 00 44 */	stw r0, 0x44(r1)
/* 80CB338C  39 61 00 40 */	addi r11, r1, 0x40
/* 80CB3390  4B 6A EE 40 */	b _savegpr_26
/* 80CB3394  7C 7D 1B 78 */	mr r29, r3
/* 80CB3398  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CB339C  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 80CB33A0  80 7E 5D B4 */	lwz r3, 0x5db4(r30)
/* 80CB33A4  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80CB33A8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80CB33AC  7D 89 03 A6 */	mtctr r12
/* 80CB33B0  4E 80 04 21 */	bctrl 
/* 80CB33B4  28 03 00 00 */	cmplwi r3, 0
/* 80CB33B8  40 82 00 64 */	bne lbl_80CB341C
/* 80CB33BC  3B 40 00 00 */	li r26, 0
/* 80CB33C0  3B 80 00 00 */	li r28, 0
/* 80CB33C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CB33C8  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80CB33CC  3B 60 00 01 */	li r27, 1
lbl_80CB33D0:
/* 80CB33D0  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80CB33D4  38 63 02 10 */	addi r3, r3, 0x210
/* 80CB33D8  38 1C 05 98 */	addi r0, r28, 0x598
/* 80CB33DC  7C 9D 00 2E */	lwzx r4, r29, r0
/* 80CB33E0  4B 39 85 38 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 80CB33E4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CB33E8  41 82 00 18 */	beq lbl_80CB3400
/* 80CB33EC  4B 5C B8 74 */	b deleteAllParticle__14JPABaseEmitterFv
/* 80CB33F0  80 1E 00 F4 */	lwz r0, 0xf4(r30)
/* 80CB33F4  60 00 00 01 */	ori r0, r0, 1
/* 80CB33F8  90 1E 00 F4 */	stw r0, 0xf4(r30)
/* 80CB33FC  93 7E 00 24 */	stw r27, 0x24(r30)
lbl_80CB3400:
/* 80CB3400  3B 5A 00 01 */	addi r26, r26, 1
/* 80CB3404  2C 1A 00 02 */	cmpwi r26, 2
/* 80CB3408  3B 9C 00 04 */	addi r28, r28, 4
/* 80CB340C  41 80 FF C4 */	blt lbl_80CB33D0
/* 80CB3410  7F A3 EB 78 */	mr r3, r29
/* 80CB3414  4B 36 68 68 */	b fopAcM_delete__FP10fopAc_ac_c
/* 80CB3418  48 00 01 10 */	b lbl_80CB3528
lbl_80CB341C:
/* 80CB341C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CB3420  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80CB3424  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80CB3428  38 00 00 FF */	li r0, 0xff
/* 80CB342C  90 01 00 08 */	stw r0, 8(r1)
/* 80CB3430  38 80 00 00 */	li r4, 0
/* 80CB3434  90 81 00 0C */	stw r4, 0xc(r1)
/* 80CB3438  38 00 FF FF */	li r0, -1
/* 80CB343C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CB3440  90 81 00 14 */	stw r4, 0x14(r1)
/* 80CB3444  90 81 00 18 */	stw r4, 0x18(r1)
/* 80CB3448  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80CB344C  80 9D 05 98 */	lwz r4, 0x598(r29)
/* 80CB3450  38 A0 00 00 */	li r5, 0
/* 80CB3454  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000866F@ha */
/* 80CB3458  38 C6 86 6F */	addi r6, r6, 0x866F /* 0x0000866F@l */
/* 80CB345C  38 FD 04 D0 */	addi r7, r29, 0x4d0
/* 80CB3460  39 00 00 00 */	li r8, 0
/* 80CB3464  39 20 00 00 */	li r9, 0
/* 80CB3468  39 40 00 00 */	li r10, 0
/* 80CB346C  3D 60 80 CB */	lis r11, lit_3662@ha
/* 80CB3470  C0 2B 3E EC */	lfs f1, lit_3662@l(r11)
/* 80CB3474  4B 39 A0 58 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80CB3478  90 7D 05 98 */	stw r3, 0x598(r29)
/* 80CB347C  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80CB3480  38 00 00 FF */	li r0, 0xff
/* 80CB3484  90 01 00 08 */	stw r0, 8(r1)
/* 80CB3488  38 80 00 00 */	li r4, 0
/* 80CB348C  90 81 00 0C */	stw r4, 0xc(r1)
/* 80CB3490  38 00 FF FF */	li r0, -1
/* 80CB3494  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CB3498  90 81 00 14 */	stw r4, 0x14(r1)
/* 80CB349C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80CB34A0  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80CB34A4  80 9D 05 9C */	lwz r4, 0x59c(r29)
/* 80CB34A8  38 A0 00 00 */	li r5, 0
/* 80CB34AC  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000866E@ha */
/* 80CB34B0  38 C6 86 6E */	addi r6, r6, 0x866E /* 0x0000866E@l */
/* 80CB34B4  38 FD 04 D0 */	addi r7, r29, 0x4d0
/* 80CB34B8  39 00 00 00 */	li r8, 0
/* 80CB34BC  39 20 00 00 */	li r9, 0
/* 80CB34C0  39 40 00 00 */	li r10, 0
/* 80CB34C4  3D 60 80 CB */	lis r11, lit_3662@ha
/* 80CB34C8  C0 2B 3E EC */	lfs f1, lit_3662@l(r11)
/* 80CB34CC  4B 39 A0 00 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80CB34D0  90 7D 05 9C */	stw r3, 0x59c(r29)
/* 80CB34D4  3B 40 00 00 */	li r26, 0
/* 80CB34D8  3B 80 00 00 */	li r28, 0
lbl_80CB34DC:
/* 80CB34DC  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80CB34E0  38 63 02 10 */	addi r3, r3, 0x210
/* 80CB34E4  38 1C 05 98 */	addi r0, r28, 0x598
/* 80CB34E8  7C 9D 00 2E */	lwzx r4, r29, r0
/* 80CB34EC  4B 39 84 2C */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 80CB34F0  7C 7B 1B 79 */	or. r27, r3, r3
/* 80CB34F4  41 82 00 24 */	beq lbl_80CB3518
/* 80CB34F8  80 7E 5D B4 */	lwz r3, 0x5db4(r30)
/* 80CB34FC  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80CB3500  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80CB3504  7D 89 03 A6 */	mtctr r12
/* 80CB3508  4E 80 04 21 */	bctrl 
/* 80CB350C  38 9B 00 68 */	addi r4, r27, 0x68
/* 80CB3510  38 BB 00 A4 */	addi r5, r27, 0xa4
/* 80CB3514  4B 5C D2 CC */	b func_802807E0
lbl_80CB3518:
/* 80CB3518  3B 5A 00 01 */	addi r26, r26, 1
/* 80CB351C  2C 1A 00 02 */	cmpwi r26, 2
/* 80CB3520  3B 9C 00 04 */	addi r28, r28, 4
/* 80CB3524  41 80 FF B8 */	blt lbl_80CB34DC
lbl_80CB3528:
/* 80CB3528  39 61 00 40 */	addi r11, r1, 0x40
/* 80CB352C  4B 6A EC F0 */	b _restgpr_26
/* 80CB3530  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80CB3534  7C 08 03 A6 */	mtlr r0
/* 80CB3538  38 21 00 40 */	addi r1, r1, 0x40
/* 80CB353C  4E 80 00 20 */	blr 
