lbl_80817BD8:
/* 80817BD8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80817BDC  7C 08 02 A6 */	mflr r0
/* 80817BE0  90 01 00 64 */	stw r0, 0x64(r1)
/* 80817BE4  39 61 00 60 */	addi r11, r1, 0x60
/* 80817BE8  4B B4 A5 DC */	b _savegpr_23
/* 80817BEC  7C 7E 1B 78 */	mr r30, r3
/* 80817BF0  3C 60 80 82 */	lis r3, lit_1109@ha
/* 80817BF4  3B E3 1E 18 */	addi r31, r3, lit_1109@l
/* 80817BF8  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 80817BFC  C0 3E 06 CC */	lfs f1, 0x6cc(r30)
/* 80817C00  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80817C04  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80817C08  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80817C0C  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 80817C10  88 1F 02 50 */	lbz r0, 0x250(r31)
/* 80817C14  7C 00 07 75 */	extsb. r0, r0
/* 80817C18  40 82 00 34 */	bne lbl_80817C4C
/* 80817C1C  38 7F 00 4C */	addi r3, r31, 0x4c
/* 80817C20  C0 03 00 08 */	lfs f0, 8(r3)
/* 80817C24  D0 1F 02 54 */	stfs f0, 0x254(r31)
/* 80817C28  38 7F 02 54 */	addi r3, r31, 0x254
/* 80817C2C  D0 03 00 04 */	stfs f0, 4(r3)
/* 80817C30  D0 03 00 08 */	stfs f0, 8(r3)
/* 80817C34  3C 80 80 81 */	lis r4, __dt__4cXyzFv@ha
/* 80817C38  38 84 64 B4 */	addi r4, r4, __dt__4cXyzFv@l
/* 80817C3C  38 BF 02 44 */	addi r5, r31, 0x244
/* 80817C40  4B FF E4 59 */	bl __register_global_object
/* 80817C44  38 00 00 01 */	li r0, 1
/* 80817C48  98 1F 02 50 */	stb r0, 0x250(r31)
lbl_80817C4C:
/* 80817C4C  3A E0 00 00 */	li r23, 0
/* 80817C50  3B A0 00 00 */	li r29, 0
/* 80817C54  3B 80 00 00 */	li r28, 0
/* 80817C58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80817C5C  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l
/* 80817C60  3C 60 80 82 */	lis r3, w_eff_id_4637@ha
/* 80817C64  3B 43 1C 8C */	addi r26, r3, w_eff_id_4637@l
/* 80817C68  3C 60 80 82 */	lis r3, lit_3791@ha
/* 80817C6C  3B 63 18 AC */	addi r27, r3, lit_3791@l
lbl_80817C70:
/* 80817C70  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 80817C74  38 00 00 FF */	li r0, 0xff
/* 80817C78  90 01 00 08 */	stw r0, 8(r1)
/* 80817C7C  38 80 00 00 */	li r4, 0
/* 80817C80  90 81 00 0C */	stw r4, 0xc(r1)
/* 80817C84  38 00 FF FF */	li r0, -1
/* 80817C88  90 01 00 10 */	stw r0, 0x10(r1)
/* 80817C8C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80817C90  90 81 00 18 */	stw r4, 0x18(r1)
/* 80817C94  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80817C98  3B 1C 15 0C */	addi r24, r28, 0x150c
/* 80817C9C  7C 9E C0 2E */	lwzx r4, r30, r24
/* 80817CA0  38 A0 00 00 */	li r5, 0
/* 80817CA4  7C DA EA 2E */	lhzx r6, r26, r29
/* 80817CA8  38 E1 00 20 */	addi r7, r1, 0x20
/* 80817CAC  39 1E 01 0C */	addi r8, r30, 0x10c
/* 80817CB0  39 20 00 00 */	li r9, 0
/* 80817CB4  39 5F 02 54 */	addi r10, r31, 0x254
/* 80817CB8  C0 3B 00 00 */	lfs f1, 0(r27)
/* 80817CBC  4B 83 58 10 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80817CC0  7C 7E C1 2E */	stwx r3, r30, r24
/* 80817CC4  3A F7 00 01 */	addi r23, r23, 1
/* 80817CC8  2C 17 00 02 */	cmpwi r23, 2
/* 80817CCC  3B BD 00 02 */	addi r29, r29, 2
/* 80817CD0  3B 9C 00 04 */	addi r28, r28, 4
/* 80817CD4  41 80 FF 9C */	blt lbl_80817C70
/* 80817CD8  39 61 00 60 */	addi r11, r1, 0x60
/* 80817CDC  4B B4 A5 34 */	b _restgpr_23
/* 80817CE0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80817CE4  7C 08 03 A6 */	mtlr r0
/* 80817CE8  38 21 00 60 */	addi r1, r1, 0x60
/* 80817CEC  4E 80 00 20 */	blr 
