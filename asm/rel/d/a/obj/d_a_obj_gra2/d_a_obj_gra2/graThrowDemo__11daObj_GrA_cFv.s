lbl_80C0B9AC:
/* 80C0B9AC  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80C0B9B0  7C 08 02 A6 */	mflr r0
/* 80C0B9B4  90 01 00 84 */	stw r0, 0x84(r1)
/* 80C0B9B8  39 61 00 80 */	addi r11, r1, 0x80
/* 80C0B9BC  4B 75 68 18 */	b _savegpr_27
/* 80C0B9C0  7C 7C 1B 78 */	mr r28, r3
/* 80C0B9C4  3C 60 80 C1 */	lis r3, m__17daObj_GrA_Param_c@ha
/* 80C0B9C8  3B E3 FA 7C */	addi r31, r3, m__17daObj_GrA_Param_c@l
/* 80C0B9CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C0B9D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C0B9D4  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 80C0B9D8  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 80C0B9DC  7C 00 07 74 */	extsb r0, r0
/* 80C0B9E0  1C 00 00 38 */	mulli r0, r0, 0x38
/* 80C0B9E4  7C 63 02 14 */	add r3, r3, r0
/* 80C0B9E8  83 A3 5D 74 */	lwz r29, 0x5d74(r3)
/* 80C0B9EC  4B 57 5C 54 */	b dCam_getBody__Fv
/* 80C0B9F0  7C 7B 1B 78 */	mr r27, r3
/* 80C0B9F4  A8 1C 20 54 */	lha r0, 0x2054(r28)
/* 80C0B9F8  2C 00 00 02 */	cmpwi r0, 2
/* 80C0B9FC  41 82 01 F0 */	beq lbl_80C0BBEC
/* 80C0BA00  40 80 00 14 */	bge lbl_80C0BA14
/* 80C0BA04  2C 00 00 00 */	cmpwi r0, 0
/* 80C0BA08  41 82 03 1C */	beq lbl_80C0BD24
/* 80C0BA0C  40 80 00 14 */	bge lbl_80C0BA20
/* 80C0BA10  48 00 03 14 */	b lbl_80C0BD24
lbl_80C0BA14:
/* 80C0BA14  2C 00 00 04 */	cmpwi r0, 4
/* 80C0BA18  40 80 03 0C */	bge lbl_80C0BD24
/* 80C0BA1C  48 00 02 E4 */	b lbl_80C0BD00
lbl_80C0BA20:
/* 80C0BA20  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C0BA24  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C0BA28  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80C0BA2C  28 00 00 00 */	cmplwi r0, 0
/* 80C0BA30  41 82 03 48 */	beq lbl_80C0BD78
/* 80C0BA34  3C 60 80 C1 */	lis r3, lit_8967@ha
/* 80C0BA38  38 83 03 20 */	addi r4, r3, lit_8967@l
/* 80C0BA3C  80 64 00 00 */	lwz r3, 0(r4)
/* 80C0BA40  80 04 00 04 */	lwz r0, 4(r4)
/* 80C0BA44  90 61 00 50 */	stw r3, 0x50(r1)
/* 80C0BA48  90 01 00 54 */	stw r0, 0x54(r1)
/* 80C0BA4C  80 04 00 08 */	lwz r0, 8(r4)
/* 80C0BA50  90 01 00 58 */	stw r0, 0x58(r1)
/* 80C0BA54  7F 83 E3 78 */	mr r3, r28
/* 80C0BA58  38 81 00 50 */	addi r4, r1, 0x50
/* 80C0BA5C  4B FF 5E 65 */	bl checkProcess__11daObj_GrA_cFM11daObj_GrA_cFPCvPvPv_i
/* 80C0BA60  2C 03 00 00 */	cmpwi r3, 0
/* 80C0BA64  41 82 03 14 */	beq lbl_80C0BD78
/* 80C0BA68  38 7D 02 48 */	addi r3, r29, 0x248
/* 80C0BA6C  4B 55 5A 64 */	b Stop__9dCamera_cFv
/* 80C0BA70  38 00 00 02 */	li r0, 2
/* 80C0BA74  B0 1C 20 54 */	sth r0, 0x2054(r28)
/* 80C0BA78  C0 3B 00 58 */	lfs f1, 0x58(r27)
/* 80C0BA7C  C0 1B 06 F4 */	lfs f0, 0x6f4(r27)
/* 80C0BA80  EC 01 00 2A */	fadds f0, f1, f0
/* 80C0BA84  D0 1C 20 70 */	stfs f0, 0x2070(r28)
/* 80C0BA88  38 61 00 44 */	addi r3, r1, 0x44
/* 80C0BA8C  7F 64 DB 78 */	mr r4, r27
/* 80C0BA90  4B 57 64 08 */	b Center__9dCamera_cFv
/* 80C0BA94  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80C0BA98  D0 1C 20 64 */	stfs f0, 0x2064(r28)
/* 80C0BA9C  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80C0BAA0  D0 1C 20 68 */	stfs f0, 0x2068(r28)
/* 80C0BAA4  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80C0BAA8  D0 1C 20 6C */	stfs f0, 0x206c(r28)
/* 80C0BAAC  38 61 00 38 */	addi r3, r1, 0x38
/* 80C0BAB0  7F 64 DB 78 */	mr r4, r27
/* 80C0BAB4  4B 57 63 B0 */	b Eye__9dCamera_cFv
/* 80C0BAB8  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80C0BABC  D0 1C 20 58 */	stfs f0, 0x2058(r28)
/* 80C0BAC0  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80C0BAC4  D0 1C 20 5C */	stfs f0, 0x205c(r28)
/* 80C0BAC8  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80C0BACC  D0 1C 20 60 */	stfs f0, 0x2060(r28)
/* 80C0BAD0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C0BAD4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C0BAD8  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 80C0BADC  4B 40 09 00 */	b mDoMtx_YrotS__FPA4_fs
/* 80C0BAE0  88 1C 1F FC */	lbz r0, 0x1ffc(r28)
/* 80C0BAE4  28 00 00 00 */	cmplwi r0, 0
/* 80C0BAE8  41 82 00 10 */	beq lbl_80C0BAF8
/* 80C0BAEC  C0 1F 02 EC */	lfs f0, 0x2ec(r31)
/* 80C0BAF0  D0 1C 20 90 */	stfs f0, 0x2090(r28)
/* 80C0BAF4  48 00 00 0C */	b lbl_80C0BB00
lbl_80C0BAF8:
/* 80C0BAF8  C0 1F 02 7C */	lfs f0, 0x27c(r31)
/* 80C0BAFC  D0 1C 20 90 */	stfs f0, 0x2090(r28)
lbl_80C0BB00:
/* 80C0BB00  C0 1F 02 D0 */	lfs f0, 0x2d0(r31)
/* 80C0BB04  D0 1C 20 94 */	stfs f0, 0x2094(r28)
/* 80C0BB08  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80C0BB0C  D0 1C 20 98 */	stfs f0, 0x2098(r28)
/* 80C0BB10  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C0BB14  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C0BB18  38 9C 20 90 */	addi r4, r28, 0x2090
/* 80C0BB1C  7C 85 23 78 */	mr r5, r4
/* 80C0BB20  4B 73 B2 4C */	b PSMTXMultVec
/* 80C0BB24  38 7C 20 90 */	addi r3, r28, 0x2090
/* 80C0BB28  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80C0BB2C  7C 65 1B 78 */	mr r5, r3
/* 80C0BB30  4B 73 B5 60 */	b PSVECAdd
/* 80C0BB34  38 7C 20 58 */	addi r3, r28, 0x2058
/* 80C0BB38  38 9C 20 90 */	addi r4, r28, 0x2090
/* 80C0BB3C  7F 85 E3 78 */	mr r5, r28
/* 80C0BB40  4B 41 21 28 */	b lineCheck__11fopAcM_lc_cFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80C0BB44  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C0BB48  41 82 00 30 */	beq lbl_80C0BB78
/* 80C0BB4C  88 1C 1F FC */	lbz r0, 0x1ffc(r28)
/* 80C0BB50  28 00 00 00 */	cmplwi r0, 0
/* 80C0BB54  41 82 00 10 */	beq lbl_80C0BB64
/* 80C0BB58  C0 1F 02 7C */	lfs f0, 0x27c(r31)
/* 80C0BB5C  D0 1C 20 90 */	stfs f0, 0x2090(r28)
/* 80C0BB60  48 00 00 0C */	b lbl_80C0BB6C
lbl_80C0BB64:
/* 80C0BB64  C0 1F 02 EC */	lfs f0, 0x2ec(r31)
/* 80C0BB68  D0 1C 20 90 */	stfs f0, 0x2090(r28)
lbl_80C0BB6C:
/* 80C0BB6C  38 00 00 01 */	li r0, 1
/* 80C0BB70  98 1C 20 A0 */	stb r0, 0x20a0(r28)
/* 80C0BB74  48 00 00 2C */	b lbl_80C0BBA0
lbl_80C0BB78:
/* 80C0BB78  88 1C 1F FC */	lbz r0, 0x1ffc(r28)
/* 80C0BB7C  28 00 00 00 */	cmplwi r0, 0
/* 80C0BB80  41 82 00 10 */	beq lbl_80C0BB90
/* 80C0BB84  C0 1F 02 F4 */	lfs f0, 0x2f4(r31)
/* 80C0BB88  D0 1C 20 90 */	stfs f0, 0x2090(r28)
/* 80C0BB8C  48 00 00 0C */	b lbl_80C0BB98
lbl_80C0BB90:
/* 80C0BB90  C0 1F 02 14 */	lfs f0, 0x214(r31)
/* 80C0BB94  D0 1C 20 90 */	stfs f0, 0x2090(r28)
lbl_80C0BB98:
/* 80C0BB98  38 00 00 00 */	li r0, 0
/* 80C0BB9C  98 1C 20 A0 */	stb r0, 0x20a0(r28)
lbl_80C0BBA0:
/* 80C0BBA0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C0BBA4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C0BBA8  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 80C0BBAC  4B 40 08 30 */	b mDoMtx_YrotS__FPA4_fs
/* 80C0BBB0  C0 1F 02 D0 */	lfs f0, 0x2d0(r31)
/* 80C0BBB4  D0 1C 20 94 */	stfs f0, 0x2094(r28)
/* 80C0BBB8  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80C0BBBC  D0 1C 20 98 */	stfs f0, 0x2098(r28)
/* 80C0BBC0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C0BBC4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C0BBC8  38 9C 20 90 */	addi r4, r28, 0x2090
/* 80C0BBCC  7C 85 23 78 */	mr r5, r4
/* 80C0BBD0  4B 73 B1 9C */	b PSMTXMultVec
/* 80C0BBD4  38 7C 20 90 */	addi r3, r28, 0x2090
/* 80C0BBD8  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80C0BBDC  7C 65 1B 78 */	mr r5, r3
/* 80C0BBE0  4B 73 B4 B0 */	b PSVECAdd
/* 80C0BBE4  48 00 00 08 */	b lbl_80C0BBEC
/* 80C0BBE8  48 00 01 90 */	b lbl_80C0BD78
lbl_80C0BBEC:
/* 80C0BBEC  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80C0BBF0  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80C0BBF4  C0 1F 02 A0 */	lfs f0, 0x2a0(r31)
/* 80C0BBF8  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80C0BBFC  C0 1F 02 F4 */	lfs f0, 0x2f4(r31)
/* 80C0BC00  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80C0BC04  80 1C 1F F8 */	lwz r0, 0x1ff8(r28)
/* 80C0BC08  2C 00 00 00 */	cmpwi r0, 0
/* 80C0BC0C  41 82 00 64 */	beq lbl_80C0BC70
/* 80C0BC10  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80C0BC14  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80C0BC18  4B 66 4F EC */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80C0BC1C  7C 64 07 34 */	extsh r4, r3
/* 80C0BC20  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C0BC24  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C0BC28  4B 40 07 B4 */	b mDoMtx_YrotS__FPA4_fs
/* 80C0BC2C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C0BC30  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C0BC34  38 81 00 5C */	addi r4, r1, 0x5c
/* 80C0BC38  7C 85 23 78 */	mr r5, r4
/* 80C0BC3C  4B 73 B1 30 */	b PSMTXMultVec
/* 80C0BC40  38 61 00 5C */	addi r3, r1, 0x5c
/* 80C0BC44  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80C0BC48  7C 65 1B 78 */	mr r5, r3
/* 80C0BC4C  4B 73 B4 44 */	b PSVECAdd
/* 80C0BC50  38 7C 20 58 */	addi r3, r28, 0x2058
/* 80C0BC54  38 81 00 5C */	addi r4, r1, 0x5c
/* 80C0BC58  7F 85 E3 78 */	mr r5, r28
/* 80C0BC5C  4B 41 20 0C */	b lineCheck__11fopAcM_lc_cFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80C0BC60  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C0BC64  41 82 00 0C */	beq lbl_80C0BC70
/* 80C0BC68  38 00 00 01 */	li r0, 1
/* 80C0BC6C  98 1C 20 A0 */	stb r0, 0x20a0(r28)
lbl_80C0BC70:
/* 80C0BC70  80 1C 1F F8 */	lwz r0, 0x1ff8(r28)
/* 80C0BC74  2C 00 00 00 */	cmpwi r0, 0
/* 80C0BC78  41 82 00 3C */	beq lbl_80C0BCB4
/* 80C0BC7C  88 1C 20 A0 */	lbz r0, 0x20a0(r28)
/* 80C0BC80  28 00 00 00 */	cmplwi r0, 0
/* 80C0BC84  40 82 00 30 */	bne lbl_80C0BCB4
/* 80C0BC88  38 7C 20 58 */	addi r3, r28, 0x2058
/* 80C0BC8C  38 81 00 5C */	addi r4, r1, 0x5c
/* 80C0BC90  C0 3F 02 F8 */	lfs f1, 0x2f8(r31)
/* 80C0BC94  C0 5F 02 34 */	lfs f2, 0x234(r31)
/* 80C0BC98  4B 66 44 E0 */	b cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 80C0BC9C  38 7C 20 64 */	addi r3, r28, 0x2064
/* 80C0BCA0  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80C0BCA4  C0 3F 02 F8 */	lfs f1, 0x2f8(r31)
/* 80C0BCA8  C0 5F 02 14 */	lfs f2, 0x214(r31)
/* 80C0BCAC  4B 66 44 CC */	b cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 80C0BCB0  48 00 00 74 */	b lbl_80C0BD24
lbl_80C0BCB4:
/* 80C0BCB4  38 7C 20 58 */	addi r3, r28, 0x2058
/* 80C0BCB8  38 9C 20 90 */	addi r4, r28, 0x2090
/* 80C0BCBC  C0 3F 02 AC */	lfs f1, 0x2ac(r31)
/* 80C0BCC0  C0 5F 02 1C */	lfs f2, 0x21c(r31)
/* 80C0BCC4  4B 66 44 B4 */	b cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 80C0BCC8  38 61 00 2C */	addi r3, r1, 0x2c
/* 80C0BCCC  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80C0BCD0  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C0BCD4  4B 65 AE 10 */	b __pl__4cXyzCFRC3Vec
/* 80C0BCD8  38 61 00 20 */	addi r3, r1, 0x20
/* 80C0BCDC  38 81 00 2C */	addi r4, r1, 0x2c
/* 80C0BCE0  C0 3F 02 60 */	lfs f1, 0x260(r31)
/* 80C0BCE4  4B 65 AF 34 */	b __dv__4cXyzCFf
/* 80C0BCE8  38 7C 20 64 */	addi r3, r28, 0x2064
/* 80C0BCEC  38 81 00 20 */	addi r4, r1, 0x20
/* 80C0BCF0  C0 3F 02 AC */	lfs f1, 0x2ac(r31)
/* 80C0BCF4  C0 5F 02 1C */	lfs f2, 0x21c(r31)
/* 80C0BCF8  4B 66 44 80 */	b cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 80C0BCFC  48 00 00 28 */	b lbl_80C0BD24
lbl_80C0BD00:
/* 80C0BD00  38 7D 02 48 */	addi r3, r29, 0x248
/* 80C0BD04  4B 55 57 A8 */	b Start__9dCamera_cFv
/* 80C0BD08  38 7D 02 48 */	addi r3, r29, 0x248
/* 80C0BD0C  38 80 00 00 */	li r4, 0
/* 80C0BD10  4B 55 72 FC */	b SetTrimSize__9dCamera_cFl
/* 80C0BD14  38 00 00 01 */	li r0, 1
/* 80C0BD18  90 1C 15 20 */	stw r0, 0x1520(r28)
/* 80C0BD1C  38 00 00 00 */	li r0, 0
/* 80C0BD20  B0 1C 20 54 */	sth r0, 0x2054(r28)
lbl_80C0BD24:
/* 80C0BD24  A8 1C 20 54 */	lha r0, 0x2054(r28)
/* 80C0BD28  2C 00 00 00 */	cmpwi r0, 0
/* 80C0BD2C  41 82 00 4C */	beq lbl_80C0BD78
/* 80C0BD30  C0 1C 20 64 */	lfs f0, 0x2064(r28)
/* 80C0BD34  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C0BD38  C0 1C 20 68 */	lfs f0, 0x2068(r28)
/* 80C0BD3C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C0BD40  C0 1C 20 6C */	lfs f0, 0x206c(r28)
/* 80C0BD44  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80C0BD48  C0 1C 20 58 */	lfs f0, 0x2058(r28)
/* 80C0BD4C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80C0BD50  C0 1C 20 5C */	lfs f0, 0x205c(r28)
/* 80C0BD54  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C0BD58  C0 1C 20 60 */	lfs f0, 0x2060(r28)
/* 80C0BD5C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C0BD60  38 7D 02 48 */	addi r3, r29, 0x248
/* 80C0BD64  38 81 00 14 */	addi r4, r1, 0x14
/* 80C0BD68  38 A1 00 08 */	addi r5, r1, 8
/* 80C0BD6C  C0 3C 20 70 */	lfs f1, 0x2070(r28)
/* 80C0BD70  38 C0 00 00 */	li r6, 0
/* 80C0BD74  4B 57 4D 6C */	b Set__9dCamera_cF4cXyz4cXyzfs
lbl_80C0BD78:
/* 80C0BD78  39 61 00 80 */	addi r11, r1, 0x80
/* 80C0BD7C  4B 75 64 A4 */	b _restgpr_27
/* 80C0BD80  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80C0BD84  7C 08 03 A6 */	mtlr r0
/* 80C0BD88  38 21 00 80 */	addi r1, r1, 0x80
/* 80C0BD8C  4E 80 00 20 */	blr 
