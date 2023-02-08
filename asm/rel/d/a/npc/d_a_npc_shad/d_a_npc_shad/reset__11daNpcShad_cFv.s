lbl_80AD99B4:
/* 80AD99B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AD99B8  7C 08 02 A6 */	mflr r0
/* 80AD99BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AD99C0  39 61 00 20 */	addi r11, r1, 0x20
/* 80AD99C4  4B 88 88 19 */	bl _savegpr_29
/* 80AD99C8  7C 7F 1B 78 */	mr r31, r3
/* 80AD99CC  4B 67 8E FD */	bl initialize__8daNpcF_cFv
/* 80AD99D0  80 7F 0B E0 */	lwz r3, 0xbe0(r31)
/* 80AD99D4  4B 67 6D 65 */	bl initialize__15daNpcF_MatAnm_cFv
/* 80AD99D8  38 7F 0B E4 */	addi r3, r31, 0xbe4
/* 80AD99DC  4B 67 76 5D */	bl initialize__15daNpcF_Lookat_cFv
/* 80AD99E0  3B A0 00 00 */	li r29, 0
/* 80AD99E4  3B C0 00 00 */	li r30, 0
lbl_80AD99E8:
/* 80AD99E8  38 7E 0C 80 */	addi r3, r30, 0xc80
/* 80AD99EC  7C 7F 1A 14 */	add r3, r31, r3
/* 80AD99F0  4B 67 6C C1 */	bl initialize__18daNpcF_ActorMngr_cFv
/* 80AD99F4  3B BD 00 01 */	addi r29, r29, 1
/* 80AD99F8  2C 1D 00 05 */	cmpwi r29, 5
/* 80AD99FC  3B DE 00 08 */	addi r30, r30, 8
/* 80AD9A00  41 80 FF E8 */	blt lbl_80AD99E8
/* 80AD9A04  38 A0 00 00 */	li r5, 0
/* 80AD9A08  90 BF 0E 0C */	stw r5, 0xe0c(r31)
/* 80AD9A0C  90 BF 0E 10 */	stw r5, 0xe10(r31)
/* 80AD9A10  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 80AD9A14  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 80AD9A18  80 64 00 00 */	lwz r3, 0(r4)
/* 80AD9A1C  80 04 00 04 */	lwz r0, 4(r4)
/* 80AD9A20  90 7F 0D EC */	stw r3, 0xdec(r31)
/* 80AD9A24  90 1F 0D F0 */	stw r0, 0xdf0(r31)
/* 80AD9A28  80 04 00 08 */	lwz r0, 8(r4)
/* 80AD9A2C  90 1F 0D F4 */	stw r0, 0xdf4(r31)
/* 80AD9A30  38 00 FF FF */	li r0, -1
/* 80AD9A34  B0 1F 0E 18 */	sth r0, 0xe18(r31)
/* 80AD9A38  B0 BF 0E 1A */	sth r5, 0xe1a(r31)
/* 80AD9A3C  38 00 00 01 */	li r0, 1
/* 80AD9A40  98 1F 0E 1E */	stb r0, 0xe1e(r31)
/* 80AD9A44  98 BF 0E 1F */	stb r5, 0xe1f(r31)
/* 80AD9A48  7F E3 FB 78 */	mr r3, r31
/* 80AD9A4C  48 00 04 45 */	bl isSneaking__11daNpcShad_cFv
/* 80AD9A50  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AD9A54  41 82 00 2C */	beq lbl_80AD9A80
/* 80AD9A58  38 00 00 4E */	li r0, 0x4e
/* 80AD9A5C  98 1F 05 44 */	stb r0, 0x544(r31)
/* 80AD9A60  88 1F 05 44 */	lbz r0, 0x544(r31)
/* 80AD9A64  98 1F 05 45 */	stb r0, 0x545(r31)
/* 80AD9A68  38 00 00 4D */	li r0, 0x4d
/* 80AD9A6C  98 1F 05 47 */	stb r0, 0x547(r31)
/* 80AD9A70  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 80AD9A74  64 00 00 80 */	oris r0, r0, 0x80
/* 80AD9A78  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80AD9A7C  48 00 00 84 */	b lbl_80AD9B00
lbl_80AD9A80:
/* 80AD9A80  88 1F 0E 20 */	lbz r0, 0xe20(r31)
/* 80AD9A84  28 00 00 00 */	cmplwi r0, 0
/* 80AD9A88  40 82 00 38 */	bne lbl_80AD9AC0
/* 80AD9A8C  7F E3 FB 78 */	mr r3, r31
/* 80AD9A90  38 80 00 03 */	li r4, 3
/* 80AD9A94  38 A0 00 03 */	li r5, 3
/* 80AD9A98  4B 67 A7 E1 */	bl getDistTableIdx__8daNpcF_cFii
/* 80AD9A9C  98 7F 05 44 */	stb r3, 0x544(r31)
/* 80AD9AA0  88 1F 05 44 */	lbz r0, 0x544(r31)
/* 80AD9AA4  98 1F 05 45 */	stb r0, 0x545(r31)
/* 80AD9AA8  7F E3 FB 78 */	mr r3, r31
/* 80AD9AAC  38 80 00 02 */	li r4, 2
/* 80AD9AB0  38 A0 00 03 */	li r5, 3
/* 80AD9AB4  4B 67 A7 C5 */	bl getDistTableIdx__8daNpcF_cFii
/* 80AD9AB8  98 7F 05 47 */	stb r3, 0x547(r31)
/* 80AD9ABC  48 00 00 44 */	b lbl_80AD9B00
lbl_80AD9AC0:
/* 80AD9AC0  7F E3 FB 78 */	mr r3, r31
/* 80AD9AC4  3C 80 80 AE */	lis r4, m__17daNpcShad_Param_c@ha /* 0x80AE1FDC@ha */
/* 80AD9AC8  38 A4 1F DC */	addi r5, r4, m__17daNpcShad_Param_c@l /* 0x80AE1FDC@l */
/* 80AD9ACC  A8 85 00 4C */	lha r4, 0x4c(r5)
/* 80AD9AD0  A8 A5 00 4E */	lha r5, 0x4e(r5)
/* 80AD9AD4  4B 67 A7 A5 */	bl getDistTableIdx__8daNpcF_cFii
/* 80AD9AD8  98 7F 05 44 */	stb r3, 0x544(r31)
/* 80AD9ADC  88 1F 05 44 */	lbz r0, 0x544(r31)
/* 80AD9AE0  98 1F 05 45 */	stb r0, 0x545(r31)
/* 80AD9AE4  7F E3 FB 78 */	mr r3, r31
/* 80AD9AE8  3C 80 80 AE */	lis r4, m__17daNpcShad_Param_c@ha /* 0x80AE1FDC@ha */
/* 80AD9AEC  38 A4 1F DC */	addi r5, r4, m__17daNpcShad_Param_c@l /* 0x80AE1FDC@l */
/* 80AD9AF0  A8 85 00 48 */	lha r4, 0x48(r5)
/* 80AD9AF4  A8 A5 00 4A */	lha r5, 0x4a(r5)
/* 80AD9AF8  4B 67 A7 81 */	bl getDistTableIdx__8daNpcF_cFii
/* 80AD9AFC  98 7F 05 47 */	stb r3, 0x547(r31)
lbl_80AD9B00:
/* 80AD9B00  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 80AD9B04  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80AD9B08  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 80AD9B0C  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80AD9B10  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 80AD9B14  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80AD9B18  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80AD9B1C  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 80AD9B20  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80AD9B24  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 80AD9B28  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80AD9B2C  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 80AD9B30  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 80AD9B34  38 80 00 00 */	li r4, 0
/* 80AD9B38  B0 9F 04 DC */	sth r4, 0x4dc(r31)
/* 80AD9B3C  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80AD9B40  B0 9F 04 E0 */	sth r4, 0x4e0(r31)
/* 80AD9B44  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80AD9B48  B0 1F 04 C8 */	sth r0, 0x4c8(r31)
/* 80AD9B4C  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80AD9B50  B0 1F 04 CA */	sth r0, 0x4ca(r31)
/* 80AD9B54  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 80AD9B58  B0 1F 04 CC */	sth r0, 0x4cc(r31)
/* 80AD9B5C  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80AD9B60  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80AD9B64  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80AD9B68  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80AD9B6C  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 80AD9B70  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 80AD9B74  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80AD9B78  B0 1F 08 F0 */	sth r0, 0x8f0(r31)
/* 80AD9B7C  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80AD9B80  B0 1F 08 F2 */	sth r0, 0x8f2(r31)
/* 80AD9B84  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 80AD9B88  B0 1F 08 F4 */	sth r0, 0x8f4(r31)
/* 80AD9B8C  A8 1F 08 F0 */	lha r0, 0x8f0(r31)
/* 80AD9B90  B0 1F 08 F6 */	sth r0, 0x8f6(r31)
/* 80AD9B94  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 80AD9B98  B0 1F 08 F8 */	sth r0, 0x8f8(r31)
/* 80AD9B9C  A8 1F 08 F4 */	lha r0, 0x8f4(r31)
/* 80AD9BA0  B0 1F 08 FA */	sth r0, 0x8fa(r31)
/* 80AD9BA4  3C 60 80 AE */	lis r3, lit_4498@ha /* 0x80AE206C@ha */
/* 80AD9BA8  C0 03 20 6C */	lfs f0, lit_4498@l(r3)  /* 0x80AE206C@l */
/* 80AD9BAC  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80AD9BB0  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80AD9BB4  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80AD9BB8  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80AD9BBC  38 00 FF FF */	li r0, -1
/* 80AD9BC0  90 1F 0E 08 */	stw r0, 0xe08(r31)
/* 80AD9BC4  B0 9F 09 E6 */	sth r4, 0x9e6(r31)
/* 80AD9BC8  D0 1F 09 74 */	stfs f0, 0x974(r31)
/* 80AD9BCC  D0 1F 09 7C */	stfs f0, 0x97c(r31)
/* 80AD9BD0  7F E3 FB 78 */	mr r3, r31
/* 80AD9BD4  48 00 02 BD */	bl isSneaking__11daNpcShad_cFv
/* 80AD9BD8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AD9BDC  41 82 00 10 */	beq lbl_80AD9BEC
/* 80AD9BE0  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 80AD9BE4  60 00 40 00 */	ori r0, r0, 0x4000
/* 80AD9BE8  90 1F 04 9C */	stw r0, 0x49c(r31)
lbl_80AD9BEC:
/* 80AD9BEC  7F E3 FB 78 */	mr r3, r31
/* 80AD9BF0  48 00 00 1D */	bl setWaitAction__11daNpcShad_cFv
/* 80AD9BF4  39 61 00 20 */	addi r11, r1, 0x20
/* 80AD9BF8  4B 88 86 31 */	bl _restgpr_29
/* 80AD9BFC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AD9C00  7C 08 03 A6 */	mtlr r0
/* 80AD9C04  38 21 00 20 */	addi r1, r1, 0x20
/* 80AD9C08  4E 80 00 20 */	blr 
