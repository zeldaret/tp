lbl_8049A04C:
/* 8049A04C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8049A050  7C 08 02 A6 */	mflr r0
/* 8049A054  90 01 00 44 */	stw r0, 0x44(r1)
/* 8049A058  39 61 00 40 */	addi r11, r1, 0x40
/* 8049A05C  4B EC 81 75 */	bl _savegpr_26
/* 8049A060  7C 7A 1B 78 */	mr r26, r3
/* 8049A064  3B 60 00 00 */	li r27, 0
/* 8049A068  3B E0 00 00 */	li r31, 0
/* 8049A06C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8049A070  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8049A074  3C 60 80 4A */	lis r3, lit_4187@ha /* 0x8049DD3C@ha */
/* 8049A078  3B C3 DD 3C */	addi r30, r3, lit_4187@l /* 0x8049DD3C@l */
/* 8049A07C  48 00 00 70 */	b lbl_8049A0EC
lbl_8049A080:
/* 8049A080  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 8049A084  38 00 00 FF */	li r0, 0xff
/* 8049A088  90 01 00 08 */	stw r0, 8(r1)
/* 8049A08C  38 80 00 00 */	li r4, 0
/* 8049A090  90 81 00 0C */	stw r4, 0xc(r1)
/* 8049A094  38 00 FF FF */	li r0, -1
/* 8049A098  90 01 00 10 */	stw r0, 0x10(r1)
/* 8049A09C  90 81 00 14 */	stw r4, 0x14(r1)
/* 8049A0A0  90 81 00 18 */	stw r4, 0x18(r1)
/* 8049A0A4  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8049A0A8  3B 9F 09 7C */	addi r28, r31, 0x97c
/* 8049A0AC  7C 9A E0 2E */	lwzx r4, r26, r28
/* 8049A0B0  38 A0 00 00 */	li r5, 0
/* 8049A0B4  A0 DA 09 4C */	lhz r6, 0x94c(r26)
/* 8049A0B8  38 FA 04 D0 */	addi r7, r26, 0x4d0
/* 8049A0BC  39 1A 01 0C */	addi r8, r26, 0x10c
/* 8049A0C0  39 20 00 00 */	li r9, 0
/* 8049A0C4  39 40 00 00 */	li r10, 0
/* 8049A0C8  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8049A0CC  4B BB 34 01 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8049A0D0  7C 7A E1 2E */	stwx r3, r26, r28
/* 8049A0D4  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 8049A0D8  38 63 02 10 */	addi r3, r3, 0x210
/* 8049A0DC  7C 9A E0 2E */	lwzx r4, r26, r28
/* 8049A0E0  4B BB 17 D5 */	bl forceOnEventMove__Q213dPa_control_c7level_cFUl
/* 8049A0E4  3B 7B 00 01 */	addi r27, r27, 1
/* 8049A0E8  3B FF 00 04 */	addi r31, r31, 4
lbl_8049A0EC:
/* 8049A0EC  88 1A 09 46 */	lbz r0, 0x946(r26)
/* 8049A0F0  7C 1B 00 00 */	cmpw r27, r0
/* 8049A0F4  41 80 FF 8C */	blt lbl_8049A080
/* 8049A0F8  39 61 00 40 */	addi r11, r1, 0x40
/* 8049A0FC  4B EC 81 21 */	bl _restgpr_26
/* 8049A100  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8049A104  7C 08 03 A6 */	mtlr r0
/* 8049A108  38 21 00 40 */	addi r1, r1, 0x40
/* 8049A10C  4E 80 00 20 */	blr 
