lbl_805A8A50:
/* 805A8A50  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805A8A54  7C 08 02 A6 */	mflr r0
/* 805A8A58  90 01 00 24 */	stw r0, 0x24(r1)
/* 805A8A5C  39 61 00 20 */	addi r11, r1, 0x20
/* 805A8A60  4B DB 97 7D */	bl _savegpr_29
/* 805A8A64  7C 7E 1B 78 */	mr r30, r3
/* 805A8A68  3C 60 80 5B */	lis r3, lit_3759@ha /* 0x805A8FBC@ha */
/* 805A8A6C  3B E3 8F BC */	addi r31, r3, lit_3759@l /* 0x805A8FBC@l */
/* 805A8A70  3B BE 05 A4 */	addi r29, r30, 0x5a4
/* 805A8A74  7F A3 EB 78 */	mr r3, r29
/* 805A8A78  3C 80 80 45 */	lis r4, m_aim_rate__8daYkgr_c@ha /* 0x80450D90@ha */
/* 805A8A7C  C0 24 0D 90 */	lfs f1, m_aim_rate__8daYkgr_c@l(r4)  /* 0x80450D90@l */
/* 805A8A80  C0 5F 00 3C */	lfs f2, 0x3c(r31)
/* 805A8A84  C0 7F 00 40 */	lfs f3, 0x40(r31)
/* 805A8A88  4B CC 6F B5 */	bl cLib_addCalc2__FPffff
/* 805A8A8C  3C 60 80 45 */	lis r3, m_aim_rate__8daYkgr_c@ha /* 0x80450D90@ha */
/* 805A8A90  38 63 0D 90 */	addi r3, r3, m_aim_rate__8daYkgr_c@l /* 0x80450D90@l */
/* 805A8A94  3C 80 80 5B */	lis r4, l_HIO@ha /* 0x805A9104@ha */
/* 805A8A98  38 84 91 04 */	addi r4, r4, l_HIO@l /* 0x805A9104@l */
/* 805A8A9C  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 805A8AA0  C0 5F 00 3C */	lfs f2, 0x3c(r31)
/* 805A8AA4  C0 7F 00 40 */	lfs f3, 0x40(r31)
/* 805A8AA8  4B CC 6F 95 */	bl cLib_addCalc2__FPffff
/* 805A8AAC  7F C3 F3 78 */	mr r3, r30
/* 805A8AB0  4B FF FB 25 */	bl getPosRate__8daYkgr_cFv
/* 805A8AB4  3B DE 05 A8 */	addi r30, r30, 0x5a8
/* 805A8AB8  7F C3 F3 78 */	mr r3, r30
/* 805A8ABC  C0 5F 00 3C */	lfs f2, 0x3c(r31)
/* 805A8AC0  C0 7F 00 40 */	lfs f3, 0x40(r31)
/* 805A8AC4  4B CC 6F 79 */	bl cLib_addCalc2__FPffff
/* 805A8AC8  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 805A8ACC  C0 1D 00 00 */	lfs f0, 0(r29)
/* 805A8AD0  EC 22 00 32 */	fmuls f1, f2, f0
/* 805A8AD4  C0 1E 00 00 */	lfs f0, 0(r30)
/* 805A8AD8  EC 02 00 32 */	fmuls f0, f2, f0
/* 805A8ADC  EC 21 00 2A */	fadds f1, f1, f0
/* 805A8AE0  3C 60 80 5B */	lis r3, YkgrCB@ha /* 0x805A9138@ha */
/* 805A8AE4  38 63 91 38 */	addi r3, r3, YkgrCB@l /* 0x805A9138@l */
/* 805A8AE8  3C 80 80 5B */	lis r4, l_HIO@ha /* 0x805A9104@ha */
/* 805A8AEC  38 84 91 04 */	addi r4, r4, l_HIO@l /* 0x805A9104@l */
/* 805A8AF0  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 805A8AF4  EC 41 00 32 */	fmuls f2, f1, f0
/* 805A8AF8  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 805A8AFC  EC 20 08 28 */	fsubs f1, f0, f1
/* 805A8B00  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 805A8B04  EC 01 00 32 */	fmuls f0, f1, f0
/* 805A8B08  EC 22 00 2A */	fadds f1, f2, f0
/* 805A8B0C  4B FF F9 C9 */	bl setParam__17dPa_YkgrPcallBackFf
/* 805A8B10  3C 60 80 45 */	lis r3, struct_80450D8C+0x1@ha /* 0x80450D8D@ha */
/* 805A8B14  88 03 0D 8D */	lbz r0, struct_80450D8C+0x1@l(r3)  /* 0x80450D8D@l */
/* 805A8B18  28 00 00 00 */	cmplwi r0, 0
/* 805A8B1C  40 82 00 44 */	bne lbl_805A8B60
/* 805A8B20  3C 60 80 45 */	lis r3, struct_80450D8C+0x2@ha /* 0x80450D8E@ha */
/* 805A8B24  38 83 0D 8E */	addi r4, r3, struct_80450D8C+0x2@l /* 0x80450D8E@l */
/* 805A8B28  88 04 00 00 */	lbz r0, 0(r4)
/* 805A8B2C  28 00 00 00 */	cmplwi r0, 0
/* 805A8B30  41 82 00 70 */	beq lbl_805A8BA0
/* 805A8B34  3C 60 80 5B */	lis r3, l_HIO@ha /* 0x805A9104@ha */
/* 805A8B38  38 63 91 04 */	addi r3, r3, l_HIO@l /* 0x805A9104@l */
/* 805A8B3C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805A8B40  7C 00 18 00 */	cmpw r0, r3
/* 805A8B44  40 81 00 10 */	ble lbl_805A8B54
/* 805A8B48  7C 03 00 50 */	subf r0, r3, r0
/* 805A8B4C  98 04 00 00 */	stb r0, 0(r4)
/* 805A8B50  48 00 00 50 */	b lbl_805A8BA0
lbl_805A8B54:
/* 805A8B54  38 00 00 00 */	li r0, 0
/* 805A8B58  98 04 00 00 */	stb r0, 0(r4)
/* 805A8B5C  48 00 00 44 */	b lbl_805A8BA0
lbl_805A8B60:
/* 805A8B60  3C 60 80 45 */	lis r3, struct_80450D8C+0x2@ha /* 0x80450D8E@ha */
/* 805A8B64  38 83 0D 8E */	addi r4, r3, struct_80450D8C+0x2@l /* 0x80450D8E@l */
/* 805A8B68  88 A4 00 00 */	lbz r5, 0(r4)
/* 805A8B6C  28 05 00 FF */	cmplwi r5, 0xff
/* 805A8B70  40 80 00 30 */	bge lbl_805A8BA0
/* 805A8B74  3C 60 80 5B */	lis r3, l_HIO@ha /* 0x805A9104@ha */
/* 805A8B78  38 63 91 04 */	addi r3, r3, l_HIO@l /* 0x805A9104@l */
/* 805A8B7C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805A8B80  20 03 00 FF */	subfic r0, r3, 0xff
/* 805A8B84  7C 05 00 00 */	cmpw r5, r0
/* 805A8B88  40 80 00 10 */	bge lbl_805A8B98
/* 805A8B8C  7C 05 1A 14 */	add r0, r5, r3
/* 805A8B90  98 04 00 00 */	stb r0, 0(r4)
/* 805A8B94  48 00 00 0C */	b lbl_805A8BA0
lbl_805A8B98:
/* 805A8B98  38 00 00 FF */	li r0, 0xff
/* 805A8B9C  98 04 00 00 */	stb r0, 0(r4)
lbl_805A8BA0:
/* 805A8BA0  38 60 00 01 */	li r3, 1
/* 805A8BA4  39 61 00 20 */	addi r11, r1, 0x20
/* 805A8BA8  4B DB 96 81 */	bl _restgpr_29
/* 805A8BAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805A8BB0  7C 08 03 A6 */	mtlr r0
/* 805A8BB4  38 21 00 20 */	addi r1, r1, 0x20
/* 805A8BB8  4E 80 00 20 */	blr 
