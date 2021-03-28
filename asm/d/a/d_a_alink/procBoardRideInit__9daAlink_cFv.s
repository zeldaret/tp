lbl_80106774:
/* 80106774  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80106778  7C 08 02 A6 */	mflr r0
/* 8010677C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80106780  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80106784  7C 7F 1B 78 */	mr r31, r3
/* 80106788  38 80 00 A6 */	li r4, 0xa6
/* 8010678C  4B FB B7 E1 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 80106790  7F E3 FB 78 */	mr r3, r31
/* 80106794  38 80 00 D7 */	li r4, 0xd7
/* 80106798  3C A0 80 39 */	lis r5, m__23daAlinkHIO_smallJump_c0@ha
/* 8010679C  38 C5 E1 1C */	addi r6, r5, m__23daAlinkHIO_smallJump_c0@l
/* 801067A0  C0 26 00 04 */	lfs f1, 4(r6)
/* 801067A4  C0 42 93 44 */	lfs f2, lit_7977(r2)
/* 801067A8  A8 A6 00 00 */	lha r5, 0(r6)
/* 801067AC  C0 66 00 0C */	lfs f3, 0xc(r6)
/* 801067B0  4B FA 68 5D */	bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsf
/* 801067B4  7F E3 FB 78 */	mr r3, r31
/* 801067B8  38 80 00 00 */	li r4, 0
/* 801067BC  4B FD BD C5 */	bl setHeavyBoots__9daAlink_cFi
/* 801067C0  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 801067C4  28 00 01 03 */	cmplwi r0, 0x103
/* 801067C8  41 82 00 18 */	beq lbl_801067E0
/* 801067CC  7F E3 FB 78 */	mr r3, r31
/* 801067D0  38 80 00 01 */	li r4, 1
/* 801067D4  38 A0 00 01 */	li r5, 1
/* 801067D8  4B FB AB 05 */	bl deleteEquipItem__9daAlink_cFii
/* 801067DC  48 00 00 0C */	b lbl_801067E8
lbl_801067E0:
/* 801067E0  7F E3 FB 78 */	mr r3, r31
/* 801067E4  48 00 A0 5D */	bl offKandelaarModel__9daAlink_cFv
lbl_801067E8:
/* 801067E8  7F E3 FB 78 */	mr r3, r31
/* 801067EC  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010005@ha */
/* 801067F0  38 84 00 05 */	addi r4, r4, 0x0005 /* 0x00010005@l */
/* 801067F4  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 801067F8  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 801067FC  7D 89 03 A6 */	mtctr r12
/* 80106800  4E 80 04 21 */	bctrl 
/* 80106804  38 00 00 0F */	li r0, 0xf
/* 80106808  98 1F 2F 99 */	stb r0, 0x2f99(r31)
/* 8010680C  38 61 00 18 */	addi r3, r1, 0x18
/* 80106810  80 9F 27 F4 */	lwz r4, 0x27f4(r31)
/* 80106814  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80106818  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8010681C  48 16 03 19 */	bl __mi__4cXyzCFRC3Vec
/* 80106820  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80106824  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80106828  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8010682C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80106830  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80106834  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80106838  C0 02 93 20 */	lfs f0, lit_7449(r2)
/* 8010683C  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80106840  38 61 00 24 */	addi r3, r1, 0x24
/* 80106844  48 16 08 E5 */	bl atan2sX_Z__4cXyzCFv
/* 80106848  B0 7F 04 E6 */	sth r3, 0x4e6(r31)
/* 8010684C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80106850  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80106854  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80106858  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8010685C  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80106860  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80106864  38 61 00 0C */	addi r3, r1, 0xc
/* 80106868  48 24 08 D1 */	bl PSVECSquareMag
/* 8010686C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80106870  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80106874  40 81 00 58 */	ble lbl_801068CC
/* 80106878  FC 00 08 34 */	frsqrte f0, f1
/* 8010687C  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 80106880  FC 44 00 32 */	fmul f2, f4, f0
/* 80106884  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 80106888  FC 00 00 32 */	fmul f0, f0, f0
/* 8010688C  FC 01 00 32 */	fmul f0, f1, f0
/* 80106890  FC 03 00 28 */	fsub f0, f3, f0
/* 80106894  FC 02 00 32 */	fmul f0, f2, f0
/* 80106898  FC 44 00 32 */	fmul f2, f4, f0
/* 8010689C  FC 00 00 32 */	fmul f0, f0, f0
/* 801068A0  FC 01 00 32 */	fmul f0, f1, f0
/* 801068A4  FC 03 00 28 */	fsub f0, f3, f0
/* 801068A8  FC 02 00 32 */	fmul f0, f2, f0
/* 801068AC  FC 44 00 32 */	fmul f2, f4, f0
/* 801068B0  FC 00 00 32 */	fmul f0, f0, f0
/* 801068B4  FC 01 00 32 */	fmul f0, f1, f0
/* 801068B8  FC 03 00 28 */	fsub f0, f3, f0
/* 801068BC  FC 02 00 32 */	fmul f0, f2, f0
/* 801068C0  FC 21 00 32 */	fmul f1, f1, f0
/* 801068C4  FC 20 08 18 */	frsp f1, f1
/* 801068C8  48 00 00 88 */	b lbl_80106950
lbl_801068CC:
/* 801068CC  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 801068D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801068D4  40 80 00 10 */	bge lbl_801068E4
/* 801068D8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 801068DC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 801068E0  48 00 00 70 */	b lbl_80106950
lbl_801068E4:
/* 801068E4  D0 21 00 08 */	stfs f1, 8(r1)
/* 801068E8  80 81 00 08 */	lwz r4, 8(r1)
/* 801068EC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 801068F0  3C 00 7F 80 */	lis r0, 0x7f80
/* 801068F4  7C 03 00 00 */	cmpw r3, r0
/* 801068F8  41 82 00 14 */	beq lbl_8010690C
/* 801068FC  40 80 00 40 */	bge lbl_8010693C
/* 80106900  2C 03 00 00 */	cmpwi r3, 0
/* 80106904  41 82 00 20 */	beq lbl_80106924
/* 80106908  48 00 00 34 */	b lbl_8010693C
lbl_8010690C:
/* 8010690C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80106910  41 82 00 0C */	beq lbl_8010691C
/* 80106914  38 00 00 01 */	li r0, 1
/* 80106918  48 00 00 28 */	b lbl_80106940
lbl_8010691C:
/* 8010691C  38 00 00 02 */	li r0, 2
/* 80106920  48 00 00 20 */	b lbl_80106940
lbl_80106924:
/* 80106924  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80106928  41 82 00 0C */	beq lbl_80106934
/* 8010692C  38 00 00 05 */	li r0, 5
/* 80106930  48 00 00 10 */	b lbl_80106940
lbl_80106934:
/* 80106934  38 00 00 03 */	li r0, 3
/* 80106938  48 00 00 08 */	b lbl_80106940
lbl_8010693C:
/* 8010693C  38 00 00 04 */	li r0, 4
lbl_80106940:
/* 80106940  2C 00 00 01 */	cmpwi r0, 1
/* 80106944  40 82 00 0C */	bne lbl_80106950
/* 80106948  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8010694C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80106950:
/* 80106950  C0 42 95 F8 */	lfs f2, lit_28405(r2)
/* 80106954  C0 1F 05 30 */	lfs f0, 0x530(r31)
/* 80106958  FC 00 00 50 */	fneg f0, f0
/* 8010695C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80106960  EC 02 00 32 */	fmuls f0, f2, f0
/* 80106964  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 80106968  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8010696C  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80106970  3C 60 80 42 */	lis r3, l_waitBaseAnime@ha
/* 80106974  C4 03 55 14 */	lfsu f0, l_waitBaseAnime@l(r3)
/* 80106978  D0 1F 35 88 */	stfs f0, 0x3588(r31)
/* 8010697C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80106980  D0 1F 35 8C */	stfs f0, 0x358c(r31)
/* 80106984  C0 03 00 08 */	lfs f0, 8(r3)
/* 80106988  D0 1F 35 90 */	stfs f0, 0x3590(r31)
/* 8010698C  C0 1F 35 8C */	lfs f0, 0x358c(r31)
/* 80106990  D0 1F 33 B0 */	stfs f0, 0x33b0(r31)
/* 80106994  C0 03 00 00 */	lfs f0, 0(r3)
/* 80106998  D0 1F 34 D4 */	stfs f0, 0x34d4(r31)
/* 8010699C  C0 03 00 04 */	lfs f0, 4(r3)
/* 801069A0  D0 1F 34 D8 */	stfs f0, 0x34d8(r31)
/* 801069A4  C0 03 00 08 */	lfs f0, 8(r3)
/* 801069A8  D0 1F 34 DC */	stfs f0, 0x34dc(r31)
/* 801069AC  38 7F 28 0C */	addi r3, r31, 0x280c
/* 801069B0  80 9F 27 F4 */	lwz r4, 0x27f4(r31)
/* 801069B4  48 05 83 05 */	bl setData__16daPy_actorKeep_cFP10fopAc_ac_c
/* 801069B8  38 60 00 01 */	li r3, 1
/* 801069BC  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 801069C0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801069C4  7C 08 03 A6 */	mtlr r0
/* 801069C8  38 21 00 40 */	addi r1, r1, 0x40
/* 801069CC  4E 80 00 20 */	blr 
