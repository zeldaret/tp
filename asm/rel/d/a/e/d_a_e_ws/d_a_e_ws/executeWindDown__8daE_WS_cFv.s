lbl_807E5294:
/* 807E5294  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 807E5298  7C 08 02 A6 */	mflr r0
/* 807E529C  90 01 00 24 */	stw r0, 0x24(r1)
/* 807E52A0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 807E52A4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 807E52A8  7C 7E 1B 78 */	mr r30, r3
/* 807E52AC  3C 60 80 7E */	lis r3, lit_3802@ha
/* 807E52B0  3B E3 73 00 */	addi r31, r3, lit_3802@l
/* 807E52B4  38 00 00 0A */	li r0, 0xa
/* 807E52B8  B0 1E 06 8E */	sth r0, 0x68e(r30)
/* 807E52BC  80 1E 06 80 */	lwz r0, 0x680(r30)
/* 807E52C0  2C 00 00 03 */	cmpwi r0, 3
/* 807E52C4  41 82 02 54 */	beq lbl_807E5518
/* 807E52C8  40 80 00 1C */	bge lbl_807E52E4
/* 807E52CC  2C 00 00 01 */	cmpwi r0, 1
/* 807E52D0  41 82 00 E0 */	beq lbl_807E53B0
/* 807E52D4  40 80 01 4C */	bge lbl_807E5420
/* 807E52D8  2C 00 00 00 */	cmpwi r0, 0
/* 807E52DC  40 80 00 18 */	bge lbl_807E52F4
/* 807E52E0  48 00 03 D8 */	b lbl_807E56B8
lbl_807E52E4:
/* 807E52E4  2C 00 00 05 */	cmpwi r0, 5
/* 807E52E8  41 82 03 50 */	beq lbl_807E5638
/* 807E52EC  40 80 03 CC */	bge lbl_807E56B8
/* 807E52F0  48 00 02 C0 */	b lbl_807E55B0
lbl_807E52F4:
/* 807E52F4  80 1E 08 E8 */	lwz r0, 0x8e8(r30)
/* 807E52F8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 807E52FC  90 1E 08 E8 */	stw r0, 0x8e8(r30)
/* 807E5300  80 1E 09 00 */	lwz r0, 0x900(r30)
/* 807E5304  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 807E5308  90 1E 09 00 */	stw r0, 0x900(r30)
/* 807E530C  80 1E 0A 38 */	lwz r0, 0xa38(r30)
/* 807E5310  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 807E5314  90 1E 0A 38 */	stw r0, 0xa38(r30)
/* 807E5318  38 7E 06 94 */	addi r3, r30, 0x694
/* 807E531C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807E5320  C0 5F 00 C0 */	lfs f2, 0xc0(r31)
/* 807E5324  4B 89 0C 34 */	b SetWall__12dBgS_AcchCirFff
/* 807E5328  38 00 00 01 */	li r0, 1
/* 807E532C  90 1E 06 80 */	stw r0, 0x680(r30)
/* 807E5330  7F C3 F3 78 */	mr r3, r30
/* 807E5334  38 80 00 07 */	li r4, 7
/* 807E5338  38 A0 00 02 */	li r5, 2
/* 807E533C  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 807E5340  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807E5344  4B FF E8 DD */	bl setBck__8daE_WS_cFiUcff
/* 807E5348  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070149@ha */
/* 807E534C  38 03 01 49 */	addi r0, r3, 0x0149 /* 0x00070149@l */
/* 807E5350  90 01 00 14 */	stw r0, 0x14(r1)
/* 807E5354  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 807E5358  38 81 00 14 */	addi r4, r1, 0x14
/* 807E535C  38 A0 FF FF */	li r5, -1
/* 807E5360  81 9E 05 B8 */	lwz r12, 0x5b8(r30)
/* 807E5364  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807E5368  7D 89 03 A6 */	mtctr r12
/* 807E536C  4E 80 04 21 */	bctrl 
/* 807E5370  38 00 00 05 */	li r0, 5
/* 807E5374  98 1E 06 8C */	stb r0, 0x68c(r30)
/* 807E5378  38 7E 06 D4 */	addi r3, r30, 0x6d4
/* 807E537C  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 807E5380  4B 89 1D 94 */	b SetGroundUpY__9dBgS_AcchFf
/* 807E5384  38 00 00 00 */	li r0, 0
/* 807E5388  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 807E538C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807E5390  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 807E5394  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 807E5398  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 807E539C  A8 1E 06 6A */	lha r0, 0x66a(r30)
/* 807E53A0  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 807E53A4  38 00 F8 00 */	li r0, -2048
/* 807E53A8  B0 1E 06 8A */	sth r0, 0x68a(r30)
/* 807E53AC  48 00 03 0C */	b lbl_807E56B8
lbl_807E53B0:
/* 807E53B0  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 807E53B4  A8 1E 06 8A */	lha r0, 0x68a(r30)
/* 807E53B8  7C 03 02 14 */	add r0, r3, r0
/* 807E53BC  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 807E53C0  38 7E 06 70 */	addi r3, r30, 0x670
/* 807E53C4  38 80 00 00 */	li r4, 0
/* 807E53C8  38 A0 04 00 */	li r5, 0x400
/* 807E53CC  4B A8 B7 C4 */	b cLib_chaseAngleS__FPsss
/* 807E53D0  38 7E 06 6E */	addi r3, r30, 0x66e
/* 807E53D4  38 80 00 00 */	li r4, 0
/* 807E53D8  38 A0 04 00 */	li r5, 0x400
/* 807E53DC  4B A8 B7 B4 */	b cLib_chaseAngleS__FPsss
/* 807E53E0  A8 7E 04 E4 */	lha r3, 0x4e4(r30)
/* 807E53E4  38 03 08 00 */	addi r0, r3, 0x800
/* 807E53E8  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 807E53EC  A8 7E 04 E8 */	lha r3, 0x4e8(r30)
/* 807E53F0  38 03 08 00 */	addi r0, r3, 0x800
/* 807E53F4  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 807E53F8  C0 1F 00 DC */	lfs f0, 0xdc(r31)
/* 807E53FC  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 807E5400  88 1E 06 8C */	lbz r0, 0x68c(r30)
/* 807E5404  28 00 00 00 */	cmplwi r0, 0
/* 807E5408  40 82 02 B0 */	bne lbl_807E56B8
/* 807E540C  38 00 00 02 */	li r0, 2
/* 807E5410  90 1E 06 80 */	stw r0, 0x680(r30)
/* 807E5414  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 807E5418  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 807E541C  48 00 02 9C */	b lbl_807E56B8
lbl_807E5420:
/* 807E5420  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 807E5424  A8 1E 06 8A */	lha r0, 0x68a(r30)
/* 807E5428  7C 03 02 14 */	add r0, r3, r0
/* 807E542C  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 807E5430  38 7E 06 70 */	addi r3, r30, 0x670
/* 807E5434  38 80 00 00 */	li r4, 0
/* 807E5438  38 A0 04 00 */	li r5, 0x400
/* 807E543C  4B A8 B7 54 */	b cLib_chaseAngleS__FPsss
/* 807E5440  38 7E 06 6E */	addi r3, r30, 0x66e
/* 807E5444  38 80 00 00 */	li r4, 0
/* 807E5448  38 A0 04 00 */	li r5, 0x400
/* 807E544C  4B A8 B7 44 */	b cLib_chaseAngleS__FPsss
/* 807E5450  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 807E5454  38 80 80 00 */	li r4, -32768
/* 807E5458  38 A0 04 00 */	li r5, 0x400
/* 807E545C  4B A8 B7 34 */	b cLib_chaseAngleS__FPsss
/* 807E5460  38 7E 04 E8 */	addi r3, r30, 0x4e8
/* 807E5464  38 80 00 00 */	li r4, 0
/* 807E5468  38 A0 04 00 */	li r5, 0x400
/* 807E546C  4B A8 B7 24 */	b cLib_chaseAngleS__FPsss
/* 807E5470  80 1E 07 00 */	lwz r0, 0x700(r30)
/* 807E5474  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 807E5478  41 82 02 40 */	beq lbl_807E56B8
/* 807E547C  C0 3F 00 CC */	lfs f1, 0xcc(r31)
/* 807E5480  4B A8 24 D4 */	b cM_rndF__Ff
/* 807E5484  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 807E5488  EC 00 08 2A */	fadds f0, f0, f1
/* 807E548C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 807E5490  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 807E5494  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 807E5498  38 00 00 03 */	li r0, 3
/* 807E549C  90 1E 06 80 */	stw r0, 0x680(r30)
/* 807E54A0  38 00 00 1E */	li r0, 0x1e
/* 807E54A4  98 1E 06 8C */	stb r0, 0x68c(r30)
/* 807E54A8  7F C3 F3 78 */	mr r3, r30
/* 807E54AC  38 80 00 06 */	li r4, 6
/* 807E54B0  38 A0 00 00 */	li r5, 0
/* 807E54B4  C0 3F 00 C4 */	lfs f1, 0xc4(r31)
/* 807E54B8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807E54BC  4B FF E7 65 */	bl setBck__8daE_WS_cFiUcff
/* 807E54C0  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007014A@ha */
/* 807E54C4  38 03 01 4A */	addi r0, r3, 0x014A /* 0x0007014A@l */
/* 807E54C8  90 01 00 10 */	stw r0, 0x10(r1)
/* 807E54CC  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 807E54D0  38 81 00 10 */	addi r4, r1, 0x10
/* 807E54D4  38 A0 FF FF */	li r5, -1
/* 807E54D8  81 9E 05 B8 */	lwz r12, 0x5b8(r30)
/* 807E54DC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807E54E0  7D 89 03 A6 */	mtctr r12
/* 807E54E4  4E 80 04 21 */	bctrl 
/* 807E54E8  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002B@ha */
/* 807E54EC  38 03 00 2B */	addi r0, r3, 0x002B /* 0x0006002B@l */
/* 807E54F0  90 01 00 0C */	stw r0, 0xc(r1)
/* 807E54F4  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 807E54F8  38 81 00 0C */	addi r4, r1, 0xc
/* 807E54FC  38 A0 00 00 */	li r5, 0
/* 807E5500  38 C0 FF FF */	li r6, -1
/* 807E5504  81 9E 05 B8 */	lwz r12, 0x5b8(r30)
/* 807E5508  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807E550C  7D 89 03 A6 */	mtctr r12
/* 807E5510  4E 80 04 21 */	bctrl 
/* 807E5514  48 00 01 A4 */	b lbl_807E56B8
lbl_807E5518:
/* 807E5518  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 807E551C  A8 1E 06 8A */	lha r0, 0x68a(r30)
/* 807E5520  7C 03 02 14 */	add r0, r3, r0
/* 807E5524  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 807E5528  38 7E 06 8A */	addi r3, r30, 0x68a
/* 807E552C  38 80 00 00 */	li r4, 0
/* 807E5530  38 A0 00 80 */	li r5, 0x80
/* 807E5534  4B A8 B6 5C */	b cLib_chaseAngleS__FPsss
/* 807E5538  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 807E553C  38 80 80 00 */	li r4, -32768
/* 807E5540  38 A0 04 00 */	li r5, 0x400
/* 807E5544  4B A8 B6 4C */	b cLib_chaseAngleS__FPsss
/* 807E5548  38 7E 04 E8 */	addi r3, r30, 0x4e8
/* 807E554C  38 80 00 00 */	li r4, 0
/* 807E5550  38 A0 04 00 */	li r5, 0x400
/* 807E5554  4B A8 B6 3C */	b cLib_chaseAngleS__FPsss
/* 807E5558  80 1E 07 00 */	lwz r0, 0x700(r30)
/* 807E555C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 807E5560  41 82 01 58 */	beq lbl_807E56B8
/* 807E5564  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002B@ha */
/* 807E5568  38 03 00 2B */	addi r0, r3, 0x002B /* 0x0006002B@l */
/* 807E556C  90 01 00 08 */	stw r0, 8(r1)
/* 807E5570  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 807E5574  38 81 00 08 */	addi r4, r1, 8
/* 807E5578  38 A0 00 00 */	li r5, 0
/* 807E557C  38 C0 FF FF */	li r6, -1
/* 807E5580  81 9E 05 B8 */	lwz r12, 0x5b8(r30)
/* 807E5584  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807E5588  7D 89 03 A6 */	mtctr r12
/* 807E558C  4E 80 04 21 */	bctrl 
/* 807E5590  38 00 80 00 */	li r0, -32768
/* 807E5594  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 807E5598  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807E559C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 807E55A0  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 807E55A4  38 00 00 04 */	li r0, 4
/* 807E55A8  90 1E 06 80 */	stw r0, 0x680(r30)
/* 807E55AC  48 00 01 0C */	b lbl_807E56B8
lbl_807E55B0:
/* 807E55B0  38 7E 06 74 */	addi r3, r30, 0x674
/* 807E55B4  C0 3F 00 D4 */	lfs f1, 0xd4(r31)
/* 807E55B8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807E55BC  C0 7F 00 D8 */	lfs f3, 0xd8(r31)
/* 807E55C0  4B A8 A4 7C */	b cLib_addCalc2__FPffff
/* 807E55C4  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 807E55C8  A8 1E 06 8A */	lha r0, 0x68a(r30)
/* 807E55CC  7C 03 02 14 */	add r0, r3, r0
/* 807E55D0  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 807E55D4  38 7E 06 8A */	addi r3, r30, 0x68a
/* 807E55D8  38 80 00 00 */	li r4, 0
/* 807E55DC  38 A0 00 80 */	li r5, 0x80
/* 807E55E0  4B A8 B5 B0 */	b cLib_chaseAngleS__FPsss
/* 807E55E4  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 807E55E8  A8 1E 06 8A */	lha r0, 0x68a(r30)
/* 807E55EC  7C 03 02 14 */	add r0, r3, r0
/* 807E55F0  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 807E55F4  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807E55F8  38 80 00 01 */	li r4, 1
/* 807E55FC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807E5600  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807E5604  40 82 00 18 */	bne lbl_807E561C
/* 807E5608  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807E560C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807E5610  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807E5614  41 82 00 08 */	beq lbl_807E561C
/* 807E5618  38 80 00 00 */	li r4, 0
lbl_807E561C:
/* 807E561C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807E5620  41 82 00 98 */	beq lbl_807E56B8
/* 807E5624  38 00 00 0F */	li r0, 0xf
/* 807E5628  98 1E 06 8C */	stb r0, 0x68c(r30)
/* 807E562C  38 00 00 05 */	li r0, 5
/* 807E5630  90 1E 06 80 */	stw r0, 0x680(r30)
/* 807E5634  48 00 00 84 */	b lbl_807E56B8
lbl_807E5638:
/* 807E5638  38 7E 06 74 */	addi r3, r30, 0x674
/* 807E563C  C0 3F 00 D4 */	lfs f1, 0xd4(r31)
/* 807E5640  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807E5644  C0 7F 00 D8 */	lfs f3, 0xd8(r31)
/* 807E5648  4B A8 A3 F4 */	b cLib_addCalc2__FPffff
/* 807E564C  88 1E 06 8C */	lbz r0, 0x68c(r30)
/* 807E5650  28 00 00 00 */	cmplwi r0, 0
/* 807E5654  40 82 00 64 */	bne lbl_807E56B8
/* 807E5658  7F C3 F3 78 */	mr r3, r30
/* 807E565C  4B 83 46 20 */	b fopAcM_delete__FP10fopAc_ac_c
/* 807E5660  7F C3 F3 78 */	mr r3, r30
/* 807E5664  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 807E5668  38 A0 00 07 */	li r5, 7
/* 807E566C  38 C0 00 00 */	li r6, 0
/* 807E5670  38 E0 00 07 */	li r7, 7
/* 807E5674  4B 83 74 64 */	b fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
/* 807E5678  88 9E 06 92 */	lbz r4, 0x692(r30)
/* 807E567C  28 04 00 FF */	cmplwi r4, 0xff
/* 807E5680  41 82 00 38 */	beq lbl_807E56B8
/* 807E5684  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807E5688  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807E568C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 807E5690  7C 05 07 74 */	extsb r5, r0
/* 807E5694  4B 84 FC CC */	b isSwitch__10dSv_info_cCFii
/* 807E5698  2C 03 00 00 */	cmpwi r3, 0
/* 807E569C  40 82 00 1C */	bne lbl_807E56B8
/* 807E56A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807E56A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807E56A8  88 9E 06 92 */	lbz r4, 0x692(r30)
/* 807E56AC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 807E56B0  7C 05 07 74 */	extsb r5, r0
/* 807E56B4  4B 84 FB 4C */	b onSwitch__10dSv_info_cFii
lbl_807E56B8:
/* 807E56B8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 807E56BC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 807E56C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807E56C4  7C 08 03 A6 */	mtlr r0
/* 807E56C8  38 21 00 20 */	addi r1, r1, 0x20
/* 807E56CC  4E 80 00 20 */	blr 
