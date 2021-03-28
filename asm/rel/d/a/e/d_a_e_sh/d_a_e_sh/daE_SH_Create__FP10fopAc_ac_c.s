lbl_807911D8:
/* 807911D8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807911DC  7C 08 02 A6 */	mflr r0
/* 807911E0  90 01 00 34 */	stw r0, 0x34(r1)
/* 807911E4  39 61 00 30 */	addi r11, r1, 0x30
/* 807911E8  4B BD 0F F0 */	b _savegpr_28
/* 807911EC  7C 7E 1B 78 */	mr r30, r3
/* 807911F0  3C 80 80 79 */	lis r4, lit_3902@ha
/* 807911F4  3B E4 1D 70 */	addi r31, r4, lit_3902@l
/* 807911F8  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 807911FC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80791200  40 82 01 08 */	bne lbl_80791308
/* 80791204  7F C0 F3 79 */	or. r0, r30, r30
/* 80791208  41 82 00 F4 */	beq lbl_807912FC
/* 8079120C  7C 1D 03 78 */	mr r29, r0
/* 80791210  4B 88 79 54 */	b __ct__10fopAc_ac_cFv
/* 80791214  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 80791218  4B B2 FD 4C */	b __ct__15Z2CreatureEnemyFv
/* 8079121C  38 7D 06 C8 */	addi r3, r29, 0x6c8
/* 80791220  4B 8E 4C 8C */	b __ct__12dBgS_AcchCirFv
/* 80791224  3B 9D 07 08 */	addi r28, r29, 0x708
/* 80791228  7F 83 E3 78 */	mr r3, r28
/* 8079122C  4B 8E 4E 74 */	b __ct__9dBgS_AcchFv
/* 80791230  3C 60 80 79 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80791234  38 63 20 BC */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80791238  90 7C 00 10 */	stw r3, 0x10(r28)
/* 8079123C  38 03 00 0C */	addi r0, r3, 0xc
/* 80791240  90 1C 00 14 */	stw r0, 0x14(r28)
/* 80791244  38 03 00 18 */	addi r0, r3, 0x18
/* 80791248  90 1C 00 24 */	stw r0, 0x24(r28)
/* 8079124C  38 7C 00 14 */	addi r3, r28, 0x14
/* 80791250  4B 8E 7C 18 */	b SetObj__16dBgS_PolyPassChkFv
/* 80791254  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80791258  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 8079125C  90 1D 08 F8 */	stw r0, 0x8f8(r29)
/* 80791260  38 7D 08 FC */	addi r3, r29, 0x8fc
/* 80791264  4B 8F 24 FC */	b __ct__10dCcD_GSttsFv
/* 80791268  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 8079126C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80791270  90 7D 08 F8 */	stw r3, 0x8f8(r29)
/* 80791274  38 03 00 20 */	addi r0, r3, 0x20
/* 80791278  90 1D 08 FC */	stw r0, 0x8fc(r29)
/* 8079127C  38 7D 09 1C */	addi r3, r29, 0x91c
/* 80791280  3C 80 80 79 */	lis r4, __ct__8dCcD_SphFv@ha
/* 80791284  38 84 16 AC */	addi r4, r4, __ct__8dCcD_SphFv@l
/* 80791288  3C A0 80 79 */	lis r5, __dt__8dCcD_SphFv@ha
/* 8079128C  38 A5 15 E0 */	addi r5, r5, __dt__8dCcD_SphFv@l
/* 80791290  38 C0 01 38 */	li r6, 0x138
/* 80791294  38 E0 00 02 */	li r7, 2
/* 80791298  4B BD 0A C8 */	b __construct_array
/* 8079129C  3B 9D 0B 8C */	addi r28, r29, 0xb8c
/* 807912A0  7F 83 E3 78 */	mr r3, r28
/* 807912A4  4B 8F 27 84 */	b __ct__12dCcD_GObjInfFv
/* 807912A8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 807912AC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 807912B0  90 1C 01 20 */	stw r0, 0x120(r28)
/* 807912B4  3C 60 80 79 */	lis r3, __vt__8cM3dGAab@ha
/* 807912B8  38 03 20 B0 */	addi r0, r3, __vt__8cM3dGAab@l
/* 807912BC  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 807912C0  3C 60 80 79 */	lis r3, __vt__8cM3dGSph@ha
/* 807912C4  38 03 20 A4 */	addi r0, r3, __vt__8cM3dGSph@l
/* 807912C8  90 1C 01 34 */	stw r0, 0x134(r28)
/* 807912CC  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 807912D0  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 807912D4  90 7C 01 20 */	stw r3, 0x120(r28)
/* 807912D8  38 03 00 58 */	addi r0, r3, 0x58
/* 807912DC  90 1C 01 34 */	stw r0, 0x134(r28)
/* 807912E0  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 807912E4  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 807912E8  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 807912EC  38 03 00 2C */	addi r0, r3, 0x2c
/* 807912F0  90 1C 01 20 */	stw r0, 0x120(r28)
/* 807912F4  38 03 00 84 */	addi r0, r3, 0x84
/* 807912F8  90 1C 01 34 */	stw r0, 0x134(r28)
lbl_807912FC:
/* 807912FC  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80791300  60 00 00 08 */	ori r0, r0, 8
/* 80791304  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80791308:
/* 80791308  38 7E 05 AC */	addi r3, r30, 0x5ac
/* 8079130C  3C 80 80 79 */	lis r4, stringBase0@ha
/* 80791310  38 84 1E C0 */	addi r4, r4, stringBase0@l
/* 80791314  4B 89 BB A8 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80791318  7C 7D 1B 78 */	mr r29, r3
/* 8079131C  2C 1D 00 04 */	cmpwi r29, 4
/* 80791320  40 82 02 14 */	bne lbl_80791534
/* 80791324  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80791328  98 1E 05 B4 */	stb r0, 0x5b4(r30)
/* 8079132C  80 7E 00 B0 */	lwz r3, 0xb0(r30)
/* 80791330  54 60 C6 3E */	rlwinm r0, r3, 0x18, 0x18, 0x1f
/* 80791334  54 63 86 3E */	rlwinm r3, r3, 0x10, 0x18, 0x1f
/* 80791338  28 00 00 FF */	cmplwi r0, 0xff
/* 8079133C  40 82 00 10 */	bne lbl_8079134C
/* 80791340  C0 1F 01 38 */	lfs f0, 0x138(r31)
/* 80791344  D0 1E 06 BC */	stfs f0, 0x6bc(r30)
/* 80791348  48 00 00 28 */	b lbl_80791370
lbl_8079134C:
/* 8079134C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80791350  C8 3F 01 48 */	lfd f1, 0x148(r31)
/* 80791354  90 01 00 14 */	stw r0, 0x14(r1)
/* 80791358  3C 00 43 30 */	lis r0, 0x4330
/* 8079135C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80791360  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80791364  EC 00 08 28 */	fsubs f0, f0, f1
/* 80791368  EC 02 00 32 */	fmuls f0, f2, f0
/* 8079136C  D0 1E 06 BC */	stfs f0, 0x6bc(r30)
lbl_80791370:
/* 80791370  28 03 00 FF */	cmplwi r3, 0xff
/* 80791374  40 82 00 10 */	bne lbl_80791384
/* 80791378  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 8079137C  D0 1E 06 B8 */	stfs f0, 0x6b8(r30)
/* 80791380  48 00 00 28 */	b lbl_807913A8
lbl_80791384:
/* 80791384  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80791388  C8 3F 01 48 */	lfd f1, 0x148(r31)
/* 8079138C  90 61 00 14 */	stw r3, 0x14(r1)
/* 80791390  3C 00 43 30 */	lis r0, 0x4330
/* 80791394  90 01 00 10 */	stw r0, 0x10(r1)
/* 80791398  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8079139C  EC 00 08 28 */	fsubs f0, f0, f1
/* 807913A0  EC 02 00 32 */	fmuls f0, f2, f0
/* 807913A4  D0 1E 06 B8 */	stfs f0, 0x6b8(r30)
lbl_807913A8:
/* 807913A8  7F C3 F3 78 */	mr r3, r30
/* 807913AC  3C 80 80 79 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 807913B0  38 84 10 30 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 807913B4  38 A0 29 60 */	li r5, 0x2960
/* 807913B8  4B 88 90 F8 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 807913BC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807913C0  40 82 00 0C */	bne lbl_807913CC
/* 807913C4  38 60 00 05 */	li r3, 5
/* 807913C8  48 00 01 70 */	b lbl_80791538
lbl_807913CC:
/* 807913CC  3C 60 80 79 */	lis r3, data_807920F8@ha
/* 807913D0  8C 03 20 F8 */	lbzu r0, data_807920F8@l(r3)
/* 807913D4  28 00 00 00 */	cmplwi r0, 0
/* 807913D8  40 82 00 20 */	bne lbl_807913F8
/* 807913DC  38 00 00 01 */	li r0, 1
/* 807913E0  98 1E 0D 08 */	stb r0, 0xd08(r30)
/* 807913E4  98 03 00 00 */	stb r0, 0(r3)
/* 807913E8  38 00 FF FF */	li r0, -1
/* 807913EC  3C 60 80 79 */	lis r3, l_HIO@ha
/* 807913F0  38 63 21 08 */	addi r3, r3, l_HIO@l
/* 807913F4  98 03 00 04 */	stb r0, 4(r3)
lbl_807913F8:
/* 807913F8  38 00 00 04 */	li r0, 4
/* 807913FC  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80791400  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 80791404  80 63 00 04 */	lwz r3, 4(r3)
/* 80791408  38 03 00 24 */	addi r0, r3, 0x24
/* 8079140C  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80791410  7F C3 F3 78 */	mr r3, r30
/* 80791414  C0 3F 01 3C */	lfs f1, 0x13c(r31)
/* 80791418  FC 40 08 90 */	fmr f2, f1
/* 8079141C  FC 60 08 90 */	fmr f3, f1
/* 80791420  4B 88 91 08 */	b fopAcM_SetMin__FP10fopAc_ac_cfff
/* 80791424  7F C3 F3 78 */	mr r3, r30
/* 80791428  C0 3F 00 88 */	lfs f1, 0x88(r31)
/* 8079142C  FC 40 08 90 */	fmr f2, f1
/* 80791430  FC 60 08 90 */	fmr f3, f1
/* 80791434  4B 88 91 04 */	b fopAcM_SetMax__FP10fopAc_ac_cfff
/* 80791438  38 00 00 28 */	li r0, 0x28
/* 8079143C  B0 1E 05 62 */	sth r0, 0x562(r30)
/* 80791440  B0 1E 05 60 */	sth r0, 0x560(r30)
/* 80791444  38 7E 08 E0 */	addi r3, r30, 0x8e0
/* 80791448  38 80 00 C8 */	li r4, 0xc8
/* 8079144C  38 A0 00 00 */	li r5, 0
/* 80791450  7F C6 F3 78 */	mr r6, r30
/* 80791454  4B 8F 24 0C */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80791458  38 7E 09 1C */	addi r3, r30, 0x91c
/* 8079145C  3C 80 80 79 */	lis r4, cc_sph_src@ha
/* 80791460  38 84 1F B0 */	addi r4, r4, cc_sph_src@l
/* 80791464  4B 8F 35 D0 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80791468  38 1E 08 E0 */	addi r0, r30, 0x8e0
/* 8079146C  90 1E 09 60 */	stw r0, 0x960(r30)
/* 80791470  38 7E 0A 54 */	addi r3, r30, 0xa54
/* 80791474  3C 80 80 79 */	lis r4, cc_sph_src@ha
/* 80791478  38 84 1F B0 */	addi r4, r4, cc_sph_src@l
/* 8079147C  4B 8F 35 B8 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80791480  38 1E 08 E0 */	addi r0, r30, 0x8e0
/* 80791484  90 1E 0A 98 */	stw r0, 0xa98(r30)
/* 80791488  38 7E 0B 8C */	addi r3, r30, 0xb8c
/* 8079148C  3C 80 80 79 */	lis r4, at_sph_src@ha
/* 80791490  38 84 1F F0 */	addi r4, r4, at_sph_src@l
/* 80791494  4B 8F 35 A0 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80791498  38 1E 08 E0 */	addi r0, r30, 0x8e0
/* 8079149C  90 1E 0B D0 */	stw r0, 0xbd0(r30)
/* 807914A0  38 00 00 00 */	li r0, 0
/* 807914A4  90 01 00 08 */	stw r0, 8(r1)
/* 807914A8  38 7E 07 08 */	addi r3, r30, 0x708
/* 807914AC  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 807914B0  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 807914B4  7F C6 F3 78 */	mr r6, r30
/* 807914B8  38 E0 00 01 */	li r7, 1
/* 807914BC  39 1E 06 C8 */	addi r8, r30, 0x6c8
/* 807914C0  39 3E 04 F8 */	addi r9, r30, 0x4f8
/* 807914C4  39 40 00 00 */	li r10, 0
/* 807914C8  4B 8E 4D 80 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 807914CC  38 7E 06 C8 */	addi r3, r30, 0x6c8
/* 807914D0  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 807914D4  C0 5F 01 40 */	lfs f2, 0x140(r31)
/* 807914D8  4B 8E 4A 80 */	b SetWall__12dBgS_AcchCirFff
/* 807914DC  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 807914E0  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 807914E4  38 BE 05 38 */	addi r5, r30, 0x538
/* 807914E8  38 C0 00 03 */	li r6, 3
/* 807914EC  38 E0 00 01 */	li r7, 1
/* 807914F0  4B B2 FB A4 */	b init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 807914F4  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 807914F8  90 7E 0C CC */	stw r3, 0xccc(r30)
/* 807914FC  38 00 00 22 */	li r0, 0x22
/* 80791500  90 1E 0C DC */	stw r0, 0xcdc(r30)
/* 80791504  38 00 00 04 */	li r0, 4
/* 80791508  98 1E 0C E2 */	stb r0, 0xce2(r30)
/* 8079150C  3C 80 80 79 */	lis r4, stringBase0@ha
/* 80791510  38 84 1E C0 */	addi r4, r4, stringBase0@l
/* 80791514  4B B3 06 7C */	b setEnemyName__15Z2CreatureEnemyFPCc
/* 80791518  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 8079151C  4B AD 64 70 */	b cM_rndFX__Ff
/* 80791520  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80791524  EC 00 08 2A */	fadds f0, f0, f1
/* 80791528  D0 1E 06 94 */	stfs f0, 0x694(r30)
/* 8079152C  7F C3 F3 78 */	mr r3, r30
/* 80791530  4B FF F4 21 */	bl daE_SH_Execute__FP10e_sh_class
lbl_80791534:
/* 80791534  7F A3 EB 78 */	mr r3, r29
lbl_80791538:
/* 80791538  39 61 00 30 */	addi r11, r1, 0x30
/* 8079153C  4B BD 0C E8 */	b _restgpr_28
/* 80791540  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80791544  7C 08 03 A6 */	mtlr r0
/* 80791548  38 21 00 30 */	addi r1, r1, 0x30
/* 8079154C  4E 80 00 20 */	blr 
