lbl_80CF49F0:
/* 80CF49F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CF49F4  7C 08 02 A6 */	mflr r0
/* 80CF49F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CF49FC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80CF4A00  7C 7F 1B 78 */	mr r31, r3
/* 80CF4A04  4B FF FF 69 */	bl initBaseMtx__14daObjSwBallB_cFv
/* 80CF4A08  80 7F 05 84 */	lwz r3, 0x584(r31)
/* 80CF4A0C  38 03 00 24 */	addi r0, r3, 0x24
/* 80CF4A10  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80CF4A14  80 7F 05 84 */	lwz r3, 0x584(r31)
/* 80CF4A18  80 63 00 04 */	lwz r3, 4(r3)
/* 80CF4A1C  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80CF4A20  80 83 00 00 */	lwz r4, 0(r3)
/* 80CF4A24  7F E3 FB 78 */	mr r3, r31
/* 80CF4A28  C0 24 00 3C */	lfs f1, 0x3c(r4)
/* 80CF4A2C  C0 44 00 40 */	lfs f2, 0x40(r4)
/* 80CF4A30  C0 64 00 44 */	lfs f3, 0x44(r4)
/* 80CF4A34  C0 84 00 48 */	lfs f4, 0x48(r4)
/* 80CF4A38  C0 A4 00 4C */	lfs f5, 0x4c(r4)
/* 80CF4A3C  C0 C4 00 50 */	lfs f6, 0x50(r4)
/* 80CF4A40  4B 32 5B 09 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80CF4A44  38 60 00 00 */	li r3, 0
/* 80CF4A48  38 80 FF FF */	li r4, -1
/* 80CF4A4C  38 00 00 02 */	li r0, 2
/* 80CF4A50  7C 09 03 A6 */	mtctr r0
lbl_80CF4A54:
/* 80CF4A54  38 03 05 8C */	addi r0, r3, 0x58c
/* 80CF4A58  7C 9F 01 2E */	stwx r4, r31, r0
/* 80CF4A5C  38 63 00 04 */	addi r3, r3, 4
/* 80CF4A60  42 00 FF F4 */	bdnz lbl_80CF4A54
/* 80CF4A64  38 00 FF FF */	li r0, -1
/* 80CF4A68  90 1F 05 9C */	stw r0, 0x59c(r31)
/* 80CF4A6C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CF4A70  7C 00 07 75 */	extsb. r0, r0
/* 80CF4A74  40 82 00 9C */	bne lbl_80CF4B10
/* 80CF4A78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CF4A7C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CF4A80  38 80 00 3F */	li r4, 0x3f
/* 80CF4A84  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80CF4A88  7C 05 07 74 */	extsb r5, r0
/* 80CF4A8C  4B 34 08 D5 */	bl isSwitch__10dSv_info_cCFii
/* 80CF4A90  2C 03 00 00 */	cmpwi r3, 0
/* 80CF4A94  41 82 00 7C */	beq lbl_80CF4B10
/* 80CF4A98  80 9F 05 88 */	lwz r4, 0x588(r31)
/* 80CF4A9C  A8 04 00 08 */	lha r0, 8(r4)
/* 80CF4AA0  3C 60 80 CF */	lis r3, lit_3935@ha /* 0x80CF5A00@ha */
/* 80CF4AA4  C8 23 5A 00 */	lfd f1, lit_3935@l(r3)  /* 0x80CF5A00@l */
/* 80CF4AA8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CF4AAC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CF4AB0  3C 00 43 30 */	lis r0, 0x4330
/* 80CF4AB4  90 01 00 08 */	stw r0, 8(r1)
/* 80CF4AB8  C8 01 00 08 */	lfd f0, 8(r1)
/* 80CF4ABC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80CF4AC0  D0 04 00 10 */	stfs f0, 0x10(r4)
/* 80CF4AC4  80 9F 00 B0 */	lwz r4, 0xb0(r31)
/* 80CF4AC8  54 80 27 3E */	srwi r0, r4, 0x1c
/* 80CF4ACC  28 00 00 01 */	cmplwi r0, 1
/* 80CF4AD0  40 82 00 1C */	bne lbl_80CF4AEC
/* 80CF4AD4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CF4AD8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CF4ADC  54 84 C6 3E */	rlwinm r4, r4, 0x18, 0x18, 0x1f
/* 80CF4AE0  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80CF4AE4  7C 05 07 74 */	extsb r5, r0
/* 80CF4AE8  4B 34 07 19 */	bl onSwitch__10dSv_info_cFii
lbl_80CF4AEC:
/* 80CF4AEC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CF4AF0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CF4AF4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CF4AF8  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80CF4AFC  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80CF4B00  7C 05 07 74 */	extsb r5, r0
/* 80CF4B04  4B 34 06 FD */	bl onSwitch__10dSv_info_cFii
/* 80CF4B08  38 00 00 05 */	li r0, 5
/* 80CF4B0C  98 1F 05 96 */	stb r0, 0x596(r31)
lbl_80CF4B10:
/* 80CF4B10  80 7F 05 84 */	lwz r3, 0x584(r31)
/* 80CF4B14  80 63 00 04 */	lwz r3, 4(r3)
/* 80CF4B18  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80CF4B1C  80 63 00 00 */	lwz r3, 0(r3)
/* 80CF4B20  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 80CF4B24  38 80 00 01 */	li r4, 1
/* 80CF4B28  81 83 00 00 */	lwz r12, 0(r3)
/* 80CF4B2C  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 80CF4B30  7D 89 03 A6 */	mtctr r12
/* 80CF4B34  4E 80 04 21 */	bctrl 
/* 80CF4B38  3C 80 80 CF */	lis r4, l_color@ha /* 0x80CF59D0@ha */
/* 80CF4B3C  8C 04 59 D0 */	lbzu r0, l_color@l(r4)  /* 0x80CF59D0@l */
/* 80CF4B40  98 03 00 00 */	stb r0, 0(r3)
/* 80CF4B44  88 04 00 01 */	lbz r0, 1(r4)
/* 80CF4B48  98 03 00 01 */	stb r0, 1(r3)
/* 80CF4B4C  88 04 00 02 */	lbz r0, 2(r4)
/* 80CF4B50  98 03 00 02 */	stb r0, 2(r3)
/* 80CF4B54  7F E3 FB 78 */	mr r3, r31
/* 80CF4B58  48 00 02 B1 */	bl execute__14daObjSwBallB_cFv
/* 80CF4B5C  38 60 00 01 */	li r3, 1
/* 80CF4B60  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80CF4B64  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CF4B68  7C 08 03 A6 */	mtlr r0
/* 80CF4B6C  38 21 00 20 */	addi r1, r1, 0x20
/* 80CF4B70  4E 80 00 20 */	blr 
