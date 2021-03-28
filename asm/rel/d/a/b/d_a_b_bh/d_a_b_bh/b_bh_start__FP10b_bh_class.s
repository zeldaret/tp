lbl_805B060C:
/* 805B060C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 805B0610  7C 08 02 A6 */	mflr r0
/* 805B0614  90 01 00 64 */	stw r0, 0x64(r1)
/* 805B0618  39 61 00 60 */	addi r11, r1, 0x60
/* 805B061C  4B DB 1B B8 */	b _savegpr_27
/* 805B0620  7C 7C 1B 78 */	mr r28, r3
/* 805B0624  3C 60 80 5B */	lis r3, lit_3764@ha
/* 805B0628  3B C3 31 40 */	addi r30, r3, lit_3764@l
/* 805B062C  3B A0 00 00 */	li r29, 0
/* 805B0630  80 1C 04 A4 */	lwz r0, 0x4a4(r28)
/* 805B0634  90 01 00 24 */	stw r0, 0x24(r1)
/* 805B0638  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 805B063C  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 805B0640  38 81 00 24 */	addi r4, r1, 0x24
/* 805B0644  4B A6 91 B4 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 805B0648  7C 7F 1B 78 */	mr r31, r3
/* 805B064C  A8 1C 06 6C */	lha r0, 0x66c(r28)
/* 805B0650  2C 00 00 02 */	cmpwi r0, 2
/* 805B0654  41 82 00 74 */	beq lbl_805B06C8
/* 805B0658  40 80 00 14 */	bge lbl_805B066C
/* 805B065C  2C 00 00 00 */	cmpwi r0, 0
/* 805B0660  41 82 00 20 */	beq lbl_805B0680
/* 805B0664  40 80 00 58 */	bge lbl_805B06BC
/* 805B0668  48 00 03 E4 */	b lbl_805B0A4C
lbl_805B066C:
/* 805B066C  2C 00 00 06 */	cmpwi r0, 6
/* 805B0670  40 80 03 DC */	bge lbl_805B0A4C
/* 805B0674  2C 00 00 04 */	cmpwi r0, 4
/* 805B0678  40 80 02 00 */	bge lbl_805B0878
/* 805B067C  48 00 01 44 */	b lbl_805B07C0
lbl_805B0680:
/* 805B0680  7F 83 E3 78 */	mr r3, r28
/* 805B0684  38 80 00 0C */	li r4, 0xc
/* 805B0688  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 805B068C  38 A0 00 02 */	li r5, 2
/* 805B0690  C0 5E 00 20 */	lfs f2, 0x20(r30)
/* 805B0694  4B FF DC 11 */	bl anm_init__FP10b_bh_classifUcf
/* 805B0698  88 1C 05 B4 */	lbz r0, 0x5b4(r28)
/* 805B069C  28 00 00 00 */	cmplwi r0, 0
/* 805B06A0  41 82 00 10 */	beq lbl_805B06B0
/* 805B06A4  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 805B06A8  80 7C 05 B8 */	lwz r3, 0x5b8(r28)
/* 805B06AC  D0 03 00 1C */	stfs f0, 0x1c(r3)
lbl_805B06B0:
/* 805B06B0  38 00 00 01 */	li r0, 1
/* 805B06B4  B0 1C 06 6C */	sth r0, 0x66c(r28)
/* 805B06B8  48 00 03 94 */	b lbl_805B0A4C
lbl_805B06BC:
/* 805B06BC  38 00 00 02 */	li r0, 2
/* 805B06C0  B0 1C 06 6C */	sth r0, 0x66c(r28)
/* 805B06C4  48 00 03 88 */	b lbl_805B0A4C
lbl_805B06C8:
/* 805B06C8  88 7F 06 F9 */	lbz r3, 0x6f9(r31)
/* 805B06CC  7C 60 07 75 */	extsb. r0, r3
/* 805B06D0  41 82 03 7C */	beq lbl_805B0A4C
/* 805B06D4  38 03 FF FF */	addi r0, r3, -1
/* 805B06D8  98 1F 06 F9 */	stb r0, 0x6f9(r31)
/* 805B06DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805B06E0  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l
/* 805B06E4  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 805B06E8  38 80 00 00 */	li r4, 0
/* 805B06EC  90 81 00 08 */	stw r4, 8(r1)
/* 805B06F0  38 00 FF FF */	li r0, -1
/* 805B06F4  90 01 00 0C */	stw r0, 0xc(r1)
/* 805B06F8  90 81 00 10 */	stw r4, 0x10(r1)
/* 805B06FC  90 81 00 14 */	stw r4, 0x14(r1)
/* 805B0700  90 81 00 18 */	stw r4, 0x18(r1)
/* 805B0704  38 80 00 00 */	li r4, 0
/* 805B0708  3C A0 00 01 */	lis r5, 0x0001 /* 0x000082C9@ha */
/* 805B070C  38 A5 82 C9 */	addi r5, r5, 0x82C9 /* 0x000082C9@l */
/* 805B0710  38 DC 04 A8 */	addi r6, r28, 0x4a8
/* 805B0714  38 E0 00 00 */	li r7, 0
/* 805B0718  39 00 00 00 */	li r8, 0
/* 805B071C  39 20 00 00 */	li r9, 0
/* 805B0720  39 40 00 FF */	li r10, 0xff
/* 805B0724  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 805B0728  4B A9 C3 68 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805B072C  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 805B0730  38 80 00 00 */	li r4, 0
/* 805B0734  90 81 00 08 */	stw r4, 8(r1)
/* 805B0738  38 00 FF FF */	li r0, -1
/* 805B073C  90 01 00 0C */	stw r0, 0xc(r1)
/* 805B0740  90 81 00 10 */	stw r4, 0x10(r1)
/* 805B0744  90 81 00 14 */	stw r4, 0x14(r1)
/* 805B0748  90 81 00 18 */	stw r4, 0x18(r1)
/* 805B074C  38 80 00 00 */	li r4, 0
/* 805B0750  3C A0 00 01 */	lis r5, 0x0001 /* 0x000082CA@ha */
/* 805B0754  38 A5 82 CA */	addi r5, r5, 0x82CA /* 0x000082CA@l */
/* 805B0758  38 DC 04 A8 */	addi r6, r28, 0x4a8
/* 805B075C  38 E0 00 00 */	li r7, 0
/* 805B0760  39 00 00 00 */	li r8, 0
/* 805B0764  39 20 00 00 */	li r9, 0
/* 805B0768  39 40 00 FF */	li r10, 0xff
/* 805B076C  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 805B0770  4B A9 C3 20 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805B0774  38 00 00 03 */	li r0, 3
/* 805B0778  B0 1C 06 6C */	sth r0, 0x66c(r28)
/* 805B077C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007013B@ha */
/* 805B0780  38 03 01 3B */	addi r0, r3, 0x013B /* 0x0007013B@l */
/* 805B0784  90 01 00 20 */	stw r0, 0x20(r1)
/* 805B0788  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 805B078C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 805B0790  80 63 00 00 */	lwz r3, 0(r3)
/* 805B0794  38 81 00 20 */	addi r4, r1, 0x20
/* 805B0798  38 BC 04 A8 */	addi r5, r28, 0x4a8
/* 805B079C  38 C0 00 00 */	li r6, 0
/* 805B07A0  38 E0 00 00 */	li r7, 0
/* 805B07A4  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 805B07A8  FC 40 08 90 */	fmr f2, f1
/* 805B07AC  C0 7E 00 08 */	lfs f3, 8(r30)
/* 805B07B0  FC 80 18 90 */	fmr f4, f3
/* 805B07B4  39 00 00 00 */	li r8, 0
/* 805B07B8  4B CF B1 CC */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 805B07BC  48 00 02 90 */	b lbl_805B0A4C
lbl_805B07C0:
/* 805B07C0  88 7F 06 F9 */	lbz r3, 0x6f9(r31)
/* 805B07C4  7C 60 07 75 */	extsb. r0, r3
/* 805B07C8  41 82 02 84 */	beq lbl_805B0A4C
/* 805B07CC  38 03 FF FF */	addi r0, r3, -1
/* 805B07D0  98 1F 06 F9 */	stb r0, 0x6f9(r31)
/* 805B07D4  38 00 00 04 */	li r0, 4
/* 805B07D8  B0 1C 06 6C */	sth r0, 0x66c(r28)
/* 805B07DC  C0 1C 04 A8 */	lfs f0, 0x4a8(r28)
/* 805B07E0  D0 1C 06 A4 */	stfs f0, 0x6a4(r28)
/* 805B07E4  C0 1C 04 AC */	lfs f0, 0x4ac(r28)
/* 805B07E8  D0 1C 06 A8 */	stfs f0, 0x6a8(r28)
/* 805B07EC  C0 1C 04 B0 */	lfs f0, 0x4b0(r28)
/* 805B07F0  D0 1C 06 AC */	stfs f0, 0x6ac(r28)
/* 805B07F4  88 1C 05 B4 */	lbz r0, 0x5b4(r28)
/* 805B07F8  28 00 00 00 */	cmplwi r0, 0
/* 805B07FC  40 82 00 18 */	bne lbl_805B0814
/* 805B0800  C0 3C 04 AC */	lfs f1, 0x4ac(r28)
/* 805B0804  C0 1E 00 8C */	lfs f0, 0x8c(r30)
/* 805B0808  EC 01 00 28 */	fsubs f0, f1, f0
/* 805B080C  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 805B0810  48 00 00 14 */	b lbl_805B0824
lbl_805B0814:
/* 805B0814  C0 3C 04 AC */	lfs f1, 0x4ac(r28)
/* 805B0818  C0 1E 00 B8 */	lfs f0, 0xb8(r30)
/* 805B081C  EC 01 00 28 */	fsubs f0, f1, f0
/* 805B0820  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
lbl_805B0824:
/* 805B0824  C0 1C 06 A4 */	lfs f0, 0x6a4(r28)
/* 805B0828  D0 1C 06 74 */	stfs f0, 0x674(r28)
/* 805B082C  C0 1C 06 AC */	lfs f0, 0x6ac(r28)
/* 805B0830  D0 1C 06 7C */	stfs f0, 0x67c(r28)
/* 805B0834  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 805B0838  C0 1C 06 A8 */	lfs f0, 0x6a8(r28)
/* 805B083C  EC 41 00 2A */	fadds f2, f1, f0
/* 805B0840  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 805B0844  3C 60 80 5B */	lis r3, l_HIO@ha
/* 805B0848  38 63 33 FC */	addi r3, r3, l_HIO@l
/* 805B084C  C0 03 00 08 */	lfs f0, 8(r3)
/* 805B0850  EC 01 00 32 */	fmuls f0, f1, f0
/* 805B0854  EC 02 00 2A */	fadds f0, f2, f0
/* 805B0858  D0 1C 06 78 */	stfs f0, 0x678(r28)
/* 805B085C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805B0860  D0 1C 06 90 */	stfs f0, 0x690(r28)
/* 805B0864  C0 3C 06 A8 */	lfs f1, 0x6a8(r28)
/* 805B0868  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 805B086C  EC 01 00 28 */	fsubs f0, f1, f0
/* 805B0870  D0 1C 06 A8 */	stfs f0, 0x6a8(r28)
/* 805B0874  48 00 01 D8 */	b lbl_805B0A4C
lbl_805B0878:
/* 805B0878  A8 9C 06 68 */	lha r4, 0x668(r28)
/* 805B087C  1C 04 07 6C */	mulli r0, r4, 0x76c
/* 805B0880  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 805B0884  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 805B0888  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 805B088C  7C 03 04 2E */	lfsx f0, r3, r0
/* 805B0890  C0 7E 00 10 */	lfs f3, 0x10(r30)
/* 805B0894  EC 23 00 32 */	fmuls f1, f3, f0
/* 805B0898  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 805B089C  1C 04 07 D0 */	mulli r0, r4, 0x7d0
/* 805B08A0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 805B08A4  7C 63 02 14 */	add r3, r3, r0
/* 805B08A8  C0 03 00 04 */	lfs f0, 4(r3)
/* 805B08AC  EC 03 00 32 */	fmuls f0, f3, f0
/* 805B08B0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 805B08B4  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 805B08B8  C0 1C 06 74 */	lfs f0, 0x674(r28)
/* 805B08BC  EC 20 08 2A */	fadds f1, f0, f1
/* 805B08C0  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 805B08C4  C0 1C 06 90 */	lfs f0, 0x690(r28)
/* 805B08C8  EC 63 00 32 */	fmuls f3, f3, f0
/* 805B08CC  4B CB F1 70 */	b cLib_addCalc2__FPffff
/* 805B08D0  38 7C 04 D8 */	addi r3, r28, 0x4d8
/* 805B08D4  C0 3C 06 7C */	lfs f1, 0x67c(r28)
/* 805B08D8  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 805B08DC  EC 21 00 2A */	fadds f1, f1, f0
/* 805B08E0  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 805B08E4  C0 7E 00 10 */	lfs f3, 0x10(r30)
/* 805B08E8  C0 1C 06 90 */	lfs f0, 0x690(r28)
/* 805B08EC  EC 63 00 32 */	fmuls f3, f3, f0
/* 805B08F0  4B CB F1 4C */	b cLib_addCalc2__FPffff
/* 805B08F4  38 7C 04 D4 */	addi r3, r28, 0x4d4
/* 805B08F8  C0 3C 06 78 */	lfs f1, 0x678(r28)
/* 805B08FC  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 805B0900  C0 7E 00 10 */	lfs f3, 0x10(r30)
/* 805B0904  C0 1C 06 90 */	lfs f0, 0x690(r28)
/* 805B0908  EC 63 00 32 */	fmuls f3, f3, f0
/* 805B090C  4B CB F1 30 */	b cLib_addCalc2__FPffff
/* 805B0910  38 7C 06 A8 */	addi r3, r28, 0x6a8
/* 805B0914  C0 3C 04 AC */	lfs f1, 0x4ac(r28)
/* 805B0918  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 805B091C  C0 7E 00 1C */	lfs f3, 0x1c(r30)
/* 805B0920  C0 1C 06 90 */	lfs f0, 0x690(r28)
/* 805B0924  EC 63 00 32 */	fmuls f3, f3, f0
/* 805B0928  4B CB F1 14 */	b cLib_addCalc2__FPffff
/* 805B092C  C0 3C 06 78 */	lfs f1, 0x678(r28)
/* 805B0930  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 805B0934  EC 21 00 28 */	fsubs f1, f1, f0
/* 805B0938  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 805B093C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805B0940  40 81 00 3C */	ble lbl_805B097C
/* 805B0944  38 00 C0 00 */	li r0, -16384
/* 805B0948  B0 1C 06 86 */	sth r0, 0x686(r28)
/* 805B094C  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B0950  1C 00 03 E8 */	mulli r0, r0, 0x3e8
/* 805B0954  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 805B0958  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 805B095C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 805B0960  7C 23 04 2E */	lfsx f1, r3, r0
/* 805B0964  C0 1E 00 BC */	lfs f0, 0xbc(r30)
/* 805B0968  EC 00 00 72 */	fmuls f0, f0, f1
/* 805B096C  FC 00 00 1E */	fctiwz f0, f0
/* 805B0970  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 805B0974  83 A1 00 44 */	lwz r29, 0x44(r1)
/* 805B0978  48 00 00 58 */	b lbl_805B09D0
lbl_805B097C:
/* 805B097C  88 1C 05 B4 */	lbz r0, 0x5b4(r28)
/* 805B0980  28 00 00 00 */	cmplwi r0, 0
/* 805B0984  40 82 00 4C */	bne lbl_805B09D0
/* 805B0988  A8 1C 06 68 */	lha r0, 0x668(r28)
/* 805B098C  54 00 07 7F */	clrlwi. r0, r0, 0x1d
/* 805B0990  40 82 00 40 */	bne lbl_805B09D0
/* 805B0994  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 805B0998  4B CB 6F BC */	b cM_rndF__Ff
/* 805B099C  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 805B09A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805B09A4  40 80 00 2C */	bge lbl_805B09D0
/* 805B09A8  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070102@ha */
/* 805B09AC  38 03 01 02 */	addi r0, r3, 0x0102 /* 0x00070102@l */
/* 805B09B0  90 01 00 2C */	stw r0, 0x2c(r1)
/* 805B09B4  38 7C 05 BC */	addi r3, r28, 0x5bc
/* 805B09B8  38 81 00 2C */	addi r4, r1, 0x2c
/* 805B09BC  38 A0 FF FF */	li r5, -1
/* 805B09C0  81 9C 05 BC */	lwz r12, 0x5bc(r28)
/* 805B09C4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805B09C8  7D 89 03 A6 */	mtctr r12
/* 805B09CC  4E 80 04 21 */	bctrl 
lbl_805B09D0:
/* 805B09D0  38 7C 06 90 */	addi r3, r28, 0x690
/* 805B09D4  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 805B09D8  FC 40 08 90 */	fmr f2, f1
/* 805B09DC  C0 7E 00 64 */	lfs f3, 0x64(r30)
/* 805B09E0  4B CB F0 5C */	b cLib_addCalc2__FPffff
/* 805B09E4  88 7F 06 F9 */	lbz r3, 0x6f9(r31)
/* 805B09E8  7C 60 07 75 */	extsb. r0, r3
/* 805B09EC  41 82 00 60 */	beq lbl_805B0A4C
/* 805B09F0  38 03 FF FF */	addi r0, r3, -1
/* 805B09F4  98 1F 06 F9 */	stb r0, 0x6f9(r31)
/* 805B09F8  A8 1C 06 6C */	lha r0, 0x66c(r28)
/* 805B09FC  2C 00 00 04 */	cmpwi r0, 4
/* 805B0A00  40 82 00 40 */	bne lbl_805B0A40
/* 805B0A04  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700FE@ha */
/* 805B0A08  38 03 00 FE */	addi r0, r3, 0x00FE /* 0x000700FE@l */
/* 805B0A0C  90 01 00 28 */	stw r0, 0x28(r1)
/* 805B0A10  38 7C 05 BC */	addi r3, r28, 0x5bc
/* 805B0A14  38 81 00 28 */	addi r4, r1, 0x28
/* 805B0A18  38 A0 FF FF */	li r5, -1
/* 805B0A1C  81 9C 05 BC */	lwz r12, 0x5bc(r28)
/* 805B0A20  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805B0A24  7D 89 03 A6 */	mtctr r12
/* 805B0A28  4E 80 04 21 */	bctrl 
/* 805B0A2C  38 00 00 01 */	li r0, 1
/* 805B0A30  98 1C 0F 21 */	stb r0, 0xf21(r28)
/* 805B0A34  38 00 00 05 */	li r0, 5
/* 805B0A38  B0 1C 06 6C */	sth r0, 0x66c(r28)
/* 805B0A3C  48 00 00 10 */	b lbl_805B0A4C
lbl_805B0A40:
/* 805B0A40  38 00 00 00 */	li r0, 0
/* 805B0A44  B0 1C 06 6A */	sth r0, 0x66a(r28)
/* 805B0A48  B0 1C 06 6C */	sth r0, 0x66c(r28)
lbl_805B0A4C:
/* 805B0A4C  38 7C 04 E6 */	addi r3, r28, 0x4e6
/* 805B0A50  A8 9C 06 84 */	lha r4, 0x684(r28)
/* 805B0A54  38 A0 00 08 */	li r5, 8
/* 805B0A58  38 C0 04 00 */	li r6, 0x400
/* 805B0A5C  4B CB FB AC */	b cLib_addCalcAngleS2__FPssss
/* 805B0A60  38 7C 04 E4 */	addi r3, r28, 0x4e4
/* 805B0A64  A8 9C 06 86 */	lha r4, 0x686(r28)
/* 805B0A68  38 A0 00 08 */	li r5, 8
/* 805B0A6C  38 C0 01 00 */	li r6, 0x100
/* 805B0A70  4B CB FB 98 */	b cLib_addCalcAngleS2__FPssss
/* 805B0A74  38 7C 04 E8 */	addi r3, r28, 0x4e8
/* 805B0A78  7F A4 EB 78 */	mr r4, r29
/* 805B0A7C  38 A0 00 02 */	li r5, 2
/* 805B0A80  38 C0 02 00 */	li r6, 0x200
/* 805B0A84  4B CB FB 84 */	b cLib_addCalcAngleS2__FPssss
/* 805B0A88  A8 1C 06 6C */	lha r0, 0x66c(r28)
/* 805B0A8C  2C 00 00 02 */	cmpwi r0, 2
/* 805B0A90  41 80 00 5C */	blt lbl_805B0AEC
/* 805B0A94  A8 1F 12 38 */	lha r0, 0x1238(r31)
/* 805B0A98  2C 00 00 00 */	cmpwi r0, 0
/* 805B0A9C  40 82 00 50 */	bne lbl_805B0AEC
/* 805B0AA0  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha
/* 805B0AA4  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l
/* 805B0AA8  80 03 00 34 */	lwz r0, 0x34(r3)
/* 805B0AAC  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 805B0AB0  41 82 00 3C */	beq lbl_805B0AEC
/* 805B0AB4  38 00 00 00 */	li r0, 0
/* 805B0AB8  B0 1C 06 6A */	sth r0, 0x66a(r28)
/* 805B0ABC  B0 1C 06 6C */	sth r0, 0x66c(r28)
/* 805B0AC0  C0 1C 04 A8 */	lfs f0, 0x4a8(r28)
/* 805B0AC4  D0 1C 06 A4 */	stfs f0, 0x6a4(r28)
/* 805B0AC8  C0 1C 04 AC */	lfs f0, 0x4ac(r28)
/* 805B0ACC  D0 1C 06 A8 */	stfs f0, 0x6a8(r28)
/* 805B0AD0  C0 1C 04 B0 */	lfs f0, 0x4b0(r28)
/* 805B0AD4  D0 1C 06 AC */	stfs f0, 0x6ac(r28)
/* 805B0AD8  C0 3C 04 AC */	lfs f1, 0x4ac(r28)
/* 805B0ADC  C0 1E 00 8C */	lfs f0, 0x8c(r30)
/* 805B0AE0  EC 01 00 28 */	fsubs f0, f1, f0
/* 805B0AE4  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 805B0AE8  B0 1C 04 E8 */	sth r0, 0x4e8(r28)
lbl_805B0AEC:
/* 805B0AEC  39 61 00 60 */	addi r11, r1, 0x60
/* 805B0AF0  4B DB 17 30 */	b _restgpr_27
/* 805B0AF4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805B0AF8  7C 08 03 A6 */	mtlr r0
/* 805B0AFC  38 21 00 60 */	addi r1, r1, 0x60
/* 805B0B00  4E 80 00 20 */	blr 
