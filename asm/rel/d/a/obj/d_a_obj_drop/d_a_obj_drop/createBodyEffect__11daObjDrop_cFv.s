lbl_80BE077C:
/* 80BE077C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80BE0780  7C 08 02 A6 */	mflr r0
/* 80BE0784  90 01 00 44 */	stw r0, 0x44(r1)
/* 80BE0788  39 61 00 40 */	addi r11, r1, 0x40
/* 80BE078C  4B 78 1A 3C */	b _savegpr_24
/* 80BE0790  7C 7E 1B 78 */	mr r30, r3
/* 80BE0794  3B E0 00 00 */	li r31, 0
/* 80BE0798  3B A0 00 00 */	li r29, 0
/* 80BE079C  3B 80 00 00 */	li r28, 0
/* 80BE07A0  3B 60 00 00 */	li r27, 0
/* 80BE07A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BE07A8  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l
/* 80BE07AC  3C 60 80 BE */	lis r3, l_sizuku_body_effect_list@ha
/* 80BE07B0  3B 23 1F 88 */	addi r25, r3, l_sizuku_body_effect_list@l
/* 80BE07B4  3C 60 80 BE */	lis r3, lit_4119@ha
/* 80BE07B8  3B 43 20 04 */	addi r26, r3, lit_4119@l
lbl_80BE07BC:
/* 80BE07BC  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 80BE07C0  38 1B 06 2C */	addi r0, r27, 0x62c
/* 80BE07C4  7C 1E 02 14 */	add r0, r30, r0
/* 80BE07C8  90 01 00 08 */	stw r0, 8(r1)
/* 80BE07CC  38 00 FF FF */	li r0, -1
/* 80BE07D0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BE07D4  38 00 00 00 */	li r0, 0
/* 80BE07D8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80BE07DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE07E0  90 01 00 18 */	stw r0, 0x18(r1)
/* 80BE07E4  38 80 00 00 */	li r4, 0
/* 80BE07E8  7C B9 E2 2E */	lhzx r5, r25, r28
/* 80BE07EC  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80BE07F0  38 E0 00 00 */	li r7, 0
/* 80BE07F4  39 00 00 00 */	li r8, 0
/* 80BE07F8  39 3E 04 EC */	addi r9, r30, 0x4ec
/* 80BE07FC  39 40 00 FF */	li r10, 0xff
/* 80BE0800  C0 3A 00 00 */	lfs f1, 0(r26)
/* 80BE0804  4B 46 C2 8C */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80BE0808  38 1D 06 14 */	addi r0, r29, 0x614
/* 80BE080C  7C 7E 01 2E */	stwx r3, r30, r0
/* 80BE0810  3B FF 00 01 */	addi r31, r31, 1
/* 80BE0814  2C 1F 00 06 */	cmpwi r31, 6
/* 80BE0818  3B BD 00 04 */	addi r29, r29, 4
/* 80BE081C  3B 9C 00 02 */	addi r28, r28, 2
/* 80BE0820  3B 7B 00 14 */	addi r27, r27, 0x14
/* 80BE0824  41 80 FF 98 */	blt lbl_80BE07BC
/* 80BE0828  39 61 00 40 */	addi r11, r1, 0x40
/* 80BE082C  4B 78 19 E8 */	b _restgpr_24
/* 80BE0830  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80BE0834  7C 08 03 A6 */	mtlr r0
/* 80BE0838  38 21 00 40 */	addi r1, r1, 0x40
/* 80BE083C  4E 80 00 20 */	blr 
