lbl_8063A638:
/* 8063A638  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8063A63C  7C 08 02 A6 */	mflr r0
/* 8063A640  90 01 00 44 */	stw r0, 0x44(r1)
/* 8063A644  39 61 00 40 */	addi r11, r1, 0x40
/* 8063A648  4B D2 7B 88 */	b _savegpr_26
/* 8063A64C  7C 7A 1B 78 */	mr r26, r3
/* 8063A650  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8063A654  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8063A658  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8063A65C  4B 9E 00 B4 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8063A660  3C 63 00 01 */	addis r3, r3, 1
/* 8063A664  38 03 80 00 */	addi r0, r3, -32768
/* 8063A668  B0 1A 04 DE */	sth r0, 0x4de(r26)
/* 8063A66C  3B 60 00 00 */	li r27, 0
/* 8063A670  3B E0 00 00 */	li r31, 0
/* 8063A674  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8063A678  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
/* 8063A67C  3C 60 80 64 */	lis r3, break_effect_id@ha
/* 8063A680  3B A3 DE BC */	addi r29, r3, break_effect_id@l
/* 8063A684  3C 60 80 64 */	lis r3, lit_3776@ha
/* 8063A688  3B C3 DC 84 */	addi r30, r3, lit_3776@l
lbl_8063A68C:
/* 8063A68C  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 8063A690  38 80 00 00 */	li r4, 0
/* 8063A694  90 81 00 08 */	stw r4, 8(r1)
/* 8063A698  38 00 FF FF */	li r0, -1
/* 8063A69C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8063A6A0  90 81 00 10 */	stw r4, 0x10(r1)
/* 8063A6A4  90 81 00 14 */	stw r4, 0x14(r1)
/* 8063A6A8  90 81 00 18 */	stw r4, 0x18(r1)
/* 8063A6AC  38 80 00 00 */	li r4, 0
/* 8063A6B0  7C BD FA 2E */	lhzx r5, r29, r31
/* 8063A6B4  38 DA 04 D0 */	addi r6, r26, 0x4d0
/* 8063A6B8  38 FA 01 0C */	addi r7, r26, 0x10c
/* 8063A6BC  39 1A 04 DC */	addi r8, r26, 0x4dc
/* 8063A6C0  39 20 00 00 */	li r9, 0
/* 8063A6C4  39 40 00 FF */	li r10, 0xff
/* 8063A6C8  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8063A6CC  4B A1 23 C4 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8063A6D0  3B 7B 00 01 */	addi r27, r27, 1
/* 8063A6D4  2C 1B 00 03 */	cmpwi r27, 3
/* 8063A6D8  3B FF 00 02 */	addi r31, r31, 2
/* 8063A6DC  41 80 FF B0 */	blt lbl_8063A68C
/* 8063A6E0  39 61 00 40 */	addi r11, r1, 0x40
/* 8063A6E4  4B D2 7B 38 */	b _restgpr_26
/* 8063A6E8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8063A6EC  7C 08 03 A6 */	mtlr r0
/* 8063A6F0  38 21 00 40 */	addi r1, r1, 0x40
/* 8063A6F4  4E 80 00 20 */	blr 
