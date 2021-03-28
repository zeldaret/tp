lbl_80CE0744:
/* 80CE0744  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80CE0748  7C 08 02 A6 */	mflr r0
/* 80CE074C  90 01 00 64 */	stw r0, 0x64(r1)
/* 80CE0750  39 61 00 60 */	addi r11, r1, 0x60
/* 80CE0754  4B 68 1A 5C */	b _savegpr_18
/* 80CE0758  7C 7E 1B 78 */	mr r30, r3
/* 80CE075C  7C 94 23 78 */	mr r20, r4
/* 80CE0760  3C 60 80 CE */	lis r3, lit_3779@ha
/* 80CE0764  3B E3 39 E8 */	addi r31, r3, lit_3779@l
/* 80CE0768  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CE076C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CE0770  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 80CE0774  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80CE0778  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 80CE077C  4B 66 61 6C */	b PSMTXTrans
/* 80CE0780  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CE0784  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CE0788  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80CE078C  4B 32 BC A8 */	b mDoMtx_YrotM__FPA4_fs
/* 80CE0790  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CE0794  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CE0798  A8 9E 04 E4 */	lha r4, 0x4e4(r30)
/* 80CE079C  4B 32 BC 00 */	b mDoMtx_XrotM__FPA4_fs
/* 80CE07A0  C0 3E 04 EC */	lfs f1, 0x4ec(r30)
/* 80CE07A4  FC 40 08 90 */	fmr f2, f1
/* 80CE07A8  FC 60 08 90 */	fmr f3, f1
/* 80CE07AC  4B 32 C6 8C */	b scaleM__14mDoMtx_stack_cFfff
/* 80CE07B0  3A A0 00 00 */	li r21, 0
/* 80CE07B4  3B A0 00 00 */	li r29, 0
/* 80CE07B8  3B 80 00 00 */	li r28, 0
/* 80CE07BC  3B 60 00 00 */	li r27, 0
/* 80CE07C0  3B 40 00 00 */	li r26, 0
/* 80CE07C4  3B 20 00 00 */	li r25, 0
/* 80CE07C8  3B 00 00 00 */	li r24, 0
/* 80CE07CC  3A E0 00 00 */	li r23, 0
/* 80CE07D0  3A C0 00 00 */	li r22, 0
/* 80CE07D4  7E 93 07 74 */	extsb r19, r20
lbl_80CE07D8:
/* 80CE07D8  4B 32 C4 F0 */	b push__14mDoMtx_stack_cFv
/* 80CE07DC  2C 15 00 02 */	cmpwi r21, 2
/* 80CE07E0  40 80 00 94 */	bge lbl_80CE0874
/* 80CE07E4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80CE07E8  D0 01 00 08 */	stfs f0, 8(r1)
/* 80CE07EC  2C 15 00 00 */	cmpwi r21, 0
/* 80CE07F0  40 82 00 10 */	bne lbl_80CE0800
/* 80CE07F4  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80CE07F8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80CE07FC  48 00 00 08 */	b lbl_80CE0804
lbl_80CE0800:
/* 80CE0800  D0 01 00 0C */	stfs f0, 0xc(r1)
lbl_80CE0804:
/* 80CE0804  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80CE0808  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CE080C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CE0810  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CE0814  38 81 00 08 */	addi r4, r1, 8
/* 80CE0818  7E 5E B2 14 */	add r18, r30, r22
/* 80CE081C  38 B2 06 18 */	addi r5, r18, 0x618
/* 80CE0820  4B 66 65 4C */	b PSMTXMultVec
/* 80CE0824  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80CE0828  D0 32 07 B8 */	stfs f1, 0x7b8(r18)
/* 80CE082C  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80CE0830  D0 12 07 BC */	stfs f0, 0x7bc(r18)
/* 80CE0834  D0 32 07 C0 */	stfs f1, 0x7c0(r18)
/* 80CE0838  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80CE083C  7E 5E BA 14 */	add r18, r30, r23
/* 80CE0840  B0 12 0A 2A */	sth r0, 0xa2a(r18)
/* 80CE0844  88 1E 05 70 */	lbz r0, 0x570(r30)
/* 80CE0848  28 00 00 01 */	cmplwi r0, 1
/* 80CE084C  41 82 01 68 */	beq lbl_80CE09B4
/* 80CE0850  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80CE0854  4B 58 71 38 */	b cM_rndFX__Ff
/* 80CE0858  FC 00 08 1E */	fctiwz f0, f1
/* 80CE085C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80CE0860  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80CE0864  A8 1E 04 E4 */	lha r0, 0x4e4(r30)
/* 80CE0868  7C 00 1A 14 */	add r0, r0, r3
/* 80CE086C  B0 12 0A 28 */	sth r0, 0xa28(r18)
/* 80CE0870  48 00 01 44 */	b lbl_80CE09B4
lbl_80CE0874:
/* 80CE0874  2C 15 00 0A */	cmpwi r21, 0xa
/* 80CE0878  40 80 00 98 */	bge lbl_80CE0910
/* 80CE087C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CE0880  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CE0884  38 18 F0 E8 */	addi r0, r24, -3864
/* 80CE0888  7C 04 07 34 */	extsh r4, r0
/* 80CE088C  4B 32 BB A8 */	b mDoMtx_YrotM__FPA4_fs
/* 80CE0890  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80CE0894  D0 01 00 08 */	stfs f0, 8(r1)
/* 80CE0898  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80CE089C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80CE08A0  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80CE08A4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CE08A8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CE08AC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CE08B0  38 81 00 08 */	addi r4, r1, 8
/* 80CE08B4  7E 5E B2 14 */	add r18, r30, r22
/* 80CE08B8  38 B2 06 18 */	addi r5, r18, 0x618
/* 80CE08BC  4B 66 64 B0 */	b PSMTXMultVec
/* 80CE08C0  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80CE08C4  D0 32 07 B8 */	stfs f1, 0x7b8(r18)
/* 80CE08C8  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80CE08CC  D0 12 07 BC */	stfs f0, 0x7bc(r18)
/* 80CE08D0  D0 32 07 C0 */	stfs f1, 0x7c0(r18)
/* 80CE08D4  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80CE08D8  7C 7E BA 14 */	add r3, r30, r23
/* 80CE08DC  B0 03 0A 2A */	sth r0, 0xa2a(r3)
/* 80CE08E0  A8 1E 04 E4 */	lha r0, 0x4e4(r30)
/* 80CE08E4  B0 03 0A 28 */	sth r0, 0xa28(r3)
/* 80CE08E8  38 15 1A 96 */	addi r0, r21, 0x1a96
/* 80CE08EC  7C 1E 00 AE */	lbzx r0, r30, r0
/* 80CE08F0  7C 00 07 75 */	extsb. r0, r0
/* 80CE08F4  41 82 00 C0 */	beq lbl_80CE09B4
/* 80CE08F8  D0 32 07 BC */	stfs f1, 0x7bc(r18)
/* 80CE08FC  C0 32 06 1C */	lfs f1, 0x61c(r18)
/* 80CE0900  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80CE0904  EC 01 00 2A */	fadds f0, f1, f0
/* 80CE0908  D0 12 06 1C */	stfs f0, 0x61c(r18)
/* 80CE090C  48 00 00 A8 */	b lbl_80CE09B4
lbl_80CE0910:
/* 80CE0910  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CE0914  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CE0918  38 18 47 18 */	addi r0, r24, 0x4718
/* 80CE091C  7C 04 07 34 */	extsh r4, r0
/* 80CE0920  4B 32 BB 14 */	b mDoMtx_YrotM__FPA4_fs
/* 80CE0924  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80CE0928  D0 01 00 08 */	stfs f0, 8(r1)
/* 80CE092C  2C 15 00 11 */	cmpwi r21, 0x11
/* 80CE0930  41 81 00 10 */	bgt lbl_80CE0940
/* 80CE0934  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 80CE0938  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80CE093C  48 00 00 0C */	b lbl_80CE0948
lbl_80CE0940:
/* 80CE0940  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80CE0944  D0 01 00 0C */	stfs f0, 0xc(r1)
lbl_80CE0948:
/* 80CE0948  56 A0 07 FF */	clrlwi. r0, r21, 0x1f
/* 80CE094C  41 82 00 14 */	beq lbl_80CE0960
/* 80CE0950  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80CE0954  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 80CE0958  EC 01 00 2A */	fadds f0, f1, f0
/* 80CE095C  D0 01 00 0C */	stfs f0, 0xc(r1)
lbl_80CE0960:
/* 80CE0960  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80CE0964  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CE0968  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CE096C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CE0970  38 81 00 08 */	addi r4, r1, 8
/* 80CE0974  7E 5E B2 14 */	add r18, r30, r22
/* 80CE0978  38 B2 06 18 */	addi r5, r18, 0x618
/* 80CE097C  4B 66 63 F0 */	b PSMTXMultVec
/* 80CE0980  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80CE0984  7C 7E BA 14 */	add r3, r30, r23
/* 80CE0988  B0 03 0A 2A */	sth r0, 0xa2a(r3)
/* 80CE098C  A8 1E 04 E4 */	lha r0, 0x4e4(r30)
/* 80CE0990  B0 03 0A 28 */	sth r0, 0xa28(r3)
/* 80CE0994  38 78 04 CE */	addi r3, r24, 0x4ce
/* 80CE0998  38 19 0B 60 */	addi r0, r25, 0xb60
/* 80CE099C  7C 7E 03 2E */	sthx r3, r30, r0
/* 80CE09A0  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80CE09A4  D0 32 07 B8 */	stfs f1, 0x7b8(r18)
/* 80CE09A8  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80CE09AC  D0 12 07 BC */	stfs f0, 0x7bc(r18)
/* 80CE09B0  D0 32 07 C0 */	stfs f1, 0x7c0(r18)
lbl_80CE09B4:
/* 80CE09B4  4B 32 C3 60 */	b pop__14mDoMtx_stack_cFv
/* 80CE09B8  7C 7E AA 14 */	add r3, r30, r21
/* 80CE09BC  9A 83 05 FC */	stb r20, 0x5fc(r3)
/* 80CE09C0  2C 13 00 01 */	cmpwi r19, 1
/* 80CE09C4  40 82 02 48 */	bne lbl_80CE0C0C
/* 80CE09C8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80CE09CC  D0 01 00 08 */	stfs f0, 8(r1)
/* 80CE09D0  38 00 00 00 */	li r0, 0
/* 80CE09D4  98 03 0C 30 */	stb r0, 0xc30(r3)
/* 80CE09D8  88 1E 05 70 */	lbz r0, 0x570(r30)
/* 80CE09DC  28 00 00 01 */	cmplwi r0, 1
/* 80CE09E0  41 82 01 5C */	beq lbl_80CE0B3C
/* 80CE09E4  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80CE09E8  2C 00 00 04 */	cmpwi r0, 4
/* 80CE09EC  40 82 00 88 */	bne lbl_80CE0A74
/* 80CE09F0  2C 15 00 02 */	cmpwi r21, 2
/* 80CE09F4  40 80 00 20 */	bge lbl_80CE0A14
/* 80CE09F8  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80CE09FC  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80CE0A00  80 63 00 00 */	lwz r3, 0(r3)
/* 80CE0A04  38 1A 1E FF */	addi r0, r26, 0x1eff
/* 80CE0A08  7C 04 07 34 */	extsh r4, r0
/* 80CE0A0C  4B 32 B9 D0 */	b mDoMtx_YrotS__FPA4_fs
/* 80CE0A10  48 00 00 38 */	b lbl_80CE0A48
lbl_80CE0A14:
/* 80CE0A14  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80CE0A18  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80CE0A1C  80 63 00 00 */	lwz r3, 0(r3)
/* 80CE0A20  38 1B 25 3B */	addi r0, r27, 0x253b
/* 80CE0A24  7C 04 07 34 */	extsh r4, r0
/* 80CE0A28  4B 32 B9 B4 */	b mDoMtx_YrotS__FPA4_fs
/* 80CE0A2C  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80CE0A30  4B 58 6F 5C */	b cM_rndFX__Ff
/* 80CE0A34  FC 00 08 1E */	fctiwz f0, f1
/* 80CE0A38  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80CE0A3C  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80CE0A40  38 19 0B FC */	addi r0, r25, 0xbfc
/* 80CE0A44  7C 7E 03 2E */	sthx r3, r30, r0
lbl_80CE0A48:
/* 80CE0A48  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80CE0A4C  4B 58 6F 08 */	b cM_rndF__Ff
/* 80CE0A50  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80CE0A54  EC 00 08 2A */	fadds f0, f0, f1
/* 80CE0A58  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80CE0A5C  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80CE0A60  4B 58 6F 2C */	b cM_rndFX__Ff
/* 80CE0A64  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80CE0A68  EC 00 08 2A */	fadds f0, f0, f1
/* 80CE0A6C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CE0A70  48 00 01 70 */	b lbl_80CE0BE0
lbl_80CE0A74:
/* 80CE0A74  2C 15 00 02 */	cmpwi r21, 2
/* 80CE0A78  40 80 00 24 */	bge lbl_80CE0A9C
/* 80CE0A7C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80CE0A80  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80CE0A84  80 63 00 00 */	lwz r3, 0(r3)
/* 80CE0A88  3C 9C 00 01 */	addis r4, r28, 1
/* 80CE0A8C  38 04 E0 00 */	addi r0, r4, -8192
/* 80CE0A90  7C 04 07 34 */	extsh r4, r0
/* 80CE0A94  4B 32 B9 48 */	b mDoMtx_YrotS__FPA4_fs
/* 80CE0A98  48 00 00 78 */	b lbl_80CE0B10
lbl_80CE0A9C:
/* 80CE0A9C  2C 15 00 0A */	cmpwi r21, 0xa
/* 80CE0AA0  40 80 00 3C */	bge lbl_80CE0ADC
/* 80CE0AA4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80CE0AA8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80CE0AAC  80 63 00 00 */	lwz r3, 0(r3)
/* 80CE0AB0  38 1A 0A AA */	addi r0, r26, 0xaaa
/* 80CE0AB4  7C 04 07 34 */	extsh r4, r0
/* 80CE0AB8  4B 32 B9 24 */	b mDoMtx_YrotS__FPA4_fs
/* 80CE0ABC  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80CE0AC0  4B 58 6E CC */	b cM_rndFX__Ff
/* 80CE0AC4  FC 00 08 1E */	fctiwz f0, f1
/* 80CE0AC8  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80CE0ACC  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80CE0AD0  38 19 0B FC */	addi r0, r25, 0xbfc
/* 80CE0AD4  7C 7E 03 2E */	sthx r3, r30, r0
/* 80CE0AD8  48 00 00 38 */	b lbl_80CE0B10
lbl_80CE0ADC:
/* 80CE0ADC  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80CE0AE0  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80CE0AE4  80 63 00 00 */	lwz r3, 0(r3)
/* 80CE0AE8  38 1D 15 54 */	addi r0, r29, 0x1554
/* 80CE0AEC  7C 04 07 34 */	extsh r4, r0
/* 80CE0AF0  4B 32 B8 EC */	b mDoMtx_YrotS__FPA4_fs
/* 80CE0AF4  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80CE0AF8  4B 58 6E 94 */	b cM_rndFX__Ff
/* 80CE0AFC  FC 00 08 1E */	fctiwz f0, f1
/* 80CE0B00  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80CE0B04  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80CE0B08  38 19 0B FC */	addi r0, r25, 0xbfc
/* 80CE0B0C  7C 7E 03 2E */	sthx r3, r30, r0
lbl_80CE0B10:
/* 80CE0B10  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80CE0B14  4B 58 6E 40 */	b cM_rndF__Ff
/* 80CE0B18  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80CE0B1C  EC 00 08 2A */	fadds f0, f0, f1
/* 80CE0B20  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80CE0B24  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80CE0B28  4B 58 6E 64 */	b cM_rndFX__Ff
/* 80CE0B2C  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80CE0B30  EC 00 08 2A */	fadds f0, f0, f1
/* 80CE0B34  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CE0B38  48 00 00 A8 */	b lbl_80CE0BE0
lbl_80CE0B3C:
/* 80CE0B3C  2C 15 00 02 */	cmpwi r21, 2
/* 80CE0B40  40 80 00 20 */	bge lbl_80CE0B60
/* 80CE0B44  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80CE0B48  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80CE0B4C  80 63 00 00 */	lwz r3, 0(r3)
/* 80CE0B50  38 1C 60 00 */	addi r0, r28, 0x6000
/* 80CE0B54  7C 04 07 34 */	extsh r4, r0
/* 80CE0B58  4B 32 B8 84 */	b mDoMtx_YrotS__FPA4_fs
/* 80CE0B5C  48 00 00 44 */	b lbl_80CE0BA0
lbl_80CE0B60:
/* 80CE0B60  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80CE0B64  4B 58 6E 28 */	b cM_rndFX__Ff
/* 80CE0B68  FC 00 08 1E */	fctiwz f0, f1
/* 80CE0B6C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80CE0B70  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 80CE0B74  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80CE0B78  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80CE0B7C  80 63 00 00 */	lwz r3, 0(r3)
/* 80CE0B80  4B 32 B8 5C */	b mDoMtx_YrotS__FPA4_fs
/* 80CE0B84  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80CE0B88  4B 58 6E 04 */	b cM_rndFX__Ff
/* 80CE0B8C  FC 00 08 1E */	fctiwz f0, f1
/* 80CE0B90  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80CE0B94  80 61 00 24 */	lwz r3, 0x24(r1)
/* 80CE0B98  38 19 0B FC */	addi r0, r25, 0xbfc
/* 80CE0B9C  7C 7E 03 2E */	sthx r3, r30, r0
lbl_80CE0BA0:
/* 80CE0BA0  2C 15 00 01 */	cmpwi r21, 1
/* 80CE0BA4  40 82 00 14 */	bne lbl_80CE0BB8
/* 80CE0BA8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80CE0BAC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CE0BB0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80CE0BB4  48 00 00 2C */	b lbl_80CE0BE0
lbl_80CE0BB8:
/* 80CE0BB8  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80CE0BBC  4B 58 6D 98 */	b cM_rndF__Ff
/* 80CE0BC0  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80CE0BC4  EC 00 08 2A */	fadds f0, f0, f1
/* 80CE0BC8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80CE0BCC  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80CE0BD0  4B 58 6D BC */	b cM_rndFX__Ff
/* 80CE0BD4  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80CE0BD8  EC 00 08 2A */	fadds f0, f0, f1
/* 80CE0BDC  D0 01 00 10 */	stfs f0, 0x10(r1)
lbl_80CE0BE0:
/* 80CE0BE0  38 61 00 08 */	addi r3, r1, 8
/* 80CE0BE4  38 96 08 F0 */	addi r4, r22, 0x8f0
/* 80CE0BE8  7C 9E 22 14 */	add r4, r30, r4
/* 80CE0BEC  4B 59 03 00 */	b MtxPosition__FP4cXyzP4cXyz
/* 80CE0BF0  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80CE0BF4  4B 58 6D 98 */	b cM_rndFX__Ff
/* 80CE0BF8  FC 00 08 1E */	fctiwz f0, f1
/* 80CE0BFC  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80CE0C00  80 61 00 24 */	lwz r3, 0x24(r1)
/* 80CE0C04  38 19 0B C8 */	addi r0, r25, 0xbc8
/* 80CE0C08  7C 7E 03 2E */	sthx r3, r30, r0
lbl_80CE0C0C:
/* 80CE0C0C  3F 9C 00 01 */	addis r28, r28, 1
/* 80CE0C10  3A B5 00 01 */	addi r21, r21, 1
/* 80CE0C14  2C 15 00 1A */	cmpwi r21, 0x1a
/* 80CE0C18  3B BD 10 00 */	addi r29, r29, 0x1000
/* 80CE0C1C  3B 9C 80 00 */	addi r28, r28, -32768
/* 80CE0C20  3B 7B 01 F4 */	addi r27, r27, 0x1f4
/* 80CE0C24  3B 5A 20 00 */	addi r26, r26, 0x2000
/* 80CE0C28  3B 39 00 02 */	addi r25, r25, 2
/* 80CE0C2C  3B 18 1F 9C */	addi r24, r24, 0x1f9c
/* 80CE0C30  3A F7 00 06 */	addi r23, r23, 6
/* 80CE0C34  3A D6 00 0C */	addi r22, r22, 0xc
/* 80CE0C38  41 80 FB A0 */	blt lbl_80CE07D8
/* 80CE0C3C  39 61 00 60 */	addi r11, r1, 0x60
/* 80CE0C40  4B 68 15 BC */	b _restgpr_18
/* 80CE0C44  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80CE0C48  7C 08 03 A6 */	mtlr r0
/* 80CE0C4C  38 21 00 60 */	addi r1, r1, 0x60
/* 80CE0C50  4E 80 00 20 */	blr 
