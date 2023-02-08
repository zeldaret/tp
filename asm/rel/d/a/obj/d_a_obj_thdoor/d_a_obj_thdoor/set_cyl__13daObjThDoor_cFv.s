lbl_80D0D9B4:
/* 80D0D9B4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80D0D9B8  7C 08 02 A6 */	mflr r0
/* 80D0D9BC  90 01 00 74 */	stw r0, 0x74(r1)
/* 80D0D9C0  39 61 00 70 */	addi r11, r1, 0x70
/* 80D0D9C4  4B 65 48 09 */	bl _savegpr_25
/* 80D0D9C8  7C 79 1B 78 */	mr r25, r3
/* 80D0D9CC  3C 60 80 D1 */	lis r3, lit_3663@ha /* 0x80D0E5F8@ha */
/* 80D0D9D0  38 63 E5 F8 */	addi r3, r3, lit_3663@l /* 0x80D0E5F8@l */
/* 80D0D9D4  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80D0D9D8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80D0D9DC  C0 23 00 00 */	lfs f1, 0(r3)
/* 80D0D9E0  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80D0D9E4  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80D0D9E8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80D0D9EC  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80D0D9F0  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80D0D9F4  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80D0D9F8  D0 01 00 08 */	stfs f0, 8(r1)
/* 80D0D9FC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80D0DA00  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80D0DA04  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80D0DA08  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80D0DA0C  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80D0DA10  3B 40 00 00 */	li r26, 0
/* 80D0DA14  3B E0 00 00 */	li r31, 0
/* 80D0DA18  3B C0 00 00 */	li r30, 0
/* 80D0DA1C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D0DA20  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D0DA24  3B 83 23 3C */	addi r28, r3, 0x233c
/* 80D0DA28  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D0DA2C  3B A3 D4 70 */	addi r29, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
lbl_80D0DA30:
/* 80D0DA30  38 61 00 2C */	addi r3, r1, 0x2c
/* 80D0DA34  7C 63 F2 14 */	add r3, r3, r30
/* 80D0DA38  C0 03 00 00 */	lfs f0, 0(r3)
/* 80D0DA3C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80D0DA40  C0 03 00 04 */	lfs f0, 4(r3)
/* 80D0DA44  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80D0DA48  C0 03 00 08 */	lfs f0, 8(r3)
/* 80D0DA4C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80D0DA50  38 79 04 D0 */	addi r3, r25, 0x4d0
/* 80D0DA54  4B 2F F3 11 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80D0DA58  7F A3 EB 78 */	mr r3, r29
/* 80D0DA5C  A8 99 06 08 */	lha r4, 0x608(r25)
/* 80D0DA60  A8 19 04 E6 */	lha r0, 0x4e6(r25)
/* 80D0DA64  7C 04 00 50 */	subf r0, r4, r0
/* 80D0DA68  7C 04 07 34 */	extsh r4, r0
/* 80D0DA6C  4B 2F E9 C9 */	bl mDoMtx_YrotM__FPA4_fs
/* 80D0DA70  7F A3 EB 78 */	mr r3, r29
/* 80D0DA74  38 81 00 20 */	addi r4, r1, 0x20
/* 80D0DA78  7C 85 23 78 */	mr r5, r4
/* 80D0DA7C  4B 63 92 F1 */	bl PSMTXMultVec
/* 80D0DA80  7F 79 FA 14 */	add r27, r25, r31
/* 80D0DA84  38 7B 07 6C */	addi r3, r27, 0x76c
/* 80D0DA88  38 81 00 20 */	addi r4, r1, 0x20
/* 80D0DA8C  4B 56 17 51 */	bl SetC__8cM3dGCylFRC4cXyz
/* 80D0DA90  7F 83 E3 78 */	mr r3, r28
/* 80D0DA94  38 9B 06 48 */	addi r4, r27, 0x648
/* 80D0DA98  4B 55 71 11 */	bl Set__4cCcSFP8cCcD_Obj
/* 80D0DA9C  3B 5A 00 01 */	addi r26, r26, 1
/* 80D0DAA0  2C 1A 00 02 */	cmpwi r26, 2
/* 80D0DAA4  3B FF 01 3C */	addi r31, r31, 0x13c
/* 80D0DAA8  3B DE 00 0C */	addi r30, r30, 0xc
/* 80D0DAAC  41 80 FF 84 */	blt lbl_80D0DA30
/* 80D0DAB0  39 61 00 70 */	addi r11, r1, 0x70
/* 80D0DAB4  4B 65 47 65 */	bl _restgpr_25
/* 80D0DAB8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80D0DABC  7C 08 03 A6 */	mtlr r0
/* 80D0DAC0  38 21 00 70 */	addi r1, r1, 0x70
/* 80D0DAC4  4E 80 00 20 */	blr 
