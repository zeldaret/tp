lbl_805C50F0:
/* 805C50F0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805C50F4  7C 08 02 A6 */	mflr r0
/* 805C50F8  90 01 00 34 */	stw r0, 0x34(r1)
/* 805C50FC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 805C5100  93 C1 00 28 */	stw r30, 0x28(r1)
/* 805C5104  7C 7E 1B 78 */	mr r30, r3
/* 805C5108  3C 60 80 5C */	lis r3, lit_3800@ha /* 0x805C6C74@ha */
/* 805C510C  3B E3 6C 74 */	addi r31, r3, lit_3800@l /* 0x805C6C74@l */
/* 805C5110  88 7E 07 D5 */	lbz r3, 0x7d5(r30)
/* 805C5114  28 03 00 00 */	cmplwi r3, 0
/* 805C5118  41 82 00 A0 */	beq lbl_805C51B8
/* 805C511C  28 03 00 0A */	cmplwi r3, 0xa
/* 805C5120  40 81 00 14 */	ble lbl_805C5134
/* 805C5124  38 03 FF F6 */	addi r0, r3, -10
/* 805C5128  98 1E 07 D5 */	stb r0, 0x7d5(r30)
/* 805C512C  38 60 00 01 */	li r3, 1
/* 805C5130  48 00 04 40 */	b lbl_805C5570
lbl_805C5134:
/* 805C5134  28 03 00 02 */	cmplwi r3, 2
/* 805C5138  40 82 00 40 */	bne lbl_805C5178
/* 805C513C  38 60 00 02 */	li r3, 2
/* 805C5140  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 805C5144  7C 04 07 74 */	extsb r4, r0
/* 805C5148  38 A1 00 1C */	addi r5, r1, 0x1c
/* 805C514C  38 C1 00 14 */	addi r6, r1, 0x14
/* 805C5150  4B B9 06 25 */	bl daNpcF_getPlayerInfoFromPlayerList__FiiR4cXyzR5csXyz
/* 805C5154  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 805C5158  7C 06 07 74 */	extsb r6, r0
/* 805C515C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805C5160  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805C5164  38 63 0D B4 */	addi r3, r3, 0xdb4
/* 805C5168  38 81 00 1C */	addi r4, r1, 0x1c
/* 805C516C  A8 A1 00 16 */	lha r5, 0x16(r1)
/* 805C5170  4B A6 FE 11 */	bl setRoom__13dSv_restart_cFRC4cXyzsSc
/* 805C5174  48 00 00 3C */	b lbl_805C51B0
lbl_805C5178:
/* 805C5178  38 60 00 00 */	li r3, 0
/* 805C517C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 805C5180  7C 04 07 74 */	extsb r4, r0
/* 805C5184  38 A1 00 1C */	addi r5, r1, 0x1c
/* 805C5188  38 C1 00 14 */	addi r6, r1, 0x14
/* 805C518C  4B B9 05 E9 */	bl daNpcF_getPlayerInfoFromPlayerList__FiiR4cXyzR5csXyz
/* 805C5190  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 805C5194  7C 06 07 74 */	extsb r6, r0
/* 805C5198  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805C519C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805C51A0  38 63 0D B4 */	addi r3, r3, 0xdb4
/* 805C51A4  38 81 00 1C */	addi r4, r1, 0x1c
/* 805C51A8  A8 A1 00 16 */	lha r5, 0x16(r1)
/* 805C51AC  4B A6 FD D5 */	bl setRoom__13dSv_restart_cFRC4cXyzsSc
lbl_805C51B0:
/* 805C51B0  38 00 00 00 */	li r0, 0
/* 805C51B4  98 1E 07 D5 */	stb r0, 0x7d5(r30)
lbl_805C51B8:
/* 805C51B8  88 1E 07 EA */	lbz r0, 0x7ea(r30)
/* 805C51BC  28 00 00 FF */	cmplwi r0, 0xff
/* 805C51C0  40 82 01 1C */	bne lbl_805C52DC
/* 805C51C4  80 1E 04 A4 */	lwz r0, 0x4a4(r30)
/* 805C51C8  28 00 00 00 */	cmplwi r0, 0
/* 805C51CC  41 82 00 FC */	beq lbl_805C52C8
/* 805C51D0  A8 1E 05 62 */	lha r0, 0x562(r30)
/* 805C51D4  2C 00 00 01 */	cmpwi r0, 1
/* 805C51D8  40 81 00 F0 */	ble lbl_805C52C8
/* 805C51DC  38 7E 07 C0 */	addi r3, r30, 0x7c0
/* 805C51E0  48 00 19 FD */	bl func_805C6BDC
/* 805C51E4  2C 03 00 00 */	cmpwi r3, 0
/* 805C51E8  40 82 00 E0 */	bne lbl_805C52C8
/* 805C51EC  80 7E 04 A4 */	lwz r3, 0x4a4(r30)
/* 805C51F0  38 81 00 10 */	addi r4, r1, 0x10
/* 805C51F4  4B A5 47 C9 */	bl fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 805C51F8  2C 03 00 00 */	cmpwi r3, 0
/* 805C51FC  41 82 00 58 */	beq lbl_805C5254
/* 805C5200  80 61 00 10 */	lwz r3, 0x10(r1)
/* 805C5204  28 03 00 00 */	cmplwi r3, 0
/* 805C5208  41 82 00 4C */	beq lbl_805C5254
/* 805C520C  88 03 04 99 */	lbz r0, 0x499(r3)
/* 805C5210  2C 00 00 01 */	cmpwi r0, 1
/* 805C5214  41 82 00 40 */	beq lbl_805C5254
/* 805C5218  38 60 00 14 */	li r3, 0x14
/* 805C521C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 805C5220  7C 04 07 74 */	extsb r4, r0
/* 805C5224  4B A6 88 0D */	bl dComIfGs_isZoneSwitch__Fii
/* 805C5228  2C 03 00 00 */	cmpwi r3, 0
/* 805C522C  41 82 00 9C */	beq lbl_805C52C8
/* 805C5230  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805C5234  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805C5238  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 805C523C  7F C4 F3 78 */	mr r4, r30
/* 805C5240  3C A0 80 5C */	lis r5, DemoSkipCallBack__8daB_DR_cFPvi@ha /* 0x805C50BC@ha */
/* 805C5244  38 A5 50 BC */	addi r5, r5, DemoSkipCallBack__8daB_DR_cFPvi@l /* 0x805C50BC@l */
/* 805C5248  38 C0 00 00 */	li r6, 0
/* 805C524C  4B A7 D6 C9 */	bl setSkipProc__14dEvt_control_cFPvPFPvi_ii
/* 805C5250  48 00 00 78 */	b lbl_805C52C8
lbl_805C5254:
/* 805C5254  38 60 00 00 */	li r3, 0
/* 805C5258  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 805C525C  7C 04 07 74 */	extsb r4, r0
/* 805C5260  4B A6 87 D1 */	bl dComIfGs_isZoneSwitch__Fii
/* 805C5264  2C 03 00 00 */	cmpwi r3, 0
/* 805C5268  40 82 00 60 */	bne lbl_805C52C8
/* 805C526C  38 7E 07 C0 */	addi r3, r30, 0x7c0
/* 805C5270  48 00 19 6D */	bl func_805C6BDC
/* 805C5274  2C 03 00 00 */	cmpwi r3, 0
/* 805C5278  40 82 00 50 */	bne lbl_805C52C8
/* 805C527C  38 60 00 00 */	li r3, 0
/* 805C5280  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 805C5284  7C 04 07 74 */	extsb r4, r0
/* 805C5288  4B A6 86 C5 */	bl dComIfGs_onZoneSwitch__Fii
/* 805C528C  38 60 00 14 */	li r3, 0x14
/* 805C5290  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 805C5294  7C 04 07 74 */	extsb r4, r0
/* 805C5298  4B A6 86 B5 */	bl dComIfGs_onZoneSwitch__Fii
/* 805C529C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 805C52A0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 805C52A4  80 63 00 00 */	lwz r3, 0(r3)
/* 805C52A8  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 805C52AC  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100008F@ha */
/* 805C52B0  38 84 00 8F */	addi r4, r4, 0x008F /* 0x0100008F@l */
/* 805C52B4  38 A0 00 00 */	li r5, 0
/* 805C52B8  38 C0 00 00 */	li r6, 0
/* 805C52BC  4B CE 9D 55 */	bl bgmStart__8Z2SeqMgrFUlUll
/* 805C52C0  38 00 00 00 */	li r0, 0
/* 805C52C4  98 1E 07 EA */	stb r0, 0x7ea(r30)
lbl_805C52C8:
/* 805C52C8  88 1E 07 EA */	lbz r0, 0x7ea(r30)
/* 805C52CC  28 00 00 FF */	cmplwi r0, 0xff
/* 805C52D0  40 82 00 0C */	bne lbl_805C52DC
/* 805C52D4  38 60 00 01 */	li r3, 1
/* 805C52D8  48 00 02 98 */	b lbl_805C5570
lbl_805C52DC:
/* 805C52DC  88 1E 07 EA */	lbz r0, 0x7ea(r30)
/* 805C52E0  28 00 00 FE */	cmplwi r0, 0xfe
/* 805C52E4  40 82 02 18 */	bne lbl_805C54FC
/* 805C52E8  38 7E 07 C0 */	addi r3, r30, 0x7c0
/* 805C52EC  48 00 18 F1 */	bl func_805C6BDC
/* 805C52F0  2C 03 00 00 */	cmpwi r3, 0
/* 805C52F4  40 82 02 08 */	bne lbl_805C54FC
/* 805C52F8  80 1E 04 A4 */	lwz r0, 0x4a4(r30)
/* 805C52FC  28 00 00 00 */	cmplwi r0, 0
/* 805C5300  41 82 01 F4 */	beq lbl_805C54F4
/* 805C5304  38 00 00 00 */	li r0, 0
/* 805C5308  90 01 00 0C */	stw r0, 0xc(r1)
/* 805C530C  80 7E 04 A4 */	lwz r3, 0x4a4(r30)
/* 805C5310  38 81 00 0C */	addi r4, r1, 0xc
/* 805C5314  4B A5 46 A9 */	bl fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 805C5318  2C 03 00 00 */	cmpwi r3, 0
/* 805C531C  40 82 00 94 */	bne lbl_805C53B0
/* 805C5320  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805C5324  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805C5328  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 805C532C  28 00 00 00 */	cmplwi r0, 0
/* 805C5330  40 82 01 C4 */	bne lbl_805C54F4
/* 805C5334  38 00 00 01 */	li r0, 1
/* 805C5338  98 1E 07 EA */	stb r0, 0x7ea(r30)
/* 805C533C  38 00 00 02 */	li r0, 2
/* 805C5340  98 1E 07 D1 */	stb r0, 0x7d1(r30)
/* 805C5344  38 00 00 00 */	li r0, 0
/* 805C5348  90 1E 04 A4 */	stw r0, 0x4a4(r30)
/* 805C534C  38 00 00 03 */	li r0, 3
/* 805C5350  98 1E 07 D2 */	stb r0, 0x7d2(r30)
/* 805C5354  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 805C5358  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 805C535C  EC 01 00 2A */	fadds f0, f1, f0
/* 805C5360  D0 1E 07 20 */	stfs f0, 0x720(r30)
/* 805C5364  7F C3 F3 78 */	mr r3, r30
/* 805C5368  38 80 00 41 */	li r4, 0x41
/* 805C536C  38 A0 00 00 */	li r5, 0
/* 805C5370  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 805C5374  C0 5F 00 34 */	lfs f2, 0x34(r31)
/* 805C5378  4B FF 60 91 */	bl setBck__8daB_DR_cFiUcff
/* 805C537C  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 805C5380  D0 1E 07 6C */	stfs f0, 0x76c(r30)
/* 805C5384  D0 1E 07 70 */	stfs f0, 0x770(r30)
/* 805C5388  D0 1E 07 74 */	stfs f0, 0x774(r30)
/* 805C538C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 805C5390  D0 1E 07 24 */	stfs f0, 0x724(r30)
/* 805C5394  38 00 00 64 */	li r0, 0x64
/* 805C5398  90 1E 07 0C */	stw r0, 0x70c(r30)
/* 805C539C  38 60 00 02 */	li r3, 2
/* 805C53A0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 805C53A4  7C 04 07 74 */	extsb r4, r0
/* 805C53A8  4B A6 85 A5 */	bl dComIfGs_onZoneSwitch__Fii
/* 805C53AC  48 00 01 48 */	b lbl_805C54F4
lbl_805C53B0:
/* 805C53B0  80 61 00 0C */	lwz r3, 0xc(r1)
/* 805C53B4  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 805C53B8  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 805C53BC  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 805C53C0  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 805C53C4  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 805C53C8  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 805C53CC  80 61 00 0C */	lwz r3, 0xc(r1)
/* 805C53D0  A8 03 04 DC */	lha r0, 0x4dc(r3)
/* 805C53D4  B0 1E 04 DC */	sth r0, 0x4dc(r30)
/* 805C53D8  A8 03 04 DE */	lha r0, 0x4de(r3)
/* 805C53DC  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 805C53E0  A8 03 04 E0 */	lha r0, 0x4e0(r3)
/* 805C53E4  B0 1E 04 E0 */	sth r0, 0x4e0(r30)
/* 805C53E8  80 61 00 0C */	lwz r3, 0xc(r1)
/* 805C53EC  A8 03 04 E4 */	lha r0, 0x4e4(r3)
/* 805C53F0  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 805C53F4  A8 03 04 E6 */	lha r0, 0x4e6(r3)
/* 805C53F8  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 805C53FC  A8 03 04 E8 */	lha r0, 0x4e8(r3)
/* 805C5400  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 805C5404  80 61 00 0C */	lwz r3, 0xc(r1)
/* 805C5408  88 03 04 99 */	lbz r0, 0x499(r3)
/* 805C540C  2C 00 00 01 */	cmpwi r0, 1
/* 805C5410  40 82 00 E4 */	bne lbl_805C54F4
/* 805C5414  80 1E 07 E0 */	lwz r0, 0x7e0(r30)
/* 805C5418  2C 00 00 36 */	cmpwi r0, 0x36
/* 805C541C  40 80 00 D8 */	bge lbl_805C54F4
/* 805C5420  80 1E 07 10 */	lwz r0, 0x710(r30)
/* 805C5424  2C 00 00 17 */	cmpwi r0, 0x17
/* 805C5428  41 82 00 5C */	beq lbl_805C5484
/* 805C542C  7F C3 F3 78 */	mr r3, r30
/* 805C5430  38 80 00 17 */	li r4, 0x17
/* 805C5434  38 A0 00 00 */	li r5, 0
/* 805C5438  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 805C543C  C0 5F 00 34 */	lfs f2, 0x34(r31)
/* 805C5440  4B FF 5F C9 */	bl setBck__8daB_DR_cFiUcff
/* 805C5444  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 805C5448  38 00 00 6F */	li r0, 0x6f
/* 805C544C  B0 03 00 12 */	sth r0, 0x12(r3)
/* 805C5450  C0 1F 05 B0 */	lfs f0, 0x5b0(r31)
/* 805C5454  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 805C5458  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704E0@ha */
/* 805C545C  38 03 04 E0 */	addi r0, r3, 0x04E0 /* 0x000704E0@l */
/* 805C5460  90 01 00 08 */	stw r0, 8(r1)
/* 805C5464  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 805C5468  38 81 00 08 */	addi r4, r1, 8
/* 805C546C  38 A0 00 00 */	li r5, 0
/* 805C5470  38 C0 FF FF */	li r6, -1
/* 805C5474  81 9E 05 C0 */	lwz r12, 0x5c0(r30)
/* 805C5478  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805C547C  7D 89 03 A6 */	mtctr r12
/* 805C5480  4E 80 04 21 */	bctrl 
lbl_805C5484:
/* 805C5484  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 805C5488  7C 03 07 74 */	extsb r3, r0
/* 805C548C  4B A6 7B E1 */	bl dComIfGp_getReverb__Fi
/* 805C5490  7C 65 1B 78 */	mr r5, r3
/* 805C5494  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 805C5498  38 80 00 00 */	li r4, 0
/* 805C549C  4B A4 BC 15 */	bl play__16mDoExt_McaMorfSOFUlSc
/* 805C54A0  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 805C54A4  4B A4 78 C1 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 805C54A8  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 805C54AC  4B A4 7A 99 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 805C54B0  3C 60 80 5C */	lis r3, l_HIO@ha /* 0x805C790C@ha */
/* 805C54B4  38 63 79 0C */	addi r3, r3, l_HIO@l /* 0x805C790C@l */
/* 805C54B8  C0 23 00 08 */	lfs f1, 8(r3)
/* 805C54BC  FC 40 08 90 */	fmr f2, f1
/* 805C54C0  FC 60 08 90 */	fmr f3, f1
/* 805C54C4  4B A4 79 75 */	bl scaleM__14mDoMtx_stack_cFfff
/* 805C54C8  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 805C54CC  80 83 00 04 */	lwz r4, 4(r3)
/* 805C54D0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805C54D4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805C54D8  38 84 00 24 */	addi r4, r4, 0x24
/* 805C54DC  4B D8 0F D5 */	bl PSMTXCopy
/* 805C54E0  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 805C54E4  4B A4 BD 09 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 805C54E8  7F C3 F3 78 */	mr r3, r30
/* 805C54EC  38 80 00 01 */	li r4, 1
/* 805C54F0  4B FF 6B C9 */	bl chkPartCreate__8daB_DR_cFb
lbl_805C54F4:
/* 805C54F4  38 60 00 01 */	li r3, 1
/* 805C54F8  48 00 00 78 */	b lbl_805C5570
lbl_805C54FC:
/* 805C54FC  88 1E 07 EA */	lbz r0, 0x7ea(r30)
/* 805C5500  2C 00 00 14 */	cmpwi r0, 0x14
/* 805C5504  40 80 00 10 */	bge lbl_805C5514
/* 805C5508  2C 00 00 0A */	cmpwi r0, 0xa
/* 805C550C  41 82 00 14 */	beq lbl_805C5520
/* 805C5510  48 00 00 30 */	b lbl_805C5540
lbl_805C5514:
/* 805C5514  2C 00 00 16 */	cmpwi r0, 0x16
/* 805C5518  40 80 00 28 */	bge lbl_805C5540
/* 805C551C  48 00 00 10 */	b lbl_805C552C
lbl_805C5520:
/* 805C5520  7F C3 F3 78 */	mr r3, r30
/* 805C5524  4B FF EB BD */	bl action_fire__8daB_DR_cFv
/* 805C5528  48 00 00 44 */	b lbl_805C556C
lbl_805C552C:
/* 805C552C  7F C3 F3 78 */	mr r3, r30
/* 805C5530  4B FF EC 01 */	bl action_parts__8daB_DR_cFv
/* 805C5534  7F C3 F3 78 */	mr r3, r30
/* 805C5538  4B FF F1 4D */	bl parts_mtx_set__8daB_DR_cFv
/* 805C553C  48 00 00 30 */	b lbl_805C556C
lbl_805C5540:
/* 805C5540  7F C3 F3 78 */	mr r3, r30
/* 805C5544  4B FF E7 6D */	bl action__8daB_DR_cFv
/* 805C5548  7F C3 F3 78 */	mr r3, r30
/* 805C554C  4B FF EC 59 */	bl mtx_set__8daB_DR_cFv
/* 805C5550  7F C3 F3 78 */	mr r3, r30
/* 805C5554  4B FF F1 8D */	bl cc_set__8daB_DR_cFv
/* 805C5558  88 1E 07 D7 */	lbz r0, 0x7d7(r30)
/* 805C555C  28 00 00 00 */	cmplwi r0, 0
/* 805C5560  41 82 00 0C */	beq lbl_805C556C
/* 805C5564  7F C3 F3 78 */	mr r3, r30
/* 805C5568  4B FF F8 AD */	bl down_cc_set__8daB_DR_cFv
lbl_805C556C:
/* 805C556C  38 60 00 01 */	li r3, 1
lbl_805C5570:
/* 805C5570  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 805C5574  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 805C5578  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805C557C  7C 08 03 A6 */	mtlr r0
/* 805C5580  38 21 00 30 */	addi r1, r1, 0x30
/* 805C5584  4E 80 00 20 */	blr 
