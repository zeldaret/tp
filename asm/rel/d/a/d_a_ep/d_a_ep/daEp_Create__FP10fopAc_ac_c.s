lbl_8046A8D4:
/* 8046A8D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8046A8D8  7C 08 02 A6 */	mflr r0
/* 8046A8DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8046A8E0  39 61 00 20 */	addi r11, r1, 0x20
/* 8046A8E4  4B EF 78 F5 */	bl _savegpr_28
/* 8046A8E8  7C 7C 1B 78 */	mr r28, r3
/* 8046A8EC  3C 80 80 47 */	lis r4, cNullVec__6Z2Calc@ha /* 0x8046B0F8@ha */
/* 8046A8F0  3B C4 B0 F8 */	addi r30, r4, cNullVec__6Z2Calc@l /* 0x8046B0F8@l */
/* 8046A8F4  3C 80 80 47 */	lis r4, lit_3681@ha /* 0x8046AFC4@ha */
/* 8046A8F8  3B E4 AF C4 */	addi r31, r4, lit_3681@l /* 0x8046AFC4@l */
/* 8046A8FC  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8046A900  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8046A904  40 82 00 1C */	bne lbl_8046A920
/* 8046A908  28 1C 00 00 */	cmplwi r28, 0
/* 8046A90C  41 82 00 08 */	beq lbl_8046A914
/* 8046A910  48 00 02 1D */	bl __ct__8ep_classFv
lbl_8046A914:
/* 8046A914  80 1C 04 A0 */	lwz r0, 0x4a0(r28)
/* 8046A918  60 00 00 08 */	ori r0, r0, 8
/* 8046A91C  90 1C 04 A0 */	stw r0, 0x4a0(r28)
lbl_8046A920:
/* 8046A920  38 7C 05 68 */	addi r3, r28, 0x568
/* 8046A924  3C 80 80 47 */	lis r4, d_a_ep__stringBase0@ha /* 0x8046B0D0@ha */
/* 8046A928  38 84 B0 D0 */	addi r4, r4, d_a_ep__stringBase0@l /* 0x8046B0D0@l */
/* 8046A92C  38 84 00 23 */	addi r4, r4, 0x23
/* 8046A930  4B BC 25 8D */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 8046A934  7C 7D 1B 78 */	mr r29, r3
/* 8046A938  2C 1D 00 04 */	cmpwi r29, 4
/* 8046A93C  40 82 01 90 */	bne lbl_8046AACC
/* 8046A940  80 7C 00 B0 */	lwz r3, 0xb0(r28)
/* 8046A944  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 8046A948  41 82 00 30 */	beq lbl_8046A978
/* 8046A94C  54 60 07 7E */	clrlwi r0, r3, 0x1d
/* 8046A950  98 1C 06 0C */	stb r0, 0x60c(r28)
/* 8046A954  88 7C 06 0C */	lbz r3, 0x60c(r28)
/* 8046A958  38 03 00 01 */	addi r0, r3, 1
/* 8046A95C  98 1C 06 0C */	stb r0, 0x60c(r28)
/* 8046A960  88 1C 06 0C */	lbz r0, 0x60c(r28)
/* 8046A964  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 8046A968  98 1C 06 0C */	stb r0, 0x60c(r28)
/* 8046A96C  38 00 FF FF */	li r0, -1
/* 8046A970  98 1C 0A 5A */	stb r0, 0xa5a(r28)
/* 8046A974  48 00 00 24 */	b lbl_8046A998
lbl_8046A978:
/* 8046A978  54 60 07 7E */	clrlwi r0, r3, 0x1d
/* 8046A97C  98 1C 0A 5A */	stb r0, 0xa5a(r28)
/* 8046A980  88 7C 0A 5A */	lbz r3, 0xa5a(r28)
/* 8046A984  38 03 00 01 */	addi r0, r3, 1
/* 8046A988  98 1C 0A 5A */	stb r0, 0xa5a(r28)
/* 8046A98C  88 1C 0A 5A */	lbz r0, 0xa5a(r28)
/* 8046A990  54 00 07 7E */	clrlwi r0, r0, 0x1d
/* 8046A994  98 1C 0A 5A */	stb r0, 0xa5a(r28)
lbl_8046A998:
/* 8046A998  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 8046A99C  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 8046A9A0  98 1C 06 09 */	stb r0, 0x609(r28)
/* 8046A9A4  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 8046A9A8  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 8046A9AC  98 1C 06 0B */	stb r0, 0x60b(r28)
/* 8046A9B0  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 8046A9B4  54 00 46 3E */	srwi r0, r0, 0x18
/* 8046A9B8  98 1C 06 0A */	stb r0, 0x60a(r28)
/* 8046A9BC  38 7C 06 44 */	addi r3, r28, 0x644
/* 8046A9C0  38 80 00 FF */	li r4, 0xff
/* 8046A9C4  38 A0 00 FF */	li r5, 0xff
/* 8046A9C8  7F 86 E3 78 */	mr r6, r28
/* 8046A9CC  4B C1 8E 95 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 8046A9D0  38 7C 07 BC */	addi r3, r28, 0x7bc
/* 8046A9D4  38 9E 00 64 */	addi r4, r30, 0x64
/* 8046A9D8  4B C1 A0 5D */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 8046A9DC  38 1C 06 44 */	addi r0, r28, 0x644
/* 8046A9E0  90 1C 08 00 */	stw r0, 0x800(r28)
/* 8046A9E4  88 1C 06 0C */	lbz r0, 0x60c(r28)
/* 8046A9E8  28 00 00 01 */	cmplwi r0, 1
/* 8046A9EC  40 82 00 10 */	bne lbl_8046A9FC
/* 8046A9F0  38 7C 08 E0 */	addi r3, r28, 0x8e0
/* 8046A9F4  C0 3F 00 88 */	lfs f1, 0x88(r31)
/* 8046A9F8  4B E0 4D 11 */	bl SetR__8cM3dGSphFf
lbl_8046A9FC:
/* 8046A9FC  88 1C 0A 5A */	lbz r0, 0xa5a(r28)
/* 8046AA00  7C 00 07 75 */	extsb. r0, r0
/* 8046AA04  41 80 00 64 */	blt lbl_8046AA68
/* 8046AA08  7F 83 E3 78 */	mr r3, r28
/* 8046AA0C  3C 80 80 47 */	lis r4, daEp_CreateHeap__FP10fopAc_ac_c@ha /* 0x8046A724@ha */
/* 8046AA10  38 84 A7 24 */	addi r4, r4, daEp_CreateHeap__FP10fopAc_ac_c@l /* 0x8046A724@l */
/* 8046AA14  3C A0 00 05 */	lis r5, 0x0005 /* 0x0004B000@ha */
/* 8046AA18  38 A5 B0 00 */	addi r5, r5, 0xB000 /* 0x0004B000@l */
/* 8046AA1C  4B BA FA 95 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 8046AA20  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8046AA24  40 82 00 0C */	bne lbl_8046AA30
/* 8046AA28  38 60 00 05 */	li r3, 5
/* 8046AA2C  48 00 00 E8 */	b lbl_8046AB14
lbl_8046AA30:
/* 8046AA30  38 7C 06 80 */	addi r3, r28, 0x680
/* 8046AA34  38 9E 00 A4 */	addi r4, r30, 0xa4
/* 8046AA38  4B C1 9E 7D */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 8046AA3C  38 1C 06 44 */	addi r0, r28, 0x644
/* 8046AA40  90 1C 06 C4 */	stw r0, 0x6c4(r28)
/* 8046AA44  80 1C 07 1C */	lwz r0, 0x71c(r28)
/* 8046AA48  60 00 00 04 */	ori r0, r0, 4
/* 8046AA4C  90 1C 07 1C */	stw r0, 0x71c(r28)
/* 8046AA50  88 1C 0A 5A */	lbz r0, 0xa5a(r28)
/* 8046AA54  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8046AA58  41 82 00 10 */	beq lbl_8046AA68
/* 8046AA5C  38 7C 07 A4 */	addi r3, r28, 0x7a4
/* 8046AA60  C0 3F 01 04 */	lfs f1, 0x104(r31)
/* 8046AA64  4B E0 47 95 */	bl SetH__8cM3dGCylFf
lbl_8046AA68:
/* 8046AA68  7F 83 E3 78 */	mr r3, r28
/* 8046AA6C  4B FF FD ED */	bl daEp_CreateInit__FP10fopAc_ac_c
/* 8046AA70  88 9C 06 0A */	lbz r4, 0x60a(r28)
/* 8046AA74  28 04 00 FF */	cmplwi r4, 0xff
/* 8046AA78  41 82 00 2C */	beq lbl_8046AAA4
/* 8046AA7C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8046AA80  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8046AA84  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 8046AA88  7C 05 07 74 */	extsb r5, r0
/* 8046AA8C  4B BC A8 D5 */	bl isSwitch__10dSv_info_cCFii
/* 8046AA90  2C 03 00 00 */	cmpwi r3, 0
/* 8046AA94  40 82 00 10 */	bne lbl_8046AAA4
/* 8046AA98  88 7C 06 0A */	lbz r3, 0x60a(r28)
/* 8046AA9C  38 03 00 01 */	addi r0, r3, 1
/* 8046AAA0  98 1C 06 0D */	stb r0, 0x60d(r28)
lbl_8046AAA4:
/* 8046AAA4  38 00 4E 20 */	li r0, 0x4e20
/* 8046AAA8  B0 1C 05 CE */	sth r0, 0x5ce(r28)
/* 8046AAAC  38 7C 06 14 */	addi r3, r28, 0x614
/* 8046AAB0  4B D3 CC E1 */	bl dKy_plight_set__FP15LIGHT_INFLUENCE
/* 8046AAB4  C0 3F 01 08 */	lfs f1, 0x108(r31)
/* 8046AAB8  4B DF CE 9D */	bl cM_rndF__Ff
/* 8046AABC  FC 00 08 1E */	fctiwz f0, f1
/* 8046AAC0  D8 01 00 08 */	stfd f0, 8(r1)
/* 8046AAC4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8046AAC8  98 1C 0E 6C */	stb r0, 0xe6c(r28)
lbl_8046AACC:
/* 8046AACC  38 00 FF FF */	li r0, -1
/* 8046AAD0  90 1C 0A 5C */	stw r0, 0xa5c(r28)
/* 8046AAD4  38 00 00 07 */	li r0, 7
/* 8046AAD8  98 1C 05 48 */	stb r0, 0x548(r28)
/* 8046AADC  88 1C 04 9A */	lbz r0, 0x49a(r28)
/* 8046AAE0  60 00 00 30 */	ori r0, r0, 0x30
/* 8046AAE4  98 1C 04 9A */	stb r0, 0x49a(r28)
/* 8046AAE8  38 7C 08 F4 */	addi r3, r28, 0x8f4
/* 8046AAEC  38 9E 00 E8 */	addi r4, r30, 0xe8
/* 8046AAF0  4B C1 9F 45 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 8046AAF4  38 1C 06 44 */	addi r0, r28, 0x644
/* 8046AAF8  90 1C 09 38 */	stw r0, 0x938(r28)
/* 8046AAFC  80 1C 08 F4 */	lwz r0, 0x8f4(r28)
/* 8046AB00  54 00 07 B6 */	rlwinm r0, r0, 0, 0x1e, 0x1b
/* 8046AB04  90 1C 08 F4 */	stw r0, 0x8f4(r28)
/* 8046AB08  38 00 00 3C */	li r0, 0x3c
/* 8046AB0C  98 1C 0A 5B */	stb r0, 0xa5b(r28)
/* 8046AB10  7F A3 EB 78 */	mr r3, r29
lbl_8046AB14:
/* 8046AB14  39 61 00 20 */	addi r11, r1, 0x20
/* 8046AB18  4B EF 77 0D */	bl _restgpr_28
/* 8046AB1C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8046AB20  7C 08 03 A6 */	mtlr r0
/* 8046AB24  38 21 00 20 */	addi r1, r1, 0x20
/* 8046AB28  4E 80 00 20 */	blr 
