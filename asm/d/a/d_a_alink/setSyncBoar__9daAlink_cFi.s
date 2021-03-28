lbl_800EE64C:
/* 800EE64C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800EE650  7C 08 02 A6 */	mflr r0
/* 800EE654  90 01 00 24 */	stw r0, 0x24(r1)
/* 800EE658  39 61 00 20 */	addi r11, r1, 0x20
/* 800EE65C  48 27 3B 7D */	bl _savegpr_28
/* 800EE660  7C 7E 1B 78 */	mr r30, r3
/* 800EE664  7C 9C 23 78 */	mr r28, r4
/* 800EE668  83 E3 28 18 */	lwz r31, 0x2818(r3)
/* 800EE66C  80 03 31 A0 */	lwz r0, 0x31a0(r3)
/* 800EE670  54 1D 07 FE */	clrlwi r29, r0, 0x1f
/* 800EE674  4B FF F1 19 */	bl setSyncBoarPos__9daAlink_cFv
/* 800EE678  2C 03 00 00 */	cmpwi r3, 0
/* 800EE67C  40 82 00 0C */	bne lbl_800EE688
/* 800EE680  38 60 00 00 */	li r3, 0
/* 800EE684  48 00 02 7C */	b lbl_800EE900
lbl_800EE688:
/* 800EE688  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 800EE68C  FC 00 02 10 */	fabs f0, f0
/* 800EE690  FC 20 00 18 */	frsp f1, f0
/* 800EE694  C0 02 93 E4 */	lfs f0, lit_12328(r2)
/* 800EE698  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800EE69C  40 80 00 84 */	bge lbl_800EE720
/* 800EE6A0  2C 1D 00 00 */	cmpwi r29, 0
/* 800EE6A4  41 82 00 7C */	beq lbl_800EE720
/* 800EE6A8  C0 3E 33 AC */	lfs f1, 0x33ac(r30)
/* 800EE6AC  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800EE6B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800EE6B4  40 81 00 6C */	ble lbl_800EE720
/* 800EE6B8  7F E3 FB 78 */	mr r3, r31
/* 800EE6BC  4B F4 95 C1 */	bl checkWait__10e_wb_classFv
/* 800EE6C0  2C 03 00 00 */	cmpwi r3, 0
/* 800EE6C4  41 82 00 5C */	beq lbl_800EE720
/* 800EE6C8  A0 1E 2F E8 */	lhz r0, 0x2fe8(r30)
/* 800EE6CC  28 00 00 40 */	cmplwi r0, 0x40
/* 800EE6D0  41 82 00 50 */	beq lbl_800EE720
/* 800EE6D4  A8 1E 30 04 */	lha r0, 0x3004(r30)
/* 800EE6D8  2C 00 00 00 */	cmpwi r0, 0
/* 800EE6DC  40 82 00 44 */	bne lbl_800EE720
/* 800EE6E0  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 800EE6E4  A8 1E 2F E2 */	lha r0, 0x2fe2(r30)
/* 800EE6E8  7C 03 00 50 */	subf r0, r3, r0
/* 800EE6EC  7C 03 07 34 */	extsh r3, r0
/* 800EE6F0  4B FC 4D A5 */	bl getDirectionFromAngle__9daAlink_cFs
/* 800EE6F4  2C 03 00 00 */	cmpwi r3, 0
/* 800EE6F8  41 82 00 0C */	beq lbl_800EE704
/* 800EE6FC  2C 03 00 01 */	cmpwi r3, 1
/* 800EE700  40 82 00 20 */	bne lbl_800EE720
lbl_800EE704:
/* 800EE704  3C 60 80 39 */	lis r3, m__19daAlinkHIO_horse_c0@ha
/* 800EE708  38 A3 E5 A4 */	addi r5, r3, m__19daAlinkHIO_horse_c0@l
/* 800EE70C  A8 05 00 54 */	lha r0, 0x54(r5)
/* 800EE710  B0 1E 30 04 */	sth r0, 0x3004(r30)
/* 800EE714  7F C3 F3 78 */	mr r3, r30
/* 800EE718  38 80 00 4D */	li r4, 0x4d
/* 800EE71C  4B FB E9 D9 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
lbl_800EE720:
/* 800EE720  2C 1C 00 00 */	cmpwi r28, 0
/* 800EE724  41 82 00 40 */	beq lbl_800EE764
/* 800EE728  A8 1F 17 E2 */	lha r0, 0x17e2(r31)
/* 800EE72C  7C 00 07 35 */	extsh. r0, r0
/* 800EE730  40 82 00 34 */	bne lbl_800EE764
/* 800EE734  7F C3 F3 78 */	mr r3, r30
/* 800EE738  4B FF E9 3D */	bl checkHorseNoUpperAnime__9daAlink_cCFv
/* 800EE73C  2C 03 00 00 */	cmpwi r3, 0
/* 800EE740  41 82 00 24 */	beq lbl_800EE764
/* 800EE744  7F C3 F3 78 */	mr r3, r30
/* 800EE748  38 80 00 09 */	li r4, 9
/* 800EE74C  4B FC 4B 05 */	bl setDoStatus__9daAlink_cFUc
/* 800EE750  88 1E 2F 8D */	lbz r0, 0x2f8d(r30)
/* 800EE754  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800EE758  41 82 00 0C */	beq lbl_800EE764
/* 800EE75C  7F C3 F3 78 */	mr r3, r30
/* 800EE760  4B FF ED 59 */	bl changeBoarRunRide__9daAlink_cFv
lbl_800EE764:
/* 800EE764  38 7E 1F D0 */	addi r3, r30, 0x1fd0
/* 800EE768  48 06 FD 65 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800EE76C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800EE770  41 82 00 10 */	beq lbl_800EE780
/* 800EE774  A0 1E 2F E8 */	lhz r0, 0x2fe8(r30)
/* 800EE778  28 00 00 43 */	cmplwi r0, 0x43
/* 800EE77C  40 82 00 30 */	bne lbl_800EE7AC
lbl_800EE780:
/* 800EE780  7F C3 F3 78 */	mr r3, r30
/* 800EE784  4B FF F7 09 */	bl checkHorseServiceWaitAnime__9daAlink_cFv
/* 800EE788  2C 03 00 00 */	cmpwi r3, 0
/* 800EE78C  41 82 00 2C */	beq lbl_800EE7B8
/* 800EE790  7F C3 F3 78 */	mr r3, r30
/* 800EE794  4B FC AA C1 */	bl checkNoUpperAnime__9daAlink_cCFv
/* 800EE798  2C 03 00 00 */	cmpwi r3, 0
/* 800EE79C  41 82 00 10 */	beq lbl_800EE7AC
/* 800EE7A0  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 800EE7A4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800EE7A8  40 82 00 10 */	bne lbl_800EE7B8
lbl_800EE7AC:
/* 800EE7AC  7F C3 F3 78 */	mr r3, r30
/* 800EE7B0  48 00 04 E9 */	bl setBaseBoarAnime__9daAlink_cFv
/* 800EE7B4  48 00 00 54 */	b lbl_800EE808
lbl_800EE7B8:
/* 800EE7B8  A0 1E 1F 58 */	lhz r0, 0x1f58(r30)
/* 800EE7BC  28 00 01 B3 */	cmplwi r0, 0x1b3
/* 800EE7C0  40 82 00 24 */	bne lbl_800EE7E4
/* 800EE7C4  38 7E 1F D0 */	addi r3, r30, 0x1fd0
/* 800EE7C8  C0 22 93 30 */	lfs f1, lit_7625(r2)
/* 800EE7CC  48 23 9C 61 */	bl checkPass__12J3DFrameCtrlFf
/* 800EE7D0  2C 03 00 00 */	cmpwi r3, 0
/* 800EE7D4  41 82 00 34 */	beq lbl_800EE808
/* 800EE7D8  7F C3 F3 78 */	mr r3, r30
/* 800EE7DC  4B FF EC DD */	bl changeBoarRunRide__9daAlink_cFv
/* 800EE7E0  48 00 00 28 */	b lbl_800EE808
lbl_800EE7E4:
/* 800EE7E4  7F C3 F3 78 */	mr r3, r30
/* 800EE7E8  4B FF F6 A5 */	bl checkHorseServiceWaitAnime__9daAlink_cFv
/* 800EE7EC  2C 03 00 00 */	cmpwi r3, 0
/* 800EE7F0  40 82 00 18 */	bne lbl_800EE808
/* 800EE7F4  A0 1E 2F E8 */	lhz r0, 0x2fe8(r30)
/* 800EE7F8  28 00 00 43 */	cmplwi r0, 0x43
/* 800EE7FC  41 82 00 0C */	beq lbl_800EE808
/* 800EE800  7F C3 F3 78 */	mr r3, r30
/* 800EE804  48 00 04 95 */	bl setBaseBoarAnime__9daAlink_cFv
lbl_800EE808:
/* 800EE808  A0 1E 1F 58 */	lhz r0, 0x1f58(r30)
/* 800EE80C  28 00 01 B3 */	cmplwi r0, 0x1b3
/* 800EE810  41 82 00 34 */	beq lbl_800EE844
/* 800EE814  A8 1F 17 E2 */	lha r0, 0x17e2(r31)
/* 800EE818  7C 00 07 35 */	extsh. r0, r0
/* 800EE81C  40 81 00 14 */	ble lbl_800EE830
/* 800EE820  7F C3 F3 78 */	mr r3, r30
/* 800EE824  38 80 00 00 */	li r4, 0
/* 800EE828  4B FF E7 CD */	bl setHorseTurnUpperAnime__9daAlink_cFi
/* 800EE82C  48 00 00 18 */	b lbl_800EE844
lbl_800EE830:
/* 800EE830  7C 00 07 35 */	extsh. r0, r0
/* 800EE834  40 80 00 10 */	bge lbl_800EE844
/* 800EE838  7F C3 F3 78 */	mr r3, r30
/* 800EE83C  38 80 00 01 */	li r4, 1
/* 800EE840  4B FF E7 B5 */	bl setHorseTurnUpperAnime__9daAlink_cFi
lbl_800EE844:
/* 800EE844  38 60 00 00 */	li r3, 0
/* 800EE848  A0 1E 1F BC */	lhz r0, 0x1fbc(r30)
/* 800EE84C  28 00 02 4C */	cmplwi r0, 0x24c
/* 800EE850  41 82 00 10 */	beq lbl_800EE860
/* 800EE854  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 800EE858  28 00 02 4D */	cmplwi r0, 0x24d
/* 800EE85C  40 82 00 08 */	bne lbl_800EE864
lbl_800EE860:
/* 800EE860  38 60 00 01 */	li r3, 1
lbl_800EE864:
/* 800EE864  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800EE868  41 82 00 8C */	beq lbl_800EE8F4
/* 800EE86C  A8 1F 17 E2 */	lha r0, 0x17e2(r31)
/* 800EE870  7C 00 07 35 */	extsh. r0, r0
/* 800EE874  40 82 00 20 */	bne lbl_800EE894
/* 800EE878  7F C3 F3 78 */	mr r3, r30
/* 800EE87C  38 80 00 02 */	li r4, 2
/* 800EE880  C0 22 93 24 */	lfs f1, lit_7450(r2)
/* 800EE884  4B FB EE A1 */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
/* 800EE888  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800EE88C  D0 1E 33 F0 */	stfs f0, 0x33f0(r30)
/* 800EE890  48 00 00 6C */	b lbl_800EE8FC
lbl_800EE894:
/* 800EE894  C0 42 94 C8 */	lfs f2, lit_18706(r2)
/* 800EE898  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800EE89C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800EE8A0  90 01 00 0C */	stw r0, 0xc(r1)
/* 800EE8A4  3C 00 43 30 */	lis r0, 0x4330
/* 800EE8A8  90 01 00 08 */	stw r0, 8(r1)
/* 800EE8AC  C8 01 00 08 */	lfd f0, 8(r1)
/* 800EE8B0  EC 00 08 28 */	fsubs f0, f0, f1
/* 800EE8B4  EC 02 00 32 */	fmuls f0, f2, f0
/* 800EE8B8  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 800EE8BC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 800EE8C0  40 80 00 08 */	bge lbl_800EE8C8
/* 800EE8C4  48 00 00 18 */	b lbl_800EE8DC
lbl_800EE8C8:
/* 800EE8C8  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 800EE8CC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 800EE8D0  40 81 00 08 */	ble lbl_800EE8D8
/* 800EE8D4  48 00 00 08 */	b lbl_800EE8DC
lbl_800EE8D8:
/* 800EE8D8  FC 20 00 90 */	fmr f1, f0
lbl_800EE8DC:
/* 800EE8DC  D0 3E 33 F0 */	stfs f1, 0x33f0(r30)
/* 800EE8E0  C0 1E 33 F0 */	lfs f0, 0x33f0(r30)
/* 800EE8E4  FC 00 02 10 */	fabs f0, f0
/* 800EE8E8  FC 00 00 18 */	frsp f0, f0
/* 800EE8EC  D0 1E 1F 50 */	stfs f0, 0x1f50(r30)
/* 800EE8F0  48 00 00 0C */	b lbl_800EE8FC
lbl_800EE8F4:
/* 800EE8F4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800EE8F8  D0 1E 33 F0 */	stfs f0, 0x33f0(r30)
lbl_800EE8FC:
/* 800EE8FC  38 60 00 01 */	li r3, 1
lbl_800EE900:
/* 800EE900  39 61 00 20 */	addi r11, r1, 0x20
/* 800EE904  48 27 39 21 */	bl _restgpr_28
/* 800EE908  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800EE90C  7C 08 03 A6 */	mtlr r0
/* 800EE910  38 21 00 20 */	addi r1, r1, 0x20
/* 800EE914  4E 80 00 20 */	blr 
