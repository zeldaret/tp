lbl_8071A06C:
/* 8071A06C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8071A070  7C 08 02 A6 */	mflr r0
/* 8071A074  90 01 00 34 */	stw r0, 0x34(r1)
/* 8071A078  39 61 00 30 */	addi r11, r1, 0x30
/* 8071A07C  4B C4 81 61 */	bl _savegpr_29
/* 8071A080  7C 7F 1B 78 */	mr r31, r3
/* 8071A084  3C 80 80 72 */	lis r4, lit_3777@ha /* 0x8071C544@ha */
/* 8071A088  3B C4 C5 44 */	addi r30, r4, lit_3777@l /* 0x8071C544@l */
/* 8071A08C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8071A090  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8071A094  88 04 5D B0 */	lbz r0, 0x5db0(r4)
/* 8071A098  7C 00 07 74 */	extsb r0, r0
/* 8071A09C  1C 00 00 38 */	mulli r0, r0, 0x38
/* 8071A0A0  7C 84 02 14 */	add r4, r4, r0
/* 8071A0A4  83 A4 5D 74 */	lwz r29, 0x5d74(r4)
/* 8071A0A8  A8 03 0C 32 */	lha r0, 0xc32(r3)
/* 8071A0AC  2C 00 00 01 */	cmpwi r0, 1
/* 8071A0B0  41 82 00 18 */	beq lbl_8071A0C8
/* 8071A0B4  40 80 00 08 */	bge lbl_8071A0BC
/* 8071A0B8  48 00 01 5C */	b lbl_8071A214
lbl_8071A0BC:
/* 8071A0BC  2C 00 00 03 */	cmpwi r0, 3
/* 8071A0C0  40 80 01 54 */	bge lbl_8071A214
/* 8071A0C4  48 00 00 DC */	b lbl_8071A1A0
lbl_8071A0C8:
/* 8071A0C8  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 8071A0CC  28 00 00 02 */	cmplwi r0, 2
/* 8071A0D0  41 82 00 28 */	beq lbl_8071A0F8
/* 8071A0D4  38 80 00 02 */	li r4, 2
/* 8071A0D8  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 8071A0DC  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 8071A0E0  38 C0 00 00 */	li r6, 0
/* 8071A0E4  4B 90 18 25 */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 8071A0E8  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 8071A0EC  60 00 00 02 */	ori r0, r0, 2
/* 8071A0F0  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 8071A0F4  48 00 01 20 */	b lbl_8071A214
lbl_8071A0F8:
/* 8071A0F8  38 7D 02 48 */	addi r3, r29, 0x248
/* 8071A0FC  4B A4 73 D5 */	bl Stop__9dCamera_cFv
/* 8071A100  38 00 00 02 */	li r0, 2
/* 8071A104  B0 1F 0C 32 */	sth r0, 0xc32(r31)
/* 8071A108  38 00 00 00 */	li r0, 0
/* 8071A10C  B0 1F 0C 34 */	sth r0, 0xc34(r31)
/* 8071A110  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 8071A114  D0 1F 0C 80 */	stfs f0, 0xc80(r31)
/* 8071A118  38 7D 02 48 */	addi r3, r29, 0x248
/* 8071A11C  38 80 00 03 */	li r4, 3
/* 8071A120  4B A4 8E ED */	bl SetTrimSize__9dCamera_cFl
/* 8071A124  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8071A128  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8071A12C  80 63 00 00 */	lwz r3, 0(r3)
/* 8071A130  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 8071A134  4B 8F 22 A9 */	bl mDoMtx_YrotS__FPA4_fs
/* 8071A138  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8071A13C  4B B4 D8 19 */	bl cM_rndF__Ff
/* 8071A140  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 8071A144  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8071A148  40 80 00 0C */	bge lbl_8071A154
/* 8071A14C  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 8071A150  48 00 00 08 */	b lbl_8071A158
lbl_8071A154:
/* 8071A154  C0 1E 02 18 */	lfs f0, 0x218(r30)
lbl_8071A158:
/* 8071A158  D0 01 00 08 */	stfs f0, 8(r1)
/* 8071A15C  C0 1E 02 1C */	lfs f0, 0x21c(r30)
/* 8071A160  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8071A164  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 8071A168  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8071A16C  38 61 00 08 */	addi r3, r1, 8
/* 8071A170  38 9F 0C 38 */	addi r4, r31, 0xc38
/* 8071A174  4B B5 6D 79 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8071A178  38 7F 0C 38 */	addi r3, r31, 0xc38
/* 8071A17C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8071A180  7C 65 1B 78 */	mr r5, r3
/* 8071A184  4B C2 CF 0D */	bl PSVECAdd
/* 8071A188  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8071A18C  D0 1F 0C 44 */	stfs f0, 0xc44(r31)
/* 8071A190  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8071A194  D0 1F 0C 48 */	stfs f0, 0xc48(r31)
/* 8071A198  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8071A19C  D0 1F 0C 4C */	stfs f0, 0xc4c(r31)
lbl_8071A1A0:
/* 8071A1A0  38 7F 0C 44 */	addi r3, r31, 0xc44
/* 8071A1A4  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 8071A1A8  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 8071A1AC  C0 7E 00 14 */	lfs f3, 0x14(r30)
/* 8071A1B0  4B B5 58 8D */	bl cLib_addCalc2__FPffff
/* 8071A1B4  38 7F 0C 48 */	addi r3, r31, 0xc48
/* 8071A1B8  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 8071A1BC  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8071A1C0  EC 21 00 2A */	fadds f1, f1, f0
/* 8071A1C4  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 8071A1C8  C0 7E 00 14 */	lfs f3, 0x14(r30)
/* 8071A1CC  4B B5 58 71 */	bl cLib_addCalc2__FPffff
/* 8071A1D0  38 7F 0C 4C */	addi r3, r31, 0xc4c
/* 8071A1D4  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 8071A1D8  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 8071A1DC  C0 7E 00 14 */	lfs f3, 0x14(r30)
/* 8071A1E0  4B B5 58 5D */	bl cLib_addCalc2__FPffff
/* 8071A1E4  A8 1F 0C 34 */	lha r0, 0xc34(r31)
/* 8071A1E8  2C 00 00 19 */	cmpwi r0, 0x19
/* 8071A1EC  40 82 00 0C */	bne lbl_8071A1F8
/* 8071A1F0  C0 1E 00 88 */	lfs f0, 0x88(r30)
/* 8071A1F4  D0 1F 0C 98 */	stfs f0, 0xc98(r31)
lbl_8071A1F8:
/* 8071A1F8  A8 1F 0C 34 */	lha r0, 0xc34(r31)
/* 8071A1FC  2C 00 00 50 */	cmpwi r0, 0x50
/* 8071A200  40 82 00 14 */	bne lbl_8071A214
/* 8071A204  38 00 00 0A */	li r0, 0xa
/* 8071A208  B0 1F 0C 30 */	sth r0, 0xc30(r31)
/* 8071A20C  38 00 00 96 */	li r0, 0x96
/* 8071A210  B0 1F 06 FC */	sth r0, 0x6fc(r31)
lbl_8071A214:
/* 8071A214  39 61 00 30 */	addi r11, r1, 0x30
/* 8071A218  4B C4 80 11 */	bl _restgpr_29
/* 8071A21C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8071A220  7C 08 03 A6 */	mtlr r0
/* 8071A224  38 21 00 30 */	addi r1, r1, 0x30
/* 8071A228  4E 80 00 20 */	blr 
