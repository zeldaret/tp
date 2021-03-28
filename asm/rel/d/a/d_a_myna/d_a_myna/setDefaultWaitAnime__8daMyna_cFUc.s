lbl_8094A608:
/* 8094A608  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8094A60C  7C 08 02 A6 */	mflr r0
/* 8094A610  90 01 00 44 */	stw r0, 0x44(r1)
/* 8094A614  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8094A618  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8094A61C  7C 7E 1B 78 */	mr r30, r3
/* 8094A620  3C 60 80 95 */	lis r3, mCcDSph__8daMyna_c@ha
/* 8094A624  3B E3 B1 B0 */	addi r31, r3, mCcDSph__8daMyna_c@l
/* 8094A628  3C 60 80 95 */	lis r3, daMyna_LightActor@ha
/* 8094A62C  80 C3 BA C0 */	lwz r6, daMyna_LightActor@l(r3)
/* 8094A630  28 06 00 00 */	cmplwi r6, 0
/* 8094A634  41 82 00 4C */	beq lbl_8094A680
/* 8094A638  88 1E 09 35 */	lbz r0, 0x935(r30)
/* 8094A63C  28 00 00 01 */	cmplwi r0, 1
/* 8094A640  40 82 00 40 */	bne lbl_8094A680
/* 8094A644  88 BE 09 2C */	lbz r5, 0x92c(r30)
/* 8094A648  28 05 00 00 */	cmplwi r5, 0
/* 8094A64C  41 82 00 14 */	beq lbl_8094A660
/* 8094A650  28 05 00 05 */	cmplwi r5, 5
/* 8094A654  41 82 00 0C */	beq lbl_8094A660
/* 8094A658  28 05 00 07 */	cmplwi r5, 7
/* 8094A65C  40 82 00 24 */	bne lbl_8094A680
lbl_8094A660:
/* 8094A660  88 66 05 78 */	lbz r3, 0x578(r6)
/* 8094A664  88 06 05 79 */	lbz r0, 0x579(r6)
/* 8094A668  7C 03 00 40 */	cmplw r3, r0
/* 8094A66C  41 82 00 14 */	beq lbl_8094A680
/* 8094A670  98 BE 09 2D */	stb r5, 0x92d(r30)
/* 8094A674  38 00 00 0B */	li r0, 0xb
/* 8094A678  98 1E 09 2C */	stb r0, 0x92c(r30)
/* 8094A67C  48 00 01 FC */	b lbl_8094A878
lbl_8094A680:
/* 8094A680  88 7E 09 35 */	lbz r3, 0x935(r30)
/* 8094A684  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 8094A688  7C 03 00 40 */	cmplw r3, r0
/* 8094A68C  40 82 01 EC */	bne lbl_8094A878
/* 8094A690  2C 03 00 01 */	cmpwi r3, 1
/* 8094A694  41 82 00 08 */	beq lbl_8094A69C
/* 8094A698  48 00 01 E0 */	b lbl_8094A878
lbl_8094A69C:
/* 8094A69C  A8 7E 09 24 */	lha r3, 0x924(r30)
/* 8094A6A0  38 03 FF FF */	addi r0, r3, -1
/* 8094A6A4  B0 1E 09 24 */	sth r0, 0x924(r30)
/* 8094A6A8  A8 1E 09 24 */	lha r0, 0x924(r30)
/* 8094A6AC  2C 00 00 00 */	cmpwi r0, 0
/* 8094A6B0  41 81 01 C8 */	bgt lbl_8094A878
/* 8094A6B4  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 8094A6B8  4B 91 D2 9C */	b cM_rndF__Ff
/* 8094A6BC  FC 00 08 1E */	fctiwz f0, f1
/* 8094A6C0  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8094A6C4  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 8094A6C8  38 60 00 03 */	li r3, 3
/* 8094A6CC  7C 04 1B D6 */	divw r0, r4, r3
/* 8094A6D0  7C 00 19 D6 */	mullw r0, r0, r3
/* 8094A6D4  7C 00 20 50 */	subf r0, r0, r4
/* 8094A6D8  2C 00 00 01 */	cmpwi r0, 1
/* 8094A6DC  41 82 00 28 */	beq lbl_8094A704
/* 8094A6E0  40 80 00 38 */	bge lbl_8094A718
/* 8094A6E4  2C 00 00 00 */	cmpwi r0, 0
/* 8094A6E8  40 80 00 08 */	bge lbl_8094A6F0
/* 8094A6EC  48 00 00 2C */	b lbl_8094A718
lbl_8094A6F0:
/* 8094A6F0  7F C3 F3 78 */	mr r3, r30
/* 8094A6F4  38 80 00 02 */	li r4, 2
/* 8094A6F8  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 8094A6FC  4B FF F9 59 */	bl setAnimeType__8daMyna_cFUcf
/* 8094A700  48 00 01 78 */	b lbl_8094A878
lbl_8094A704:
/* 8094A704  7F C3 F3 78 */	mr r3, r30
/* 8094A708  38 80 00 03 */	li r4, 3
/* 8094A70C  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 8094A710  4B FF F9 45 */	bl setAnimeType__8daMyna_cFUcf
/* 8094A714  48 00 01 64 */	b lbl_8094A878
lbl_8094A718:
/* 8094A718  38 61 00 0C */	addi r3, r1, 0xc
/* 8094A71C  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 8094A720  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8094A724  4B 91 C4 10 */	b __mi__4cXyzCFRC3Vec
/* 8094A728  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8094A72C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8094A730  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8094A734  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8094A738  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8094A73C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8094A740  38 61 00 18 */	addi r3, r1, 0x18
/* 8094A744  4B 9F C9 F4 */	b PSVECSquareMag
/* 8094A748  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8094A74C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8094A750  40 81 00 58 */	ble lbl_8094A7A8
/* 8094A754  FC 00 08 34 */	frsqrte f0, f1
/* 8094A758  C8 9F 00 60 */	lfd f4, 0x60(r31)
/* 8094A75C  FC 44 00 32 */	fmul f2, f4, f0
/* 8094A760  C8 7F 00 68 */	lfd f3, 0x68(r31)
/* 8094A764  FC 00 00 32 */	fmul f0, f0, f0
/* 8094A768  FC 01 00 32 */	fmul f0, f1, f0
/* 8094A76C  FC 03 00 28 */	fsub f0, f3, f0
/* 8094A770  FC 02 00 32 */	fmul f0, f2, f0
/* 8094A774  FC 44 00 32 */	fmul f2, f4, f0
/* 8094A778  FC 00 00 32 */	fmul f0, f0, f0
/* 8094A77C  FC 01 00 32 */	fmul f0, f1, f0
/* 8094A780  FC 03 00 28 */	fsub f0, f3, f0
/* 8094A784  FC 02 00 32 */	fmul f0, f2, f0
/* 8094A788  FC 44 00 32 */	fmul f2, f4, f0
/* 8094A78C  FC 00 00 32 */	fmul f0, f0, f0
/* 8094A790  FC 01 00 32 */	fmul f0, f1, f0
/* 8094A794  FC 03 00 28 */	fsub f0, f3, f0
/* 8094A798  FC 02 00 32 */	fmul f0, f2, f0
/* 8094A79C  FC 21 00 32 */	fmul f1, f1, f0
/* 8094A7A0  FC 20 08 18 */	frsp f1, f1
/* 8094A7A4  48 00 00 88 */	b lbl_8094A82C
lbl_8094A7A8:
/* 8094A7A8  C8 1F 00 70 */	lfd f0, 0x70(r31)
/* 8094A7AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8094A7B0  40 80 00 10 */	bge lbl_8094A7C0
/* 8094A7B4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8094A7B8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8094A7BC  48 00 00 70 */	b lbl_8094A82C
lbl_8094A7C0:
/* 8094A7C0  D0 21 00 08 */	stfs f1, 8(r1)
/* 8094A7C4  80 81 00 08 */	lwz r4, 8(r1)
/* 8094A7C8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8094A7CC  3C 00 7F 80 */	lis r0, 0x7f80
/* 8094A7D0  7C 03 00 00 */	cmpw r3, r0
/* 8094A7D4  41 82 00 14 */	beq lbl_8094A7E8
/* 8094A7D8  40 80 00 40 */	bge lbl_8094A818
/* 8094A7DC  2C 03 00 00 */	cmpwi r3, 0
/* 8094A7E0  41 82 00 20 */	beq lbl_8094A800
/* 8094A7E4  48 00 00 34 */	b lbl_8094A818
lbl_8094A7E8:
/* 8094A7E8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8094A7EC  41 82 00 0C */	beq lbl_8094A7F8
/* 8094A7F0  38 00 00 01 */	li r0, 1
/* 8094A7F4  48 00 00 28 */	b lbl_8094A81C
lbl_8094A7F8:
/* 8094A7F8  38 00 00 02 */	li r0, 2
/* 8094A7FC  48 00 00 20 */	b lbl_8094A81C
lbl_8094A800:
/* 8094A800  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8094A804  41 82 00 0C */	beq lbl_8094A810
/* 8094A808  38 00 00 05 */	li r0, 5
/* 8094A80C  48 00 00 10 */	b lbl_8094A81C
lbl_8094A810:
/* 8094A810  38 00 00 03 */	li r0, 3
/* 8094A814  48 00 00 08 */	b lbl_8094A81C
lbl_8094A818:
/* 8094A818  38 00 00 04 */	li r0, 4
lbl_8094A81C:
/* 8094A81C  2C 00 00 01 */	cmpwi r0, 1
/* 8094A820  40 82 00 0C */	bne lbl_8094A82C
/* 8094A824  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8094A828  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8094A82C:
/* 8094A82C  3C 60 80 95 */	lis r3, l_HOSTIO@ha
/* 8094A830  38 63 BA 3C */	addi r3, r3, l_HOSTIO@l
/* 8094A834  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 8094A838  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8094A83C  40 80 00 2C */	bge lbl_8094A868
/* 8094A840  4B 91 D0 2C */	b cM_rnd__Fv
/* 8094A844  C0 5F 00 98 */	lfs f2, 0x98(r31)
/* 8094A848  EC 02 00 72 */	fmuls f0, f2, f1
/* 8094A84C  EC 02 00 2A */	fadds f0, f2, f0
/* 8094A850  D0 1E 09 10 */	stfs f0, 0x910(r30)
/* 8094A854  7F C3 F3 78 */	mr r3, r30
/* 8094A858  38 80 00 06 */	li r4, 6
/* 8094A85C  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 8094A860  4B FF F7 F5 */	bl setAnimeType__8daMyna_cFUcf
/* 8094A864  48 00 00 14 */	b lbl_8094A878
lbl_8094A868:
/* 8094A868  7F C3 F3 78 */	mr r3, r30
/* 8094A86C  38 80 00 05 */	li r4, 5
/* 8094A870  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 8094A874  4B FF F7 E1 */	bl setAnimeType__8daMyna_cFUcf
lbl_8094A878:
/* 8094A878  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8094A87C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8094A880  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8094A884  7C 08 03 A6 */	mtlr r0
/* 8094A888  38 21 00 40 */	addi r1, r1, 0x40
/* 8094A88C  4E 80 00 20 */	blr 
