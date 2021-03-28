lbl_80D61410:
/* 80D61410  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80D61414  7C 08 02 A6 */	mflr r0
/* 80D61418  90 01 00 64 */	stw r0, 0x64(r1)
/* 80D6141C  39 61 00 60 */	addi r11, r1, 0x60
/* 80D61420  4B 60 0D AC */	b _savegpr_25
/* 80D61424  7C 79 1B 78 */	mr r25, r3
/* 80D61428  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80D6142C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80D61430  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80D61434  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80D61438  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80D6143C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80D61440  38 61 00 20 */	addi r3, r1, 0x20
/* 80D61444  38 80 00 00 */	li r4, 0
/* 80D61448  38 A0 00 00 */	li r5, 0
/* 80D6144C  38 C0 00 00 */	li r6, 0
/* 80D61450  4B 50 5F A4 */	b __ct__5csXyzFsss
/* 80D61454  3C 60 80 D6 */	lis r3, lit_3677@ha
/* 80D61458  3B 63 16 08 */	addi r27, r3, lit_3677@l
/* 80D6145C  C0 1B 00 00 */	lfs f0, 0(r27)
/* 80D61460  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80D61464  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80D61468  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80D6146C  3B 40 00 00 */	li r26, 0
/* 80D61470  3B E0 00 00 */	li r31, 0
/* 80D61474  3B C0 00 00 */	li r30, 0
/* 80D61478  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D6147C  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
/* 80D61480  3C 60 80 D6 */	lis r3, PARTICLE_NAME@ha
/* 80D61484  3B A3 16 00 */	addi r29, r3, PARTICLE_NAME@l
lbl_80D61488:
/* 80D61488  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 80D6148C  38 80 00 00 */	li r4, 0
/* 80D61490  90 81 00 08 */	stw r4, 8(r1)
/* 80D61494  38 00 FF FF */	li r0, -1
/* 80D61498  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D6149C  90 81 00 10 */	stw r4, 0x10(r1)
/* 80D614A0  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D614A4  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D614A8  38 80 00 00 */	li r4, 0
/* 80D614AC  7C BD F2 2E */	lhzx r5, r29, r30
/* 80D614B0  38 C1 00 34 */	addi r6, r1, 0x34
/* 80D614B4  38 E0 00 00 */	li r7, 0
/* 80D614B8  39 01 00 20 */	addi r8, r1, 0x20
/* 80D614BC  39 21 00 28 */	addi r9, r1, 0x28
/* 80D614C0  39 40 00 FF */	li r10, 0xff
/* 80D614C4  C0 3B 00 00 */	lfs f1, 0(r27)
/* 80D614C8  4B 2E B5 C8 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D614CC  38 1F 05 6C */	addi r0, r31, 0x56c
/* 80D614D0  7C 79 01 2E */	stwx r3, r25, r0
/* 80D614D4  3B 5A 00 01 */	addi r26, r26, 1
/* 80D614D8  2C 1A 00 03 */	cmpwi r26, 3
/* 80D614DC  3B FF 00 04 */	addi r31, r31, 4
/* 80D614E0  3B DE 00 02 */	addi r30, r30, 2
/* 80D614E4  41 80 FF A4 */	blt lbl_80D61488
/* 80D614E8  39 61 00 60 */	addi r11, r1, 0x60
/* 80D614EC  4B 60 0D 2C */	b _restgpr_25
/* 80D614F0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80D614F4  7C 08 03 A6 */	mtlr r0
/* 80D614F8  38 21 00 60 */	addi r1, r1, 0x60
/* 80D614FC  4E 80 00 20 */	blr 
