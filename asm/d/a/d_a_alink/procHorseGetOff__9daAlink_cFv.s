lbl_800F0620:
/* 800F0620  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800F0624  7C 08 02 A6 */	mflr r0
/* 800F0628  90 01 00 34 */	stw r0, 0x34(r1)
/* 800F062C  39 61 00 30 */	addi r11, r1, 0x30
/* 800F0630  48 27 1B AD */	bl _savegpr_29
/* 800F0634  7C 7E 1B 78 */	mr r30, r3
/* 800F0638  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 800F063C  83 A3 28 18 */	lwz r29, 0x2818(r3)
/* 800F0640  28 1D 00 00 */	cmplwi r29, 0
/* 800F0644  41 82 00 60 */	beq lbl_800F06A4
/* 800F0648  38 61 00 14 */	addi r3, r1, 0x14
/* 800F064C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 800F0650  38 BE 37 D4 */	addi r5, r30, 0x37d4
/* 800F0654  48 17 64 E1 */	bl __mi__4cXyzCFRC3Vec
/* 800F0658  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 800F065C  38 81 00 14 */	addi r4, r1, 0x14
/* 800F0660  7C 65 1B 78 */	mr r5, r3
/* 800F0664  48 25 6A 2D */	bl PSVECAdd
/* 800F0668  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 800F066C  D0 1E 37 D4 */	stfs f0, 0x37d4(r30)
/* 800F0670  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 800F0674  D0 1E 37 D8 */	stfs f0, 0x37d8(r30)
/* 800F0678  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 800F067C  D0 1E 37 DC */	stfs f0, 0x37dc(r30)
/* 800F0680  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 800F0684  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 800F0688  A8 1E 30 0E */	lha r0, 0x300e(r30)
/* 800F068C  7C 03 00 50 */	subf r0, r3, r0
/* 800F0690  7C 00 07 34 */	extsh r0, r0
/* 800F0694  7C 04 02 14 */	add r0, r4, r0
/* 800F0698  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 800F069C  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 800F06A0  B0 1E 30 0E */	sth r0, 0x300e(r30)
lbl_800F06A4:
/* 800F06A4  38 7E 04 E8 */	addi r3, r30, 0x4e8
/* 800F06A8  38 80 00 00 */	li r4, 0
/* 800F06AC  38 A0 00 04 */	li r5, 4
/* 800F06B0  38 C0 07 D0 */	li r6, 0x7d0
/* 800F06B4  38 E0 01 90 */	li r7, 0x190
/* 800F06B8  48 17 FE 89 */	bl cLib_addCalcAngleS__FPsssss
/* 800F06BC  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 800F06C0  C0 02 93 BC */	lfs f0, lit_10042(r2)
/* 800F06C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800F06C8  4C 41 13 82 */	cror 2, 1, 2
/* 800F06CC  40 82 00 10 */	bne lbl_800F06DC
/* 800F06D0  38 00 00 00 */	li r0, 0
/* 800F06D4  98 1E 2F AB */	stb r0, 0x2fab(r30)
/* 800F06D8  48 00 01 04 */	b lbl_800F07DC
lbl_800F06DC:
/* 800F06DC  7F C3 F3 78 */	mr r3, r30
/* 800F06E0  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 800F06E4  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 800F06E8  7D 89 03 A6 */	mtctr r12
/* 800F06EC  4E 80 04 21 */	bctrl 
/* 800F06F0  28 03 00 00 */	cmplwi r3, 0
/* 800F06F4  41 82 00 70 */	beq lbl_800F0764
/* 800F06F8  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 800F06FC  C0 02 93 48 */	lfs f0, lit_8130(r2)
/* 800F0700  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800F0704  4C 41 13 82 */	cror 2, 1, 2
/* 800F0708  40 82 00 20 */	bne lbl_800F0728
/* 800F070C  88 9E 2F AB */	lbz r4, 0x2fab(r30)
/* 800F0710  38 60 00 01 */	li r3, 1
/* 800F0714  88 1E 2F C0 */	lbz r0, 0x2fc0(r30)
/* 800F0718  7C 60 00 30 */	slw r0, r3, r0
/* 800F071C  7C 80 00 78 */	andc r0, r4, r0
/* 800F0720  98 1E 2F AB */	stb r0, 0x2fab(r30)
/* 800F0724  48 00 00 B8 */	b lbl_800F07DC
lbl_800F0728:
/* 800F0728  C0 02 93 24 */	lfs f0, lit_7450(r2)
/* 800F072C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800F0730  4C 41 13 82 */	cror 2, 1, 2
/* 800F0734  40 82 00 A8 */	bne lbl_800F07DC
/* 800F0738  88 1E 2F C0 */	lbz r0, 0x2fc0(r30)
/* 800F073C  28 00 00 00 */	cmplwi r0, 0
/* 800F0740  40 82 00 14 */	bne lbl_800F0754
/* 800F0744  88 1E 2F AB */	lbz r0, 0x2fab(r30)
/* 800F0748  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 800F074C  98 1E 2F AB */	stb r0, 0x2fab(r30)
/* 800F0750  48 00 00 8C */	b lbl_800F07DC
lbl_800F0754:
/* 800F0754  88 1E 2F AB */	lbz r0, 0x2fab(r30)
/* 800F0758  54 00 06 3C */	rlwinm r0, r0, 0, 0x18, 0x1e
/* 800F075C  98 1E 2F AB */	stb r0, 0x2fab(r30)
/* 800F0760  48 00 00 7C */	b lbl_800F07DC
lbl_800F0764:
/* 800F0764  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 800F0768  C0 02 93 20 */	lfs f0, lit_7449(r2)
/* 800F076C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800F0770  4C 41 13 82 */	cror 2, 1, 2
/* 800F0774  41 82 00 68 */	beq lbl_800F07DC
/* 800F0778  C0 02 93 F0 */	lfs f0, lit_13382(r2)
/* 800F077C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800F0780  4C 41 13 82 */	cror 2, 1, 2
/* 800F0784  40 82 00 20 */	bne lbl_800F07A4
/* 800F0788  88 9E 2F AB */	lbz r4, 0x2fab(r30)
/* 800F078C  38 60 00 01 */	li r3, 1
/* 800F0790  88 1E 2F C0 */	lbz r0, 0x2fc0(r30)
/* 800F0794  7C 60 00 30 */	slw r0, r3, r0
/* 800F0798  7C 80 00 78 */	andc r0, r4, r0
/* 800F079C  98 1E 2F AB */	stb r0, 0x2fab(r30)
/* 800F07A0  48 00 00 3C */	b lbl_800F07DC
lbl_800F07A4:
/* 800F07A4  C0 02 92 C4 */	lfs f0, lit_6109(r2)
/* 800F07A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800F07AC  4C 41 13 82 */	cror 2, 1, 2
/* 800F07B0  40 82 00 2C */	bne lbl_800F07DC
/* 800F07B4  88 1E 2F C0 */	lbz r0, 0x2fc0(r30)
/* 800F07B8  28 00 00 00 */	cmplwi r0, 0
/* 800F07BC  40 82 00 14 */	bne lbl_800F07D0
/* 800F07C0  88 1E 2F AB */	lbz r0, 0x2fab(r30)
/* 800F07C4  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 800F07C8  98 1E 2F AB */	stb r0, 0x2fab(r30)
/* 800F07CC  48 00 00 10 */	b lbl_800F07DC
lbl_800F07D0:
/* 800F07D0  88 1E 2F AB */	lbz r0, 0x2fab(r30)
/* 800F07D4  54 00 06 3C */	rlwinm r0, r0, 0, 0x18, 0x1e
/* 800F07D8  98 1E 2F AB */	stb r0, 0x2fab(r30)
lbl_800F07DC:
/* 800F07DC  7F E3 FB 78 */	mr r3, r31
/* 800F07E0  48 06 DC ED */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800F07E4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800F07E8  41 82 00 1C */	beq lbl_800F0804
/* 800F07EC  7F C3 F3 78 */	mr r3, r30
/* 800F07F0  4B FF EB A5 */	bl horseGetOffEnd__9daAlink_cFv
/* 800F07F4  7F C3 F3 78 */	mr r3, r30
/* 800F07F8  38 80 00 00 */	li r4, 0
/* 800F07FC  4B FC 98 D5 */	bl checkNextAction__9daAlink_cFi
/* 800F0800  48 00 01 64 */	b lbl_800F0964
lbl_800F0804:
/* 800F0804  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 800F0808  C0 22 94 28 */	lfs f1, lit_14621(r2)
/* 800F080C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 800F0810  4C 41 13 82 */	cror 2, 1, 2
/* 800F0814  40 82 00 94 */	bne lbl_800F08A8
/* 800F0818  38 00 00 05 */	li r0, 5
/* 800F081C  98 1E 2F 99 */	stb r0, 0x2f99(r30)
/* 800F0820  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 800F0824  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 800F0828  41 82 01 3C */	beq lbl_800F0964
/* 800F082C  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 800F0830  54 00 05 A8 */	rlwinm r0, r0, 0, 0x16, 0x14
/* 800F0834  90 1E 31 A0 */	stw r0, 0x31a0(r30)
/* 800F0838  7F C3 F3 78 */	mr r3, r30
/* 800F083C  4B FF C3 95 */	bl rideGetOff__9daAlink_cFv
/* 800F0840  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 800F0844  60 00 00 01 */	ori r0, r0, 1
/* 800F0848  90 1E 31 A0 */	stw r0, 0x31a0(r30)
/* 800F084C  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 800F0850  C0 1E 1A 08 */	lfs f0, 0x1a08(r30)
/* 800F0854  EC 01 00 28 */	fsubs f0, f1, f0
/* 800F0858  FC 00 02 10 */	fabs f0, f0
/* 800F085C  FC 20 00 18 */	frsp f1, f0
/* 800F0860  C0 0D 81 10 */	lfs f0, l_autoUpHeight(r13)
/* 800F0864  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800F0868  40 80 00 FC */	bge lbl_800F0964
/* 800F086C  38 00 00 04 */	li r0, 4
/* 800F0870  98 1E 2F 9D */	stb r0, 0x2f9d(r30)
/* 800F0874  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800F0878  D0 21 00 08 */	stfs f1, 8(r1)
/* 800F087C  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800F0880  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800F0884  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 800F0888  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800F088C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800F0890  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 800F0894  38 80 00 01 */	li r4, 1
/* 800F0898  38 A0 00 0F */	li r5, 0xf
/* 800F089C  38 C1 00 08 */	addi r6, r1, 8
/* 800F08A0  4B F7 F1 85 */	bl StartShock__12dVibration_cFii4cXyz
/* 800F08A4  48 00 00 C0 */	b lbl_800F0964
lbl_800F08A8:
/* 800F08A8  38 00 00 07 */	li r0, 7
/* 800F08AC  98 1E 2F 99 */	stb r0, 0x2f99(r30)
/* 800F08B0  80 1E 19 9C */	lwz r0, 0x199c(r30)
/* 800F08B4  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800F08B8  41 82 00 1C */	beq lbl_800F08D4
/* 800F08BC  7F C3 F3 78 */	mr r3, r30
/* 800F08C0  4B FF EA D5 */	bl horseGetOffEnd__9daAlink_cFv
/* 800F08C4  7F C3 F3 78 */	mr r3, r30
/* 800F08C8  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800F08CC  4B FD 66 4D */	bl procLandInit__9daAlink_cFf
/* 800F08D0  48 00 00 98 */	b lbl_800F0968
lbl_800F08D4:
/* 800F08D4  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 800F08D8  C0 02 93 38 */	lfs f0, lit_7807(r2)
/* 800F08DC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 800F08E0  40 80 00 48 */	bge lbl_800F0928
/* 800F08E4  EC 62 00 24 */	fdivs f3, f2, f0
/* 800F08E8  3C 60 80 42 */	lis r3, l_waitBaseAnime@ha /* 0x80425514@ha */
/* 800F08EC  C4 23 55 14 */	lfsu f1, l_waitBaseAnime@l(r3)  /* 0x80425514@l */
/* 800F08F0  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800F08F4  EC 40 18 28 */	fsubs f2, f0, f3
/* 800F08F8  EC 21 00 B2 */	fmuls f1, f1, f2
/* 800F08FC  C0 1E 37 C8 */	lfs f0, 0x37c8(r30)
/* 800F0900  EC 00 00 F2 */	fmuls f0, f0, f3
/* 800F0904  EC 01 00 2A */	fadds f0, f1, f0
/* 800F0908  D0 1E 35 88 */	stfs f0, 0x3588(r30)
/* 800F090C  C0 03 00 08 */	lfs f0, 8(r3)
/* 800F0910  EC 20 00 B2 */	fmuls f1, f0, f2
/* 800F0914  C0 1E 37 D0 */	lfs f0, 0x37d0(r30)
/* 800F0918  EC 00 00 F2 */	fmuls f0, f0, f3
/* 800F091C  EC 01 00 2A */	fadds f0, f1, f0
/* 800F0920  D0 1E 35 90 */	stfs f0, 0x3590(r30)
/* 800F0924  48 00 00 40 */	b lbl_800F0964
lbl_800F0928:
/* 800F0928  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 800F092C  40 80 00 38 */	bge lbl_800F0964
/* 800F0930  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 800F0934  C0 22 93 F8 */	lfs f1, lit_13700(r2)
/* 800F0938  C0 1E 34 78 */	lfs f0, 0x3478(r30)
/* 800F093C  EC 01 00 32 */	fmuls f0, f1, f0
/* 800F0940  EC 02 00 2A */	fadds f0, f2, f0
/* 800F0944  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 800F0948  A8 1E 30 10 */	lha r0, 0x3010(r30)
/* 800F094C  2C 00 00 00 */	cmpwi r0, 0
/* 800F0950  41 82 00 14 */	beq lbl_800F0964
/* 800F0954  7F C3 F3 78 */	mr r3, r30
/* 800F0958  38 80 00 01 */	li r4, 1
/* 800F095C  C0 22 93 24 */	lfs f1, lit_7450(r2)
/* 800F0960  4B FD 60 E9 */	bl procFallInit__9daAlink_cFif
lbl_800F0964:
/* 800F0964  38 60 00 01 */	li r3, 1
lbl_800F0968:
/* 800F0968  39 61 00 30 */	addi r11, r1, 0x30
/* 800F096C  48 27 18 BD */	bl _restgpr_29
/* 800F0970  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800F0974  7C 08 03 A6 */	mtlr r0
/* 800F0978  38 21 00 30 */	addi r1, r1, 0x30
/* 800F097C  4E 80 00 20 */	blr 
