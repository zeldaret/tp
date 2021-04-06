lbl_8078D780:
/* 8078D780  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8078D784  7C 08 02 A6 */	mflr r0
/* 8078D788  90 01 00 64 */	stw r0, 0x64(r1)
/* 8078D78C  39 61 00 60 */	addi r11, r1, 0x60
/* 8078D790  4B BD 4A 41 */	bl _savegpr_26
/* 8078D794  7C 7E 1B 78 */	mr r30, r3
/* 8078D798  3C 80 80 79 */	lis r4, lit_3767@ha /* 0x8078DDA4@ha */
/* 8078D79C  3B E4 DD A4 */	addi r31, r4, lit_3767@l /* 0x8078DDA4@l */
/* 8078D7A0  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8078D7A4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8078D7A8  40 82 00 F0 */	bne lbl_8078D898
/* 8078D7AC  7F C0 F3 79 */	or. r0, r30, r30
/* 8078D7B0  41 82 00 DC */	beq lbl_8078D88C
/* 8078D7B4  7C 1A 03 78 */	mr r26, r0
/* 8078D7B8  4B 88 B3 AD */	bl __ct__10fopAc_ac_cFv
/* 8078D7BC  38 7A 05 BC */	addi r3, r26, 0x5bc
/* 8078D7C0  4B B3 37 A5 */	bl __ct__15Z2CreatureEnemyFv
/* 8078D7C4  38 7A 06 D0 */	addi r3, r26, 0x6d0
/* 8078D7C8  4B 8A 84 C5 */	bl __ct__9dJntCol_cFv
/* 8078D7CC  38 7A 06 E0 */	addi r3, r26, 0x6e0
/* 8078D7D0  4B 8E 86 DD */	bl __ct__12dBgS_AcchCirFv
/* 8078D7D4  3B 7A 07 20 */	addi r27, r26, 0x720
/* 8078D7D8  7F 63 DB 78 */	mr r3, r27
/* 8078D7DC  4B 8E 88 C5 */	bl __ct__9dBgS_AcchFv
/* 8078D7E0  3C 60 80 79 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x8078E064@ha */
/* 8078D7E4  38 63 E0 64 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x8078E064@l */
/* 8078D7E8  90 7B 00 10 */	stw r3, 0x10(r27)
/* 8078D7EC  38 03 00 0C */	addi r0, r3, 0xc
/* 8078D7F0  90 1B 00 14 */	stw r0, 0x14(r27)
/* 8078D7F4  38 03 00 18 */	addi r0, r3, 0x18
/* 8078D7F8  90 1B 00 24 */	stw r0, 0x24(r27)
/* 8078D7FC  38 7B 00 14 */	addi r3, r27, 0x14
/* 8078D800  4B 8E B6 69 */	bl SetObj__16dBgS_PolyPassChkFv
/* 8078D804  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 8078D808  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 8078D80C  90 1A 09 10 */	stw r0, 0x910(r26)
/* 8078D810  38 7A 09 14 */	addi r3, r26, 0x914
/* 8078D814  4B 8F 5F 4D */	bl __ct__10dCcD_GSttsFv
/* 8078D818  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 8078D81C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 8078D820  90 7A 09 10 */	stw r3, 0x910(r26)
/* 8078D824  38 03 00 20 */	addi r0, r3, 0x20
/* 8078D828  90 1A 09 14 */	stw r0, 0x914(r26)
/* 8078D82C  3B 5A 09 34 */	addi r26, r26, 0x934
/* 8078D830  7F 43 D3 78 */	mr r3, r26
/* 8078D834  4B 8F 61 F5 */	bl __ct__12dCcD_GObjInfFv
/* 8078D838  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 8078D83C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 8078D840  90 1A 01 20 */	stw r0, 0x120(r26)
/* 8078D844  3C 60 80 79 */	lis r3, __vt__8cM3dGAab@ha /* 0x8078E058@ha */
/* 8078D848  38 03 E0 58 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x8078E058@l */
/* 8078D84C  90 1A 01 1C */	stw r0, 0x11c(r26)
/* 8078D850  3C 60 80 79 */	lis r3, __vt__8cM3dGSph@ha /* 0x8078E04C@ha */
/* 8078D854  38 03 E0 4C */	addi r0, r3, __vt__8cM3dGSph@l /* 0x8078E04C@l */
/* 8078D858  90 1A 01 34 */	stw r0, 0x134(r26)
/* 8078D85C  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 8078D860  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 8078D864  90 7A 01 20 */	stw r3, 0x120(r26)
/* 8078D868  38 03 00 58 */	addi r0, r3, 0x58
/* 8078D86C  90 1A 01 34 */	stw r0, 0x134(r26)
/* 8078D870  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 8078D874  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 8078D878  90 7A 00 3C */	stw r3, 0x3c(r26)
/* 8078D87C  38 03 00 2C */	addi r0, r3, 0x2c
/* 8078D880  90 1A 01 20 */	stw r0, 0x120(r26)
/* 8078D884  38 03 00 84 */	addi r0, r3, 0x84
/* 8078D888  90 1A 01 34 */	stw r0, 0x134(r26)
lbl_8078D88C:
/* 8078D88C  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 8078D890  60 00 00 08 */	ori r0, r0, 8
/* 8078D894  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_8078D898:
/* 8078D898  38 7E 05 AC */	addi r3, r30, 0x5ac
/* 8078D89C  3C 80 80 79 */	lis r4, d_a_e_sg__stringBase0@ha /* 0x8078DEAC@ha */
/* 8078D8A0  38 84 DE AC */	addi r4, r4, d_a_e_sg__stringBase0@l /* 0x8078DEAC@l */
/* 8078D8A4  4B 89 F6 19 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 8078D8A8  7C 7D 1B 78 */	mr r29, r3
/* 8078D8AC  2C 1D 00 04 */	cmpwi r29, 4
/* 8078D8B0  40 82 02 B8 */	bne lbl_8078DB68
/* 8078D8B4  7F C3 F3 78 */	mr r3, r30
/* 8078D8B8  3C 80 80 79 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x8078D6B0@ha */
/* 8078D8BC  38 84 D6 B0 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x8078D6B0@l */
/* 8078D8C0  38 A0 0F A0 */	li r5, 0xfa0
/* 8078D8C4  4B 88 CB ED */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 8078D8C8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8078D8CC  40 82 00 0C */	bne lbl_8078D8D8
/* 8078D8D0  38 60 00 05 */	li r3, 5
/* 8078D8D4  48 00 02 98 */	b lbl_8078DB6C
lbl_8078D8D8:
/* 8078D8D8  3C 60 80 79 */	lis r3, struct_8078E0DC+0x1@ha /* 0x8078E0DD@ha */
/* 8078D8DC  8C 03 E0 DD */	lbzu r0, struct_8078E0DC+0x1@l(r3)  /* 0x8078E0DD@l */
/* 8078D8E0  28 00 00 00 */	cmplwi r0, 0
/* 8078D8E4  40 82 00 20 */	bne lbl_8078D904
/* 8078D8E8  38 00 00 01 */	li r0, 1
/* 8078D8EC  98 1E 0A AC */	stb r0, 0xaac(r30)
/* 8078D8F0  98 03 00 00 */	stb r0, 0(r3)
/* 8078D8F4  38 00 FF FF */	li r0, -1
/* 8078D8F8  3C 60 80 79 */	lis r3, l_HIO@ha /* 0x8078E0EC@ha */
/* 8078D8FC  38 63 E0 EC */	addi r3, r3, l_HIO@l /* 0x8078E0EC@l */
/* 8078D900  98 03 00 04 */	stb r0, 4(r3)
lbl_8078D904:
/* 8078D904  38 00 00 04 */	li r0, 4
/* 8078D908  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 8078D90C  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 8078D910  38 03 00 24 */	addi r0, r3, 0x24
/* 8078D914  90 1E 05 04 */	stw r0, 0x504(r30)
/* 8078D918  38 00 00 14 */	li r0, 0x14
/* 8078D91C  B0 1E 05 62 */	sth r0, 0x562(r30)
/* 8078D920  B0 1E 05 60 */	sth r0, 0x560(r30)
/* 8078D924  38 7E 08 F8 */	addi r3, r30, 0x8f8
/* 8078D928  38 80 00 64 */	li r4, 0x64
/* 8078D92C  38 A0 00 00 */	li r5, 0
/* 8078D930  7F C6 F3 78 */	mr r6, r30
/* 8078D934  4B 8F 5F 2D */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 8078D938  38 7E 09 34 */	addi r3, r30, 0x934
/* 8078D93C  3C 80 80 79 */	lis r4, cc_sph_src@ha /* 0x8078DFBC@ha */
/* 8078D940  38 84 DF BC */	addi r4, r4, cc_sph_src@l /* 0x8078DFBC@l */
/* 8078D944  4B 8F 70 F1 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 8078D948  38 1E 08 F8 */	addi r0, r30, 0x8f8
/* 8078D94C  90 1E 09 78 */	stw r0, 0x978(r30)
/* 8078D950  38 00 00 00 */	li r0, 0
/* 8078D954  90 01 00 08 */	stw r0, 8(r1)
/* 8078D958  38 7E 07 20 */	addi r3, r30, 0x720
/* 8078D95C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8078D960  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 8078D964  7F C6 F3 78 */	mr r6, r30
/* 8078D968  38 E0 00 01 */	li r7, 1
/* 8078D96C  39 1E 06 E0 */	addi r8, r30, 0x6e0
/* 8078D970  39 3E 04 F8 */	addi r9, r30, 0x4f8
/* 8078D974  39 40 00 00 */	li r10, 0
/* 8078D978  4B 8E 88 D1 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 8078D97C  38 7E 06 E0 */	addi r3, r30, 0x6e0
/* 8078D980  C0 3F 00 E0 */	lfs f1, 0xe0(r31)
/* 8078D984  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 8078D988  4B 8E 85 D1 */	bl SetWall__12dBgS_AcchCirFff
/* 8078D98C  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 8078D990  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8078D994  38 BE 05 38 */	addi r5, r30, 0x538
/* 8078D998  38 C0 00 03 */	li r6, 3
/* 8078D99C  38 E0 00 01 */	li r7, 1
/* 8078D9A0  4B B3 36 F5 */	bl init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 8078D9A4  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 8078D9A8  3C 80 80 79 */	lis r4, d_a_e_sg__stringBase0@ha /* 0x8078DEAC@ha */
/* 8078D9AC  38 84 DE AC */	addi r4, r4, d_a_e_sg__stringBase0@l /* 0x8078DEAC@l */
/* 8078D9B0  4B B3 41 E1 */	bl setEnemyName__15Z2CreatureEnemyFPCc
/* 8078D9B4  38 1E 05 BC */	addi r0, r30, 0x5bc
/* 8078D9B8  90 1E 0A 74 */	stw r0, 0xa74(r30)
/* 8078D9BC  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 8078D9C0  4B AD 9F 95 */	bl cM_rndF__Ff
/* 8078D9C4  FC 00 08 1E */	fctiwz f0, f1
/* 8078D9C8  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8078D9CC  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8078D9D0  B0 1E 06 6A */	sth r0, 0x66a(r30)
/* 8078D9D4  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 8078D9D8  54 1C 06 3E */	clrlwi r28, r0, 0x18
/* 8078D9DC  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 8078D9E0  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 8078D9E4  C8 3F 01 00 */	lfd f1, 0x100(r31)
/* 8078D9E8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8078D9EC  3C 60 43 30 */	lis r3, 0x4330
/* 8078D9F0  90 61 00 30 */	stw r3, 0x30(r1)
/* 8078D9F4  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 8078D9F8  EC 00 08 28 */	fsubs f0, f0, f1
/* 8078D9FC  EC 02 00 32 */	fmuls f0, f2, f0
/* 8078DA00  D0 1E 06 70 */	stfs f0, 0x670(r30)
/* 8078DA04  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 8078DA08  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 8078DA0C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8078DA10  90 61 00 38 */	stw r3, 0x38(r1)
/* 8078DA14  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 8078DA18  EC 00 08 28 */	fsubs f0, f0, f1
/* 8078DA1C  EC 02 00 32 */	fmuls f0, f2, f0
/* 8078DA20  D0 1E 06 74 */	stfs f0, 0x674(r30)
/* 8078DA24  2C 1C 00 FF */	cmpwi r28, 0xff
/* 8078DA28  40 82 00 08 */	bne lbl_8078DA30
/* 8078DA2C  3B 80 00 0A */	li r28, 0xa
lbl_8078DA30:
/* 8078DA30  2C 1C 00 20 */	cmpwi r28, 0x20
/* 8078DA34  40 80 00 E8 */	bge lbl_8078DB1C
/* 8078DA38  38 61 00 10 */	addi r3, r1, 0x10
/* 8078DA3C  38 80 00 00 */	li r4, 0
/* 8078DA40  38 A0 00 00 */	li r5, 0
/* 8078DA44  38 C0 00 00 */	li r6, 0
/* 8078DA48  4B AD 99 AD */	bl __ct__5csXyzFsss
/* 8078DA4C  3B 40 00 00 */	li r26, 0
/* 8078DA50  48 00 00 B8 */	b lbl_8078DB08
lbl_8078DA54:
/* 8078DA54  38 7A 00 64 */	addi r3, r26, 0x64
/* 8078DA58  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 8078DA5C  54 00 00 2E */	rlwinm r0, r0, 0, 0, 0x17
/* 8078DA60  7C 7B 03 78 */	or r27, r3, r0
/* 8078DA64  C0 3E 06 70 */	lfs f1, 0x670(r30)
/* 8078DA68  4B AD 9F 25 */	bl cM_rndFX__Ff
/* 8078DA6C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8078DA70  EC 00 08 2A */	fadds f0, f0, f1
/* 8078DA74  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 8078DA78  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8078DA7C  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8078DA80  4B AD 9F 0D */	bl cM_rndFX__Ff
/* 8078DA84  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8078DA88  EC 00 08 2A */	fadds f0, f0, f1
/* 8078DA8C  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 8078DA90  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8078DA94  C0 3E 06 70 */	lfs f1, 0x670(r30)
/* 8078DA98  4B AD 9E F5 */	bl cM_rndFX__Ff
/* 8078DA9C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8078DAA0  EC 00 08 2A */	fadds f0, f0, f1
/* 8078DAA4  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 8078DAA8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8078DAAC  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 8078DAB0  4B AD 9E A5 */	bl cM_rndF__Ff
/* 8078DAB4  FC 00 08 1E */	fctiwz f0, f1
/* 8078DAB8  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 8078DABC  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8078DAC0  B0 01 00 12 */	sth r0, 0x12(r1)
/* 8078DAC4  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8078DAC8  7C 07 07 74 */	extsb r7, r0
/* 8078DACC  38 00 00 00 */	li r0, 0
/* 8078DAD0  90 01 00 08 */	stw r0, 8(r1)
/* 8078DAD4  38 60 01 B6 */	li r3, 0x1b6
/* 8078DAD8  28 1E 00 00 */	cmplwi r30, 0
/* 8078DADC  41 82 00 0C */	beq lbl_8078DAE8
/* 8078DAE0  80 9E 00 04 */	lwz r4, 4(r30)
/* 8078DAE4  48 00 00 08 */	b lbl_8078DAEC
lbl_8078DAE8:
/* 8078DAE8  38 80 FF FF */	li r4, -1
lbl_8078DAEC:
/* 8078DAEC  7F 65 DB 78 */	mr r5, r27
/* 8078DAF0  38 C1 00 18 */	addi r6, r1, 0x18
/* 8078DAF4  39 01 00 10 */	addi r8, r1, 0x10
/* 8078DAF8  39 20 00 00 */	li r9, 0
/* 8078DAFC  39 40 FF FF */	li r10, -1
/* 8078DB00  4B 88 C3 F1 */	bl fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 8078DB04  3B 5A 00 01 */	addi r26, r26, 1
lbl_8078DB08:
/* 8078DB08  7C 1A E0 00 */	cmpw r26, r28
/* 8078DB0C  41 80 FF 48 */	blt lbl_8078DA54
/* 8078DB10  38 00 00 00 */	li r0, 0
/* 8078DB14  98 1E 05 B4 */	stb r0, 0x5b4(r30)
/* 8078DB18  48 00 00 24 */	b lbl_8078DB3C
lbl_8078DB1C:
/* 8078DB1C  57 83 06 FE */	clrlwi r3, r28, 0x1b
/* 8078DB20  38 03 00 01 */	addi r0, r3, 1
/* 8078DB24  98 1E 05 B4 */	stb r0, 0x5b4(r30)
/* 8078DB28  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 8078DB2C  4B AD 9E 61 */	bl cM_rndFX__Ff
/* 8078DB30  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8078DB34  EC 00 08 2A */	fadds f0, f0, f1
/* 8078DB38  D0 1E 04 EC */	stfs f0, 0x4ec(r30)
lbl_8078DB3C:
/* 8078DB3C  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 8078DB40  4B AD 9E 4D */	bl cM_rndFX__Ff
/* 8078DB44  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 8078DB48  EC 00 08 2A */	fadds f0, f0, f1
/* 8078DB4C  D0 1E 06 B4 */	stfs f0, 0x6b4(r30)
/* 8078DB50  C0 1F 00 F8 */	lfs f0, 0xf8(r31)
/* 8078DB54  D0 1E 06 B8 */	stfs f0, 0x6b8(r30)
/* 8078DB58  38 00 00 28 */	li r0, 0x28
/* 8078DB5C  98 1E 06 68 */	stb r0, 0x668(r30)
/* 8078DB60  7F C3 F3 78 */	mr r3, r30
/* 8078DB64  4B FF F3 D1 */	bl daE_SG_Execute__FP10e_sg_class
lbl_8078DB68:
/* 8078DB68  7F A3 EB 78 */	mr r3, r29
lbl_8078DB6C:
/* 8078DB6C  39 61 00 60 */	addi r11, r1, 0x60
/* 8078DB70  4B BD 46 AD */	bl _restgpr_26
/* 8078DB74  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8078DB78  7C 08 03 A6 */	mtlr r0
/* 8078DB7C  38 21 00 60 */	addi r1, r1, 0x60
/* 8078DB80  4E 80 00 20 */	blr 
