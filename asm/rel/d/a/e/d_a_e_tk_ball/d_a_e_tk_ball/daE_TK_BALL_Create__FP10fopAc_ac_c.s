lbl_807BD1EC:
/* 807BD1EC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807BD1F0  7C 08 02 A6 */	mflr r0
/* 807BD1F4  90 01 00 34 */	stw r0, 0x34(r1)
/* 807BD1F8  39 61 00 30 */	addi r11, r1, 0x30
/* 807BD1FC  4B BA 4F D5 */	bl _savegpr_26
/* 807BD200  7C 7F 1B 78 */	mr r31, r3
/* 807BD204  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 807BD208  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 807BD20C  40 82 01 04 */	bne lbl_807BD310
/* 807BD210  7F E0 FB 79 */	or. r0, r31, r31
/* 807BD214  41 82 00 F0 */	beq lbl_807BD304
/* 807BD218  7C 1E 03 78 */	mr r30, r0
/* 807BD21C  4B 85 B9 49 */	bl __ct__10fopAc_ac_cFv
/* 807BD220  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 807BD224  4B B0 16 21 */	bl __ct__16Z2SoundObjSimpleFv
/* 807BD228  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 807BD22C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 807BD230  90 1E 06 14 */	stw r0, 0x614(r30)
/* 807BD234  38 7E 06 18 */	addi r3, r30, 0x618
/* 807BD238  4B 8C 65 29 */	bl __ct__10dCcD_GSttsFv
/* 807BD23C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 807BD240  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 807BD244  90 7E 06 14 */	stw r3, 0x614(r30)
/* 807BD248  38 03 00 20 */	addi r0, r3, 0x20
/* 807BD24C  90 1E 06 18 */	stw r0, 0x618(r30)
/* 807BD250  3B 5E 06 38 */	addi r26, r30, 0x638
/* 807BD254  7F 43 D3 78 */	mr r3, r26
/* 807BD258  4B 8C 67 D1 */	bl __ct__12dCcD_GObjInfFv
/* 807BD25C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 807BD260  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 807BD264  90 1A 01 20 */	stw r0, 0x120(r26)
/* 807BD268  3C 60 80 7C */	lis r3, __vt__8cM3dGAab@ha /* 0x807BD6B4@ha */
/* 807BD26C  38 03 D6 B4 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x807BD6B4@l */
/* 807BD270  90 1A 01 1C */	stw r0, 0x11c(r26)
/* 807BD274  3C 60 80 7C */	lis r3, __vt__8cM3dGSph@ha /* 0x807BD6A8@ha */
/* 807BD278  38 03 D6 A8 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x807BD6A8@l */
/* 807BD27C  90 1A 01 34 */	stw r0, 0x134(r26)
/* 807BD280  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 807BD284  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 807BD288  90 7A 01 20 */	stw r3, 0x120(r26)
/* 807BD28C  3B A3 00 58 */	addi r29, r3, 0x58
/* 807BD290  93 BA 01 34 */	stw r29, 0x134(r26)
/* 807BD294  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 807BD298  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 807BD29C  90 7A 00 3C */	stw r3, 0x3c(r26)
/* 807BD2A0  3B 83 00 2C */	addi r28, r3, 0x2c
/* 807BD2A4  93 9A 01 20 */	stw r28, 0x120(r26)
/* 807BD2A8  3B 63 00 84 */	addi r27, r3, 0x84
/* 807BD2AC  93 7A 01 34 */	stw r27, 0x134(r26)
/* 807BD2B0  3B 5E 07 70 */	addi r26, r30, 0x770
/* 807BD2B4  7F 43 D3 78 */	mr r3, r26
/* 807BD2B8  4B 8C 67 71 */	bl __ct__12dCcD_GObjInfFv
/* 807BD2BC  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 807BD2C0  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 807BD2C4  90 1A 01 20 */	stw r0, 0x120(r26)
/* 807BD2C8  3C 60 80 7C */	lis r3, __vt__8cM3dGAab@ha /* 0x807BD6B4@ha */
/* 807BD2CC  38 03 D6 B4 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x807BD6B4@l */
/* 807BD2D0  90 1A 01 1C */	stw r0, 0x11c(r26)
/* 807BD2D4  3C 60 80 7C */	lis r3, __vt__8cM3dGSph@ha /* 0x807BD6A8@ha */
/* 807BD2D8  38 03 D6 A8 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x807BD6A8@l */
/* 807BD2DC  90 1A 01 34 */	stw r0, 0x134(r26)
/* 807BD2E0  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 807BD2E4  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 807BD2E8  90 1A 01 20 */	stw r0, 0x120(r26)
/* 807BD2EC  93 BA 01 34 */	stw r29, 0x134(r26)
/* 807BD2F0  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 807BD2F4  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 807BD2F8  90 1A 00 3C */	stw r0, 0x3c(r26)
/* 807BD2FC  93 9A 01 20 */	stw r28, 0x120(r26)
/* 807BD300  93 7A 01 34 */	stw r27, 0x134(r26)
lbl_807BD304:
/* 807BD304  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 807BD308  60 00 00 08 */	ori r0, r0, 8
/* 807BD30C  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_807BD310:
/* 807BD310  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 807BD314  98 1F 05 B4 */	stb r0, 0x5b4(r31)
/* 807BD318  88 1F 05 B4 */	lbz r0, 0x5b4(r31)
/* 807BD31C  28 00 00 FF */	cmplwi r0, 0xff
/* 807BD320  40 82 00 0C */	bne lbl_807BD32C
/* 807BD324  38 00 00 00 */	li r0, 0
/* 807BD328  98 1F 05 B4 */	stb r0, 0x5b4(r31)
lbl_807BD32C:
/* 807BD32C  88 1F 05 B4 */	lbz r0, 0x5b4(r31)
/* 807BD330  28 00 00 00 */	cmplwi r0, 0
/* 807BD334  40 82 00 20 */	bne lbl_807BD354
/* 807BD338  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 807BD33C  3C 80 80 7C */	lis r4, d_a_e_tk_ball__stringBase0@ha /* 0x807BD5C4@ha */
/* 807BD340  38 84 D5 C4 */	addi r4, r4, d_a_e_tk_ball__stringBase0@l /* 0x807BD5C4@l */
/* 807BD344  4B 86 FB 79 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 807BD348  7C 7E 1B 78 */	mr r30, r3
/* 807BD34C  38 A0 08 20 */	li r5, 0x820
/* 807BD350  48 00 00 20 */	b lbl_807BD370
lbl_807BD354:
/* 807BD354  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 807BD358  3C 80 80 7C */	lis r4, d_a_e_tk_ball__stringBase0@ha /* 0x807BD5C4@ha */
/* 807BD35C  38 84 D5 C4 */	addi r4, r4, d_a_e_tk_ball__stringBase0@l /* 0x807BD5C4@l */
/* 807BD360  38 84 00 05 */	addi r4, r4, 5
/* 807BD364  4B 86 FB 59 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 807BD368  7C 7E 1B 78 */	mr r30, r3
/* 807BD36C  38 A0 0E E0 */	li r5, 0xee0
lbl_807BD370:
/* 807BD370  2C 1E 00 04 */	cmpwi r30, 4
/* 807BD374  40 82 01 44 */	bne lbl_807BD4B8
/* 807BD378  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 807BD37C  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 807BD380  98 1F 05 B5 */	stb r0, 0x5b5(r31)
/* 807BD384  88 1F 05 B5 */	lbz r0, 0x5b5(r31)
/* 807BD388  28 00 00 FF */	cmplwi r0, 0xff
/* 807BD38C  40 82 00 0C */	bne lbl_807BD398
/* 807BD390  38 00 00 00 */	li r0, 0
/* 807BD394  98 1F 05 B5 */	stb r0, 0x5b5(r31)
lbl_807BD398:
/* 807BD398  7F E3 FB 78 */	mr r3, r31
/* 807BD39C  3C 80 80 7C */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x807BD13C@ha */
/* 807BD3A0  38 84 D1 3C */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x807BD13C@l */
/* 807BD3A4  4B 85 D1 0D */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 807BD3A8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807BD3AC  40 82 00 0C */	bne lbl_807BD3B8
/* 807BD3B0  38 60 00 05 */	li r3, 5
/* 807BD3B4  48 00 01 08 */	b lbl_807BD4BC
lbl_807BD3B8:
/* 807BD3B8  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 807BD3BC  38 03 00 24 */	addi r0, r3, 0x24
/* 807BD3C0  90 1F 05 04 */	stw r0, 0x504(r31)
/* 807BD3C4  38 7F 05 FC */	addi r3, r31, 0x5fc
/* 807BD3C8  38 80 00 FF */	li r4, 0xff
/* 807BD3CC  38 A0 00 00 */	li r5, 0
/* 807BD3D0  7F E6 FB 78 */	mr r6, r31
/* 807BD3D4  4B 8C 64 8D */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 807BD3D8  38 7F 06 38 */	addi r3, r31, 0x638
/* 807BD3DC  3C 80 80 7C */	lis r4, at_sph_src@ha /* 0x807BD5D8@ha */
/* 807BD3E0  38 84 D5 D8 */	addi r4, r4, at_sph_src@l /* 0x807BD5D8@l */
/* 807BD3E4  4B 8C 76 51 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 807BD3E8  38 1F 05 FC */	addi r0, r31, 0x5fc
/* 807BD3EC  90 1F 06 7C */	stw r0, 0x67c(r31)
/* 807BD3F0  88 1F 05 B4 */	lbz r0, 0x5b4(r31)
/* 807BD3F4  28 00 00 01 */	cmplwi r0, 1
/* 807BD3F8  40 82 00 14 */	bne lbl_807BD40C
/* 807BD3FC  38 00 01 00 */	li r0, 0x100
/* 807BD400  90 1F 06 48 */	stw r0, 0x648(r31)
/* 807BD404  38 00 00 01 */	li r0, 1
/* 807BD408  98 1F 06 AD */	stb r0, 0x6ad(r31)
lbl_807BD40C:
/* 807BD40C  38 7F 07 70 */	addi r3, r31, 0x770
/* 807BD410  3C 80 80 7C */	lis r4, tg_sph_src@ha /* 0x807BD618@ha */
/* 807BD414  38 84 D6 18 */	addi r4, r4, tg_sph_src@l /* 0x807BD618@l */
/* 807BD418  4B 8C 76 1D */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 807BD41C  38 1F 05 FC */	addi r0, r31, 0x5fc
/* 807BD420  90 1F 07 B4 */	stw r0, 0x7b4(r31)
/* 807BD424  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 807BD428  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 807BD42C  38 A0 00 01 */	li r5, 1
/* 807BD430  81 9F 05 CC */	lwz r12, 0x5cc(r31)
/* 807BD434  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807BD438  7D 89 03 A6 */	mtctr r12
/* 807BD43C  4E 80 04 21 */	bctrl 
/* 807BD440  3C 60 80 7C */	lis r3, lit_4117@ha /* 0x807BD5B8@ha */
/* 807BD444  C0 23 D5 B8 */	lfs f1, lit_4117@l(r3)  /* 0x807BD5B8@l */
/* 807BD448  4B AA A5 45 */	bl cM_rndFX__Ff
/* 807BD44C  FC 00 08 1E */	fctiwz f0, f1
/* 807BD450  D8 01 00 08 */	stfd f0, 8(r1)
/* 807BD454  80 01 00 0C */	lwz r0, 0xc(r1)
/* 807BD458  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 807BD45C  3C 60 80 7C */	lis r3, lit_4117@ha /* 0x807BD5B8@ha */
/* 807BD460  C0 23 D5 B8 */	lfs f1, lit_4117@l(r3)  /* 0x807BD5B8@l */
/* 807BD464  4B AA A5 29 */	bl cM_rndFX__Ff
/* 807BD468  FC 00 08 1E */	fctiwz f0, f1
/* 807BD46C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 807BD470  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807BD474  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 807BD478  38 00 00 01 */	li r0, 1
/* 807BD47C  98 1F 08 C8 */	stb r0, 0x8c8(r31)
/* 807BD480  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807BD484  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807BD488  3C 80 80 7C */	lis r4, lit_3710@ha /* 0x807BD56C@ha */
/* 807BD48C  C0 24 D5 6C */	lfs f1, lit_3710@l(r4)  /* 0x807BD56C@l */
/* 807BD490  FC 40 08 90 */	fmr f2, f1
/* 807BD494  FC 60 08 90 */	fmr f3, f1
/* 807BD498  4B B8 94 D1 */	bl PSMTXScale
/* 807BD49C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807BD4A0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807BD4A4  80 9F 05 B8 */	lwz r4, 0x5b8(r31)
/* 807BD4A8  38 84 00 24 */	addi r4, r4, 0x24
/* 807BD4AC  4B B8 90 05 */	bl PSMTXCopy
/* 807BD4B0  7F E3 FB 78 */	mr r3, r31
/* 807BD4B4  4B FF FA D1 */	bl daE_TK_BALL_Execute__FP15e_tk_ball_class
lbl_807BD4B8:
/* 807BD4B8  7F C3 F3 78 */	mr r3, r30
lbl_807BD4BC:
/* 807BD4BC  39 61 00 30 */	addi r11, r1, 0x30
/* 807BD4C0  4B BA 4D 5D */	bl _restgpr_26
/* 807BD4C4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807BD4C8  7C 08 03 A6 */	mtlr r0
/* 807BD4CC  38 21 00 30 */	addi r1, r1, 0x30
/* 807BD4D0  4E 80 00 20 */	blr 
