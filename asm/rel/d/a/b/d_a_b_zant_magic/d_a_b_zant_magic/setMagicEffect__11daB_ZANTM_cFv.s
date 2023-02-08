lbl_8064F7D4:
/* 8064F7D4  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8064F7D8  7C 08 02 A6 */	mflr r0
/* 8064F7DC  90 01 00 84 */	stw r0, 0x84(r1)
/* 8064F7E0  39 61 00 80 */	addi r11, r1, 0x80
/* 8064F7E4  4B D1 29 E1 */	bl _savegpr_23
/* 8064F7E8  7C 7E 1B 78 */	mr r30, r3
/* 8064F7EC  3C 60 80 65 */	lis r3, lit_3721@ha /* 0x8065049C@ha */
/* 8064F7F0  3B 23 04 9C */	addi r25, r3, lit_3721@l /* 0x8065049C@l */
/* 8064F7F4  C0 19 00 00 */	lfs f0, 0(r25)
/* 8064F7F8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8064F7FC  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8064F800  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8064F804  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8064F808  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8064F80C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8064F810  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8064F814  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8064F818  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8064F81C  38 61 00 2C */	addi r3, r1, 0x2c
/* 8064F820  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 8064F824  C0 39 00 04 */	lfs f1, 4(r25)
/* 8064F828  4B C1 73 5D */	bl __ml__4cXyzCFf
/* 8064F82C  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8064F830  D0 1E 05 DC */	stfs f0, 0x5dc(r30)
/* 8064F834  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8064F838  D0 1E 05 E0 */	stfs f0, 0x5e0(r30)
/* 8064F83C  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8064F840  D0 1E 05 E4 */	stfs f0, 0x5e4(r30)
/* 8064F844  3B E0 00 00 */	li r31, 0
/* 8064F848  3B A0 00 00 */	li r29, 0
/* 8064F84C  3B 80 00 00 */	li r28, 0
/* 8064F850  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8064F854  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8064F858  3B 1E 05 DC */	addi r24, r30, 0x5dc
/* 8064F85C  3C 60 80 65 */	lis r3, magic_effect_id_3667@ha /* 0x806505D4@ha */
/* 8064F860  3B 63 05 D4 */	addi r27, r3, magic_effect_id_3667@l /* 0x806505D4@l */
lbl_8064F864:
/* 8064F864  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 8064F868  38 00 00 FF */	li r0, 0xff
/* 8064F86C  90 01 00 08 */	stw r0, 8(r1)
/* 8064F870  38 80 00 00 */	li r4, 0
/* 8064F874  90 81 00 0C */	stw r4, 0xc(r1)
/* 8064F878  38 00 FF FF */	li r0, -1
/* 8064F87C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8064F880  90 81 00 14 */	stw r4, 0x14(r1)
/* 8064F884  90 81 00 18 */	stw r4, 0x18(r1)
/* 8064F888  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8064F88C  3A FC 0B FC */	addi r23, r28, 0xbfc
/* 8064F890  7C 9E B8 2E */	lwzx r4, r30, r23
/* 8064F894  38 A0 00 00 */	li r5, 0
/* 8064F898  7C DB EA 2E */	lhzx r6, r27, r29
/* 8064F89C  38 E1 00 38 */	addi r7, r1, 0x38
/* 8064F8A0  39 1E 01 0C */	addi r8, r30, 0x10c
/* 8064F8A4  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 8064F8A8  39 41 00 44 */	addi r10, r1, 0x44
/* 8064F8AC  C0 39 00 08 */	lfs f1, 8(r25)
/* 8064F8B0  4B 9F DC 1D */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8064F8B4  7C 7E B9 2E */	stwx r3, r30, r23
/* 8064F8B8  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 8064F8BC  38 63 02 10 */	addi r3, r3, 0x210
/* 8064F8C0  7C 9E B8 2E */	lwzx r4, r30, r23
/* 8064F8C4  4B 9F C0 55 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 8064F8C8  28 03 00 00 */	cmplwi r3, 0
/* 8064F8CC  41 82 00 40 */	beq lbl_8064F90C
/* 8064F8D0  E0 01 00 44 */	psq_l f0, 68(r1), 0, 0 /* qr0 */
/* 8064F8D4  C0 41 00 4C */	lfs f2, 0x4c(r1)
/* 8064F8D8  F0 01 00 20 */	psq_st f0, 32(r1), 0, 0 /* qr0 */
/* 8064F8DC  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 8064F8E0  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 8064F8E4  D0 23 00 98 */	stfs f1, 0x98(r3)
/* 8064F8E8  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8064F8EC  D0 03 00 9C */	stfs f0, 0x9c(r3)
/* 8064F8F0  D0 43 00 A0 */	stfs f2, 0xa0(r3)
/* 8064F8F4  D0 23 00 B0 */	stfs f1, 0xb0(r3)
/* 8064F8F8  D0 03 00 B4 */	stfs f0, 0xb4(r3)
/* 8064F8FC  3C 80 80 45 */	lis r4, mParticleTracePCB__13dPa_control_c@ha /* 0x80450EC8@ha */
/* 8064F900  38 04 0E C8 */	addi r0, r4, mParticleTracePCB__13dPa_control_c@l /* 0x80450EC8@l */
/* 8064F904  90 03 00 F0 */	stw r0, 0xf0(r3)
/* 8064F908  93 03 00 C0 */	stw r24, 0xc0(r3)
lbl_8064F90C:
/* 8064F90C  3B FF 00 01 */	addi r31, r31, 1
/* 8064F910  2C 1F 00 04 */	cmpwi r31, 4
/* 8064F914  3B BD 00 02 */	addi r29, r29, 2
/* 8064F918  3B 9C 00 04 */	addi r28, r28, 4
/* 8064F91C  41 80 FF 48 */	blt lbl_8064F864
/* 8064F920  39 61 00 80 */	addi r11, r1, 0x80
/* 8064F924  4B D1 28 ED */	bl _restgpr_23
/* 8064F928  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8064F92C  7C 08 03 A6 */	mtlr r0
/* 8064F930  38 21 00 80 */	addi r1, r1, 0x80
/* 8064F934  4E 80 00 20 */	blr 
