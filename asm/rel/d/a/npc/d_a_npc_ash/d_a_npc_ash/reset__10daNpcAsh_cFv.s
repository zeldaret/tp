lbl_80959910:
/* 80959910  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80959914  7C 08 02 A6 */	mflr r0
/* 80959918  90 01 00 34 */	stw r0, 0x34(r1)
/* 8095991C  39 61 00 30 */	addi r11, r1, 0x30
/* 80959920  4B A0 88 BC */	b _savegpr_29
/* 80959924  7C 7F 1B 78 */	mr r31, r3
/* 80959928  4B 7F 8F A0 */	b initialize__8daNpcF_cFv
/* 8095992C  80 7F 0B E0 */	lwz r3, 0xbe0(r31)
/* 80959930  4B 7F 6E 08 */	b initialize__15daNpcF_MatAnm_cFv
/* 80959934  38 7F 0B E4 */	addi r3, r31, 0xbe4
/* 80959938  4B 7F 77 00 */	b initialize__15daNpcF_Lookat_cFv
/* 8095993C  3B A0 00 00 */	li r29, 0
/* 80959940  3B C0 00 00 */	li r30, 0
lbl_80959944:
/* 80959944  38 7E 0C 80 */	addi r3, r30, 0xc80
/* 80959948  7C 7F 1A 14 */	add r3, r31, r3
/* 8095994C  4B 7F 6D 64 */	b initialize__18daNpcF_ActorMngr_cFv
/* 80959950  3B BD 00 01 */	addi r29, r29, 1
/* 80959954  2C 1D 00 06 */	cmpwi r29, 6
/* 80959958  3B DE 00 08 */	addi r30, r30, 8
/* 8095995C  41 80 FF E8 */	blt lbl_80959944
/* 80959960  38 A0 00 00 */	li r5, 0
/* 80959964  90 BF 0F 50 */	stw r5, 0xf50(r31)
/* 80959968  90 BF 0F 54 */	stw r5, 0xf54(r31)
/* 8095996C  3C 60 80 3A */	lis r3, __ptmf_null@ha
/* 80959970  38 83 21 80 */	addi r4, r3, __ptmf_null@l
/* 80959974  80 64 00 00 */	lwz r3, 0(r4)
/* 80959978  80 04 00 04 */	lwz r0, 4(r4)
/* 8095997C  90 7F 0F 30 */	stw r3, 0xf30(r31)
/* 80959980  90 1F 0F 34 */	stw r0, 0xf34(r31)
/* 80959984  80 04 00 08 */	lwz r0, 8(r4)
/* 80959988  90 1F 0F 38 */	stw r0, 0xf38(r31)
/* 8095998C  38 80 FF FF */	li r4, -1
/* 80959990  B0 9F 0F 5A */	sth r4, 0xf5a(r31)
/* 80959994  B0 BF 0F 5C */	sth r5, 0xf5c(r31)
/* 80959998  3C 60 80 96 */	lis r3, m__16daNpcAsh_Param_c@ha
/* 8095999C  38 63 D6 40 */	addi r3, r3, m__16daNpcAsh_Param_c@l
/* 809599A0  C0 03 00 04 */	lfs f0, 4(r3)
/* 809599A4  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 809599A8  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 809599AC  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 809599B0  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 809599B4  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 809599B8  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 809599BC  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 809599C0  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 809599C4  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 809599C8  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 809599CC  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 809599D0  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 809599D4  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 809599D8  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 809599DC  B0 BF 04 DC */	sth r5, 0x4dc(r31)
/* 809599E0  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 809599E4  B0 BF 04 E0 */	sth r5, 0x4e0(r31)
/* 809599E8  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 809599EC  B0 1F 04 C8 */	sth r0, 0x4c8(r31)
/* 809599F0  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 809599F4  B0 1F 04 CA */	sth r0, 0x4ca(r31)
/* 809599F8  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 809599FC  B0 1F 04 CC */	sth r0, 0x4cc(r31)
/* 80959A00  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80959A04  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80959A08  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80959A0C  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80959A10  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 80959A14  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 80959A18  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80959A1C  B0 1F 08 F0 */	sth r0, 0x8f0(r31)
/* 80959A20  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80959A24  B0 1F 08 F2 */	sth r0, 0x8f2(r31)
/* 80959A28  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 80959A2C  B0 1F 08 F4 */	sth r0, 0x8f4(r31)
/* 80959A30  A8 1F 08 F0 */	lha r0, 0x8f0(r31)
/* 80959A34  B0 1F 08 F6 */	sth r0, 0x8f6(r31)
/* 80959A38  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 80959A3C  B0 1F 08 F8 */	sth r0, 0x8f8(r31)
/* 80959A40  A8 1F 08 F4 */	lha r0, 0x8f4(r31)
/* 80959A44  B0 1F 08 FA */	sth r0, 0x8fa(r31)
/* 80959A48  3C 60 80 96 */	lis r3, lit_4301@ha
/* 80959A4C  C0 03 D6 C0 */	lfs f0, lit_4301@l(r3)
/* 80959A50  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80959A54  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80959A58  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80959A5C  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80959A60  90 9F 0F 4C */	stw r4, 0xf4c(r31)
/* 80959A64  B0 BF 09 E6 */	sth r5, 0x9e6(r31)
/* 80959A68  D0 1F 09 74 */	stfs f0, 0x974(r31)
/* 80959A6C  D0 1F 09 7C */	stfs f0, 0x97c(r31)
/* 80959A70  A8 1F 0F 58 */	lha r0, 0xf58(r31)
/* 80959A74  2C 00 04 2D */	cmpwi r0, 0x42d
/* 80959A78  40 82 00 0C */	bne lbl_80959A84
/* 80959A7C  98 BF 0F 5F */	stb r5, 0xf5f(r31)
/* 80959A80  48 00 00 0C */	b lbl_80959A8C
lbl_80959A84:
/* 80959A84  38 00 00 03 */	li r0, 3
/* 80959A88  98 1F 0F 5F */	stb r0, 0xf5f(r31)
lbl_80959A8C:
/* 80959A8C  7F E3 FB 78 */	mr r3, r31
/* 80959A90  48 00 01 41 */	bl isSneaking__10daNpcAsh_cFv
/* 80959A94  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80959A98  41 82 00 10 */	beq lbl_80959AA8
/* 80959A9C  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 80959AA0  60 00 40 00 */	ori r0, r0, 0x4000
/* 80959AA4  90 1F 04 9C */	stw r0, 0x49c(r31)
lbl_80959AA8:
/* 80959AA8  88 1F 0F 60 */	lbz r0, 0xf60(r31)
/* 80959AAC  28 00 00 00 */	cmplwi r0, 0
/* 80959AB0  40 82 00 34 */	bne lbl_80959AE4
/* 80959AB4  3C 60 80 96 */	lis r3, lit_4605@ha
/* 80959AB8  38 83 DB 8C */	addi r4, r3, lit_4605@l
/* 80959ABC  80 64 00 00 */	lwz r3, 0(r4)
/* 80959AC0  80 04 00 04 */	lwz r0, 4(r4)
/* 80959AC4  90 61 00 14 */	stw r3, 0x14(r1)
/* 80959AC8  90 01 00 18 */	stw r0, 0x18(r1)
/* 80959ACC  80 04 00 08 */	lwz r0, 8(r4)
/* 80959AD0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80959AD4  7F E3 FB 78 */	mr r3, r31
/* 80959AD8  38 81 00 14 */	addi r4, r1, 0x14
/* 80959ADC  48 00 00 4D */	bl setAction__10daNpcAsh_cFM10daNpcAsh_cFPCvPvPv_b
/* 80959AE0  48 00 00 30 */	b lbl_80959B10
lbl_80959AE4:
/* 80959AE4  3C 60 80 96 */	lis r3, lit_4608@ha
/* 80959AE8  38 83 DB 98 */	addi r4, r3, lit_4608@l
/* 80959AEC  80 64 00 00 */	lwz r3, 0(r4)
/* 80959AF0  80 04 00 04 */	lwz r0, 4(r4)
/* 80959AF4  90 61 00 08 */	stw r3, 8(r1)
/* 80959AF8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80959AFC  80 04 00 08 */	lwz r0, 8(r4)
/* 80959B00  90 01 00 10 */	stw r0, 0x10(r1)
/* 80959B04  7F E3 FB 78 */	mr r3, r31
/* 80959B08  38 81 00 08 */	addi r4, r1, 8
/* 80959B0C  48 00 00 1D */	bl setAction__10daNpcAsh_cFM10daNpcAsh_cFPCvPvPv_b
lbl_80959B10:
/* 80959B10  39 61 00 30 */	addi r11, r1, 0x30
/* 80959B14  4B A0 87 14 */	b _restgpr_29
/* 80959B18  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80959B1C  7C 08 03 A6 */	mtlr r0
/* 80959B20  38 21 00 30 */	addi r1, r1, 0x30
/* 80959B24  4E 80 00 20 */	blr 
