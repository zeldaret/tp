lbl_80BE0658:
/* 80BE0658  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80BE065C  7C 08 02 A6 */	mflr r0
/* 80BE0660  90 01 00 44 */	stw r0, 0x44(r1)
/* 80BE0664  39 61 00 40 */	addi r11, r1, 0x40
/* 80BE0668  4B 78 1B 60 */	b _savegpr_24
/* 80BE066C  7C 78 1B 78 */	mr r24, r3
/* 80BE0670  3B 20 00 00 */	li r25, 0
/* 80BE0674  3B E0 00 00 */	li r31, 0
/* 80BE0678  3B C0 00 00 */	li r30, 0
/* 80BE067C  3B A0 00 00 */	li r29, 0
/* 80BE0680  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BE0684  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l
/* 80BE0688  3F 60 00 01 */	lis r27, 0x0001 /* 0x0000838A@ha */
/* 80BE068C  3C 60 80 BE */	lis r3, lit_4119@ha
/* 80BE0690  3B 83 20 04 */	addi r28, r3, lit_4119@l
lbl_80BE0694:
/* 80BE0694  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 80BE0698  38 1D 05 D8 */	addi r0, r29, 0x5d8
/* 80BE069C  7C 18 02 14 */	add r0, r24, r0
/* 80BE06A0  90 01 00 08 */	stw r0, 8(r1)
/* 80BE06A4  38 00 FF FF */	li r0, -1
/* 80BE06A8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BE06AC  38 00 00 00 */	li r0, 0
/* 80BE06B0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80BE06B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE06B8  90 01 00 18 */	stw r0, 0x18(r1)
/* 80BE06BC  38 80 00 00 */	li r4, 0
/* 80BE06C0  38 BB 83 8A */	addi r5, r27, 0x838A /* 0x0000838A@l */
/* 80BE06C4  38 DE 05 68 */	addi r6, r30, 0x568
/* 80BE06C8  7C D8 32 14 */	add r6, r24, r6
/* 80BE06CC  38 E0 00 00 */	li r7, 0
/* 80BE06D0  39 00 00 00 */	li r8, 0
/* 80BE06D4  39 38 04 EC */	addi r9, r24, 0x4ec
/* 80BE06D8  39 40 00 FF */	li r10, 0xff
/* 80BE06DC  C0 3C 00 00 */	lfs f1, 0(r28)
/* 80BE06E0  4B 46 C3 B0 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80BE06E4  38 1F 05 CC */	addi r0, r31, 0x5cc
/* 80BE06E8  7C 78 01 2E */	stwx r3, r24, r0
/* 80BE06EC  3B 39 00 01 */	addi r25, r25, 1
/* 80BE06F0  2C 19 00 03 */	cmpwi r25, 3
/* 80BE06F4  3B FF 00 04 */	addi r31, r31, 4
/* 80BE06F8  3B DE 00 0C */	addi r30, r30, 0xc
/* 80BE06FC  3B BD 00 14 */	addi r29, r29, 0x14
/* 80BE0700  41 80 FF 94 */	blt lbl_80BE0694
/* 80BE0704  39 61 00 40 */	addi r11, r1, 0x40
/* 80BE0708  4B 78 1B 0C */	b _restgpr_24
/* 80BE070C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80BE0710  7C 08 03 A6 */	mtlr r0
/* 80BE0714  38 21 00 40 */	addi r1, r1, 0x40
/* 80BE0718  4E 80 00 20 */	blr 
