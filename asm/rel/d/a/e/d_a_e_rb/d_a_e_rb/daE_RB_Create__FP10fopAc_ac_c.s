lbl_8076424C:
/* 8076424C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80764250  7C 08 02 A6 */	mflr r0
/* 80764254  90 01 00 34 */	stw r0, 0x34(r1)
/* 80764258  39 61 00 30 */	addi r11, r1, 0x30
/* 8076425C  4B BF DF 7D */	bl _savegpr_28
/* 80764260  7C 7F 1B 78 */	mr r31, r3
/* 80764264  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80764268  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8076426C  40 82 00 E8 */	bne lbl_80764354
/* 80764270  7F E0 FB 79 */	or. r0, r31, r31
/* 80764274  41 82 00 D4 */	beq lbl_80764348
/* 80764278  7C 1E 03 78 */	mr r30, r0
/* 8076427C  4B 8B 48 E9 */	bl __ct__10fopAc_ac_cFv
/* 80764280  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 80764284  4B 91 1C 29 */	bl __ct__12dBgS_AcchCirFv
/* 80764288  3B 9E 05 F8 */	addi r28, r30, 0x5f8
/* 8076428C  7F 83 E3 78 */	mr r3, r28
/* 80764290  4B 91 1E 11 */	bl __ct__9dBgS_AcchFv
/* 80764294  3C 60 80 76 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80764F0C@ha */
/* 80764298  38 63 4F 0C */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80764F0C@l */
/* 8076429C  90 7C 00 10 */	stw r3, 0x10(r28)
/* 807642A0  38 03 00 0C */	addi r0, r3, 0xc
/* 807642A4  90 1C 00 14 */	stw r0, 0x14(r28)
/* 807642A8  38 03 00 18 */	addi r0, r3, 0x18
/* 807642AC  90 1C 00 24 */	stw r0, 0x24(r28)
/* 807642B0  38 7C 00 14 */	addi r3, r28, 0x14
/* 807642B4  4B 91 4B B5 */	bl SetObj__16dBgS_PolyPassChkFv
/* 807642B8  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 807642BC  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 807642C0  90 1E 07 E8 */	stw r0, 0x7e8(r30)
/* 807642C4  38 7E 07 EC */	addi r3, r30, 0x7ec
/* 807642C8  4B 91 F4 99 */	bl __ct__10dCcD_GSttsFv
/* 807642CC  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 807642D0  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 807642D4  90 7E 07 E8 */	stw r3, 0x7e8(r30)
/* 807642D8  38 03 00 20 */	addi r0, r3, 0x20
/* 807642DC  90 1E 07 EC */	stw r0, 0x7ec(r30)
/* 807642E0  3B 9E 08 0C */	addi r28, r30, 0x80c
/* 807642E4  7F 83 E3 78 */	mr r3, r28
/* 807642E8  4B 91 F7 41 */	bl __ct__12dCcD_GObjInfFv
/* 807642EC  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 807642F0  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 807642F4  90 1C 01 20 */	stw r0, 0x120(r28)
/* 807642F8  3C 60 80 76 */	lis r3, __vt__8cM3dGAab@ha /* 0x80764F00@ha */
/* 807642FC  38 03 4F 00 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80764F00@l */
/* 80764300  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 80764304  3C 60 80 76 */	lis r3, __vt__8cM3dGSph@ha /* 0x80764EF4@ha */
/* 80764308  38 03 4E F4 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80764EF4@l */
/* 8076430C  90 1C 01 34 */	stw r0, 0x134(r28)
/* 80764310  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80764314  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80764318  90 7C 01 20 */	stw r3, 0x120(r28)
/* 8076431C  38 03 00 58 */	addi r0, r3, 0x58
/* 80764320  90 1C 01 34 */	stw r0, 0x134(r28)
/* 80764324  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80764328  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 8076432C  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 80764330  38 03 00 2C */	addi r0, r3, 0x2c
/* 80764334  90 1C 01 20 */	stw r0, 0x120(r28)
/* 80764338  38 03 00 84 */	addi r0, r3, 0x84
/* 8076433C  90 1C 01 34 */	stw r0, 0x134(r28)
/* 80764340  38 7E 09 6C */	addi r3, r30, 0x96c
/* 80764344  4B B5 CC 21 */	bl __ct__15Z2CreatureEnemyFv
lbl_80764348:
/* 80764348  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 8076434C  60 00 00 08 */	ori r0, r0, 8
/* 80764350  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80764354:
/* 80764354  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 80764358  3C 80 80 76 */	lis r4, d_a_e_rb__stringBase0@ha /* 0x80764DD4@ha */
/* 8076435C  38 84 4D D4 */	addi r4, r4, d_a_e_rb__stringBase0@l /* 0x80764DD4@l */
/* 80764360  4B 8C 8B 5D */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80764364  7C 7E 1B 78 */	mr r30, r3
/* 80764368  2C 1E 00 04 */	cmpwi r30, 4
/* 8076436C  40 82 02 9C */	bne lbl_80764608
/* 80764370  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80764374  98 1F 0A 66 */	stb r0, 0xa66(r31)
/* 80764378  88 1F 0A 66 */	lbz r0, 0xa66(r31)
/* 8076437C  28 00 00 FF */	cmplwi r0, 0xff
/* 80764380  40 82 00 0C */	bne lbl_8076438C
/* 80764384  38 00 00 00 */	li r0, 0
/* 80764388  98 1F 0A 66 */	stb r0, 0xa66(r31)
lbl_8076438C:
/* 8076438C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80764390  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80764394  98 1F 0A 67 */	stb r0, 0xa67(r31)
/* 80764398  88 1F 0A 67 */	lbz r0, 0xa67(r31)
/* 8076439C  28 00 00 0A */	cmplwi r0, 0xa
/* 807643A0  40 81 00 0C */	ble lbl_807643AC
/* 807643A4  38 00 00 0A */	li r0, 0xa
/* 807643A8  98 1F 0A 67 */	stb r0, 0xa67(r31)
lbl_807643AC:
/* 807643AC  88 1F 0A 66 */	lbz r0, 0xa66(r31)
/* 807643B0  28 00 00 00 */	cmplwi r0, 0
/* 807643B4  40 82 00 F4 */	bne lbl_807644A8
/* 807643B8  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 807643BC  98 1F 0A 6A */	stb r0, 0xa6a(r31)
/* 807643C0  38 00 00 00 */	li r0, 0
/* 807643C4  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 807643C8  88 9F 0A 6A */	lbz r4, 0xa6a(r31)
/* 807643CC  28 04 00 FF */	cmplwi r4, 0xff
/* 807643D0  41 82 00 28 */	beq lbl_807643F8
/* 807643D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807643D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807643DC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 807643E0  7C 05 07 74 */	extsb r5, r0
/* 807643E4  4B 8D 0F 7D */	bl isSwitch__10dSv_info_cCFii
/* 807643E8  2C 03 00 00 */	cmpwi r3, 0
/* 807643EC  41 82 00 0C */	beq lbl_807643F8
/* 807643F0  38 60 00 05 */	li r3, 5
/* 807643F4  48 00 02 18 */	b lbl_8076460C
lbl_807643F8:
/* 807643F8  3B 80 00 00 */	li r28, 0
/* 807643FC  3B A0 00 00 */	li r29, 0
/* 80764400  48 00 00 44 */	b lbl_80764444
lbl_80764404:
/* 80764404  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80764408  7C 07 07 74 */	extsb r7, r0
/* 8076440C  93 A1 00 08 */	stw r29, 8(r1)
/* 80764410  38 60 01 D3 */	li r3, 0x1d3
/* 80764414  28 1F 00 00 */	cmplwi r31, 0
/* 80764418  41 82 00 0C */	beq lbl_80764424
/* 8076441C  80 9F 00 04 */	lwz r4, 4(r31)
/* 80764420  48 00 00 08 */	b lbl_80764428
lbl_80764424:
/* 80764424  38 80 FF FF */	li r4, -1
lbl_80764428:
/* 80764428  38 A0 00 01 */	li r5, 1
/* 8076442C  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 80764430  39 00 00 00 */	li r8, 0
/* 80764434  39 20 00 00 */	li r9, 0
/* 80764438  39 40 FF FF */	li r10, -1
/* 8076443C  4B 8B 5A B5 */	bl fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 80764440  3B 9C 00 01 */	addi r28, r28, 1
lbl_80764444:
/* 80764444  88 1F 0A 67 */	lbz r0, 0xa67(r31)
/* 80764448  7C 1C 00 00 */	cmpw r28, r0
/* 8076444C  41 80 FF B8 */	blt lbl_80764404
/* 80764450  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80764454  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 80764458  98 1F 0A 68 */	stb r0, 0xa68(r31)
/* 8076445C  88 1F 0A 68 */	lbz r0, 0xa68(r31)
/* 80764460  28 00 00 FF */	cmplwi r0, 0xff
/* 80764464  41 82 00 0C */	beq lbl_80764470
/* 80764468  28 00 00 00 */	cmplwi r0, 0
/* 8076446C  40 82 00 0C */	bne lbl_80764478
lbl_80764470:
/* 80764470  38 00 00 0A */	li r0, 0xa
/* 80764474  98 1F 0A 68 */	stb r0, 0xa68(r31)
lbl_80764478:
/* 80764478  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8076447C  54 00 46 3E */	srwi r0, r0, 0x18
/* 80764480  98 1F 0A 69 */	stb r0, 0xa69(r31)
/* 80764484  88 1F 0A 69 */	lbz r0, 0xa69(r31)
/* 80764488  28 00 00 FF */	cmplwi r0, 0xff
/* 8076448C  41 82 00 0C */	beq lbl_80764498
/* 80764490  28 00 00 00 */	cmplwi r0, 0
/* 80764494  40 82 00 0C */	bne lbl_807644A0
lbl_80764498:
/* 80764498  38 00 00 0F */	li r0, 0xf
/* 8076449C  98 1F 0A 69 */	stb r0, 0xa69(r31)
lbl_807644A0:
/* 807644A0  7F C3 F3 78 */	mr r3, r30
/* 807644A4  48 00 01 68 */	b lbl_8076460C
lbl_807644A8:
/* 807644A8  7F E3 FB 78 */	mr r3, r31
/* 807644AC  3C 80 80 76 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x80764174@ha */
/* 807644B0  38 84 41 74 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x80764174@l */
/* 807644B4  38 A0 0B 80 */	li r5, 0xb80
/* 807644B8  4B 8B 5F F9 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 807644BC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807644C0  40 82 00 0C */	bne lbl_807644CC
/* 807644C4  38 60 00 05 */	li r3, 5
/* 807644C8  48 00 01 44 */	b lbl_8076460C
lbl_807644CC:
/* 807644CC  3C 60 80 76 */	lis r3, data_80764F80@ha /* 0x80764F80@ha */
/* 807644D0  8C 03 4F 80 */	lbzu r0, data_80764F80@l(r3)  /* 0x80764F80@l */
/* 807644D4  28 00 00 00 */	cmplwi r0, 0
/* 807644D8  40 82 00 20 */	bne lbl_807644F8
/* 807644DC  38 00 00 01 */	li r0, 1
/* 807644E0  98 1F 0A 6B */	stb r0, 0xa6b(r31)
/* 807644E4  98 03 00 00 */	stb r0, 0(r3)
/* 807644E8  38 00 FF FF */	li r0, -1
/* 807644EC  3C 60 80 76 */	lis r3, l_HIO@ha /* 0x80764F90@ha */
/* 807644F0  38 63 4F 90 */	addi r3, r3, l_HIO@l /* 0x80764F90@l */
/* 807644F4  98 03 00 04 */	stb r0, 4(r3)
lbl_807644F8:
/* 807644F8  38 00 00 04 */	li r0, 4
/* 807644FC  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80764500  80 7F 09 68 */	lwz r3, 0x968(r31)
/* 80764504  80 63 00 04 */	lwz r3, 4(r3)
/* 80764508  38 03 00 24 */	addi r0, r3, 0x24
/* 8076450C  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80764510  38 00 00 01 */	li r0, 1
/* 80764514  B0 1F 05 62 */	sth r0, 0x562(r31)
/* 80764518  B0 1F 05 60 */	sth r0, 0x560(r31)
/* 8076451C  38 7F 07 D0 */	addi r3, r31, 0x7d0
/* 80764520  38 80 00 64 */	li r4, 0x64
/* 80764524  38 A0 00 00 */	li r5, 0
/* 80764528  7F E6 FB 78 */	mr r6, r31
/* 8076452C  4B 91 F3 35 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80764530  38 7F 08 0C */	addi r3, r31, 0x80c
/* 80764534  3C 80 80 76 */	lis r4, cc_sph_src@ha /* 0x80764E40@ha */
/* 80764538  38 84 4E 40 */	addi r4, r4, cc_sph_src@l /* 0x80764E40@l */
/* 8076453C  4B 92 04 F9 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80764540  38 1F 07 D0 */	addi r0, r31, 0x7d0
/* 80764544  90 1F 08 50 */	stw r0, 0x850(r31)
/* 80764548  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8076454C  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 80764550  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80764554  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 80764558  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8076455C  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 80764560  38 00 00 00 */	li r0, 0
/* 80764564  90 01 00 08 */	stw r0, 8(r1)
/* 80764568  38 7F 05 F8 */	addi r3, r31, 0x5f8
/* 8076456C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80764570  38 BF 04 BC */	addi r5, r31, 0x4bc
/* 80764574  7F E6 FB 78 */	mr r6, r31
/* 80764578  38 E0 00 01 */	li r7, 1
/* 8076457C  39 1F 05 B8 */	addi r8, r31, 0x5b8
/* 80764580  39 3F 04 F8 */	addi r9, r31, 0x4f8
/* 80764584  39 40 00 00 */	li r10, 0
/* 80764588  4B 91 1C C1 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 8076458C  80 1F 06 24 */	lwz r0, 0x624(r31)
/* 80764590  60 00 20 00 */	ori r0, r0, 0x2000
/* 80764594  90 1F 06 24 */	stw r0, 0x624(r31)
/* 80764598  38 7F 05 B8 */	addi r3, r31, 0x5b8
/* 8076459C  3C 80 80 76 */	lis r4, lit_3890@ha /* 0x80764D54@ha */
/* 807645A0  C0 24 4D 54 */	lfs f1, lit_3890@l(r4)  /* 0x80764D54@l */
/* 807645A4  FC 40 08 90 */	fmr f2, f1
/* 807645A8  4B 91 19 B1 */	bl SetWall__12dBgS_AcchCirFff
/* 807645AC  38 7F 09 6C */	addi r3, r31, 0x96c
/* 807645B0  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 807645B4  38 BF 05 38 */	addi r5, r31, 0x538
/* 807645B8  38 C0 00 03 */	li r6, 3
/* 807645BC  38 E0 00 01 */	li r7, 1
/* 807645C0  4B B5 CA D5 */	bl init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 807645C4  38 7F 09 6C */	addi r3, r31, 0x96c
/* 807645C8  3C 80 80 76 */	lis r4, d_a_e_rb__stringBase0@ha /* 0x80764DD4@ha */
/* 807645CC  38 84 4D D4 */	addi r4, r4, d_a_e_rb__stringBase0@l /* 0x80764DD4@l */
/* 807645D0  4B B5 D5 C1 */	bl setEnemyName__15Z2CreatureEnemyFPCc
/* 807645D4  38 1F 09 6C */	addi r0, r31, 0x96c
/* 807645D8  90 1F 09 4C */	stw r0, 0x94c(r31)
/* 807645DC  3C 60 80 76 */	lis r3, lit_3892@ha /* 0x80764D5C@ha */
/* 807645E0  C0 23 4D 5C */	lfs f1, lit_3892@l(r3)  /* 0x80764D5C@l */
/* 807645E4  4B B0 33 71 */	bl cM_rndF__Ff
/* 807645E8  FC 00 08 1E */	fctiwz f0, f1
/* 807645EC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 807645F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807645F4  B0 1F 0A 40 */	sth r0, 0xa40(r31)
/* 807645F8  38 00 00 28 */	li r0, 0x28
/* 807645FC  98 1F 05 64 */	stb r0, 0x564(r31)
/* 80764600  7F E3 FB 78 */	mr r3, r31
/* 80764604  4B FF F7 F1 */	bl daE_RB_Execute__FP10e_rb_class
lbl_80764608:
/* 80764608  7F C3 F3 78 */	mr r3, r30
lbl_8076460C:
/* 8076460C  39 61 00 30 */	addi r11, r1, 0x30
/* 80764610  4B BF DC 15 */	bl _restgpr_28
/* 80764614  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80764618  7C 08 03 A6 */	mtlr r0
/* 8076461C  38 21 00 30 */	addi r1, r1, 0x30
/* 80764620  4E 80 00 20 */	blr 
