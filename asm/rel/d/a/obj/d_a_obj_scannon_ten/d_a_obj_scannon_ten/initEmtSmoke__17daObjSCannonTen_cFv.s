lbl_80CCC628:
/* 80CCC628  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80CCC62C  7C 08 02 A6 */	mflr r0
/* 80CCC630  90 01 00 64 */	stw r0, 0x64(r1)
/* 80CCC634  39 61 00 60 */	addi r11, r1, 0x60
/* 80CCC638  4B 69 5B 90 */	b _savegpr_24
/* 80CCC63C  7C 7F 1B 78 */	mr r31, r3
/* 80CCC640  80 63 05 74 */	lwz r3, 0x574(r3)
/* 80CCC644  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80CCC648  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80CCC64C  A0 1F 05 EE */	lhz r0, 0x5ee(r31)
/* 80CCC650  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80CCC654  7F 23 02 15 */	add. r25, r3, r0
/* 80CCC658  41 82 00 DC */	beq lbl_80CCC734
/* 80CCC65C  C0 59 00 2C */	lfs f2, 0x2c(r25)
/* 80CCC660  C0 39 00 1C */	lfs f1, 0x1c(r25)
/* 80CCC664  C0 19 00 0C */	lfs f0, 0xc(r25)
/* 80CCC668  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80CCC66C  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80CCC670  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 80CCC674  80 1F 04 DC */	lwz r0, 0x4dc(r31)
/* 80CCC678  90 01 00 20 */	stw r0, 0x20(r1)
/* 80CCC67C  A0 1F 04 E0 */	lhz r0, 0x4e0(r31)
/* 80CCC680  B0 01 00 24 */	sth r0, 0x24(r1)
/* 80CCC684  3C 60 80 CD */	lis r3, lit_3987@ha
/* 80CCC688  3B 43 CC 4C */	addi r26, r3, lit_3987@l
/* 80CCC68C  C0 1A 00 00 */	lfs f0, 0(r26)
/* 80CCC690  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80CCC694  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80CCC698  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80CCC69C  3B 00 00 00 */	li r24, 0
/* 80CCC6A0  3B C0 00 00 */	li r30, 0
/* 80CCC6A4  3B A0 00 00 */	li r29, 0
/* 80CCC6A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CCC6AC  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l
/* 80CCC6B0  3C 60 80 CD */	lis r3, PARTICLE_NAME@ha
/* 80CCC6B4  3B 83 CC 78 */	addi r28, r3, PARTICLE_NAME@l
lbl_80CCC6B8:
/* 80CCC6B8  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 80CCC6BC  38 80 00 00 */	li r4, 0
/* 80CCC6C0  90 81 00 08 */	stw r4, 8(r1)
/* 80CCC6C4  38 00 FF FF */	li r0, -1
/* 80CCC6C8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CCC6CC  90 81 00 10 */	stw r4, 0x10(r1)
/* 80CCC6D0  90 81 00 14 */	stw r4, 0x14(r1)
/* 80CCC6D4  90 81 00 18 */	stw r4, 0x18(r1)
/* 80CCC6D8  38 80 00 00 */	li r4, 0
/* 80CCC6DC  7C BC EA 2E */	lhzx r5, r28, r29
/* 80CCC6E0  38 C1 00 34 */	addi r6, r1, 0x34
/* 80CCC6E4  38 E0 00 00 */	li r7, 0
/* 80CCC6E8  39 01 00 20 */	addi r8, r1, 0x20
/* 80CCC6EC  39 21 00 28 */	addi r9, r1, 0x28
/* 80CCC6F0  39 40 00 FF */	li r10, 0xff
/* 80CCC6F4  C0 3A 00 00 */	lfs f1, 0(r26)
/* 80CCC6F8  4B 38 03 98 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80CCC6FC  38 1E 05 F4 */	addi r0, r30, 0x5f4
/* 80CCC700  7C 7F 01 2E */	stwx r3, r31, r0
/* 80CCC704  7C BF 00 2E */	lwzx r5, r31, r0
/* 80CCC708  28 05 00 00 */	cmplwi r5, 0
/* 80CCC70C  41 82 00 14 */	beq lbl_80CCC720
/* 80CCC710  7F 23 CB 78 */	mr r3, r25
/* 80CCC714  38 85 00 68 */	addi r4, r5, 0x68
/* 80CCC718  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 80CCC71C  4B 5B 40 C4 */	b func_802807E0
lbl_80CCC720:
/* 80CCC720  3B 18 00 01 */	addi r24, r24, 1
/* 80CCC724  2C 18 00 03 */	cmpwi r24, 3
/* 80CCC728  3B DE 00 04 */	addi r30, r30, 4
/* 80CCC72C  3B BD 00 02 */	addi r29, r29, 2
/* 80CCC730  41 80 FF 88 */	blt lbl_80CCC6B8
lbl_80CCC734:
/* 80CCC734  39 61 00 60 */	addi r11, r1, 0x60
/* 80CCC738  4B 69 5A DC */	b _restgpr_24
/* 80CCC73C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80CCC740  7C 08 03 A6 */	mtlr r0
/* 80CCC744  38 21 00 60 */	addi r1, r1, 0x60
/* 80CCC748  4E 80 00 20 */	blr 
