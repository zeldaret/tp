lbl_80C1B1F4:
/* 80C1B1F4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C1B1F8  7C 08 02 A6 */	mflr r0
/* 80C1B1FC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C1B200  39 61 00 30 */	addi r11, r1, 0x30
/* 80C1B204  4B 74 6F D5 */	bl _savegpr_28
/* 80C1B208  7C 7E 1B 78 */	mr r30, r3
/* 80C1B20C  3C 80 80 C2 */	lis r4, lit_3665@ha /* 0x80C1B600@ha */
/* 80C1B210  3B E4 B6 00 */	addi r31, r4, lit_3665@l /* 0x80C1B600@l */
/* 80C1B214  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C1B218  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C1B21C  40 82 00 E8 */	bne lbl_80C1B304
/* 80C1B220  7F C0 F3 79 */	or. r0, r30, r30
/* 80C1B224  41 82 00 D4 */	beq lbl_80C1B2F8
/* 80C1B228  7C 1D 03 78 */	mr r29, r0
/* 80C1B22C  4B 3F D9 39 */	bl __ct__10fopAc_ac_cFv
/* 80C1B230  38 7D 05 C0 */	addi r3, r29, 0x5c0
/* 80C1B234  4B 6A 51 95 */	bl __ct__10Z2CreatureFv
/* 80C1B238  38 7D 06 B8 */	addi r3, r29, 0x6b8
/* 80C1B23C  4B 45 AC 71 */	bl __ct__12dBgS_AcchCirFv
/* 80C1B240  3B 9D 06 F8 */	addi r28, r29, 0x6f8
/* 80C1B244  7F 83 E3 78 */	mr r3, r28
/* 80C1B248  4B 45 AE 59 */	bl __ct__9dBgS_AcchFv
/* 80C1B24C  3C 60 80 C2 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80C1B7B8@ha */
/* 80C1B250  38 63 B7 B8 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80C1B7B8@l */
/* 80C1B254  90 7C 00 10 */	stw r3, 0x10(r28)
/* 80C1B258  38 03 00 0C */	addi r0, r3, 0xc
/* 80C1B25C  90 1C 00 14 */	stw r0, 0x14(r28)
/* 80C1B260  38 03 00 18 */	addi r0, r3, 0x18
/* 80C1B264  90 1C 00 24 */	stw r0, 0x24(r28)
/* 80C1B268  38 7C 00 14 */	addi r3, r28, 0x14
/* 80C1B26C  4B 45 DB FD */	bl SetObj__16dBgS_PolyPassChkFv
/* 80C1B270  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80C1B274  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80C1B278  90 1D 08 E8 */	stw r0, 0x8e8(r29)
/* 80C1B27C  38 7D 08 EC */	addi r3, r29, 0x8ec
/* 80C1B280  4B 46 84 E1 */	bl __ct__10dCcD_GSttsFv
/* 80C1B284  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80C1B288  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80C1B28C  90 7D 08 E8 */	stw r3, 0x8e8(r29)
/* 80C1B290  38 03 00 20 */	addi r0, r3, 0x20
/* 80C1B294  90 1D 08 EC */	stw r0, 0x8ec(r29)
/* 80C1B298  3B 9D 09 0C */	addi r28, r29, 0x90c
/* 80C1B29C  7F 83 E3 78 */	mr r3, r28
/* 80C1B2A0  4B 46 87 89 */	bl __ct__12dCcD_GObjInfFv
/* 80C1B2A4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80C1B2A8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80C1B2AC  90 1C 01 20 */	stw r0, 0x120(r28)
/* 80C1B2B0  3C 60 80 C2 */	lis r3, __vt__8cM3dGAab@ha /* 0x80C1B7AC@ha */
/* 80C1B2B4  38 03 B7 AC */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80C1B7AC@l */
/* 80C1B2B8  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 80C1B2BC  3C 60 80 C2 */	lis r3, __vt__8cM3dGSph@ha /* 0x80C1B7A0@ha */
/* 80C1B2C0  38 03 B7 A0 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80C1B7A0@l */
/* 80C1B2C4  90 1C 01 34 */	stw r0, 0x134(r28)
/* 80C1B2C8  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80C1B2CC  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80C1B2D0  90 7C 01 20 */	stw r3, 0x120(r28)
/* 80C1B2D4  38 03 00 58 */	addi r0, r3, 0x58
/* 80C1B2D8  90 1C 01 34 */	stw r0, 0x134(r28)
/* 80C1B2DC  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80C1B2E0  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80C1B2E4  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 80C1B2E8  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C1B2EC  90 1C 01 20 */	stw r0, 0x120(r28)
/* 80C1B2F0  38 03 00 84 */	addi r0, r3, 0x84
/* 80C1B2F4  90 1C 01 34 */	stw r0, 0x134(r28)
lbl_80C1B2F8:
/* 80C1B2F8  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80C1B2FC  60 00 00 08 */	ori r0, r0, 8
/* 80C1B300  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80C1B304:
/* 80C1B304  38 7E 05 AC */	addi r3, r30, 0x5ac
/* 80C1B308  3C 80 80 C2 */	lis r4, d_a_obj_hb__stringBase0@ha /* 0x80C1B700@ha */
/* 80C1B30C  38 84 B7 00 */	addi r4, r4, d_a_obj_hb__stringBase0@l /* 0x80C1B700@l */
/* 80C1B310  4B 41 1B AD */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C1B314  7C 7D 1B 78 */	mr r29, r3
/* 80C1B318  2C 1D 00 04 */	cmpwi r29, 4
/* 80C1B31C  40 82 01 B0 */	bne lbl_80C1B4CC
/* 80C1B320  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C1B324  98 1E 05 B4 */	stb r0, 0x5b4(r30)
/* 80C1B328  7F C3 F3 78 */	mr r3, r30
/* 80C1B32C  3C 80 80 C2 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x80C1B188@ha */
/* 80C1B330  38 84 B1 88 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x80C1B188@l */
/* 80C1B334  3C A0 00 05 */	lis r5, 0x0005 /* 0x0004B000@ha */
/* 80C1B338  38 A5 B0 00 */	addi r5, r5, 0xB000 /* 0x0004B000@l */
/* 80C1B33C  4B 3F F1 75 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80C1B340  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C1B344  40 82 00 0C */	bne lbl_80C1B350
/* 80C1B348  38 60 00 05 */	li r3, 5
/* 80C1B34C  48 00 01 84 */	b lbl_80C1B4D0
lbl_80C1B350:
/* 80C1B350  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 80C1B354  38 03 00 24 */	addi r0, r3, 0x24
/* 80C1B358  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80C1B35C  38 00 00 0A */	li r0, 0xa
/* 80C1B360  B0 1E 05 62 */	sth r0, 0x562(r30)
/* 80C1B364  B0 1E 05 60 */	sth r0, 0x560(r30)
/* 80C1B368  38 7E 08 D0 */	addi r3, r30, 0x8d0
/* 80C1B36C  38 80 00 64 */	li r4, 0x64
/* 80C1B370  38 A0 00 00 */	li r5, 0
/* 80C1B374  7F C6 F3 78 */	mr r6, r30
/* 80C1B378  4B 46 84 E9 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80C1B37C  38 7E 09 0C */	addi r3, r30, 0x90c
/* 80C1B380  3C 80 80 C2 */	lis r4, cc_sph_src@ha /* 0x80C1B710@ha */
/* 80C1B384  38 84 B7 10 */	addi r4, r4, cc_sph_src@l /* 0x80C1B710@l */
/* 80C1B388  4B 46 96 AD */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80C1B38C  38 1E 08 D0 */	addi r0, r30, 0x8d0
/* 80C1B390  90 1E 09 50 */	stw r0, 0x950(r30)
/* 80C1B394  38 00 00 00 */	li r0, 0
/* 80C1B398  90 01 00 08 */	stw r0, 8(r1)
/* 80C1B39C  38 7E 06 F8 */	addi r3, r30, 0x6f8
/* 80C1B3A0  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80C1B3A4  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 80C1B3A8  7F C6 F3 78 */	mr r6, r30
/* 80C1B3AC  38 E0 00 01 */	li r7, 1
/* 80C1B3B0  39 1E 06 B8 */	addi r8, r30, 0x6b8
/* 80C1B3B4  39 3E 04 F8 */	addi r9, r30, 0x4f8
/* 80C1B3B8  39 40 00 00 */	li r10, 0
/* 80C1B3BC  4B 45 AE 8D */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80C1B3C0  38 7E 06 B8 */	addi r3, r30, 0x6b8
/* 80C1B3C4  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80C1B3C8  FC 40 08 90 */	fmr f2, f1
/* 80C1B3CC  4B 45 AB 8D */	bl SetWall__12dBgS_AcchCirFff
/* 80C1B3D0  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 80C1B3D4  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80C1B3D8  38 BE 05 38 */	addi r5, r30, 0x538
/* 80C1B3DC  38 C0 00 03 */	li r6, 3
/* 80C1B3E0  38 E0 00 01 */	li r7, 1
/* 80C1B3E4  4B 6A 51 4D */	bl init__10Z2CreatureFP3VecP3VecUcUc
/* 80C1B3E8  38 00 00 07 */	li r0, 7
/* 80C1B3EC  98 1E 05 48 */	stb r0, 0x548(r30)
/* 80C1B3F0  C0 3F 00 FC */	lfs f1, 0xfc(r31)
/* 80C1B3F4  4B 64 C5 61 */	bl cM_rndF__Ff
/* 80C1B3F8  FC 00 08 1E */	fctiwz f0, f1
/* 80C1B3FC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80C1B400  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1B404  B0 1E 06 50 */	sth r0, 0x650(r30)
/* 80C1B408  88 1E 05 B4 */	lbz r0, 0x5b4(r30)
/* 80C1B40C  28 00 00 01 */	cmplwi r0, 1
/* 80C1B410  40 82 00 2C */	bne lbl_80C1B43C
/* 80C1B414  38 00 00 01 */	li r0, 1
/* 80C1B418  B0 1E 06 52 */	sth r0, 0x652(r30)
/* 80C1B41C  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80C1B420  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80C1B424  A8 1E 04 E0 */	lha r0, 0x4e0(r30)
/* 80C1B428  2C 00 00 00 */	cmpwi r0, 0
/* 80C1B42C  41 82 00 78 */	beq lbl_80C1B4A4
/* 80C1B430  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80C1B434  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80C1B438  48 00 00 6C */	b lbl_80C1B4A4
lbl_80C1B43C:
/* 80C1B43C  38 00 00 01 */	li r0, 1
/* 80C1B440  B0 1E 06 52 */	sth r0, 0x652(r30)
/* 80C1B444  38 60 00 00 */	li r3, 0
/* 80C1B448  B0 7E 06 54 */	sth r3, 0x654(r30)
/* 80C1B44C  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80C1B450  D0 1E 04 EC */	stfs f0, 0x4ec(r30)
/* 80C1B454  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80C1B458  D0 1E 06 AC */	stfs f0, 0x6ac(r30)
/* 80C1B45C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C1B460  7C 07 07 74 */	extsb r7, r0
/* 80C1B464  90 61 00 08 */	stw r3, 8(r1)
/* 80C1B468  38 60 01 CA */	li r3, 0x1ca
/* 80C1B46C  28 1E 00 00 */	cmplwi r30, 0
/* 80C1B470  41 82 00 0C */	beq lbl_80C1B47C
/* 80C1B474  80 9E 00 04 */	lwz r4, 4(r30)
/* 80C1B478  48 00 00 08 */	b lbl_80C1B480
lbl_80C1B47C:
/* 80C1B47C  38 80 FF FF */	li r4, -1
lbl_80C1B480:
/* 80C1B480  38 A0 00 00 */	li r5, 0
/* 80C1B484  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80C1B488  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 80C1B48C  39 20 00 00 */	li r9, 0
/* 80C1B490  39 40 FF FF */	li r10, -1
/* 80C1B494  4B 3F EA 5D */	bl fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 80C1B498  90 7E 06 A8 */	stw r3, 0x6a8(r30)
/* 80C1B49C  38 00 00 01 */	li r0, 1
/* 80C1B4A0  98 1E 06 B0 */	stb r0, 0x6b0(r30)
lbl_80C1B4A4:
/* 80C1B4A4  38 00 FF FF */	li r0, -1
/* 80C1B4A8  90 1E 06 9C */	stw r0, 0x69c(r30)
/* 80C1B4AC  C0 3F 00 FC */	lfs f1, 0xfc(r31)
/* 80C1B4B0  4B 64 C4 A5 */	bl cM_rndF__Ff
/* 80C1B4B4  FC 00 08 1E */	fctiwz f0, f1
/* 80C1B4B8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80C1B4BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1B4C0  B0 1E 06 78 */	sth r0, 0x678(r30)
/* 80C1B4C4  7F C3 F3 78 */	mr r3, r30
/* 80C1B4C8  4B FF FA B9 */	bl daOBJ_HB_Execute__FP12obj_hb_class
lbl_80C1B4CC:
/* 80C1B4CC  7F A3 EB 78 */	mr r3, r29
lbl_80C1B4D0:
/* 80C1B4D0  39 61 00 30 */	addi r11, r1, 0x30
/* 80C1B4D4  4B 74 6D 51 */	bl _restgpr_28
/* 80C1B4D8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C1B4DC  7C 08 03 A6 */	mtlr r0
/* 80C1B4E0  38 21 00 30 */	addi r1, r1, 0x30
/* 80C1B4E4  4E 80 00 20 */	blr 
