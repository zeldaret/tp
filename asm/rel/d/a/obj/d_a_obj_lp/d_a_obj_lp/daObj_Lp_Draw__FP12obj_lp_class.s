lbl_80C54198:
/* 80C54198  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C5419C  7C 08 02 A6 */	mflr r0
/* 80C541A0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C541A4  39 61 00 30 */	addi r11, r1, 0x30
/* 80C541A8  4B 70 E0 25 */	bl _savegpr_25
/* 80C541AC  7C 7A 1B 78 */	mr r26, r3
/* 80C541B0  3B BA 05 7C */	addi r29, r26, 0x57c
/* 80C541B4  88 03 04 E2 */	lbz r0, 0x4e2(r3)
/* 80C541B8  7C 00 07 74 */	extsb r0, r0
/* 80C541BC  7C 1C 03 78 */	mr r28, r0
/* 80C541C0  3B 60 00 00 */	li r27, 0
/* 80C541C4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C541C8  3B E3 CA 54 */	addi r31, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C541CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C541D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C541D4  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 80C541D8  3F 3A 00 01 */	addis r25, r26, 1
/* 80C541DC  48 00 00 88 */	b lbl_80C54264
lbl_80C541E0:
/* 80C541E0  88 1D 00 4E */	lbz r0, 0x4e(r29)
/* 80C541E4  7C 00 07 75 */	extsb. r0, r0
/* 80C541E8  41 82 00 74 */	beq lbl_80C5425C
/* 80C541EC  88 1D 00 4F */	lbz r0, 0x4f(r29)
/* 80C541F0  28 00 00 00 */	cmplwi r0, 0
/* 80C541F4  40 82 00 68 */	bne lbl_80C5425C
/* 80C541F8  88 1F 12 FE */	lbz r0, 0x12fe(r31)
/* 80C541FC  28 00 00 01 */	cmplwi r0, 1
/* 80C54200  40 82 00 4C */	bne lbl_80C5424C
/* 80C54204  38 00 00 06 */	li r0, 6
/* 80C54208  B0 01 00 08 */	sth r0, 8(r1)
/* 80C5420C  B0 01 00 0A */	sth r0, 0xa(r1)
/* 80C54210  38 00 00 04 */	li r0, 4
/* 80C54214  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80C54218  38 00 00 FF */	li r0, 0xff
/* 80C5421C  B0 01 00 0E */	sth r0, 0xe(r1)
/* 80C54220  80 7D 00 00 */	lwz r3, 0(r29)
/* 80C54224  80 63 00 04 */	lwz r3, 4(r3)
/* 80C54228  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80C5422C  80 63 00 00 */	lwz r3, 0(r3)
/* 80C54230  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 80C54234  38 80 00 00 */	li r4, 0
/* 80C54238  38 A1 00 08 */	addi r5, r1, 8
/* 80C5423C  81 83 00 00 */	lwz r12, 0(r3)
/* 80C54240  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80C54244  7D 89 03 A6 */	mtctr r12
/* 80C54248  4E 80 04 21 */	bctrl 
lbl_80C5424C:
/* 80C5424C  7F C3 F3 78 */	mr r3, r30
/* 80C54250  80 9D 00 00 */	lwz r4, 0(r29)
/* 80C54254  7F 85 E3 78 */	mr r5, r28
/* 80C54258  4B 3D 89 11 */	bl entrySimpleModel__14dComIfG_play_cFP8J3DModeli
lbl_80C5425C:
/* 80C5425C  3B 7B 00 01 */	addi r27, r27, 1
/* 80C54260  3B BD 00 54 */	addi r29, r29, 0x54
lbl_80C54264:
/* 80C54264  80 19 AD 98 */	lwz r0, -0x5268(r25)
/* 80C54268  7C 1B 00 00 */	cmpw r27, r0
/* 80C5426C  41 80 FF 74 */	blt lbl_80C541E0
/* 80C54270  88 19 AD B1 */	lbz r0, -0x524f(r25)
/* 80C54274  28 00 00 00 */	cmplwi r0, 0
/* 80C54278  41 82 00 68 */	beq lbl_80C542E0
/* 80C5427C  88 19 AD B2 */	lbz r0, -0x524e(r25)
/* 80C54280  28 00 00 00 */	cmplwi r0, 0
/* 80C54284  40 82 00 5C */	bne lbl_80C542E0
/* 80C54288  7F 23 CB 78 */	mr r3, r25
/* 80C5428C  38 80 00 03 */	li r4, 3
/* 80C54290  3C A0 80 C5 */	lis r5, l_color@ha /* 0x80C55AD8@ha */
/* 80C54294  38 A5 5A D8 */	addi r5, r5, l_color@l /* 0x80C55AD8@l */
/* 80C54298  38 DA 01 0C */	addi r6, r26, 0x10c
/* 80C5429C  38 63 AD 7C */	addi r3, r3, -21124
/* 80C542A0  4B 3B EB 9D */	bl update__19mDoExt_3DlineMat0_cFiR8_GXColorP12dKy_tevstr_c
/* 80C542A4  3C 7A 00 01 */	addis r3, r26, 1
/* 80C542A8  85 83 AD 7C */	lwzu r12, -0x5284(r3)
/* 80C542AC  81 8C 00 08 */	lwz r12, 8(r12)
/* 80C542B0  7D 89 03 A6 */	mtctr r12
/* 80C542B4  4E 80 04 21 */	bctrl 
/* 80C542B8  1C 83 00 14 */	mulli r4, r3, 0x14
/* 80C542BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C542C0  38 03 61 C0 */	addi r0, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C542C4  7C 60 22 14 */	add r3, r0, r4
/* 80C542C8  3C 63 00 01 */	addis r3, r3, 1
/* 80C542CC  38 63 61 54 */	addi r3, r3, 0x6154
/* 80C542D0  38 63 5F 64 */	addi r3, r3, 0x5f64
/* 80C542D4  3C 9A 00 01 */	addis r4, r26, 1
/* 80C542D8  38 84 AD 7C */	addi r4, r4, -21124
/* 80C542DC  4B 3C 04 5D */	bl setMat__26mDoExt_3DlineMatSortPacketFP18mDoExt_3DlineMat_c
lbl_80C542E0:
/* 80C542E0  38 60 00 01 */	li r3, 1
/* 80C542E4  39 61 00 30 */	addi r11, r1, 0x30
/* 80C542E8  4B 70 DF 31 */	bl _restgpr_25
/* 80C542EC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C542F0  7C 08 03 A6 */	mtlr r0
/* 80C542F4  38 21 00 30 */	addi r1, r1, 0x30
/* 80C542F8  4E 80 00 20 */	blr 
