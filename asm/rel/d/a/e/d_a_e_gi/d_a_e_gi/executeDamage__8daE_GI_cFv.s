lbl_806CF0B8:
/* 806CF0B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806CF0BC  7C 08 02 A6 */	mflr r0
/* 806CF0C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 806CF0C4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806CF0C8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 806CF0CC  7C 7E 1B 78 */	mr r30, r3
/* 806CF0D0  3C 60 80 6D */	lis r3, lit_3907@ha
/* 806CF0D4  3B E3 0E 60 */	addi r31, r3, lit_3907@l
/* 806CF0D8  80 1E 06 74 */	lwz r0, 0x674(r30)
/* 806CF0DC  2C 00 00 0A */	cmpwi r0, 0xa
/* 806CF0E0  41 82 01 78 */	beq lbl_806CF258
/* 806CF0E4  40 80 00 1C */	bge lbl_806CF100
/* 806CF0E8  2C 00 00 02 */	cmpwi r0, 2
/* 806CF0EC  41 82 00 AC */	beq lbl_806CF198
/* 806CF0F0  40 80 03 08 */	bge lbl_806CF3F8
/* 806CF0F4  2C 00 00 00 */	cmpwi r0, 0
/* 806CF0F8  40 80 00 14 */	bge lbl_806CF10C
/* 806CF0FC  48 00 02 FC */	b lbl_806CF3F8
lbl_806CF100:
/* 806CF100  2C 00 00 0C */	cmpwi r0, 0xc
/* 806CF104  40 80 02 F4 */	bge lbl_806CF3F8
/* 806CF108  48 00 02 20 */	b lbl_806CF328
lbl_806CF10C:
/* 806CF10C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007036F@ha */
/* 806CF110  38 03 03 6F */	addi r0, r3, 0x036F /* 0x0007036F@l */
/* 806CF114  90 01 00 0C */	stw r0, 0xc(r1)
/* 806CF118  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 806CF11C  38 81 00 0C */	addi r4, r1, 0xc
/* 806CF120  38 A0 FF FF */	li r5, -1
/* 806CF124  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 806CF128  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806CF12C  7D 89 03 A6 */	mtctr r12
/* 806CF130  4E 80 04 21 */	bctrl 
/* 806CF134  7F C3 F3 78 */	mr r3, r30
/* 806CF138  4B FF F0 4D */	bl setDamageEffect__8daE_GI_cFv
/* 806CF13C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806CF140  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 806CF144  38 00 00 00 */	li r0, 0
/* 806CF148  98 1E 06 A0 */	stb r0, 0x6a0(r30)
/* 806CF14C  80 1E 06 74 */	lwz r0, 0x674(r30)
/* 806CF150  2C 00 00 00 */	cmpwi r0, 0
/* 806CF154  40 82 00 20 */	bne lbl_806CF174
/* 806CF158  7F C3 F3 78 */	mr r3, r30
/* 806CF15C  38 80 00 07 */	li r4, 7
/* 806CF160  38 A0 00 00 */	li r5, 0
/* 806CF164  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 806CF168  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806CF16C  4B FF E6 FD */	bl setBck__8daE_GI_cFiUcff
/* 806CF170  48 00 00 1C */	b lbl_806CF18C
lbl_806CF174:
/* 806CF174  7F C3 F3 78 */	mr r3, r30
/* 806CF178  38 80 00 06 */	li r4, 6
/* 806CF17C  38 A0 00 00 */	li r5, 0
/* 806CF180  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 806CF184  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806CF188  4B FF E6 E1 */	bl setBck__8daE_GI_cFiUcff
lbl_806CF18C:
/* 806CF18C  38 00 00 02 */	li r0, 2
/* 806CF190  90 1E 06 74 */	stw r0, 0x674(r30)
/* 806CF194  48 00 02 64 */	b lbl_806CF3F8
lbl_806CF198:
/* 806CF198  88 1E 06 A5 */	lbz r0, 0x6a5(r30)
/* 806CF19C  28 00 00 00 */	cmplwi r0, 0
/* 806CF1A0  41 82 00 10 */	beq lbl_806CF1B0
/* 806CF1A4  A0 1E 05 8E */	lhz r0, 0x58e(r30)
/* 806CF1A8  60 00 00 80 */	ori r0, r0, 0x80
/* 806CF1AC  B0 1E 05 8E */	sth r0, 0x58e(r30)
lbl_806CF1B0:
/* 806CF1B0  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806CF1B4  38 80 00 01 */	li r4, 1
/* 806CF1B8  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806CF1BC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806CF1C0  40 82 00 18 */	bne lbl_806CF1D8
/* 806CF1C4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806CF1C8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806CF1CC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806CF1D0  41 82 00 08 */	beq lbl_806CF1D8
/* 806CF1D4  38 80 00 00 */	li r4, 0
lbl_806CF1D8:
/* 806CF1D8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806CF1DC  41 82 02 1C */	beq lbl_806CF3F8
/* 806CF1E0  7F C3 F3 78 */	mr r3, r30
/* 806CF1E4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806CF1E8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 806CF1EC  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 806CF1F0  4B 94 B5 F0 */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806CF1F4  3C 60 80 6D */	lis r3, l_HIO@ha
/* 806CF1F8  38 63 11 38 */	addi r3, r3, l_HIO@l
/* 806CF1FC  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 806CF200  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806CF204  40 80 00 40 */	bge lbl_806CF244
/* 806CF208  4B B9 86 64 */	b cM_rnd__Fv
/* 806CF20C  C8 1F 00 10 */	lfd f0, 0x10(r31)
/* 806CF210  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806CF214  40 80 00 30 */	bge lbl_806CF244
/* 806CF218  3C 60 80 6D */	lis r3, s_other_gi__FPvPv@ha
/* 806CF21C  38 63 E2 80 */	addi r3, r3, s_other_gi__FPvPv@l
/* 806CF220  7F C4 F3 78 */	mr r4, r30
/* 806CF224  4B 95 21 14 */	b fpcEx_Search__FPFPvPv_PvPv
/* 806CF228  28 03 00 00 */	cmplwi r3, 0
/* 806CF22C  40 82 00 18 */	bne lbl_806CF244
/* 806CF230  7F C3 F3 78 */	mr r3, r30
/* 806CF234  38 80 00 03 */	li r4, 3
/* 806CF238  38 A0 00 00 */	li r5, 0
/* 806CF23C  4B FF E6 D1 */	bl setActionMode__8daE_GI_cFii
/* 806CF240  48 00 01 B8 */	b lbl_806CF3F8
lbl_806CF244:
/* 806CF244  7F C3 F3 78 */	mr r3, r30
/* 806CF248  38 80 00 02 */	li r4, 2
/* 806CF24C  38 A0 00 00 */	li r5, 0
/* 806CF250  4B FF E6 BD */	bl setActionMode__8daE_GI_cFii
/* 806CF254  48 00 01 A4 */	b lbl_806CF3F8
lbl_806CF258:
/* 806CF258  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070370@ha */
/* 806CF25C  38 03 03 70 */	addi r0, r3, 0x0370 /* 0x00070370@l */
/* 806CF260  90 01 00 08 */	stw r0, 8(r1)
/* 806CF264  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 806CF268  38 81 00 08 */	addi r4, r1, 8
/* 806CF26C  38 A0 FF FF */	li r5, -1
/* 806CF270  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 806CF274  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806CF278  7D 89 03 A6 */	mtctr r12
/* 806CF27C  4E 80 04 21 */	bctrl 
/* 806CF280  80 1E 09 18 */	lwz r0, 0x918(r30)
/* 806CF284  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806CF288  90 1E 09 18 */	stw r0, 0x918(r30)
/* 806CF28C  80 1E 0A 50 */	lwz r0, 0xa50(r30)
/* 806CF290  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806CF294  90 1E 0A 50 */	stw r0, 0xa50(r30)
/* 806CF298  38 7E 09 00 */	addi r3, r30, 0x900
/* 806CF29C  81 9E 09 3C */	lwz r12, 0x93c(r30)
/* 806CF2A0  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 806CF2A4  7D 89 03 A6 */	mtctr r12
/* 806CF2A8  4E 80 04 21 */	bctrl 
/* 806CF2AC  38 7E 0A 38 */	addi r3, r30, 0xa38
/* 806CF2B0  81 9E 0A 74 */	lwz r12, 0xa74(r30)
/* 806CF2B4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 806CF2B8  7D 89 03 A6 */	mtctr r12
/* 806CF2BC  4E 80 04 21 */	bctrl 
/* 806CF2C0  38 7E 08 C4 */	addi r3, r30, 0x8c4
/* 806CF2C4  38 80 00 FF */	li r4, 0xff
/* 806CF2C8  38 A0 00 00 */	li r5, 0
/* 806CF2CC  7F C6 F3 78 */	mr r6, r30
/* 806CF2D0  4B 9B 45 90 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 806CF2D4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806CF2D8  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 806CF2DC  7F C3 F3 78 */	mr r3, r30
/* 806CF2E0  38 80 00 08 */	li r4, 8
/* 806CF2E4  38 A0 00 00 */	li r5, 0
/* 806CF2E8  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 806CF2EC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806CF2F0  4B FF E5 79 */	bl setBck__8daE_GI_cFiUcff
/* 806CF2F4  38 00 00 0B */	li r0, 0xb
/* 806CF2F8  90 1E 06 74 */	stw r0, 0x674(r30)
/* 806CF2FC  3C 60 80 6D */	lis r3, m_cry_gi@ha
/* 806CF300  80 03 11 64 */	lwz r0, m_cry_gi@l(r3)
/* 806CF304  7C 00 F0 40 */	cmplw r0, r30
/* 806CF308  40 82 00 F0 */	bne lbl_806CF3F8
/* 806CF30C  4B AB 23 34 */	b dCam_getBody__Fv
/* 806CF310  7F C4 F3 78 */	mr r4, r30
/* 806CF314  4B AB 22 88 */	b ForceLockOff__9dCamera_cFP10fopAc_ac_c
/* 806CF318  38 00 00 00 */	li r0, 0
/* 806CF31C  3C 60 80 6D */	lis r3, m_cry_gi@ha
/* 806CF320  90 03 11 64 */	stw r0, m_cry_gi@l(r3)
/* 806CF324  48 00 00 D4 */	b lbl_806CF3F8
lbl_806CF328:
/* 806CF328  38 00 00 00 */	li r0, 0
/* 806CF32C  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 806CF330  38 7E 06 64 */	addi r3, r30, 0x664
/* 806CF334  C0 3F 00 C0 */	lfs f1, 0xc0(r31)
/* 806CF338  C0 5F 00 D4 */	lfs f2, 0xd4(r31)
/* 806CF33C  4B BA 14 04 */	b cLib_chaseF__FPfff
/* 806CF340  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806CF344  38 63 00 0C */	addi r3, r3, 0xc
/* 806CF348  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 806CF34C  4B C5 90 E0 */	b checkPass__12J3DFrameCtrlFf
/* 806CF350  2C 03 00 00 */	cmpwi r3, 0
/* 806CF354  41 82 00 0C */	beq lbl_806CF360
/* 806CF358  7F C3 F3 78 */	mr r3, r30
/* 806CF35C  4B FF ED 79 */	bl setDeathSmokeEffect__8daE_GI_cFv
lbl_806CF360:
/* 806CF360  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806CF364  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 806CF368  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 806CF36C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806CF370  4C 41 13 82 */	cror 2, 1, 2
/* 806CF374  40 82 00 14 */	bne lbl_806CF388
/* 806CF378  38 7E 06 60 */	addi r3, r30, 0x660
/* 806CF37C  C0 3F 00 EC */	lfs f1, 0xec(r31)
/* 806CF380  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 806CF384  4B BA 13 BC */	b cLib_chaseF__FPfff
lbl_806CF388:
/* 806CF388  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806CF38C  38 80 00 01 */	li r4, 1
/* 806CF390  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806CF394  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806CF398  40 82 00 18 */	bne lbl_806CF3B0
/* 806CF39C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806CF3A0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806CF3A4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806CF3A8  41 82 00 08 */	beq lbl_806CF3B0
/* 806CF3AC  38 80 00 00 */	li r4, 0
lbl_806CF3B0:
/* 806CF3B0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806CF3B4  41 82 00 44 */	beq lbl_806CF3F8
/* 806CF3B8  88 9E 06 9D */	lbz r4, 0x69d(r30)
/* 806CF3BC  28 04 00 FF */	cmplwi r4, 0xff
/* 806CF3C0  41 82 00 18 */	beq lbl_806CF3D8
/* 806CF3C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806CF3C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806CF3CC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806CF3D0  7C 05 07 74 */	extsb r5, r0
/* 806CF3D4  4B 96 5E 2C */	b onSwitch__10dSv_info_cFii
lbl_806CF3D8:
/* 806CF3D8  7F C3 F3 78 */	mr r3, r30
/* 806CF3DC  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 806CF3E0  38 A0 00 0A */	li r5, 0xa
/* 806CF3E4  38 C0 00 00 */	li r6, 0
/* 806CF3E8  38 E0 00 22 */	li r7, 0x22
/* 806CF3EC  4B 94 D6 EC */	b fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
/* 806CF3F0  7F C3 F3 78 */	mr r3, r30
/* 806CF3F4  4B 94 A8 88 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_806CF3F8:
/* 806CF3F8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806CF3FC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 806CF400  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806CF404  7C 08 03 A6 */	mtlr r0
/* 806CF408  38 21 00 20 */	addi r1, r1, 0x20
/* 806CF40C  4E 80 00 20 */	blr 
