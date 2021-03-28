lbl_80D18784:
/* 80D18784  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80D18788  7C 08 02 A6 */	mflr r0
/* 80D1878C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80D18790  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80D18794  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80D18798  7C 7F 1B 78 */	mr r31, r3
/* 80D1879C  3C 60 80 D2 */	lis r3, lit_3655@ha
/* 80D187A0  3B C3 8E 98 */	addi r30, r3, lit_3655@l
/* 80D187A4  3C 60 80 D2 */	lis r3, l_HIO@ha
/* 80D187A8  38 63 90 B4 */	addi r3, r3, l_HIO@l
/* 80D187AC  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 80D187B0  38 7F 05 2C */	addi r3, r31, 0x52c
/* 80D187B4  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 80D187B8  EC 41 00 24 */	fdivs f2, f1, f0
/* 80D187BC  4B 55 7F 84 */	b cLib_chaseF__FPfff
/* 80D187C0  38 7F 04 D4 */	addi r3, r31, 0x4d4
/* 80D187C4  C0 3F 04 AC */	lfs f1, 0x4ac(r31)
/* 80D187C8  C0 5E 00 64 */	lfs f2, 0x64(r30)
/* 80D187CC  C0 7F 05 2C */	lfs f3, 0x52c(r31)
/* 80D187D0  FC 80 10 90 */	fmr f4, f2
/* 80D187D4  4B 55 71 A8 */	b cLib_addCalc__FPfffff
/* 80D187D8  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80D187DC  FC 02 08 00 */	fcmpu cr0, f2, f1
/* 80D187E0  40 82 00 C8 */	bne lbl_80D188A8
/* 80D187E4  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80D187E8  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 80D187EC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80D187F0  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 80D187F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D187F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D187FC  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80D18800  3C 80 80 D2 */	lis r4, l_HIO@ha
/* 80D18804  38 84 90 B4 */	addi r4, r4, l_HIO@l
/* 80D18808  88 84 00 1C */	lbz r4, 0x1c(r4)
/* 80D1880C  38 A0 00 0F */	li r5, 0xf
/* 80D18810  38 C1 00 20 */	addi r6, r1, 0x20
/* 80D18814  4B 35 72 10 */	b StartShock__12dVibration_cFii4cXyz
/* 80D18818  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D1881C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D18820  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80D18824  38 80 00 00 */	li r4, 0
/* 80D18828  90 81 00 08 */	stw r4, 8(r1)
/* 80D1882C  38 00 FF FF */	li r0, -1
/* 80D18830  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D18834  90 81 00 10 */	stw r4, 0x10(r1)
/* 80D18838  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D1883C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D18840  38 80 00 00 */	li r4, 0
/* 80D18844  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008AD9@ha */
/* 80D18848  38 A5 8A D9 */	addi r5, r5, 0x8AD9 /* 0x00008AD9@l */
/* 80D1884C  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 80D18850  38 E0 00 00 */	li r7, 0
/* 80D18854  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 80D18858  39 20 00 00 */	li r9, 0
/* 80D1885C  39 40 00 FF */	li r10, 0xff
/* 80D18860  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 80D18864  4B 33 42 2C */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D18868  38 60 00 00 */	li r3, 0
/* 80D1886C  38 00 00 04 */	li r0, 4
/* 80D18870  7C 09 03 A6 */	mtctr r0
lbl_80D18874:
/* 80D18874  38 83 05 DC */	addi r4, r3, 0x5dc
/* 80D18878  7C 1F 20 2E */	lwzx r0, r31, r4
/* 80D1887C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80D18880  7C 1F 21 2E */	stwx r0, r31, r4
/* 80D18884  38 63 01 3C */	addi r3, r3, 0x13c
/* 80D18888  42 00 FF EC */	bdnz lbl_80D18874
/* 80D1888C  4B 31 71 C8 */	b dComIfGs_wolfeye_effect_check__Fv
/* 80D18890  2C 03 00 00 */	cmpwi r3, 0
/* 80D18894  41 82 00 0C */	beq lbl_80D188A0
/* 80D18898  38 00 00 01 */	li r0, 1
/* 80D1889C  98 1F 0A DF */	stb r0, 0xadf(r31)
lbl_80D188A0:
/* 80D188A0  7F E3 FB 78 */	mr r3, r31
/* 80D188A4  4B FF FE 0D */	bl init_modeWait__12daTogeTrap_cFv
lbl_80D188A8:
/* 80D188A8  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80D188AC  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80D188B0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80D188B4  7C 08 03 A6 */	mtlr r0
/* 80D188B8  38 21 00 40 */	addi r1, r1, 0x40
/* 80D188BC  4E 80 00 20 */	blr 
