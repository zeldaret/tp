lbl_80A50094:
/* 80A50094  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80A50098  7C 08 02 A6 */	mflr r0
/* 80A5009C  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80A500A0  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 80A500A4  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 80A500A8  39 61 00 90 */	addi r11, r1, 0x90
/* 80A500AC  4B 91 21 25 */	bl _savegpr_26
/* 80A500B0  7C 7F 1B 78 */	mr r31, r3
/* 80A500B4  3C 60 80 A6 */	lis r3, lit_4030@ha /* 0x80A5DEFC@ha */
/* 80A500B8  3B C3 DE FC */	addi r30, r3, lit_4030@l /* 0x80A5DEFC@l */
/* 80A500BC  38 60 00 00 */	li r3, 0
/* 80A500C0  48 00 DC 99 */	bl dComIfGp_getPlayer__Fi
/* 80A500C4  7C 7D 1B 78 */	mr r29, r3
/* 80A500C8  38 60 00 00 */	li r3, 0
/* 80A500CC  48 00 DC 71 */	bl dComIfGp_getPlayerCameraID__Fi
/* 80A500D0  48 00 DC 55 */	bl dComIfGp_getCamera__Fi
/* 80A500D4  7C 7C 1B 78 */	mr r28, r3
/* 80A500D8  38 60 00 00 */	li r3, 0
/* 80A500DC  48 00 DC 49 */	bl dComIfGp_getCamera__Fi
/* 80A500E0  83 7F 09 34 */	lwz r27, 0x934(r31)
/* 80A500E4  A8 1F 0B 42 */	lha r0, 0xb42(r31)
/* 80A500E8  2C 00 00 51 */	cmpwi r0, 0x51
/* 80A500EC  41 82 12 80 */	beq lbl_80A5136C
/* 80A500F0  40 80 00 B4 */	bge lbl_80A501A4
/* 80A500F4  2C 00 00 3D */	cmpwi r0, 0x3d
/* 80A500F8  41 82 0B 20 */	beq lbl_80A50C18
/* 80A500FC  40 80 00 50 */	bge lbl_80A5014C
/* 80A50100  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A50104  41 82 04 F4 */	beq lbl_80A505F8
/* 80A50108  40 80 00 2C */	bge lbl_80A50134
/* 80A5010C  2C 00 00 02 */	cmpwi r0, 2
/* 80A50110  41 82 02 00 */	beq lbl_80A50310
/* 80A50114  40 80 00 14 */	bge lbl_80A50128
/* 80A50118  2C 00 00 00 */	cmpwi r0, 0
/* 80A5011C  41 82 25 50 */	beq lbl_80A5266C
/* 80A50120  40 80 01 30 */	bge lbl_80A50250
/* 80A50124  48 00 25 48 */	b lbl_80A5266C
lbl_80A50128:
/* 80A50128  2C 00 00 04 */	cmpwi r0, 4
/* 80A5012C  40 80 25 40 */	bge lbl_80A5266C
/* 80A50130  48 00 03 34 */	b lbl_80A50464
lbl_80A50134:
/* 80A50134  2C 00 00 0C */	cmpwi r0, 0xc
/* 80A50138  41 82 07 9C */	beq lbl_80A508D4
/* 80A5013C  41 80 05 50 */	blt lbl_80A5068C
/* 80A50140  2C 00 00 3C */	cmpwi r0, 0x3c
/* 80A50144  40 80 09 AC */	bge lbl_80A50AF0
/* 80A50148  48 00 25 24 */	b lbl_80A5266C
lbl_80A5014C:
/* 80A5014C  2C 00 00 4B */	cmpwi r0, 0x4b
/* 80A50150  41 82 0E 18 */	beq lbl_80A50F68
/* 80A50154  40 80 00 2C */	bge lbl_80A50180
/* 80A50158  2C 00 00 48 */	cmpwi r0, 0x48
/* 80A5015C  41 82 0C B8 */	beq lbl_80A50E14
/* 80A50160  40 80 00 14 */	bge lbl_80A50174
/* 80A50164  2C 00 00 46 */	cmpwi r0, 0x46
/* 80A50168  41 82 0B 18 */	beq lbl_80A50C80
/* 80A5016C  40 80 0B B0 */	bge lbl_80A50D1C
/* 80A50170  48 00 24 FC */	b lbl_80A5266C
lbl_80A50174:
/* 80A50174  2C 00 00 4A */	cmpwi r0, 0x4a
/* 80A50178  40 80 24 F4 */	bge lbl_80A5266C
/* 80A5017C  48 00 0D 34 */	b lbl_80A50EB0
lbl_80A50180:
/* 80A50180  2C 00 00 4E */	cmpwi r0, 0x4e
/* 80A50184  41 82 10 2C */	beq lbl_80A511B0
/* 80A50188  40 80 00 10 */	bge lbl_80A50198
/* 80A5018C  2C 00 00 4D */	cmpwi r0, 0x4d
/* 80A50190  40 80 0F 54 */	bge lbl_80A510E4
/* 80A50194  48 00 0E 70 */	b lbl_80A51004
lbl_80A50198:
/* 80A50198  2C 00 00 50 */	cmpwi r0, 0x50
/* 80A5019C  40 80 11 34 */	bge lbl_80A512D0
/* 80A501A0  48 00 10 40 */	b lbl_80A511E0
lbl_80A501A4:
/* 80A501A4  2C 00 01 2E */	cmpwi r0, 0x12e
/* 80A501A8  41 82 1D 40 */	beq lbl_80A51EE8
/* 80A501AC  40 80 00 54 */	bge lbl_80A50200
/* 80A501B0  2C 00 00 CA */	cmpwi r0, 0xca
/* 80A501B4  41 82 1A 68 */	beq lbl_80A51C1C
/* 80A501B8  40 80 00 2C */	bge lbl_80A501E4
/* 80A501BC  2C 00 00 71 */	cmpwi r0, 0x71
/* 80A501C0  40 80 00 14 */	bge lbl_80A501D4
/* 80A501C4  2C 00 00 6E */	cmpwi r0, 0x6e
/* 80A501C8  41 82 13 5C */	beq lbl_80A51524
/* 80A501CC  40 80 14 E4 */	bge lbl_80A516B0
/* 80A501D0  48 00 24 9C */	b lbl_80A5266C
lbl_80A501D4:
/* 80A501D4  2C 00 00 C8 */	cmpwi r0, 0xc8
/* 80A501D8  41 82 16 94 */	beq lbl_80A5186C
/* 80A501DC  40 80 17 F0 */	bge lbl_80A519CC
/* 80A501E0  48 00 24 8C */	b lbl_80A5266C
lbl_80A501E4:
/* 80A501E4  2C 00 01 2C */	cmpwi r0, 0x12c
/* 80A501E8  41 82 1B B4 */	beq lbl_80A51D9C
/* 80A501EC  40 80 1C 5C */	bge lbl_80A51E48
/* 80A501F0  2C 00 00 CC */	cmpwi r0, 0xcc
/* 80A501F4  41 82 1B 84 */	beq lbl_80A51D78
/* 80A501F8  40 80 24 74 */	bge lbl_80A5266C
/* 80A501FC  48 00 1A AC */	b lbl_80A51CA8
lbl_80A50200:
/* 80A50200  2C 00 01 68 */	cmpwi r0, 0x168
/* 80A50204  41 82 20 F4 */	beq lbl_80A522F8
/* 80A50208  40 80 00 30 */	bge lbl_80A50238
/* 80A5020C  2C 00 01 5F */	cmpwi r0, 0x15f
/* 80A50210  41 82 1E 7C */	beq lbl_80A5208C
/* 80A50214  40 80 00 18 */	bge lbl_80A5022C
/* 80A50218  2C 00 01 5E */	cmpwi r0, 0x15e
/* 80A5021C  40 80 1D CC */	bge lbl_80A51FE8
/* 80A50220  2C 00 01 30 */	cmpwi r0, 0x130
/* 80A50224  40 80 24 48 */	bge lbl_80A5266C
/* 80A50228  48 00 1D 24 */	b lbl_80A51F4C
lbl_80A5022C:
/* 80A5022C  2C 00 01 61 */	cmpwi r0, 0x161
/* 80A50230  40 80 24 3C */	bge lbl_80A5266C
/* 80A50234  48 00 20 10 */	b lbl_80A52244
lbl_80A50238:
/* 80A50238  2C 00 01 6B */	cmpwi r0, 0x16b
/* 80A5023C  41 82 23 EC */	beq lbl_80A52628
/* 80A50240  40 80 24 2C */	bge lbl_80A5266C
/* 80A50244  2C 00 01 6A */	cmpwi r0, 0x16a
/* 80A50248  40 80 22 C0 */	bge lbl_80A52508
/* 80A5024C  48 00 22 28 */	b lbl_80A52474
lbl_80A50250:
/* 80A50250  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 80A50254  48 00 DA BD */	bl checkCommandDemoAccrpt__11dEvt_info_cFv
/* 80A50258  2C 03 00 00 */	cmpwi r3, 0
/* 80A5025C  40 82 00 44 */	bne lbl_80A502A0
/* 80A50260  7F E3 FB 78 */	mr r3, r31
/* 80A50264  38 80 00 02 */	li r4, 2
/* 80A50268  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 80A5026C  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 80A50270  38 C0 00 00 */	li r6, 0
/* 80A50274  4B 5C B6 95 */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 80A50278  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 80A5027C  38 80 00 02 */	li r4, 2
/* 80A50280  48 00 DA 81 */	bl onCondition__11dEvt_info_cFUs
/* 80A50284  38 61 00 5C */	addi r3, r1, 0x5c
/* 80A50288  38 80 FF FF */	li r4, -1
/* 80A5028C  4B FF 8E DD */	bl __dt__4cXyzFv
/* 80A50290  38 61 00 68 */	addi r3, r1, 0x68
/* 80A50294  38 80 FF FF */	li r4, -1
/* 80A50298  4B FF 8E D1 */	bl __dt__4cXyzFv
/* 80A5029C  48 00 25 50 */	b lbl_80A527EC
lbl_80A502A0:
/* 80A502A0  38 00 00 02 */	li r0, 2
/* 80A502A4  B0 1F 0B 42 */	sth r0, 0xb42(r31)
/* 80A502A8  38 7C 02 48 */	addi r3, r28, 0x248
/* 80A502AC  4B 71 12 25 */	bl Stop__9dCamera_cFv
/* 80A502B0  38 7C 02 48 */	addi r3, r28, 0x248
/* 80A502B4  38 80 00 03 */	li r4, 3
/* 80A502B8  4B 71 2D 55 */	bl SetTrimSize__9dCamera_cFl
/* 80A502BC  38 00 00 00 */	li r0, 0
/* 80A502C0  B0 1F 0B 44 */	sth r0, 0xb44(r31)
/* 80A502C4  7F A3 EB 78 */	mr r3, r29
/* 80A502C8  48 00 DA 25 */	bl changeOriginalDemo__9daPy_py_cFv
/* 80A502CC  7F A3 EB 78 */	mr r3, r29
/* 80A502D0  38 80 00 13 */	li r4, 0x13
/* 80A502D4  38 A0 00 00 */	li r5, 0
/* 80A502D8  38 C0 00 00 */	li r6, 0
/* 80A502DC  38 E0 00 00 */	li r7, 0
/* 80A502E0  48 00 D9 F9 */	bl changeDemoMode__9daPy_py_cFUliis
/* 80A502E4  7F A3 EB 78 */	mr r3, r29
/* 80A502E8  38 80 00 00 */	li r4, 0
/* 80A502EC  48 00 D9 E5 */	bl changeDemoParam0__9daPy_py_cFi
/* 80A502F0  38 7F 0B 60 */	addi r3, r31, 0xb60
/* 80A502F4  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80A502F8  48 00 D9 BD */	bl __as__4cXyzFRC4cXyz
/* 80A502FC  C0 1E 01 3C */	lfs f0, 0x13c(r30)
/* 80A50300  D0 1F 0B B0 */	stfs f0, 0xbb0(r31)
/* 80A50304  D0 1F 0B A8 */	stfs f0, 0xba8(r31)
/* 80A50308  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80A5030C  D0 1F 0B AC */	stfs f0, 0xbac(r31)
lbl_80A50310:
/* 80A50310  C0 1E 00 BC */	lfs f0, 0xbc(r30)
/* 80A50314  D0 1F 0B B8 */	stfs f0, 0xbb8(r31)
/* 80A50318  38 7F 0B 60 */	addi r3, r31, 0xb60
/* 80A5031C  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 80A50320  C0 5E 01 40 */	lfs f2, 0x140(r30)
/* 80A50324  C0 7E 00 40 */	lfs f3, 0x40(r30)
/* 80A50328  4B 81 F7 15 */	bl cLib_addCalc2__FPffff
/* 80A5032C  38 7F 0B 64 */	addi r3, r31, 0xb64
/* 80A50330  C0 3B 04 D4 */	lfs f1, 0x4d4(r27)
/* 80A50334  C0 1E 01 44 */	lfs f0, 0x144(r30)
/* 80A50338  EC 21 00 28 */	fsubs f1, f1, f0
/* 80A5033C  C0 5E 01 40 */	lfs f2, 0x140(r30)
/* 80A50340  C0 7E 00 40 */	lfs f3, 0x40(r30)
/* 80A50344  4B 81 F6 F9 */	bl cLib_addCalc2__FPffff
/* 80A50348  38 7F 0B 68 */	addi r3, r31, 0xb68
/* 80A5034C  C0 3D 04 D8 */	lfs f1, 0x4d8(r29)
/* 80A50350  C0 5E 01 40 */	lfs f2, 0x140(r30)
/* 80A50354  C0 7E 00 40 */	lfs f3, 0x40(r30)
/* 80A50358  4B 81 F6 E5 */	bl cLib_addCalc2__FPffff
/* 80A5035C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80A50360  2C 00 00 02 */	cmpwi r0, 2
/* 80A50364  40 82 00 1C */	bne lbl_80A50380
/* 80A50368  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80A5036C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80A50370  80 63 00 00 */	lwz r3, 0(r3)
/* 80A50374  A8 9B 04 DE */	lha r4, 0x4de(r27)
/* 80A50378  4B 5B C0 65 */	bl mDoMtx_YrotS__FPA4_fs
/* 80A5037C  48 00 00 18 */	b lbl_80A50394
lbl_80A50380:
/* 80A50380  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80A50384  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80A50388  80 63 00 00 */	lwz r3, 0(r3)
/* 80A5038C  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 80A50390  4B 5B C0 4D */	bl mDoMtx_YrotS__FPA4_fs
lbl_80A50394:
/* 80A50394  C0 1F 0B A8 */	lfs f0, 0xba8(r31)
/* 80A50398  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80A5039C  C0 1F 0B AC */	lfs f0, 0xbac(r31)
/* 80A503A0  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80A503A4  C0 1F 0B B0 */	lfs f0, 0xbb0(r31)
/* 80A503A8  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80A503AC  38 61 00 68 */	addi r3, r1, 0x68
/* 80A503B0  38 81 00 5C */	addi r4, r1, 0x5c
/* 80A503B4  4B 82 0B 39 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80A503B8  C0 21 00 5C */	lfs f1, 0x5c(r1)
/* 80A503BC  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80A503C0  EC 21 00 2A */	fadds f1, f1, f0
/* 80A503C4  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 80A503C8  C0 61 00 60 */	lfs f3, 0x60(r1)
/* 80A503CC  C0 5B 04 D4 */	lfs f2, 0x4d4(r27)
/* 80A503D0  C0 1E 01 44 */	lfs f0, 0x144(r30)
/* 80A503D4  EC 02 00 28 */	fsubs f0, f2, f0
/* 80A503D8  EC 03 00 2A */	fadds f0, f3, f0
/* 80A503DC  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80A503E0  C0 41 00 64 */	lfs f2, 0x64(r1)
/* 80A503E4  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80A503E8  EC 02 00 2A */	fadds f0, f2, f0
/* 80A503EC  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80A503F0  A8 1F 0B 44 */	lha r0, 0xb44(r31)
/* 80A503F4  2C 00 00 00 */	cmpwi r0, 0
/* 80A503F8  40 82 00 14 */	bne lbl_80A5040C
/* 80A503FC  38 7F 0B 48 */	addi r3, r31, 0xb48
/* 80A50400  38 81 00 5C */	addi r4, r1, 0x5c
/* 80A50404  48 00 D8 B1 */	bl __as__4cXyzFRC4cXyz
/* 80A50408  48 00 00 3C */	b lbl_80A50444
lbl_80A5040C:
/* 80A5040C  38 7F 0B 48 */	addi r3, r31, 0xb48
/* 80A50410  C0 5E 00 FC */	lfs f2, 0xfc(r30)
/* 80A50414  C0 7E 00 04 */	lfs f3, 4(r30)
/* 80A50418  4B 81 F6 25 */	bl cLib_addCalc2__FPffff
/* 80A5041C  38 7F 0B 4C */	addi r3, r31, 0xb4c
/* 80A50420  C0 21 00 60 */	lfs f1, 0x60(r1)
/* 80A50424  C0 5E 00 FC */	lfs f2, 0xfc(r30)
/* 80A50428  C0 7E 00 04 */	lfs f3, 4(r30)
/* 80A5042C  4B 81 F6 11 */	bl cLib_addCalc2__FPffff
/* 80A50430  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80A50434  C0 21 00 64 */	lfs f1, 0x64(r1)
/* 80A50438  C0 5E 00 FC */	lfs f2, 0xfc(r30)
/* 80A5043C  C0 7E 00 04 */	lfs f3, 4(r30)
/* 80A50440  4B 81 F5 FD */	bl cLib_addCalc2__FPffff
lbl_80A50444:
/* 80A50444  88 1F 09 2C */	lbz r0, 0x92c(r31)
/* 80A50448  7C 00 07 75 */	extsb. r0, r0
/* 80A5044C  41 82 22 20 */	beq lbl_80A5266C
/* 80A50450  C0 3F 0B B0 */	lfs f1, 0xbb0(r31)
/* 80A50454  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 80A50458  EC 01 00 2A */	fadds f0, f1, f0
/* 80A5045C  D0 1F 0B B0 */	stfs f0, 0xbb0(r31)
/* 80A50460  48 00 22 0C */	b lbl_80A5266C
lbl_80A50464:
/* 80A50464  38 7F 0B 60 */	addi r3, r31, 0xb60
/* 80A50468  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 80A5046C  C0 5E 01 48 */	lfs f2, 0x148(r30)
/* 80A50470  C0 7E 00 20 */	lfs f3, 0x20(r30)
/* 80A50474  4B 81 F5 C9 */	bl cLib_addCalc2__FPffff
/* 80A50478  38 7F 0B 64 */	addi r3, r31, 0xb64
/* 80A5047C  C0 3E 00 D8 */	lfs f1, 0xd8(r30)
/* 80A50480  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80A50484  EC 21 00 2A */	fadds f1, f1, f0
/* 80A50488  C0 5E 01 48 */	lfs f2, 0x148(r30)
/* 80A5048C  C0 7E 00 20 */	lfs f3, 0x20(r30)
/* 80A50490  4B 81 F5 AD */	bl cLib_addCalc2__FPffff
/* 80A50494  38 7F 0B 68 */	addi r3, r31, 0xb68
/* 80A50498  C0 3D 04 D8 */	lfs f1, 0x4d8(r29)
/* 80A5049C  C0 5E 01 48 */	lfs f2, 0x148(r30)
/* 80A504A0  C0 7E 00 20 */	lfs f3, 0x20(r30)
/* 80A504A4  4B 81 F5 99 */	bl cLib_addCalc2__FPffff
/* 80A504A8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80A504AC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80A504B0  80 63 00 00 */	lwz r3, 0(r3)
/* 80A504B4  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 80A504B8  4B 5B BF 25 */	bl mDoMtx_YrotS__FPA4_fs
/* 80A504BC  C3 FE 00 40 */	lfs f31, 0x40(r30)
/* 80A504C0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80A504C4  2C 00 00 04 */	cmpwi r0, 4
/* 80A504C8  40 82 00 90 */	bne lbl_80A50558
/* 80A504CC  88 1F 0B DB */	lbz r0, 0xbdb(r31)
/* 80A504D0  7C 00 07 75 */	extsb. r0, r0
/* 80A504D4  40 82 00 84 */	bne lbl_80A50558
/* 80A504D8  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 80A504DC  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80A504E0  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80A504E4  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 80A504E8  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80A504EC  A8 1F 0B 44 */	lha r0, 0xb44(r31)
/* 80A504F0  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A504F4  40 82 00 1C */	bne lbl_80A50510
/* 80A504F8  7F A3 EB 78 */	mr r3, r29
/* 80A504FC  38 80 00 28 */	li r4, 0x28
/* 80A50500  38 A0 00 00 */	li r5, 0
/* 80A50504  38 C0 00 00 */	li r6, 0
/* 80A50508  38 E0 00 00 */	li r7, 0
/* 80A5050C  48 00 D7 CD */	bl changeDemoMode__9daPy_py_cFUliis
lbl_80A50510:
/* 80A50510  A8 1F 0B 44 */	lha r0, 0xb44(r31)
/* 80A50514  2C 00 00 1C */	cmpwi r0, 0x1c
/* 80A50518  40 82 00 1C */	bne lbl_80A50534
/* 80A5051C  7F A3 EB 78 */	mr r3, r29
/* 80A50520  38 80 00 29 */	li r4, 0x29
/* 80A50524  38 A0 00 00 */	li r5, 0
/* 80A50528  38 C0 00 00 */	li r6, 0
/* 80A5052C  38 E0 00 00 */	li r7, 0
/* 80A50530  48 00 D7 A9 */	bl changeDemoMode__9daPy_py_cFUliis
lbl_80A50534:
/* 80A50534  A8 1F 0B 44 */	lha r0, 0xb44(r31)
/* 80A50538  2C 00 00 28 */	cmpwi r0, 0x28
/* 80A5053C  40 82 00 14 */	bne lbl_80A50550
/* 80A50540  38 00 00 64 */	li r0, 0x64
/* 80A50544  B0 1F 0B 42 */	sth r0, 0xb42(r31)
/* 80A50548  38 00 00 01 */	li r0, 1
/* 80A5054C  98 1F 0B DB */	stb r0, 0xbdb(r31)
lbl_80A50550:
/* 80A50550  C3 FE 00 04 */	lfs f31, 4(r30)
/* 80A50554  48 00 00 2C */	b lbl_80A50580
lbl_80A50558:
/* 80A50558  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80A5055C  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80A50560  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80A50564  C0 1E 01 18 */	lfs f0, 0x118(r30)
/* 80A50568  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80A5056C  A8 1F 0B 44 */	lha r0, 0xb44(r31)
/* 80A50570  2C 00 00 08 */	cmpwi r0, 8
/* 80A50574  40 82 00 0C */	bne lbl_80A50580
/* 80A50578  38 00 00 64 */	li r0, 0x64
/* 80A5057C  B0 1F 0B 42 */	sth r0, 0xb42(r31)
lbl_80A50580:
/* 80A50580  38 61 00 68 */	addi r3, r1, 0x68
/* 80A50584  38 81 00 5C */	addi r4, r1, 0x5c
/* 80A50588  4B 82 09 65 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80A5058C  C0 21 00 5C */	lfs f1, 0x5c(r1)
/* 80A50590  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80A50594  EC 21 00 2A */	fadds f1, f1, f0
/* 80A50598  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 80A5059C  C0 41 00 60 */	lfs f2, 0x60(r1)
/* 80A505A0  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80A505A4  EC 02 00 2A */	fadds f0, f2, f0
/* 80A505A8  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80A505AC  C0 41 00 64 */	lfs f2, 0x64(r1)
/* 80A505B0  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80A505B4  EC 02 00 2A */	fadds f0, f2, f0
/* 80A505B8  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80A505BC  38 7F 0B 48 */	addi r3, r31, 0xb48
/* 80A505C0  C0 5E 01 40 */	lfs f2, 0x140(r30)
/* 80A505C4  FC 60 F8 90 */	fmr f3, f31
/* 80A505C8  4B 81 F4 75 */	bl cLib_addCalc2__FPffff
/* 80A505CC  38 7F 0B 4C */	addi r3, r31, 0xb4c
/* 80A505D0  C0 21 00 60 */	lfs f1, 0x60(r1)
/* 80A505D4  C0 5E 01 40 */	lfs f2, 0x140(r30)
/* 80A505D8  FC 60 F8 90 */	fmr f3, f31
/* 80A505DC  4B 81 F4 61 */	bl cLib_addCalc2__FPffff
/* 80A505E0  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80A505E4  C0 21 00 64 */	lfs f1, 0x64(r1)
/* 80A505E8  C0 5E 01 40 */	lfs f2, 0x140(r30)
/* 80A505EC  FC 60 F8 90 */	fmr f3, f31
/* 80A505F0  4B 81 F4 4D */	bl cLib_addCalc2__FPffff
/* 80A505F4  48 00 20 78 */	b lbl_80A5266C
lbl_80A505F8:
/* 80A505F8  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 80A505FC  48 00 D7 15 */	bl checkCommandDemoAccrpt__11dEvt_info_cFv
/* 80A50600  2C 03 00 00 */	cmpwi r3, 0
/* 80A50604  40 82 00 44 */	bne lbl_80A50648
/* 80A50608  7F E3 FB 78 */	mr r3, r31
/* 80A5060C  38 80 00 02 */	li r4, 2
/* 80A50610  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 80A50614  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 80A50618  38 C0 00 00 */	li r6, 0
/* 80A5061C  4B 5C B2 ED */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 80A50620  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 80A50624  38 80 00 02 */	li r4, 2
/* 80A50628  48 00 D6 D9 */	bl onCondition__11dEvt_info_cFUs
/* 80A5062C  38 61 00 5C */	addi r3, r1, 0x5c
/* 80A50630  38 80 FF FF */	li r4, -1
/* 80A50634  4B FF 8B 35 */	bl __dt__4cXyzFv
/* 80A50638  38 61 00 68 */	addi r3, r1, 0x68
/* 80A5063C  38 80 FF FF */	li r4, -1
/* 80A50640  4B FF 8B 29 */	bl __dt__4cXyzFv
/* 80A50644  48 00 21 A8 */	b lbl_80A527EC
lbl_80A50648:
/* 80A50648  38 00 00 0B */	li r0, 0xb
/* 80A5064C  B0 1F 0B 42 */	sth r0, 0xb42(r31)
/* 80A50650  38 7C 02 48 */	addi r3, r28, 0x248
/* 80A50654  4B 71 0E 7D */	bl Stop__9dCamera_cFv
/* 80A50658  38 7C 02 48 */	addi r3, r28, 0x248
/* 80A5065C  38 80 00 03 */	li r4, 3
/* 80A50660  4B 71 29 AD */	bl SetTrimSize__9dCamera_cFl
/* 80A50664  38 00 00 00 */	li r0, 0
/* 80A50668  B0 1F 0B 44 */	sth r0, 0xb44(r31)
/* 80A5066C  C0 1E 00 BC */	lfs f0, 0xbc(r30)
/* 80A50670  D0 1F 0B B8 */	stfs f0, 0xbb8(r31)
/* 80A50674  C0 1E 01 3C */	lfs f0, 0x13c(r30)
/* 80A50678  D0 1F 0B B0 */	stfs f0, 0xbb0(r31)
/* 80A5067C  D0 1F 0B A8 */	stfs f0, 0xba8(r31)
/* 80A50680  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80A50684  D0 1F 0B AC */	stfs f0, 0xbac(r31)
/* 80A50688  90 1F 0B C0 */	stw r0, 0xbc0(r31)
lbl_80A5068C:
/* 80A5068C  38 61 00 5C */	addi r3, r1, 0x5c
/* 80A50690  38 9F 0B C8 */	addi r4, r31, 0xbc8
/* 80A50694  48 00 D6 21 */	bl __as__4cXyzFRC4cXyz
/* 80A50698  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80A5069C  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80A506A0  38 61 00 5C */	addi r3, r1, 0x5c
/* 80A506A4  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 80A506A8  4B FF 89 59 */	bl setPlayerPosAndAngle__FP4cXyzs
/* 80A506AC  83 5F 0B C0 */	lwz r26, 0xbc0(r31)
/* 80A506B0  7F E3 FB 78 */	mr r3, r31
/* 80A506B4  80 9B 09 1C */	lwz r4, 0x91c(r27)
/* 80A506B8  4B FF F6 C5 */	bl get_move_saru__FP12npc_ks_classi
/* 80A506BC  90 7F 0B C0 */	stw r3, 0xbc0(r31)
/* 80A506C0  C0 3B 04 D4 */	lfs f1, 0x4d4(r27)
/* 80A506C4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80A506C8  EC 01 00 28 */	fsubs f0, f1, f0
/* 80A506CC  D0 1F 0B 70 */	stfs f0, 0xb70(r31)
/* 80A506D0  80 7F 0B C0 */	lwz r3, 0xbc0(r31)
/* 80A506D4  28 03 00 00 */	cmplwi r3, 0
/* 80A506D8  41 82 01 10 */	beq lbl_80A507E8
/* 80A506DC  83 63 09 34 */	lwz r27, 0x934(r3)
/* 80A506E0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80A506E4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80A506E8  80 63 00 00 */	lwz r3, 0(r3)
/* 80A506EC  A8 9F 0B D4 */	lha r4, 0xbd4(r31)
/* 80A506F0  4B 5B BC ED */	bl mDoMtx_YrotS__FPA4_fs
/* 80A506F4  C0 1F 0B A8 */	lfs f0, 0xba8(r31)
/* 80A506F8  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80A506FC  C0 1F 0B AC */	lfs f0, 0xbac(r31)
/* 80A50700  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80A50704  C0 1F 0B B0 */	lfs f0, 0xbb0(r31)
/* 80A50708  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80A5070C  38 61 00 68 */	addi r3, r1, 0x68
/* 80A50710  38 9F 0B 54 */	addi r4, r31, 0xb54
/* 80A50714  4B 82 07 D9 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80A50718  C0 3F 0B 54 */	lfs f1, 0xb54(r31)
/* 80A5071C  80 7F 0B C0 */	lwz r3, 0xbc0(r31)
/* 80A50720  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80A50724  EC 01 00 2A */	fadds f0, f1, f0
/* 80A50728  D0 1F 0B 54 */	stfs f0, 0xb54(r31)
/* 80A5072C  C0 5F 0B 58 */	lfs f2, 0xb58(r31)
/* 80A50730  C0 3B 04 D4 */	lfs f1, 0x4d4(r27)
/* 80A50734  C0 1E 01 44 */	lfs f0, 0x144(r30)
/* 80A50738  EC 01 00 28 */	fsubs f0, f1, f0
/* 80A5073C  EC 02 00 2A */	fadds f0, f2, f0
/* 80A50740  D0 1F 0B 58 */	stfs f0, 0xb58(r31)
/* 80A50744  C0 3F 0B 5C */	lfs f1, 0xb5c(r31)
/* 80A50748  80 7F 0B C0 */	lwz r3, 0xbc0(r31)
/* 80A5074C  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80A50750  EC 01 00 2A */	fadds f0, f1, f0
/* 80A50754  D0 1F 0B 5C */	stfs f0, 0xb5c(r31)
/* 80A50758  80 7F 0B C0 */	lwz r3, 0xbc0(r31)
/* 80A5075C  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80A50760  D0 1F 0B 6C */	stfs f0, 0xb6c(r31)
/* 80A50764  C0 3B 04 D4 */	lfs f1, 0x4d4(r27)
/* 80A50768  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80A5076C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80A50770  D0 1F 0B 70 */	stfs f0, 0xb70(r31)
/* 80A50774  80 7F 0B C0 */	lwz r3, 0xbc0(r31)
/* 80A50778  A8 03 05 E8 */	lha r0, 0x5e8(r3)
/* 80A5077C  2C 00 00 14 */	cmpwi r0, 0x14
/* 80A50780  40 82 00 18 */	bne lbl_80A50798
/* 80A50784  C0 1F 0B 70 */	lfs f0, 0xb70(r31)
/* 80A50788  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 80A5078C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80A50790  40 80 00 08 */	bge lbl_80A50798
/* 80A50794  D0 3F 0B 70 */	stfs f1, 0xb70(r31)
lbl_80A50798:
/* 80A50798  80 7F 0B C0 */	lwz r3, 0xbc0(r31)
/* 80A5079C  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80A507A0  D0 1F 0B 74 */	stfs f0, 0xb74(r31)
/* 80A507A4  80 1F 0B C0 */	lwz r0, 0xbc0(r31)
/* 80A507A8  7C 1A 00 40 */	cmplw r26, r0
/* 80A507AC  41 82 00 1C */	beq lbl_80A507C8
/* 80A507B0  38 7F 0B 48 */	addi r3, r31, 0xb48
/* 80A507B4  38 9F 0B 54 */	addi r4, r31, 0xb54
/* 80A507B8  48 00 D4 FD */	bl __as__4cXyzFRC4cXyz
/* 80A507BC  38 7F 0B 60 */	addi r3, r31, 0xb60
/* 80A507C0  38 9F 0B 6C */	addi r4, r31, 0xb6c
/* 80A507C4  48 00 D4 F1 */	bl __as__4cXyzFRC4cXyz
lbl_80A507C8:
/* 80A507C8  38 7F 0B 84 */	addi r3, r31, 0xb84
/* 80A507CC  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80A507D0  FC 40 08 90 */	fmr f2, f1
/* 80A507D4  FC 60 08 90 */	fmr f3, f1
/* 80A507D8  48 00 D4 CD */	bl set__4cXyzFfff
/* 80A507DC  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 80A507E0  D0 1F 0B C4 */	stfs f0, 0xbc4(r31)
/* 80A507E4  48 00 00 F0 */	b lbl_80A508D4
lbl_80A507E8:
/* 80A507E8  7F E3 FB 78 */	mr r3, r31
/* 80A507EC  80 9B 09 1C */	lwz r4, 0x91c(r27)
/* 80A507F0  4B FF F6 5D */	bl all_hang_check__FP12npc_ks_classi
/* 80A507F4  2C 03 00 00 */	cmpwi r3, 0
/* 80A507F8  41 82 00 DC */	beq lbl_80A508D4
/* 80A507FC  38 00 00 0C */	li r0, 0xc
/* 80A50800  B0 1F 0B 42 */	sth r0, 0xb42(r31)
/* 80A50804  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80A50808  7C 00 07 75 */	extsb. r0, r0
/* 80A5080C  40 82 00 10 */	bne lbl_80A5081C
/* 80A50810  38 00 00 2D */	li r0, 0x2d
/* 80A50814  B0 1F 0B 44 */	sth r0, 0xb44(r31)
/* 80A50818  48 00 00 BC */	b lbl_80A508D4
lbl_80A5081C:
/* 80A5081C  80 1B 09 1C */	lwz r0, 0x91c(r27)
/* 80A50820  2C 00 00 03 */	cmpwi r0, 3
/* 80A50824  41 80 00 A8 */	blt lbl_80A508CC
/* 80A50828  3C 60 80 A6 */	lis r3, saru_p@ha /* 0x80A5E478@ha */
/* 80A5082C  38 63 E4 78 */	addi r3, r3, saru_p@l /* 0x80A5E478@l */
/* 80A50830  38 83 FF F8 */	addi r4, r3, -8
/* 80A50834  54 00 10 3A */	slwi r0, r0, 2
/* 80A50838  7C 64 00 2E */	lwzx r3, r4, r0
/* 80A5083C  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80A50840  D0 1F 0B 6C */	stfs f0, 0xb6c(r31)
/* 80A50844  80 1B 09 1C */	lwz r0, 0x91c(r27)
/* 80A50848  54 00 10 3A */	slwi r0, r0, 2
/* 80A5084C  7C 64 00 2E */	lwzx r3, r4, r0
/* 80A50850  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80A50854  D0 1F 0B 70 */	stfs f0, 0xb70(r31)
/* 80A50858  C0 3F 0B 70 */	lfs f1, 0xb70(r31)
/* 80A5085C  C0 1E 01 10 */	lfs f0, 0x110(r30)
/* 80A50860  EC 01 00 28 */	fsubs f0, f1, f0
/* 80A50864  D0 1F 0B 70 */	stfs f0, 0xb70(r31)
/* 80A50868  80 1B 09 1C */	lwz r0, 0x91c(r27)
/* 80A5086C  54 00 10 3A */	slwi r0, r0, 2
/* 80A50870  7C 64 00 2E */	lwzx r3, r4, r0
/* 80A50874  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80A50878  D0 1F 0B 74 */	stfs f0, 0xb74(r31)
/* 80A5087C  C0 3F 0B 6C */	lfs f1, 0xb6c(r31)
/* 80A50880  C0 1F 0B 60 */	lfs f0, 0xb60(r31)
/* 80A50884  EC 21 00 28 */	fsubs f1, f1, f0
/* 80A50888  48 00 D4 11 */	bl fabsf__3stdFf
/* 80A5088C  D0 3F 0B 84 */	stfs f1, 0xb84(r31)
/* 80A50890  C0 3F 0B 70 */	lfs f1, 0xb70(r31)
/* 80A50894  C0 1F 0B 64 */	lfs f0, 0xb64(r31)
/* 80A50898  EC 21 00 28 */	fsubs f1, f1, f0
/* 80A5089C  48 00 D3 FD */	bl fabsf__3stdFf
/* 80A508A0  D0 3F 0B 88 */	stfs f1, 0xb88(r31)
/* 80A508A4  C0 3F 0B 74 */	lfs f1, 0xb74(r31)
/* 80A508A8  C0 1F 0B 68 */	lfs f0, 0xb68(r31)
/* 80A508AC  EC 21 00 28 */	fsubs f1, f1, f0
/* 80A508B0  48 00 D3 E9 */	bl fabsf__3stdFf
/* 80A508B4  D0 3F 0B 8C */	stfs f1, 0xb8c(r31)
/* 80A508B8  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80A508BC  D0 1F 0B C4 */	stfs f0, 0xbc4(r31)
/* 80A508C0  38 00 00 05 */	li r0, 5
/* 80A508C4  B0 1F 0B 44 */	sth r0, 0xb44(r31)
/* 80A508C8  48 00 00 0C */	b lbl_80A508D4
lbl_80A508CC:
/* 80A508CC  38 00 00 2D */	li r0, 0x2d
/* 80A508D0  B0 1F 0B 44 */	sth r0, 0xb44(r31)
lbl_80A508D4:
/* 80A508D4  38 7F 0B 48 */	addi r3, r31, 0xb48
/* 80A508D8  C0 3F 0B 54 */	lfs f1, 0xb54(r31)
/* 80A508DC  C0 5E 01 40 */	lfs f2, 0x140(r30)
/* 80A508E0  C0 7E 00 04 */	lfs f3, 4(r30)
/* 80A508E4  C0 1F 0B C4 */	lfs f0, 0xbc4(r31)
/* 80A508E8  EC 63 00 32 */	fmuls f3, f3, f0
/* 80A508EC  4B 81 F1 51 */	bl cLib_addCalc2__FPffff
/* 80A508F0  38 7F 0B 4C */	addi r3, r31, 0xb4c
/* 80A508F4  C0 3F 0B 58 */	lfs f1, 0xb58(r31)
/* 80A508F8  C0 5E 01 40 */	lfs f2, 0x140(r30)
/* 80A508FC  C0 7E 00 04 */	lfs f3, 4(r30)
/* 80A50900  C0 1F 0B C4 */	lfs f0, 0xbc4(r31)
/* 80A50904  EC 63 00 32 */	fmuls f3, f3, f0
/* 80A50908  4B 81 F1 35 */	bl cLib_addCalc2__FPffff
/* 80A5090C  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80A50910  C0 3F 0B 5C */	lfs f1, 0xb5c(r31)
/* 80A50914  C0 5E 01 40 */	lfs f2, 0x140(r30)
/* 80A50918  C0 7E 00 04 */	lfs f3, 4(r30)
/* 80A5091C  C0 1F 0B C4 */	lfs f0, 0xbc4(r31)
/* 80A50920  EC 63 00 32 */	fmuls f3, f3, f0
/* 80A50924  4B 81 F1 19 */	bl cLib_addCalc2__FPffff
/* 80A50928  38 7F 0B 60 */	addi r3, r31, 0xb60
/* 80A5092C  C0 3F 0B 6C */	lfs f1, 0xb6c(r31)
/* 80A50930  C0 5E 01 40 */	lfs f2, 0x140(r30)
/* 80A50934  C0 7F 0B 84 */	lfs f3, 0xb84(r31)
/* 80A50938  C0 1F 0B C4 */	lfs f0, 0xbc4(r31)
/* 80A5093C  EC 63 00 32 */	fmuls f3, f3, f0
/* 80A50940  4B 81 F0 FD */	bl cLib_addCalc2__FPffff
/* 80A50944  38 7F 0B 64 */	addi r3, r31, 0xb64
/* 80A50948  C0 3F 0B 70 */	lfs f1, 0xb70(r31)
/* 80A5094C  C0 5E 01 40 */	lfs f2, 0x140(r30)
/* 80A50950  C0 7F 0B 88 */	lfs f3, 0xb88(r31)
/* 80A50954  C0 1F 0B C4 */	lfs f0, 0xbc4(r31)
/* 80A50958  EC 63 00 32 */	fmuls f3, f3, f0
/* 80A5095C  4B 81 F0 E1 */	bl cLib_addCalc2__FPffff
/* 80A50960  38 7F 0B 68 */	addi r3, r31, 0xb68
/* 80A50964  C0 3F 0B 74 */	lfs f1, 0xb74(r31)
/* 80A50968  C0 5E 01 40 */	lfs f2, 0x140(r30)
/* 80A5096C  C0 7F 0B 8C */	lfs f3, 0xb8c(r31)
/* 80A50970  C0 1F 0B C4 */	lfs f0, 0xbc4(r31)
/* 80A50974  EC 63 00 32 */	fmuls f3, f3, f0
/* 80A50978  4B 81 F0 C5 */	bl cLib_addCalc2__FPffff
/* 80A5097C  A8 1F 0B 42 */	lha r0, 0xb42(r31)
/* 80A50980  2C 00 00 0C */	cmpwi r0, 0xc
/* 80A50984  40 82 1C E8 */	bne lbl_80A5266C
/* 80A50988  38 7F 0B B8 */	addi r3, r31, 0xbb8
/* 80A5098C  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 80A50990  C0 5E 01 40 */	lfs f2, 0x140(r30)
/* 80A50994  C0 7F 0B C4 */	lfs f3, 0xbc4(r31)
/* 80A50998  4B 81 F0 A5 */	bl cLib_addCalc2__FPffff
/* 80A5099C  38 7F 0B C4 */	addi r3, r31, 0xbc4
/* 80A509A0  C0 3E 00 FC */	lfs f1, 0xfc(r30)
/* 80A509A4  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 80A509A8  C0 7E 01 4C */	lfs f3, 0x14c(r30)
/* 80A509AC  4B 81 F0 91 */	bl cLib_addCalc2__FPffff
/* 80A509B0  A8 1F 0B 44 */	lha r0, 0xb44(r31)
/* 80A509B4  2C 00 00 55 */	cmpwi r0, 0x55
/* 80A509B8  40 81 1C B4 */	ble lbl_80A5266C
/* 80A509BC  38 00 00 64 */	li r0, 0x64
/* 80A509C0  B0 1F 0B 42 */	sth r0, 0xb42(r31)
/* 80A509C4  88 1F 0B 40 */	lbz r0, 0xb40(r31)
/* 80A509C8  54 00 10 3A */	slwi r0, r0, 2
/* 80A509CC  3C 60 80 A6 */	lis r3, saru_p@ha /* 0x80A5E478@ha */
/* 80A509D0  38 63 E4 78 */	addi r3, r3, saru_p@l /* 0x80A5E478@l */
/* 80A509D4  7C 63 00 2E */	lwzx r3, r3, r0
/* 80A509D8  C0 23 04 D0 */	lfs f1, 0x4d0(r3)
/* 80A509DC  C0 1F 0B C8 */	lfs f0, 0xbc8(r31)
/* 80A509E0  EC 21 00 28 */	fsubs f1, f1, f0
/* 80A509E4  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 80A509E8  C0 43 04 D8 */	lfs f2, 0x4d8(r3)
/* 80A509EC  C0 1F 0B D0 */	lfs f0, 0xbd0(r31)
/* 80A509F0  EC 42 00 28 */	fsubs f2, f2, f0
/* 80A509F4  D0 41 00 70 */	stfs f2, 0x70(r1)
/* 80A509F8  4B 81 6C 7D */	bl cM_atan2s__Fff
/* 80A509FC  7C 7A 1B 78 */	mr r26, r3
/* 80A50A00  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80A50A04  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80A50A08  80 63 00 00 */	lwz r3, 0(r3)
/* 80A50A0C  7F 44 D3 78 */	mr r4, r26
/* 80A50A10  4B 5B B9 CD */	bl mDoMtx_YrotS__FPA4_fs
/* 80A50A14  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80A50A18  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80A50A1C  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80A50A20  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80A50A24  2C 00 00 04 */	cmpwi r0, 4
/* 80A50A28  40 82 00 10 */	bne lbl_80A50A38
/* 80A50A2C  C0 1E 01 50 */	lfs f0, 0x150(r30)
/* 80A50A30  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80A50A34  48 00 00 0C */	b lbl_80A50A40
lbl_80A50A38:
/* 80A50A38  C0 1E 01 14 */	lfs f0, 0x114(r30)
/* 80A50A3C  D0 01 00 70 */	stfs f0, 0x70(r1)
lbl_80A50A40:
/* 80A50A40  38 61 00 68 */	addi r3, r1, 0x68
/* 80A50A44  38 81 00 5C */	addi r4, r1, 0x5c
/* 80A50A48  4B 82 04 A5 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80A50A4C  C0 21 00 5C */	lfs f1, 0x5c(r1)
/* 80A50A50  C0 1F 0B C8 */	lfs f0, 0xbc8(r31)
/* 80A50A54  EC 01 00 2A */	fadds f0, f1, f0
/* 80A50A58  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80A50A5C  C0 21 00 64 */	lfs f1, 0x64(r1)
/* 80A50A60  C0 1F 0B D0 */	lfs f0, 0xbd0(r31)
/* 80A50A64  EC 01 00 2A */	fadds f0, f1, f0
/* 80A50A68  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80A50A6C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80A50A70  2C 00 00 02 */	cmpwi r0, 2
/* 80A50A74  40 82 00 10 */	bne lbl_80A50A84
/* 80A50A78  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 80A50A7C  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80A50A80  48 00 00 0C */	b lbl_80A50A8C
lbl_80A50A84:
/* 80A50A84  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80A50A88  D0 01 00 60 */	stfs f0, 0x60(r1)
lbl_80A50A8C:
/* 80A50A8C  38 61 00 5C */	addi r3, r1, 0x5c
/* 80A50A90  7F 44 D3 78 */	mr r4, r26
/* 80A50A94  4B FF 85 6D */	bl setPlayerPosAndAngle__FP4cXyzs
/* 80A50A98  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80A50A9C  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80A50AA0  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 80A50AA4  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80A50AA8  C0 1E 01 50 */	lfs f0, 0x150(r30)
/* 80A50AAC  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80A50AB0  38 61 00 68 */	addi r3, r1, 0x68
/* 80A50AB4  38 9F 0B 48 */	addi r4, r31, 0xb48
/* 80A50AB8  4B 82 04 35 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80A50ABC  38 7F 0B 48 */	addi r3, r31, 0xb48
/* 80A50AC0  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80A50AC4  48 00 D1 A1 */	bl __apl__4cXyzFRC3Vec
/* 80A50AC8  38 7F 0B 60 */	addi r3, r31, 0xb60
/* 80A50ACC  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80A50AD0  48 00 D1 E5 */	bl __as__4cXyzFRC4cXyz
/* 80A50AD4  C0 3F 0B 64 */	lfs f1, 0xb64(r31)
/* 80A50AD8  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 80A50ADC  EC 01 00 2A */	fadds f0, f1, f0
/* 80A50AE0  D0 1F 0B 64 */	stfs f0, 0xb64(r31)
/* 80A50AE4  C0 1E 00 BC */	lfs f0, 0xbc(r30)
/* 80A50AE8  D0 1F 0B B8 */	stfs f0, 0xbb8(r31)
/* 80A50AEC  48 00 1B 80 */	b lbl_80A5266C
lbl_80A50AF0:
/* 80A50AF0  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 80A50AF4  48 00 D2 1D */	bl checkCommandDemoAccrpt__11dEvt_info_cFv
/* 80A50AF8  2C 03 00 00 */	cmpwi r3, 0
/* 80A50AFC  40 82 00 44 */	bne lbl_80A50B40
/* 80A50B00  7F E3 FB 78 */	mr r3, r31
/* 80A50B04  38 80 00 02 */	li r4, 2
/* 80A50B08  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 80A50B0C  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 80A50B10  38 C0 00 00 */	li r6, 0
/* 80A50B14  4B 5C AD F5 */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 80A50B18  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 80A50B1C  38 80 00 02 */	li r4, 2
/* 80A50B20  48 00 D1 E1 */	bl onCondition__11dEvt_info_cFUs
/* 80A50B24  38 61 00 5C */	addi r3, r1, 0x5c
/* 80A50B28  38 80 FF FF */	li r4, -1
/* 80A50B2C  4B FF 86 3D */	bl __dt__4cXyzFv
/* 80A50B30  38 61 00 68 */	addi r3, r1, 0x68
/* 80A50B34  38 80 FF FF */	li r4, -1
/* 80A50B38  4B FF 86 31 */	bl __dt__4cXyzFv
/* 80A50B3C  48 00 1C B0 */	b lbl_80A527EC
lbl_80A50B40:
/* 80A50B40  38 00 00 3D */	li r0, 0x3d
/* 80A50B44  B0 1F 0B 42 */	sth r0, 0xb42(r31)
/* 80A50B48  38 7C 02 48 */	addi r3, r28, 0x248
/* 80A50B4C  4B 71 09 85 */	bl Stop__9dCamera_cFv
/* 80A50B50  38 7C 02 48 */	addi r3, r28, 0x248
/* 80A50B54  38 80 00 03 */	li r4, 3
/* 80A50B58  4B 71 24 B5 */	bl SetTrimSize__9dCamera_cFl
/* 80A50B5C  38 00 00 00 */	li r0, 0
/* 80A50B60  B0 1F 0B 44 */	sth r0, 0xb44(r31)
/* 80A50B64  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80A50B68  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80A50B6C  80 63 00 00 */	lwz r3, 0(r3)
/* 80A50B70  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80A50B74  4B 5B B8 69 */	bl mDoMtx_YrotS__FPA4_fs
/* 80A50B78  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 80A50B7C  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80A50B80  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 80A50B84  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80A50B88  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80A50B8C  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80A50B90  38 61 00 68 */	addi r3, r1, 0x68
/* 80A50B94  38 9F 0B 48 */	addi r4, r31, 0xb48
/* 80A50B98  4B 82 03 55 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80A50B9C  38 7F 0B 48 */	addi r3, r31, 0xb48
/* 80A50BA0  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80A50BA4  48 00 D0 C1 */	bl __apl__4cXyzFRC3Vec
/* 80A50BA8  C0 7F 0B 48 */	lfs f3, 0xb48(r31)
/* 80A50BAC  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80A50BB0  EC 43 00 28 */	fsubs f2, f3, f0
/* 80A50BB4  D0 41 00 68 */	stfs f2, 0x68(r1)
/* 80A50BB8  C0 3F 0B 50 */	lfs f1, 0xb50(r31)
/* 80A50BBC  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80A50BC0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80A50BC4  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80A50BC8  EC 22 00 B2 */	fmuls f1, f2, f2
/* 80A50BCC  EC 00 00 32 */	fmuls f0, f0, f0
/* 80A50BD0  EC 21 00 2A */	fadds f1, f1, f0
/* 80A50BD4  C0 1E 01 54 */	lfs f0, 0x154(r30)
/* 80A50BD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A50BDC  40 80 00 10 */	bge lbl_80A50BEC
/* 80A50BE0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80A50BE4  EC 03 00 2A */	fadds f0, f3, f0
/* 80A50BE8  D0 1F 0B 48 */	stfs f0, 0xb48(r31)
lbl_80A50BEC:
/* 80A50BEC  38 7F 0B 60 */	addi r3, r31, 0xb60
/* 80A50BF0  38 9F 05 38 */	addi r4, r31, 0x538
/* 80A50BF4  48 00 D0 C1 */	bl __as__4cXyzFRC4cXyz
/* 80A50BF8  7F A3 EB 78 */	mr r3, r29
/* 80A50BFC  48 00 D0 F1 */	bl changeOriginalDemo__9daPy_py_cFv
/* 80A50C00  7F A3 EB 78 */	mr r3, r29
/* 80A50C04  38 80 00 01 */	li r4, 1
/* 80A50C08  38 A0 00 01 */	li r5, 1
/* 80A50C0C  38 C0 00 00 */	li r6, 0
/* 80A50C10  38 E0 00 00 */	li r7, 0
/* 80A50C14  48 00 D0 C5 */	bl changeDemoMode__9daPy_py_cFUliis
lbl_80A50C18:
/* 80A50C18  38 61 00 5C */	addi r3, r1, 0x5c
/* 80A50C1C  38 9D 04 BC */	addi r4, r29, 0x4bc
/* 80A50C20  48 00 D0 95 */	bl __as__4cXyzFRC4cXyz
/* 80A50C24  C0 1E 01 58 */	lfs f0, 0x158(r30)
/* 80A50C28  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80A50C2C  38 61 00 5C */	addi r3, r1, 0x5c
/* 80A50C30  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 80A50C34  4B FF 83 CD */	bl setPlayerPosAndAngle__FP4cXyzs
/* 80A50C38  C0 1E 01 5C */	lfs f0, 0x15c(r30)
/* 80A50C3C  D0 1F 0B B8 */	stfs f0, 0xbb8(r31)
/* 80A50C40  38 7F 0B 60 */	addi r3, r31, 0xb60
/* 80A50C44  C0 3F 05 38 */	lfs f1, 0x538(r31)
/* 80A50C48  C0 5E 00 FC */	lfs f2, 0xfc(r30)
/* 80A50C4C  C0 7E 00 40 */	lfs f3, 0x40(r30)
/* 80A50C50  4B 81 ED ED */	bl cLib_addCalc2__FPffff
/* 80A50C54  38 7F 0B 64 */	addi r3, r31, 0xb64
/* 80A50C58  C0 3F 05 3C */	lfs f1, 0x53c(r31)
/* 80A50C5C  C0 5E 00 FC */	lfs f2, 0xfc(r30)
/* 80A50C60  C0 7E 00 40 */	lfs f3, 0x40(r30)
/* 80A50C64  4B 81 ED D9 */	bl cLib_addCalc2__FPffff
/* 80A50C68  38 7F 0B 68 */	addi r3, r31, 0xb68
/* 80A50C6C  C0 3F 05 40 */	lfs f1, 0x540(r31)
/* 80A50C70  C0 5E 00 FC */	lfs f2, 0xfc(r30)
/* 80A50C74  C0 7E 00 40 */	lfs f3, 0x40(r30)
/* 80A50C78  4B 81 ED C5 */	bl cLib_addCalc2__FPffff
/* 80A50C7C  48 00 19 F0 */	b lbl_80A5266C
lbl_80A50C80:
/* 80A50C80  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 80A50C84  48 00 D0 8D */	bl checkCommandDemoAccrpt__11dEvt_info_cFv
/* 80A50C88  2C 03 00 00 */	cmpwi r3, 0
/* 80A50C8C  40 82 00 44 */	bne lbl_80A50CD0
/* 80A50C90  7F E3 FB 78 */	mr r3, r31
/* 80A50C94  38 80 00 02 */	li r4, 2
/* 80A50C98  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 80A50C9C  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 80A50CA0  38 C0 00 00 */	li r6, 0
/* 80A50CA4  4B 5C AC 65 */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 80A50CA8  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 80A50CAC  38 80 00 02 */	li r4, 2
/* 80A50CB0  48 00 D0 51 */	bl onCondition__11dEvt_info_cFUs
/* 80A50CB4  38 61 00 5C */	addi r3, r1, 0x5c
/* 80A50CB8  38 80 FF FF */	li r4, -1
/* 80A50CBC  4B FF 84 AD */	bl __dt__4cXyzFv
/* 80A50CC0  38 61 00 68 */	addi r3, r1, 0x68
/* 80A50CC4  38 80 FF FF */	li r4, -1
/* 80A50CC8  4B FF 84 A1 */	bl __dt__4cXyzFv
/* 80A50CCC  48 00 1B 20 */	b lbl_80A527EC
lbl_80A50CD0:
/* 80A50CD0  38 00 00 47 */	li r0, 0x47
/* 80A50CD4  B0 1F 0B 42 */	sth r0, 0xb42(r31)
/* 80A50CD8  38 7C 02 48 */	addi r3, r28, 0x248
/* 80A50CDC  4B 71 07 F5 */	bl Stop__9dCamera_cFv
/* 80A50CE0  38 7C 02 48 */	addi r3, r28, 0x248
/* 80A50CE4  38 80 00 03 */	li r4, 3
/* 80A50CE8  4B 71 23 25 */	bl SetTrimSize__9dCamera_cFl
/* 80A50CEC  38 00 00 00 */	li r0, 0
/* 80A50CF0  B0 1F 0B 44 */	sth r0, 0xb44(r31)
/* 80A50CF4  C0 1E 00 BC */	lfs f0, 0xbc(r30)
/* 80A50CF8  D0 1F 0B B8 */	stfs f0, 0xbb8(r31)
/* 80A50CFC  7F A3 EB 78 */	mr r3, r29
/* 80A50D00  48 00 CF ED */	bl changeOriginalDemo__9daPy_py_cFv
/* 80A50D04  7F A3 EB 78 */	mr r3, r29
/* 80A50D08  38 80 00 01 */	li r4, 1
/* 80A50D0C  38 A0 00 01 */	li r5, 1
/* 80A50D10  38 C0 00 00 */	li r6, 0
/* 80A50D14  38 E0 00 00 */	li r7, 0
/* 80A50D18  48 00 CF C1 */	bl changeDemoMode__9daPy_py_cFUliis
lbl_80A50D1C:
/* 80A50D1C  A8 7F 0B 44 */	lha r3, 0xb44(r31)
/* 80A50D20  7C 60 07 35 */	extsh. r0, r3
/* 80A50D24  40 82 00 38 */	bne lbl_80A50D5C
/* 80A50D28  38 7F 0B 60 */	addi r3, r31, 0xb60
/* 80A50D2C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80A50D30  48 00 CF 85 */	bl __as__4cXyzFRC4cXyz
/* 80A50D34  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 80A50D38  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80A50D3C  EC 01 00 2A */	fadds f0, f1, f0
/* 80A50D40  D0 1F 0B 64 */	stfs f0, 0xb64(r31)
/* 80A50D44  38 7F 0B 48 */	addi r3, r31, 0xb48
/* 80A50D48  C0 3E 01 60 */	lfs f1, 0x160(r30)
/* 80A50D4C  C0 5E 01 64 */	lfs f2, 0x164(r30)
/* 80A50D50  C0 7E 01 68 */	lfs f3, 0x168(r30)
/* 80A50D54  48 00 CF 51 */	bl set__4cXyzFfff
/* 80A50D58  48 00 00 60 */	b lbl_80A50DB8
lbl_80A50D5C:
/* 80A50D5C  2C 03 00 D2 */	cmpwi r3, 0xd2
/* 80A50D60  40 82 00 1C */	bne lbl_80A50D7C
/* 80A50D64  38 7F 0B 48 */	addi r3, r31, 0xb48
/* 80A50D68  C0 3E 01 6C */	lfs f1, 0x16c(r30)
/* 80A50D6C  C0 5E 01 70 */	lfs f2, 0x170(r30)
/* 80A50D70  C0 7E 01 74 */	lfs f3, 0x174(r30)
/* 80A50D74  48 00 CF 31 */	bl set__4cXyzFfff
/* 80A50D78  48 00 00 40 */	b lbl_80A50DB8
lbl_80A50D7C:
/* 80A50D7C  2C 03 00 F0 */	cmpwi r3, 0xf0
/* 80A50D80  40 82 00 1C */	bne lbl_80A50D9C
/* 80A50D84  38 7F 0B 48 */	addi r3, r31, 0xb48
/* 80A50D88  C0 3E 01 78 */	lfs f1, 0x178(r30)
/* 80A50D8C  C0 5E 01 7C */	lfs f2, 0x17c(r30)
/* 80A50D90  C0 7E 01 80 */	lfs f3, 0x180(r30)
/* 80A50D94  48 00 CF 11 */	bl set__4cXyzFfff
/* 80A50D98  48 00 00 20 */	b lbl_80A50DB8
lbl_80A50D9C:
/* 80A50D9C  2C 03 01 22 */	cmpwi r3, 0x122
/* 80A50DA0  40 82 00 18 */	bne lbl_80A50DB8
/* 80A50DA4  38 7F 0B 48 */	addi r3, r31, 0xb48
/* 80A50DA8  C0 3E 01 84 */	lfs f1, 0x184(r30)
/* 80A50DAC  C0 5E 01 88 */	lfs f2, 0x188(r30)
/* 80A50DB0  C0 7E 01 8C */	lfs f3, 0x18c(r30)
/* 80A50DB4  48 00 CE F1 */	bl set__4cXyzFfff
lbl_80A50DB8:
/* 80A50DB8  38 7F 0B 60 */	addi r3, r31, 0xb60
/* 80A50DBC  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80A50DC0  C0 5E 01 40 */	lfs f2, 0x140(r30)
/* 80A50DC4  C0 7E 00 88 */	lfs f3, 0x88(r30)
/* 80A50DC8  4B 81 EC 75 */	bl cLib_addCalc2__FPffff
/* 80A50DCC  38 7F 0B 64 */	addi r3, r31, 0xb64
/* 80A50DD0  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 80A50DD4  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80A50DD8  EC 21 00 2A */	fadds f1, f1, f0
/* 80A50DDC  C0 5E 00 FC */	lfs f2, 0xfc(r30)
/* 80A50DE0  C0 7E 00 C0 */	lfs f3, 0xc0(r30)
/* 80A50DE4  4B 81 EC 59 */	bl cLib_addCalc2__FPffff
/* 80A50DE8  38 7F 0B 68 */	addi r3, r31, 0xb68
/* 80A50DEC  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 80A50DF0  C0 5E 01 40 */	lfs f2, 0x140(r30)
/* 80A50DF4  C0 7E 00 88 */	lfs f3, 0x88(r30)
/* 80A50DF8  4B 81 EC 45 */	bl cLib_addCalc2__FPffff
/* 80A50DFC  A8 1F 0B 44 */	lha r0, 0xb44(r31)
/* 80A50E00  2C 00 01 66 */	cmpwi r0, 0x166
/* 80A50E04  40 82 18 68 */	bne lbl_80A5266C
/* 80A50E08  38 00 00 63 */	li r0, 0x63
/* 80A50E0C  B0 1F 0B 42 */	sth r0, 0xb42(r31)
/* 80A50E10  48 00 18 5C */	b lbl_80A5266C
lbl_80A50E14:
/* 80A50E14  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 80A50E18  48 00 CE F9 */	bl checkCommandDemoAccrpt__11dEvt_info_cFv
/* 80A50E1C  2C 03 00 00 */	cmpwi r3, 0
/* 80A50E20  40 82 00 44 */	bne lbl_80A50E64
/* 80A50E24  7F E3 FB 78 */	mr r3, r31
/* 80A50E28  38 80 00 02 */	li r4, 2
/* 80A50E2C  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 80A50E30  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 80A50E34  38 C0 00 00 */	li r6, 0
/* 80A50E38  4B 5C AA D1 */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 80A50E3C  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 80A50E40  38 80 00 02 */	li r4, 2
/* 80A50E44  48 00 CE BD */	bl onCondition__11dEvt_info_cFUs
/* 80A50E48  38 61 00 5C */	addi r3, r1, 0x5c
/* 80A50E4C  38 80 FF FF */	li r4, -1
/* 80A50E50  4B FF 83 19 */	bl __dt__4cXyzFv
/* 80A50E54  38 61 00 68 */	addi r3, r1, 0x68
/* 80A50E58  38 80 FF FF */	li r4, -1
/* 80A50E5C  4B FF 83 0D */	bl __dt__4cXyzFv
/* 80A50E60  48 00 19 8C */	b lbl_80A527EC
lbl_80A50E64:
/* 80A50E64  38 00 00 49 */	li r0, 0x49
/* 80A50E68  B0 1F 0B 42 */	sth r0, 0xb42(r31)
/* 80A50E6C  38 7C 02 48 */	addi r3, r28, 0x248
/* 80A50E70  4B 71 06 61 */	bl Stop__9dCamera_cFv
/* 80A50E74  38 7C 02 48 */	addi r3, r28, 0x248
/* 80A50E78  38 80 00 03 */	li r4, 3
/* 80A50E7C  4B 71 21 91 */	bl SetTrimSize__9dCamera_cFl
/* 80A50E80  38 00 00 00 */	li r0, 0
/* 80A50E84  B0 1F 0B 44 */	sth r0, 0xb44(r31)
/* 80A50E88  C0 1E 00 BC */	lfs f0, 0xbc(r30)
/* 80A50E8C  D0 1F 0B B8 */	stfs f0, 0xbb8(r31)
/* 80A50E90  7F A3 EB 78 */	mr r3, r29
/* 80A50E94  48 00 CE 59 */	bl changeOriginalDemo__9daPy_py_cFv
/* 80A50E98  7F A3 EB 78 */	mr r3, r29
/* 80A50E9C  38 80 00 01 */	li r4, 1
/* 80A50EA0  38 A0 00 01 */	li r5, 1
/* 80A50EA4  38 C0 00 00 */	li r6, 0
/* 80A50EA8  38 E0 00 00 */	li r7, 0
/* 80A50EAC  48 00 CE 2D */	bl changeDemoMode__9daPy_py_cFUliis
lbl_80A50EB0:
/* 80A50EB0  A8 1F 0B 44 */	lha r0, 0xb44(r31)
/* 80A50EB4  2C 00 00 00 */	cmpwi r0, 0
/* 80A50EB8  40 82 00 34 */	bne lbl_80A50EEC
/* 80A50EBC  38 7F 0B 60 */	addi r3, r31, 0xb60
/* 80A50EC0  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80A50EC4  48 00 CD F1 */	bl __as__4cXyzFRC4cXyz
/* 80A50EC8  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 80A50ECC  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80A50ED0  EC 01 00 2A */	fadds f0, f1, f0
/* 80A50ED4  D0 1F 0B 64 */	stfs f0, 0xb64(r31)
/* 80A50ED8  38 7F 0B 48 */	addi r3, r31, 0xb48
/* 80A50EDC  C0 3E 01 90 */	lfs f1, 0x190(r30)
/* 80A50EE0  C0 5E 01 94 */	lfs f2, 0x194(r30)
/* 80A50EE4  C0 7E 01 98 */	lfs f3, 0x198(r30)
/* 80A50EE8  48 00 CD BD */	bl set__4cXyzFfff
lbl_80A50EEC:
/* 80A50EEC  38 61 00 5C */	addi r3, r1, 0x5c
/* 80A50EF0  C0 3E 01 9C */	lfs f1, 0x19c(r30)
/* 80A50EF4  C0 5E 01 A0 */	lfs f2, 0x1a0(r30)
/* 80A50EF8  C0 7E 01 A4 */	lfs f3, 0x1a4(r30)
/* 80A50EFC  48 00 CD A9 */	bl set__4cXyzFfff
/* 80A50F00  38 61 00 5C */	addi r3, r1, 0x5c
/* 80A50F04  38 80 96 E5 */	li r4, -26907
/* 80A50F08  4B FF 80 F9 */	bl setPlayerPosAndAngle__FP4cXyzs
/* 80A50F0C  38 7F 0B 60 */	addi r3, r31, 0xb60
/* 80A50F10  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80A50F14  C0 5E 00 FC */	lfs f2, 0xfc(r30)
/* 80A50F18  C0 7E 00 10 */	lfs f3, 0x10(r30)
/* 80A50F1C  4B 81 EB 21 */	bl cLib_addCalc2__FPffff
/* 80A50F20  38 7F 0B 64 */	addi r3, r31, 0xb64
/* 80A50F24  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 80A50F28  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80A50F2C  EC 21 00 2A */	fadds f1, f1, f0
/* 80A50F30  C0 5E 00 FC */	lfs f2, 0xfc(r30)
/* 80A50F34  C0 7E 00 08 */	lfs f3, 8(r30)
/* 80A50F38  4B 81 EB 05 */	bl cLib_addCalc2__FPffff
/* 80A50F3C  38 7F 0B 68 */	addi r3, r31, 0xb68
/* 80A50F40  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 80A50F44  C0 5E 01 A8 */	lfs f2, 0x1a8(r30)
/* 80A50F48  C0 7E 00 10 */	lfs f3, 0x10(r30)
/* 80A50F4C  4B 81 EA F1 */	bl cLib_addCalc2__FPffff
/* 80A50F50  A8 1F 0B 44 */	lha r0, 0xb44(r31)
/* 80A50F54  2C 00 01 18 */	cmpwi r0, 0x118
/* 80A50F58  40 82 17 14 */	bne lbl_80A5266C
/* 80A50F5C  38 00 00 64 */	li r0, 0x64
/* 80A50F60  B0 1F 0B 42 */	sth r0, 0xb42(r31)
/* 80A50F64  48 00 17 08 */	b lbl_80A5266C
lbl_80A50F68:
/* 80A50F68  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 80A50F6C  48 00 CD A5 */	bl checkCommandDemoAccrpt__11dEvt_info_cFv
/* 80A50F70  2C 03 00 00 */	cmpwi r3, 0
/* 80A50F74  40 82 00 44 */	bne lbl_80A50FB8
/* 80A50F78  7F E3 FB 78 */	mr r3, r31
/* 80A50F7C  38 80 00 02 */	li r4, 2
/* 80A50F80  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 80A50F84  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 80A50F88  38 C0 00 00 */	li r6, 0
/* 80A50F8C  4B 5C A9 7D */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 80A50F90  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 80A50F94  38 80 00 02 */	li r4, 2
/* 80A50F98  48 00 CD 69 */	bl onCondition__11dEvt_info_cFUs
/* 80A50F9C  38 61 00 5C */	addi r3, r1, 0x5c
/* 80A50FA0  38 80 FF FF */	li r4, -1
/* 80A50FA4  4B FF 81 C5 */	bl __dt__4cXyzFv
/* 80A50FA8  38 61 00 68 */	addi r3, r1, 0x68
/* 80A50FAC  38 80 FF FF */	li r4, -1
/* 80A50FB0  4B FF 81 B9 */	bl __dt__4cXyzFv
/* 80A50FB4  48 00 18 38 */	b lbl_80A527EC
lbl_80A50FB8:
/* 80A50FB8  38 00 00 4C */	li r0, 0x4c
/* 80A50FBC  B0 1F 0B 42 */	sth r0, 0xb42(r31)
/* 80A50FC0  38 7C 02 48 */	addi r3, r28, 0x248
/* 80A50FC4  4B 71 05 0D */	bl Stop__9dCamera_cFv
/* 80A50FC8  38 7C 02 48 */	addi r3, r28, 0x248
/* 80A50FCC  38 80 00 03 */	li r4, 3
/* 80A50FD0  4B 71 20 3D */	bl SetTrimSize__9dCamera_cFl
/* 80A50FD4  38 00 00 00 */	li r0, 0
/* 80A50FD8  B0 1F 0B 44 */	sth r0, 0xb44(r31)
/* 80A50FDC  C0 1E 00 BC */	lfs f0, 0xbc(r30)
/* 80A50FE0  D0 1F 0B B8 */	stfs f0, 0xbb8(r31)
/* 80A50FE4  7F A3 EB 78 */	mr r3, r29
/* 80A50FE8  48 00 CD 05 */	bl changeOriginalDemo__9daPy_py_cFv
/* 80A50FEC  7F A3 EB 78 */	mr r3, r29
/* 80A50FF0  38 80 00 01 */	li r4, 1
/* 80A50FF4  38 A0 00 01 */	li r5, 1
/* 80A50FF8  38 C0 00 00 */	li r6, 0
/* 80A50FFC  38 E0 00 00 */	li r7, 0
/* 80A51000  48 00 CC D9 */	bl changeDemoMode__9daPy_py_cFUliis
lbl_80A51004:
/* 80A51004  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80A51008  A8 9F 05 C8 */	lha r4, 0x5c8(r31)
/* 80A5100C  3C 84 00 01 */	addis r4, r4, 1
/* 80A51010  38 04 80 00 */	addi r0, r4, -32768
/* 80A51014  7C 04 07 34 */	extsh r4, r0
/* 80A51018  4B FF 7F E9 */	bl setPlayerPosAndAngle__FP4cXyzs
/* 80A5101C  A8 1F 0B 44 */	lha r0, 0xb44(r31)
/* 80A51020  2C 00 00 00 */	cmpwi r0, 0
/* 80A51024  40 82 00 64 */	bne lbl_80A51088
/* 80A51028  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80A5102C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80A51030  80 63 00 00 */	lwz r3, 0(r3)
/* 80A51034  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80A51038  4B 5B B3 A5 */	bl mDoMtx_YrotS__FPA4_fs
/* 80A5103C  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80A51040  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80A51044  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 80A51048  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80A5104C  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 80A51050  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80A51054  38 61 00 68 */	addi r3, r1, 0x68
/* 80A51058  38 9F 0B 48 */	addi r4, r31, 0xb48
/* 80A5105C  4B 81 FE 91 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80A51060  38 7F 0B 48 */	addi r3, r31, 0xb48
/* 80A51064  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80A51068  48 00 CB FD */	bl __apl__4cXyzFRC3Vec
/* 80A5106C  38 7F 0B 60 */	addi r3, r31, 0xb60
/* 80A51070  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80A51074  48 00 CC 41 */	bl __as__4cXyzFRC4cXyz
/* 80A51078  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 80A5107C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80A51080  EC 01 00 2A */	fadds f0, f1, f0
/* 80A51084  D0 1F 0B 64 */	stfs f0, 0xb64(r31)
lbl_80A51088:
/* 80A51088  38 7F 0B 60 */	addi r3, r31, 0xb60
/* 80A5108C  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80A51090  C0 5E 01 40 */	lfs f2, 0x140(r30)
/* 80A51094  C0 7E 00 88 */	lfs f3, 0x88(r30)
/* 80A51098  4B 81 E9 A5 */	bl cLib_addCalc2__FPffff
/* 80A5109C  38 7F 0B 64 */	addi r3, r31, 0xb64
/* 80A510A0  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 80A510A4  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80A510A8  EC 21 00 2A */	fadds f1, f1, f0
/* 80A510AC  C0 5E 00 FC */	lfs f2, 0xfc(r30)
/* 80A510B0  C0 7E 00 C0 */	lfs f3, 0xc0(r30)
/* 80A510B4  4B 81 E9 89 */	bl cLib_addCalc2__FPffff
/* 80A510B8  38 7F 0B 68 */	addi r3, r31, 0xb68
/* 80A510BC  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 80A510C0  C0 5E 01 40 */	lfs f2, 0x140(r30)
/* 80A510C4  C0 7E 00 88 */	lfs f3, 0x88(r30)
/* 80A510C8  4B 81 E9 75 */	bl cLib_addCalc2__FPffff
/* 80A510CC  A8 1F 0B 44 */	lha r0, 0xb44(r31)
/* 80A510D0  2C 00 00 B4 */	cmpwi r0, 0xb4
/* 80A510D4  40 82 15 98 */	bne lbl_80A5266C
/* 80A510D8  38 00 00 63 */	li r0, 0x63
/* 80A510DC  B0 1F 0B 42 */	sth r0, 0xb42(r31)
/* 80A510E0  48 00 15 8C */	b lbl_80A5266C
lbl_80A510E4:
/* 80A510E4  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 80A510E8  48 00 CC 29 */	bl checkCommandDemoAccrpt__11dEvt_info_cFv
/* 80A510EC  2C 03 00 00 */	cmpwi r3, 0
/* 80A510F0  40 82 00 44 */	bne lbl_80A51134
/* 80A510F4  7F E3 FB 78 */	mr r3, r31
/* 80A510F8  38 80 00 02 */	li r4, 2
/* 80A510FC  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 80A51100  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 80A51104  38 C0 00 00 */	li r6, 0
/* 80A51108  4B 5C A8 01 */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 80A5110C  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 80A51110  38 80 00 02 */	li r4, 2
/* 80A51114  48 00 CB ED */	bl onCondition__11dEvt_info_cFUs
/* 80A51118  38 61 00 5C */	addi r3, r1, 0x5c
/* 80A5111C  38 80 FF FF */	li r4, -1
/* 80A51120  4B FF 80 49 */	bl __dt__4cXyzFv
/* 80A51124  38 61 00 68 */	addi r3, r1, 0x68
/* 80A51128  38 80 FF FF */	li r4, -1
/* 80A5112C  4B FF 80 3D */	bl __dt__4cXyzFv
/* 80A51130  48 00 16 BC */	b lbl_80A527EC
lbl_80A51134:
/* 80A51134  38 00 00 4E */	li r0, 0x4e
/* 80A51138  B0 1F 0B 42 */	sth r0, 0xb42(r31)
/* 80A5113C  38 7C 02 48 */	addi r3, r28, 0x248
/* 80A51140  4B 71 03 91 */	bl Stop__9dCamera_cFv
/* 80A51144  38 7C 02 48 */	addi r3, r28, 0x248
/* 80A51148  38 80 00 03 */	li r4, 3
/* 80A5114C  4B 71 1E C1 */	bl SetTrimSize__9dCamera_cFl
/* 80A51150  38 00 00 00 */	li r0, 0
/* 80A51154  B0 1F 0B 44 */	sth r0, 0xb44(r31)
/* 80A51158  C0 1E 00 BC */	lfs f0, 0xbc(r30)
/* 80A5115C  D0 1F 0B B8 */	stfs f0, 0xbb8(r31)
/* 80A51160  7F A3 EB 78 */	mr r3, r29
/* 80A51164  48 00 CB 89 */	bl changeOriginalDemo__9daPy_py_cFv
/* 80A51168  7F A3 EB 78 */	mr r3, r29
/* 80A5116C  38 80 00 01 */	li r4, 1
/* 80A51170  38 A0 00 01 */	li r5, 1
/* 80A51174  38 C0 00 00 */	li r6, 0
/* 80A51178  38 E0 00 00 */	li r7, 0
/* 80A5117C  48 00 CB 5D */	bl changeDemoMode__9daPy_py_cFUliis
/* 80A51180  C0 1E 01 5C */	lfs f0, 0x15c(r30)
/* 80A51184  D0 1F 0B B8 */	stfs f0, 0xbb8(r31)
/* 80A51188  38 7F 0B 60 */	addi r3, r31, 0xb60
/* 80A5118C  C0 3E 01 AC */	lfs f1, 0x1ac(r30)
/* 80A51190  C0 5E 01 B0 */	lfs f2, 0x1b0(r30)
/* 80A51194  C0 7E 01 B4 */	lfs f3, 0x1b4(r30)
/* 80A51198  48 00 CB 0D */	bl set__4cXyzFfff
/* 80A5119C  38 7F 0B 48 */	addi r3, r31, 0xb48
/* 80A511A0  C0 3E 01 B8 */	lfs f1, 0x1b8(r30)
/* 80A511A4  C0 5E 01 BC */	lfs f2, 0x1bc(r30)
/* 80A511A8  C0 7E 01 C0 */	lfs f3, 0x1c0(r30)
/* 80A511AC  48 00 CA F9 */	bl set__4cXyzFfff
lbl_80A511B0:
/* 80A511B0  38 7F 0B B8 */	addi r3, r31, 0xbb8
/* 80A511B4  C0 3E 00 BC */	lfs f1, 0xbc(r30)
/* 80A511B8  C0 5E 01 C4 */	lfs f2, 0x1c4(r30)
/* 80A511BC  C0 7E 01 40 */	lfs f3, 0x140(r30)
/* 80A511C0  4B 81 E8 7D */	bl cLib_addCalc2__FPffff
/* 80A511C4  A8 1F 0B 44 */	lha r0, 0xb44(r31)
/* 80A511C8  2C 00 00 50 */	cmpwi r0, 0x50
/* 80A511CC  40 82 14 A0 */	bne lbl_80A5266C
/* 80A511D0  38 00 00 4F */	li r0, 0x4f
/* 80A511D4  B0 1F 0B 42 */	sth r0, 0xb42(r31)
/* 80A511D8  38 00 00 00 */	li r0, 0
/* 80A511DC  B0 1F 0B 44 */	sth r0, 0xb44(r31)
lbl_80A511E0:
/* 80A511E0  A8 7F 0B 44 */	lha r3, 0xb44(r31)
/* 80A511E4  7C 60 07 35 */	extsh. r0, r3
/* 80A511E8  40 82 00 38 */	bne lbl_80A51220
/* 80A511EC  38 7F 0B 60 */	addi r3, r31, 0xb60
/* 80A511F0  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80A511F4  48 00 CA C1 */	bl __as__4cXyzFRC4cXyz
/* 80A511F8  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 80A511FC  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80A51200  EC 01 00 2A */	fadds f0, f1, f0
/* 80A51204  D0 1F 0B 64 */	stfs f0, 0xb64(r31)
/* 80A51208  38 7F 0B 48 */	addi r3, r31, 0xb48
/* 80A5120C  C0 3E 01 C8 */	lfs f1, 0x1c8(r30)
/* 80A51210  C0 5E 01 CC */	lfs f2, 0x1cc(r30)
/* 80A51214  C0 7E 01 D0 */	lfs f3, 0x1d0(r30)
/* 80A51218  48 00 CA 8D */	bl set__4cXyzFfff
/* 80A5121C  48 00 00 20 */	b lbl_80A5123C
lbl_80A51220:
/* 80A51220  2C 03 00 3C */	cmpwi r3, 0x3c
/* 80A51224  40 82 00 18 */	bne lbl_80A5123C
/* 80A51228  38 7F 0B 48 */	addi r3, r31, 0xb48
/* 80A5122C  C0 3E 01 D4 */	lfs f1, 0x1d4(r30)
/* 80A51230  C0 5E 01 D8 */	lfs f2, 0x1d8(r30)
/* 80A51234  C0 7E 01 DC */	lfs f3, 0x1dc(r30)
/* 80A51238  48 00 CA 6D */	bl set__4cXyzFfff
lbl_80A5123C:
/* 80A5123C  38 7F 0B 60 */	addi r3, r31, 0xb60
/* 80A51240  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80A51244  C0 5E 01 40 */	lfs f2, 0x140(r30)
/* 80A51248  C0 7E 00 88 */	lfs f3, 0x88(r30)
/* 80A5124C  4B 81 E7 F1 */	bl cLib_addCalc2__FPffff
/* 80A51250  38 7F 0B 64 */	addi r3, r31, 0xb64
/* 80A51254  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 80A51258  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80A5125C  EC 21 00 2A */	fadds f1, f1, f0
/* 80A51260  C0 5E 00 FC */	lfs f2, 0xfc(r30)
/* 80A51264  C0 7E 00 C0 */	lfs f3, 0xc0(r30)
/* 80A51268  4B 81 E7 D5 */	bl cLib_addCalc2__FPffff
/* 80A5126C  38 7F 0B 68 */	addi r3, r31, 0xb68
/* 80A51270  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 80A51274  C0 5E 01 40 */	lfs f2, 0x140(r30)
/* 80A51278  C0 7E 00 88 */	lfs f3, 0x88(r30)
/* 80A5127C  4B 81 E7 C1 */	bl cLib_addCalc2__FPffff
/* 80A51280  A8 1F 0B 44 */	lha r0, 0xb44(r31)
/* 80A51284  2C 00 00 82 */	cmpwi r0, 0x82
/* 80A51288  41 80 00 18 */	blt lbl_80A512A0
/* 80A5128C  38 7F 0B B8 */	addi r3, r31, 0xbb8
/* 80A51290  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 80A51294  C0 5E 01 C4 */	lfs f2, 0x1c4(r30)
/* 80A51298  C0 7E 01 0C */	lfs f3, 0x10c(r30)
/* 80A5129C  4B 81 E7 A1 */	bl cLib_addCalc2__FPffff
lbl_80A512A0:
/* 80A512A0  A8 1F 0B 44 */	lha r0, 0xb44(r31)
/* 80A512A4  2C 00 00 C8 */	cmpwi r0, 0xc8
/* 80A512A8  40 82 13 C4 */	bne lbl_80A5266C
/* 80A512AC  38 00 00 64 */	li r0, 0x64
/* 80A512B0  B0 1F 0B 42 */	sth r0, 0xb42(r31)
/* 80A512B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A512B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A512BC  38 80 00 53 */	li r4, 0x53
/* 80A512C0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80A512C4  7C 05 07 74 */	extsb r5, r0
/* 80A512C8  4B 5E 3F 39 */	bl onSwitch__10dSv_info_cFii
/* 80A512CC  48 00 13 A0 */	b lbl_80A5266C
lbl_80A512D0:
/* 80A512D0  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 80A512D4  48 00 CA 3D */	bl checkCommandDemoAccrpt__11dEvt_info_cFv
/* 80A512D8  2C 03 00 00 */	cmpwi r3, 0
/* 80A512DC  40 82 00 44 */	bne lbl_80A51320
/* 80A512E0  7F E3 FB 78 */	mr r3, r31
/* 80A512E4  38 80 00 02 */	li r4, 2
/* 80A512E8  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 80A512EC  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 80A512F0  38 C0 00 00 */	li r6, 0
/* 80A512F4  4B 5C A6 15 */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 80A512F8  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 80A512FC  38 80 00 02 */	li r4, 2
/* 80A51300  48 00 CA 01 */	bl onCondition__11dEvt_info_cFUs
/* 80A51304  38 61 00 5C */	addi r3, r1, 0x5c
/* 80A51308  38 80 FF FF */	li r4, -1
/* 80A5130C  4B FF 7E 5D */	bl __dt__4cXyzFv
/* 80A51310  38 61 00 68 */	addi r3, r1, 0x68
/* 80A51314  38 80 FF FF */	li r4, -1
/* 80A51318  4B FF 7E 51 */	bl __dt__4cXyzFv
/* 80A5131C  48 00 14 D0 */	b lbl_80A527EC
lbl_80A51320:
/* 80A51320  38 00 00 51 */	li r0, 0x51
/* 80A51324  B0 1F 0B 42 */	sth r0, 0xb42(r31)
/* 80A51328  38 7C 02 48 */	addi r3, r28, 0x248
/* 80A5132C  4B 71 01 A5 */	bl Stop__9dCamera_cFv
/* 80A51330  38 7C 02 48 */	addi r3, r28, 0x248
/* 80A51334  38 80 00 03 */	li r4, 3
/* 80A51338  4B 71 1C D5 */	bl SetTrimSize__9dCamera_cFl
/* 80A5133C  38 00 00 00 */	li r0, 0
/* 80A51340  B0 1F 0B 44 */	sth r0, 0xb44(r31)
/* 80A51344  C0 1E 00 BC */	lfs f0, 0xbc(r30)
/* 80A51348  D0 1F 0B B8 */	stfs f0, 0xbb8(r31)
/* 80A5134C  7F A3 EB 78 */	mr r3, r29
/* 80A51350  48 00 C9 9D */	bl changeOriginalDemo__9daPy_py_cFv
/* 80A51354  7F A3 EB 78 */	mr r3, r29
/* 80A51358  38 80 00 01 */	li r4, 1
/* 80A5135C  38 A0 00 01 */	li r5, 1
/* 80A51360  38 C0 00 00 */	li r6, 0
/* 80A51364  38 E0 00 00 */	li r7, 0
/* 80A51368  48 00 C9 71 */	bl changeDemoMode__9daPy_py_cFUliis
lbl_80A5136C:
/* 80A5136C  A8 1F 0B 44 */	lha r0, 0xb44(r31)
/* 80A51370  2C 00 00 00 */	cmpwi r0, 0
/* 80A51374  40 82 00 30 */	bne lbl_80A513A4
/* 80A51378  C0 1E 01 E0 */	lfs f0, 0x1e0(r30)
/* 80A5137C  3C 60 80 A6 */	lis r3, saru_p@ha /* 0x80A5E478@ha */
/* 80A51380  38 83 E4 78 */	addi r4, r3, saru_p@l /* 0x80A5E478@l */
/* 80A51384  80 64 00 0C */	lwz r3, 0xc(r4)
/* 80A51388  D0 03 04 D0 */	stfs f0, 0x4d0(r3)
/* 80A5138C  C0 1E 01 E4 */	lfs f0, 0x1e4(r30)
/* 80A51390  80 64 00 0C */	lwz r3, 0xc(r4)
/* 80A51394  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
/* 80A51398  C0 1E 01 E8 */	lfs f0, 0x1e8(r30)
/* 80A5139C  80 64 00 0C */	lwz r3, 0xc(r4)
/* 80A513A0  D0 03 04 D8 */	stfs f0, 0x4d8(r3)
lbl_80A513A4:
/* 80A513A4  A8 1F 0B 44 */	lha r0, 0xb44(r31)
/* 80A513A8  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80A513AC  40 82 00 40 */	bne lbl_80A513EC
/* 80A513B0  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80A513B4  3C 60 80 A6 */	lis r3, saru_p@ha /* 0x80A5E478@ha */
/* 80A513B8  38 83 E4 78 */	addi r4, r3, saru_p@l /* 0x80A5E478@l */
/* 80A513BC  80 64 00 00 */	lwz r3, 0(r4)
/* 80A513C0  D0 03 04 D0 */	stfs f0, 0x4d0(r3)
/* 80A513C4  C0 3E 01 3C */	lfs f1, 0x13c(r30)
/* 80A513C8  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80A513CC  EC 01 00 2A */	fadds f0, f1, f0
/* 80A513D0  80 64 00 00 */	lwz r3, 0(r4)
/* 80A513D4  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
/* 80A513D8  C0 3D 04 D8 */	lfs f1, 0x4d8(r29)
/* 80A513DC  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 80A513E0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80A513E4  80 64 00 00 */	lwz r3, 0(r4)
/* 80A513E8  D0 03 04 D8 */	stfs f0, 0x4d8(r3)
lbl_80A513EC:
/* 80A513EC  A8 1F 0B 44 */	lha r0, 0xb44(r31)
/* 80A513F0  2C 00 00 3C */	cmpwi r0, 0x3c
/* 80A513F4  40 82 00 40 */	bne lbl_80A51434
/* 80A513F8  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80A513FC  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80A51400  EC 01 00 2A */	fadds f0, f1, f0
/* 80A51404  3C 60 80 A6 */	lis r3, saru_p@ha /* 0x80A5E478@ha */
/* 80A51408  38 83 E4 78 */	addi r4, r3, saru_p@l /* 0x80A5E478@l */
/* 80A5140C  80 64 00 04 */	lwz r3, 4(r4)
/* 80A51410  D0 03 04 D0 */	stfs f0, 0x4d0(r3)
/* 80A51414  C0 3E 01 3C */	lfs f1, 0x13c(r30)
/* 80A51418  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80A5141C  EC 01 00 2A */	fadds f0, f1, f0
/* 80A51420  80 64 00 04 */	lwz r3, 4(r4)
/* 80A51424  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
/* 80A51428  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80A5142C  80 64 00 04 */	lwz r3, 4(r4)
/* 80A51430  D0 03 04 D8 */	stfs f0, 0x4d8(r3)
lbl_80A51434:
/* 80A51434  A8 1F 0B 44 */	lha r0, 0xb44(r31)
/* 80A51438  2C 00 00 5A */	cmpwi r0, 0x5a
/* 80A5143C  40 82 00 48 */	bne lbl_80A51484
/* 80A51440  C0 3F 0B 48 */	lfs f1, 0xb48(r31)
/* 80A51444  C0 1E 01 44 */	lfs f0, 0x144(r30)
/* 80A51448  EC 01 00 28 */	fsubs f0, f1, f0
/* 80A5144C  3C 60 80 A6 */	lis r3, saru_p@ha /* 0x80A5E478@ha */
/* 80A51450  38 83 E4 78 */	addi r4, r3, saru_p@l /* 0x80A5E478@l */
/* 80A51454  80 64 00 08 */	lwz r3, 8(r4)
/* 80A51458  D0 03 04 D0 */	stfs f0, 0x4d0(r3)
/* 80A5145C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80A51460  C0 1F 0B 4C */	lfs f0, 0xb4c(r31)
/* 80A51464  EC 01 00 2A */	fadds f0, f1, f0
/* 80A51468  80 64 00 08 */	lwz r3, 8(r4)
/* 80A5146C  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
/* 80A51470  C0 3F 0B 50 */	lfs f1, 0xb50(r31)
/* 80A51474  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 80A51478  EC 01 00 28 */	fsubs f0, f1, f0
/* 80A5147C  80 64 00 08 */	lwz r3, 8(r4)
/* 80A51480  D0 03 04 D8 */	stfs f0, 0x4d8(r3)
lbl_80A51484:
/* 80A51484  A8 1F 0B 44 */	lha r0, 0xb44(r31)
/* 80A51488  2C 00 00 50 */	cmpwi r0, 0x50
/* 80A5148C  40 80 00 30 */	bge lbl_80A514BC
/* 80A51490  38 7F 0B 60 */	addi r3, r31, 0xb60
/* 80A51494  C0 3E 01 EC */	lfs f1, 0x1ec(r30)
/* 80A51498  C0 5E 01 F0 */	lfs f2, 0x1f0(r30)
/* 80A5149C  C0 7E 01 F4 */	lfs f3, 0x1f4(r30)
/* 80A514A0  48 00 C8 05 */	bl set__4cXyzFfff
/* 80A514A4  38 7F 0B 48 */	addi r3, r31, 0xb48
/* 80A514A8  C0 3E 01 F8 */	lfs f1, 0x1f8(r30)
/* 80A514AC  C0 5E 01 FC */	lfs f2, 0x1fc(r30)
/* 80A514B0  C0 7E 02 00 */	lfs f3, 0x200(r30)
/* 80A514B4  48 00 C7 F1 */	bl set__4cXyzFfff
/* 80A514B8  48 00 00 2C */	b lbl_80A514E4
lbl_80A514BC:
/* 80A514BC  38 7F 0B 60 */	addi r3, r31, 0xb60
/* 80A514C0  C0 3E 02 04 */	lfs f1, 0x204(r30)
/* 80A514C4  C0 5E 02 08 */	lfs f2, 0x208(r30)
/* 80A514C8  C0 7E 02 0C */	lfs f3, 0x20c(r30)
/* 80A514CC  48 00 C7 D9 */	bl set__4cXyzFfff
/* 80A514D0  38 7F 0B 48 */	addi r3, r31, 0xb48
/* 80A514D4  C0 3E 02 10 */	lfs f1, 0x210(r30)
/* 80A514D8  C0 5E 02 14 */	lfs f2, 0x214(r30)
/* 80A514DC  C0 7E 02 18 */	lfs f3, 0x218(r30)
/* 80A514E0  48 00 C7 C5 */	bl set__4cXyzFfff
lbl_80A514E4:
/* 80A514E4  A8 1F 0B 44 */	lha r0, 0xb44(r31)
/* 80A514E8  2C 00 00 AA */	cmpwi r0, 0xaa
/* 80A514EC  40 82 11 80 */	bne lbl_80A5266C
/* 80A514F0  38 00 00 64 */	li r0, 0x64
/* 80A514F4  B0 1F 0B 42 */	sth r0, 0xb42(r31)
/* 80A514F8  38 7F 0B 60 */	addi r3, r31, 0xb60
/* 80A514FC  C0 3E 01 EC */	lfs f1, 0x1ec(r30)
/* 80A51500  C0 5E 01 F0 */	lfs f2, 0x1f0(r30)
/* 80A51504  C0 7E 01 F4 */	lfs f3, 0x1f4(r30)
/* 80A51508  48 00 C7 9D */	bl set__4cXyzFfff
/* 80A5150C  38 7F 0B 48 */	addi r3, r31, 0xb48
/* 80A51510  C0 3E 01 F8 */	lfs f1, 0x1f8(r30)
/* 80A51514  C0 5E 01 FC */	lfs f2, 0x1fc(r30)
/* 80A51518  C0 7E 02 00 */	lfs f3, 0x200(r30)
/* 80A5151C  48 00 C7 89 */	bl set__4cXyzFfff
/* 80A51520  48 00 11 4C */	b lbl_80A5266C
lbl_80A51524:
/* 80A51524  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 80A51528  48 00 C7 E9 */	bl checkCommandDemoAccrpt__11dEvt_info_cFv
/* 80A5152C  2C 03 00 00 */	cmpwi r3, 0
/* 80A51530  40 82 00 44 */	bne lbl_80A51574
/* 80A51534  7F E3 FB 78 */	mr r3, r31
/* 80A51538  38 80 00 02 */	li r4, 2
/* 80A5153C  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 80A51540  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 80A51544  38 C0 00 00 */	li r6, 0
/* 80A51548  4B 5C A3 C1 */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 80A5154C  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 80A51550  38 80 00 02 */	li r4, 2
/* 80A51554  48 00 C7 AD */	bl onCondition__11dEvt_info_cFUs
/* 80A51558  38 61 00 5C */	addi r3, r1, 0x5c
/* 80A5155C  38 80 FF FF */	li r4, -1
/* 80A51560  4B FF 7C 09 */	bl __dt__4cXyzFv
/* 80A51564  38 61 00 68 */	addi r3, r1, 0x68
/* 80A51568  38 80 FF FF */	li r4, -1
/* 80A5156C  4B FF 7B FD */	bl __dt__4cXyzFv
/* 80A51570  48 00 12 7C */	b lbl_80A527EC
lbl_80A51574:
/* 80A51574  38 00 00 6F */	li r0, 0x6f
/* 80A51578  B0 1F 0B 42 */	sth r0, 0xb42(r31)
/* 80A5157C  38 7C 02 48 */	addi r3, r28, 0x248
/* 80A51580  4B 70 FF 51 */	bl Stop__9dCamera_cFv
/* 80A51584  38 7C 02 48 */	addi r3, r28, 0x248
/* 80A51588  38 80 00 03 */	li r4, 3
/* 80A5158C  4B 71 1A 81 */	bl SetTrimSize__9dCamera_cFl
/* 80A51590  38 00 00 00 */	li r0, 0
/* 80A51594  B0 1F 0B 44 */	sth r0, 0xb44(r31)
/* 80A51598  C0 1E 02 1C */	lfs f0, 0x21c(r30)
/* 80A5159C  D0 1F 0B B8 */	stfs f0, 0xbb8(r31)
/* 80A515A0  7F A3 EB 78 */	mr r3, r29
/* 80A515A4  48 00 C7 49 */	bl changeOriginalDemo__9daPy_py_cFv
/* 80A515A8  7F A3 EB 78 */	mr r3, r29
/* 80A515AC  38 80 00 03 */	li r4, 3
/* 80A515B0  38 A0 00 00 */	li r5, 0
/* 80A515B4  38 C0 00 00 */	li r6, 0
/* 80A515B8  38 E0 00 00 */	li r7, 0
/* 80A515BC  48 00 C7 1D */	bl changeDemoMode__9daPy_py_cFUliis
/* 80A515C0  38 61 00 5C */	addi r3, r1, 0x5c
/* 80A515C4  C0 3E 02 20 */	lfs f1, 0x220(r30)
/* 80A515C8  C0 5E 02 24 */	lfs f2, 0x224(r30)
/* 80A515CC  C0 7E 02 28 */	lfs f3, 0x228(r30)
/* 80A515D0  48 00 C6 D5 */	bl set__4cXyzFfff
/* 80A515D4  7F A3 EB 78 */	mr r3, r29
/* 80A515D8  38 81 00 5C */	addi r4, r1, 0x5c
/* 80A515DC  48 00 C6 6D */	bl changeDemoPos0__9daPy_py_cFPC4cXyz
/* 80A515E0  38 7F 0B 60 */	addi r3, r31, 0xb60
/* 80A515E4  C0 3E 02 2C */	lfs f1, 0x22c(r30)
/* 80A515E8  C0 5E 02 30 */	lfs f2, 0x230(r30)
/* 80A515EC  C0 7E 02 34 */	lfs f3, 0x234(r30)
/* 80A515F0  48 00 C6 B5 */	bl set__4cXyzFfff
/* 80A515F4  38 7F 0B 48 */	addi r3, r31, 0xb48
/* 80A515F8  C0 3E 02 38 */	lfs f1, 0x238(r30)
/* 80A515FC  C0 5E 02 3C */	lfs f2, 0x23c(r30)
/* 80A51600  C0 7E 02 40 */	lfs f3, 0x240(r30)
/* 80A51604  48 00 C6 A1 */	bl set__4cXyzFfff
/* 80A51608  38 7F 0B 6C */	addi r3, r31, 0xb6c
/* 80A5160C  C0 3E 02 44 */	lfs f1, 0x244(r30)
/* 80A51610  C0 5E 02 48 */	lfs f2, 0x248(r30)
/* 80A51614  C0 7E 02 4C */	lfs f3, 0x24c(r30)
/* 80A51618  48 00 C6 8D */	bl set__4cXyzFfff
/* 80A5161C  38 7F 0B 54 */	addi r3, r31, 0xb54
/* 80A51620  C0 3E 02 50 */	lfs f1, 0x250(r30)
/* 80A51624  C0 5E 02 54 */	lfs f2, 0x254(r30)
/* 80A51628  C0 7E 02 58 */	lfs f3, 0x258(r30)
/* 80A5162C  48 00 C6 79 */	bl set__4cXyzFfff
/* 80A51630  C0 3F 0B 54 */	lfs f1, 0xb54(r31)
/* 80A51634  C0 1F 0B 48 */	lfs f0, 0xb48(r31)
/* 80A51638  EC 21 00 28 */	fsubs f1, f1, f0
/* 80A5163C  48 00 C6 5D */	bl fabsf__3stdFf
/* 80A51640  D0 3F 0B 78 */	stfs f1, 0xb78(r31)
/* 80A51644  C0 3F 0B 58 */	lfs f1, 0xb58(r31)
/* 80A51648  C0 1F 0B 4C */	lfs f0, 0xb4c(r31)
/* 80A5164C  EC 21 00 28 */	fsubs f1, f1, f0
/* 80A51650  48 00 C6 49 */	bl fabsf__3stdFf
/* 80A51654  D0 3F 0B 7C */	stfs f1, 0xb7c(r31)
/* 80A51658  C0 3F 0B 5C */	lfs f1, 0xb5c(r31)
/* 80A5165C  C0 1F 0B 50 */	lfs f0, 0xb50(r31)
/* 80A51660  EC 21 00 28 */	fsubs f1, f1, f0
/* 80A51664  48 00 C6 35 */	bl fabsf__3stdFf
/* 80A51668  D0 3F 0B 80 */	stfs f1, 0xb80(r31)
/* 80A5166C  C0 3F 0B 6C */	lfs f1, 0xb6c(r31)
/* 80A51670  C0 1F 0B 60 */	lfs f0, 0xb60(r31)
/* 80A51674  EC 21 00 28 */	fsubs f1, f1, f0
/* 80A51678  48 00 C6 21 */	bl fabsf__3stdFf
/* 80A5167C  D0 3F 0B 84 */	stfs f1, 0xb84(r31)
/* 80A51680  C0 3F 0B 70 */	lfs f1, 0xb70(r31)
/* 80A51684  C0 1F 0B 64 */	lfs f0, 0xb64(r31)
/* 80A51688  EC 21 00 28 */	fsubs f1, f1, f0
/* 80A5168C  48 00 C6 0D */	bl fabsf__3stdFf
/* 80A51690  D0 3F 0B 88 */	stfs f1, 0xb88(r31)
/* 80A51694  C0 3F 0B 74 */	lfs f1, 0xb74(r31)
/* 80A51698  C0 1F 0B 68 */	lfs f0, 0xb68(r31)
/* 80A5169C  EC 21 00 28 */	fsubs f1, f1, f0
/* 80A516A0  48 00 C5 F9 */	bl fabsf__3stdFf
/* 80A516A4  D0 3F 0B 8C */	stfs f1, 0xb8c(r31)
/* 80A516A8  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80A516AC  D0 1F 0B C4 */	stfs f0, 0xbc4(r31)
lbl_80A516B0:
/* 80A516B0  A8 1F 0B 44 */	lha r0, 0xb44(r31)
/* 80A516B4  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A516B8  40 80 00 24 */	bge lbl_80A516DC
/* 80A516BC  38 61 00 5C */	addi r3, r1, 0x5c
/* 80A516C0  C0 3E 00 74 */	lfs f1, 0x74(r30)
/* 80A516C4  C0 5E 00 78 */	lfs f2, 0x78(r30)
/* 80A516C8  C0 7E 00 7C */	lfs f3, 0x7c(r30)
/* 80A516CC  48 00 C5 D9 */	bl set__4cXyzFfff
/* 80A516D0  38 61 00 5C */	addi r3, r1, 0x5c
/* 80A516D4  38 80 4D 5A */	li r4, 0x4d5a
/* 80A516D8  4B FF 79 29 */	bl setPlayerPosAndAngle__FP4cXyzs
lbl_80A516DC:
/* 80A516DC  A8 1F 0B 44 */	lha r0, 0xb44(r31)
/* 80A516E0  2C 00 00 05 */	cmpwi r0, 5
/* 80A516E4  40 81 00 24 */	ble lbl_80A51708
/* 80A516E8  7F E3 FB 78 */	mr r3, r31
/* 80A516EC  C0 3E 00 FC */	lfs f1, 0xfc(r30)
/* 80A516F0  4B FF E8 01 */	bl cam_3d_morf__FP12npc_ks_classf
/* 80A516F4  38 7F 0B C4 */	addi r3, r31, 0xbc4
/* 80A516F8  C0 3E 02 5C */	lfs f1, 0x25c(r30)
/* 80A516FC  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 80A51700  C0 7E 02 60 */	lfs f3, 0x260(r30)
/* 80A51704  4B 81 E3 39 */	bl cLib_addCalc2__FPffff
lbl_80A51708:
/* 80A51708  88 1F 0B DC */	lbz r0, 0xbdc(r31)
/* 80A5170C  7C 00 07 75 */	extsb. r0, r0
/* 80A51710  40 82 00 88 */	bne lbl_80A51798
/* 80A51714  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 80A51718  C0 1E 02 64 */	lfs f0, 0x264(r30)
/* 80A5171C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A51720  4C 41 13 82 */	cror 2, 1, 2
/* 80A51724  40 82 00 74 */	bne lbl_80A51798
/* 80A51728  38 00 00 01 */	li r0, 1
/* 80A5172C  98 1F 0B DC */	stb r0, 0xbdc(r31)
/* 80A51730  38 60 01 2C */	li r3, 0x12c
/* 80A51734  38 80 00 DC */	li r4, 0xdc
/* 80A51738  3C A0 80 A6 */	lis r5, d_a_npc_ks__stringBase0@ha /* 0x80A5E438@ha */
/* 80A5173C  38 A5 E4 38 */	addi r5, r5, d_a_npc_ks__stringBase0@l /* 0x80A5E438@l */
/* 80A51740  38 A5 00 08 */	addi r5, r5, 8
/* 80A51744  4C C6 31 82 */	crclr 6
/* 80A51748  4B 88 ED E9 */	bl JUTReport__FiiPCce
/* 80A5174C  38 00 00 2C */	li r0, 0x2c
/* 80A51750  B0 01 00 08 */	sth r0, 8(r1)
/* 80A51754  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha /* 0x80023578@ha */
/* 80A51758  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l /* 0x80023578@l */
/* 80A5175C  38 81 00 08 */	addi r4, r1, 8
/* 80A51760  4B 5C 80 99 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80A51764  7C 65 1B 79 */	or. r5, r3, r3
/* 80A51768  41 82 00 30 */	beq lbl_80A51798
/* 80A5176C  38 00 00 04 */	li r0, 4
/* 80A51770  3C 65 00 01 */	addis r3, r5, 1
/* 80A51774  B0 03 AF 1C */	sth r0, -0x50e4(r3)
/* 80A51778  38 00 00 06 */	li r0, 6
/* 80A5177C  90 03 AE D0 */	stw r0, -0x5130(r3)
/* 80A51780  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000833F@ha */
/* 80A51784  38 63 83 3F */	addi r3, r3, 0x833F /* 0x0000833F@l */
/* 80A51788  38 85 30 74 */	addi r4, r5, 0x3074
/* 80A5178C  38 A5 30 8C */	addi r5, r5, 0x308c
/* 80A51790  38 C0 00 00 */	li r6, 0
/* 80A51794  48 00 C4 41 */	bl dComIfGp_particle_set__FUsPC4cXyzPC5csXyzPC4cXyz
lbl_80A51798:
/* 80A51798  88 1F 0B DC */	lbz r0, 0xbdc(r31)
/* 80A5179C  2C 00 00 01 */	cmpwi r0, 1
/* 80A517A0  40 82 00 48 */	bne lbl_80A517E8
/* 80A517A4  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 80A517A8  C0 1E 02 68 */	lfs f0, 0x268(r30)
/* 80A517AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A517B0  4C 41 13 82 */	cror 2, 1, 2
/* 80A517B4  40 82 00 34 */	bne lbl_80A517E8
/* 80A517B8  38 00 00 02 */	li r0, 2
/* 80A517BC  98 1F 0B DC */	stb r0, 0xbdc(r31)
/* 80A517C0  38 00 00 70 */	li r0, 0x70
/* 80A517C4  B0 1F 0B 42 */	sth r0, 0xb42(r31)
/* 80A517C8  48 00 C3 FD */	bl daPy_getPlayerActorClass__Fv
/* 80A517CC  38 80 00 19 */	li r4, 0x19
/* 80A517D0  38 A0 00 00 */	li r5, 0
/* 80A517D4  38 C0 00 00 */	li r6, 0
/* 80A517D8  38 E0 00 00 */	li r7, 0
/* 80A517DC  48 00 C4 FD */	bl changeDemoMode__9daPy_py_cFUliis
/* 80A517E0  38 00 00 14 */	li r0, 0x14
/* 80A517E4  B0 1F 0B 44 */	sth r0, 0xb44(r31)
lbl_80A517E8:
/* 80A517E8  A8 1F 0B 42 */	lha r0, 0xb42(r31)
/* 80A517EC  2C 00 00 70 */	cmpwi r0, 0x70
/* 80A517F0  40 82 0E 7C */	bne lbl_80A5266C
/* 80A517F4  A8 1F 0B 44 */	lha r0, 0xb44(r31)
/* 80A517F8  2C 00 00 35 */	cmpwi r0, 0x35
/* 80A517FC  41 80 0E 70 */	blt lbl_80A5266C
/* 80A51800  38 00 00 64 */	li r0, 0x64
/* 80A51804  B0 1F 0B 42 */	sth r0, 0xb42(r31)
/* 80A51808  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80A5180C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80A51810  80 63 00 00 */	lwz r3, 0(r3)
/* 80A51814  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 80A51818  4B 5B AB C5 */	bl mDoMtx_YrotS__FPA4_fs
/* 80A5181C  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80A51820  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80A51824  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 80A51828  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80A5182C  C0 1E 01 50 */	lfs f0, 0x150(r30)
/* 80A51830  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80A51834  38 61 00 68 */	addi r3, r1, 0x68
/* 80A51838  38 9F 0B 48 */	addi r4, r31, 0xb48
/* 80A5183C  4B 81 F6 B1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80A51840  38 7F 0B 48 */	addi r3, r31, 0xb48
/* 80A51844  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80A51848  48 00 C4 1D */	bl __apl__4cXyzFRC3Vec
/* 80A5184C  38 7F 0B 60 */	addi r3, r31, 0xb60
/* 80A51850  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80A51854  48 00 C4 61 */	bl __as__4cXyzFRC4cXyz
/* 80A51858  C0 3F 0B 64 */	lfs f1, 0xb64(r31)
/* 80A5185C  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 80A51860  EC 01 00 2A */	fadds f0, f1, f0
/* 80A51864  D0 1F 0B 64 */	stfs f0, 0xb64(r31)
/* 80A51868  48 00 0E 04 */	b lbl_80A5266C
lbl_80A5186C:
/* 80A5186C  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 80A51870  48 00 C4 A1 */	bl checkCommandDemoAccrpt__11dEvt_info_cFv
/* 80A51874  2C 03 00 00 */	cmpwi r3, 0
/* 80A51878  40 82 00 44 */	bne lbl_80A518BC
/* 80A5187C  7F E3 FB 78 */	mr r3, r31
/* 80A51880  38 80 00 02 */	li r4, 2
/* 80A51884  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 80A51888  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 80A5188C  38 C0 00 00 */	li r6, 0
/* 80A51890  4B 5C A0 79 */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 80A51894  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 80A51898  38 80 00 02 */	li r4, 2
/* 80A5189C  48 00 C4 65 */	bl onCondition__11dEvt_info_cFUs
/* 80A518A0  38 61 00 5C */	addi r3, r1, 0x5c
/* 80A518A4  38 80 FF FF */	li r4, -1
/* 80A518A8  4B FF 78 C1 */	bl __dt__4cXyzFv
/* 80A518AC  38 61 00 68 */	addi r3, r1, 0x68
/* 80A518B0  38 80 FF FF */	li r4, -1
/* 80A518B4  4B FF 78 B5 */	bl __dt__4cXyzFv
/* 80A518B8  48 00 0F 34 */	b lbl_80A527EC
lbl_80A518BC:
/* 80A518BC  38 00 00 C9 */	li r0, 0xc9
/* 80A518C0  B0 1F 0B 42 */	sth r0, 0xb42(r31)
/* 80A518C4  38 7C 02 48 */	addi r3, r28, 0x248
/* 80A518C8  4B 70 FC 09 */	bl Stop__9dCamera_cFv
/* 80A518CC  38 7C 02 48 */	addi r3, r28, 0x248
/* 80A518D0  38 80 00 03 */	li r4, 3
/* 80A518D4  4B 71 17 39 */	bl SetTrimSize__9dCamera_cFl
/* 80A518D8  38 00 00 00 */	li r0, 0
/* 80A518DC  B0 1F 0B 44 */	sth r0, 0xb44(r31)
/* 80A518E0  C0 1E 00 BC */	lfs f0, 0xbc(r30)
/* 80A518E4  D0 1F 0B B8 */	stfs f0, 0xbb8(r31)
/* 80A518E8  7F A3 EB 78 */	mr r3, r29
/* 80A518EC  48 00 C4 01 */	bl changeOriginalDemo__9daPy_py_cFv
/* 80A518F0  7F A3 EB 78 */	mr r3, r29
/* 80A518F4  38 80 00 02 */	li r4, 2
/* 80A518F8  38 A0 00 00 */	li r5, 0
/* 80A518FC  38 C0 00 00 */	li r6, 0
/* 80A51900  38 E0 00 00 */	li r7, 0
/* 80A51904  48 00 C3 D5 */	bl changeDemoMode__9daPy_py_cFUliis
/* 80A51908  38 61 00 5C */	addi r3, r1, 0x5c
/* 80A5190C  C0 3E 02 6C */	lfs f1, 0x26c(r30)
/* 80A51910  C0 5E 02 70 */	lfs f2, 0x270(r30)
/* 80A51914  C0 7E 02 74 */	lfs f3, 0x274(r30)
/* 80A51918  48 00 C3 8D */	bl set__4cXyzFfff
/* 80A5191C  7F A3 EB 78 */	mr r3, r29
/* 80A51920  38 81 00 5C */	addi r4, r1, 0x5c
/* 80A51924  48 00 C3 25 */	bl changeDemoPos0__9daPy_py_cFPC4cXyz
/* 80A51928  38 7F 0B 60 */	addi r3, r31, 0xb60
/* 80A5192C  C0 3E 02 78 */	lfs f1, 0x278(r30)
/* 80A51930  C0 5E 02 7C */	lfs f2, 0x27c(r30)
/* 80A51934  C0 7E 02 80 */	lfs f3, 0x280(r30)
/* 80A51938  48 00 C3 6D */	bl set__4cXyzFfff
/* 80A5193C  38 7F 0B 48 */	addi r3, r31, 0xb48
/* 80A51940  C0 3E 02 84 */	lfs f1, 0x284(r30)
/* 80A51944  C0 5E 02 88 */	lfs f2, 0x288(r30)
/* 80A51948  C0 7E 02 8C */	lfs f3, 0x28c(r30)
/* 80A5194C  48 00 C3 59 */	bl set__4cXyzFfff
/* 80A51950  38 7F 0B 6C */	addi r3, r31, 0xb6c
/* 80A51954  C0 3E 02 90 */	lfs f1, 0x290(r30)
/* 80A51958  C0 5E 02 94 */	lfs f2, 0x294(r30)
/* 80A5195C  C0 7E 02 98 */	lfs f3, 0x298(r30)
/* 80A51960  48 00 C3 45 */	bl set__4cXyzFfff
/* 80A51964  38 7F 0B 78 */	addi r3, r31, 0xb78
/* 80A51968  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 80A5196C  FC 40 08 90 */	fmr f2, f1
/* 80A51970  FC 60 08 90 */	fmr f3, f1
/* 80A51974  48 00 C3 31 */	bl set__4cXyzFfff
/* 80A51978  C0 3F 0B 6C */	lfs f1, 0xb6c(r31)
/* 80A5197C  C0 1F 0B 60 */	lfs f0, 0xb60(r31)
/* 80A51980  EC 21 00 28 */	fsubs f1, f1, f0
/* 80A51984  48 00 C3 15 */	bl fabsf__3stdFf
/* 80A51988  D0 3F 0B 84 */	stfs f1, 0xb84(r31)
/* 80A5198C  C0 3F 0B 70 */	lfs f1, 0xb70(r31)
/* 80A51990  C0 1F 0B 64 */	lfs f0, 0xb64(r31)
/* 80A51994  EC 21 00 28 */	fsubs f1, f1, f0
/* 80A51998  48 00 C3 01 */	bl fabsf__3stdFf
/* 80A5199C  D0 3F 0B 88 */	stfs f1, 0xb88(r31)
/* 80A519A0  C0 3F 0B 74 */	lfs f1, 0xb74(r31)
/* 80A519A4  C0 1F 0B 68 */	lfs f0, 0xb68(r31)
/* 80A519A8  EC 21 00 28 */	fsubs f1, f1, f0
/* 80A519AC  48 00 C2 ED */	bl fabsf__3stdFf
/* 80A519B0  D0 3F 0B 8C */	stfs f1, 0xb8c(r31)
/* 80A519B4  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80A519B8  D0 1F 0B C4 */	stfs f0, 0xbc4(r31)
/* 80A519BC  3C 60 80 3A */	lis r3, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80A519C0  38 63 72 88 */	addi r3, r3, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80A519C4  A0 63 01 C0 */	lhz r3, 0x1c0(r3)
/* 80A519C8  48 00 C4 F1 */	bl dComIfGs_onEventBit__FUs
lbl_80A519CC:
/* 80A519CC  A8 1F 0B 44 */	lha r0, 0xb44(r31)
/* 80A519D0  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80A519D4  40 80 00 2C */	bge lbl_80A51A00
/* 80A519D8  38 61 00 5C */	addi r3, r1, 0x5c
/* 80A519DC  C0 3E 02 9C */	lfs f1, 0x29c(r30)
/* 80A519E0  C0 5E 02 A0 */	lfs f2, 0x2a0(r30)
/* 80A519E4  C0 7E 02 A4 */	lfs f3, 0x2a4(r30)
/* 80A519E8  48 00 C2 BD */	bl set__4cXyzFfff
/* 80A519EC  38 61 00 5C */	addi r3, r1, 0x5c
/* 80A519F0  38 80 A0 03 */	li r4, -24573
/* 80A519F4  4B FF 76 0D */	bl setPlayerPosAndAngle__FP4cXyzs
/* 80A519F8  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80A519FC  D0 1D 05 2C */	stfs f0, 0x52c(r29)
lbl_80A51A00:
/* 80A51A00  7F E3 FB 78 */	mr r3, r31
/* 80A51A04  C0 3E 01 C4 */	lfs f1, 0x1c4(r30)
/* 80A51A08  4B FF E4 E9 */	bl cam_3d_morf__FP12npc_ks_classf
/* 80A51A0C  38 7F 0B C4 */	addi r3, r31, 0xbc4
/* 80A51A10  C0 3E 02 A8 */	lfs f1, 0x2a8(r30)
/* 80A51A14  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 80A51A18  C0 7E 02 AC */	lfs f3, 0x2ac(r30)
/* 80A51A1C  4B 81 E0 21 */	bl cLib_addCalc2__FPffff
/* 80A51A20  A8 1F 0B 44 */	lha r0, 0xb44(r31)
/* 80A51A24  2C 00 00 6E */	cmpwi r0, 0x6e
/* 80A51A28  40 82 00 14 */	bne lbl_80A51A3C
/* 80A51A2C  38 00 00 02 */	li r0, 2
/* 80A51A30  B0 1F 05 EA */	sth r0, 0x5ea(r31)
/* 80A51A34  C0 1E 01 3C */	lfs f0, 0x13c(r30)
/* 80A51A38  D0 1F 0B B4 */	stfs f0, 0xbb4(r31)
lbl_80A51A3C:
/* 80A51A3C  A8 1F 0B 44 */	lha r0, 0xb44(r31)
/* 80A51A40  2C 00 00 84 */	cmpwi r0, 0x84
/* 80A51A44  40 82 00 CC */	bne lbl_80A51B10
/* 80A51A48  38 00 00 02 */	li r0, 2
/* 80A51A4C  98 1F 0C 17 */	stb r0, 0xc17(r31)
/* 80A51A50  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005001A@ha */
/* 80A51A54  38 63 00 1A */	addi r3, r3, 0x001A /* 0x0005001A@l */
/* 80A51A58  38 80 00 00 */	li r4, 0
/* 80A51A5C  38 A0 00 00 */	li r5, 0
/* 80A51A60  38 C0 00 00 */	li r6, 0
/* 80A51A64  48 00 C3 F1 */	bl mDoAud_seStart__FUlPC3VecUlSc
/* 80A51A68  38 61 00 10 */	addi r3, r1, 0x10
/* 80A51A6C  3C 80 00 06 */	lis r4, 0x0006 /* 0x00060020@ha */
/* 80A51A70  38 84 00 20 */	addi r4, r4, 0x0020 /* 0x00060020@l */
/* 80A51A74  48 00 C3 D9 */	bl __ct__10JAISoundIDFUl
/* 80A51A78  7C 64 1B 78 */	mr r4, r3
/* 80A51A7C  38 7F 08 60 */	addi r3, r31, 0x860
/* 80A51A80  38 A0 00 00 */	li r5, 0
/* 80A51A84  38 C0 FF FF */	li r6, -1
/* 80A51A88  81 9F 08 60 */	lwz r12, 0x860(r31)
/* 80A51A8C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80A51A90  7D 89 03 A6 */	mtctr r12
/* 80A51A94  4E 80 04 21 */	bctrl 
/* 80A51A98  38 61 00 0C */	addi r3, r1, 0xc
/* 80A51A9C  3C 80 00 06 */	lis r4, 0x0006 /* 0x00060024@ha */
/* 80A51AA0  38 84 00 24 */	addi r4, r4, 0x0024 /* 0x00060024@l */
/* 80A51AA4  48 00 C3 A9 */	bl __ct__10JAISoundIDFUl
/* 80A51AA8  7C 64 1B 78 */	mr r4, r3
/* 80A51AAC  38 7F 08 60 */	addi r3, r31, 0x860
/* 80A51AB0  38 A0 00 00 */	li r5, 0
/* 80A51AB4  38 C0 FF FF */	li r6, -1
/* 80A51AB8  81 9F 08 60 */	lwz r12, 0x860(r31)
/* 80A51ABC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80A51AC0  7D 89 03 A6 */	mtctr r12
/* 80A51AC4  4E 80 04 21 */	bctrl 
/* 80A51AC8  38 60 00 01 */	li r3, 1
/* 80A51ACC  38 80 00 FF */	li r4, 0xff
/* 80A51AD0  48 00 C3 45 */	bl dComIfGs_setItem__FiUc
/* 80A51AD4  48 00 C3 31 */	bl dComIfGs_getOil__Fv
/* 80A51AD8  48 00 C3 1D */	bl dMeter2Info_setOilGaugeBackUp__FUs
/* 80A51ADC  38 61 00 50 */	addi r3, r1, 0x50
/* 80A51AE0  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 80A51AE4  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 80A51AE8  FC 60 08 90 */	fmr f3, f1
/* 80A51AEC  48 00 C2 F9 */	bl __ct__4cXyzFfff
/* 80A51AF0  48 00 C2 E5 */	bl dComIfGp_getVibration__Fv
/* 80A51AF4  38 80 00 02 */	li r4, 2
/* 80A51AF8  38 A0 00 1F */	li r5, 0x1f
/* 80A51AFC  38 C1 00 50 */	addi r6, r1, 0x50
/* 80A51B00  4B 61 DF 25 */	bl StartShock__12dVibration_cFii4cXyz
/* 80A51B04  38 61 00 50 */	addi r3, r1, 0x50
/* 80A51B08  38 80 FF FF */	li r4, -1
/* 80A51B0C  4B FF 76 5D */	bl __dt__4cXyzFv
lbl_80A51B10:
/* 80A51B10  A8 1F 0B 44 */	lha r0, 0xb44(r31)
/* 80A51B14  2C 00 00 8B */	cmpwi r0, 0x8b
/* 80A51B18  40 82 00 1C */	bne lbl_80A51B34
/* 80A51B1C  7F A3 EB 78 */	mr r3, r29
/* 80A51B20  38 80 00 01 */	li r4, 1
/* 80A51B24  38 A0 00 01 */	li r5, 1
/* 80A51B28  38 C0 00 00 */	li r6, 0
/* 80A51B2C  38 E0 00 00 */	li r7, 0
/* 80A51B30  48 00 C1 A9 */	bl changeDemoMode__9daPy_py_cFUliis
lbl_80A51B34:
/* 80A51B34  A8 1F 0B 44 */	lha r0, 0xb44(r31)
/* 80A51B38  2C 00 00 90 */	cmpwi r0, 0x90
/* 80A51B3C  40 82 00 98 */	bne lbl_80A51BD4
/* 80A51B40  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80A51B44  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80A51B48  80 63 00 00 */	lwz r3, 0(r3)
/* 80A51B4C  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 80A51B50  4B 5B A8 8D */	bl mDoMtx_YrotS__FPA4_fs
/* 80A51B54  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80A51B58  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80A51B5C  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80A51B60  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 80A51B64  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80A51B68  38 61 00 68 */	addi r3, r1, 0x68
/* 80A51B6C  38 81 00 5C */	addi r4, r1, 0x5c
/* 80A51B70  4B 81 F3 7D */	bl MtxPosition__FP4cXyzP4cXyz
/* 80A51B74  38 61 00 44 */	addi r3, r1, 0x44
/* 80A51B78  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80A51B7C  38 A1 00 5C */	addi r5, r1, 0x5c
/* 80A51B80  4B 81 4F 65 */	bl __pl__4cXyzCFRC3Vec
/* 80A51B84  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80A51B88  38 81 00 44 */	addi r4, r1, 0x44
/* 80A51B8C  48 00 C1 29 */	bl __as__4cXyzFRC4cXyz
/* 80A51B90  38 61 00 44 */	addi r3, r1, 0x44
/* 80A51B94  38 80 FF FF */	li r4, -1
/* 80A51B98  4B FF 75 D1 */	bl __dt__4cXyzFv
/* 80A51B9C  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 80A51BA0  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80A51BA4  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 80A51BA8  B0 1F 08 FE */	sth r0, 0x8fe(r31)
/* 80A51BAC  7F E3 FB 78 */	mr r3, r31
/* 80A51BB0  38 80 00 1A */	li r4, 0x1a
/* 80A51BB4  C0 3E 00 90 */	lfs f1, 0x90(r30)
/* 80A51BB8  38 A0 00 02 */	li r5, 2
/* 80A51BBC  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 80A51BC0  4B FF 75 E5 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A51BC4  38 00 00 E6 */	li r0, 0xe6
/* 80A51BC8  B0 1F 05 EA */	sth r0, 0x5ea(r31)
/* 80A51BCC  38 00 00 41 */	li r0, 0x41
/* 80A51BD0  B0 1F 05 F0 */	sth r0, 0x5f0(r31)
lbl_80A51BD4:
/* 80A51BD4  A8 1F 0B 44 */	lha r0, 0xb44(r31)
/* 80A51BD8  2C 00 00 91 */	cmpwi r0, 0x91
/* 80A51BDC  40 82 0A 90 */	bne lbl_80A5266C
/* 80A51BE0  38 00 00 CA */	li r0, 0xca
/* 80A51BE4  B0 1F 0B 42 */	sth r0, 0xb42(r31)
/* 80A51BE8  38 00 00 00 */	li r0, 0
/* 80A51BEC  B0 1F 0B 44 */	sth r0, 0xb44(r31)
/* 80A51BF0  38 7F 0B 60 */	addi r3, r31, 0xb60
/* 80A51BF4  C0 3E 02 B0 */	lfs f1, 0x2b0(r30)
/* 80A51BF8  C0 5E 00 68 */	lfs f2, 0x68(r30)
/* 80A51BFC  C0 7E 02 B4 */	lfs f3, 0x2b4(r30)
/* 80A51C00  48 00 C0 A5 */	bl set__4cXyzFfff
/* 80A51C04  38 7F 0B 48 */	addi r3, r31, 0xb48
/* 80A51C08  C0 3E 02 B8 */	lfs f1, 0x2b8(r30)
/* 80A51C0C  C0 5E 00 68 */	lfs f2, 0x68(r30)
/* 80A51C10  C0 7E 02 BC */	lfs f3, 0x2bc(r30)
/* 80A51C14  48 00 C0 91 */	bl set__4cXyzFfff
/* 80A51C18  48 00 0A 54 */	b lbl_80A5266C
lbl_80A51C1C:
/* 80A51C1C  A8 1F 0B 44 */	lha r0, 0xb44(r31)
/* 80A51C20  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80A51C24  40 82 00 44 */	bne lbl_80A51C68
/* 80A51C28  38 7F 0B 60 */	addi r3, r31, 0xb60
/* 80A51C2C  C0 3E 02 C0 */	lfs f1, 0x2c0(r30)
/* 80A51C30  C0 5E 02 C4 */	lfs f2, 0x2c4(r30)
/* 80A51C34  C0 7E 02 C8 */	lfs f3, 0x2c8(r30)
/* 80A51C38  48 00 C0 6D */	bl set__4cXyzFfff
/* 80A51C3C  38 7F 0B 48 */	addi r3, r31, 0xb48
/* 80A51C40  C0 3E 02 CC */	lfs f1, 0x2cc(r30)
/* 80A51C44  C0 5E 02 D0 */	lfs f2, 0x2d0(r30)
/* 80A51C48  C0 7E 02 D4 */	lfs f3, 0x2d4(r30)
/* 80A51C4C  48 00 C0 59 */	bl set__4cXyzFfff
/* 80A51C50  7F A3 EB 78 */	mr r3, r29
/* 80A51C54  38 80 00 01 */	li r4, 1
/* 80A51C58  38 A0 00 01 */	li r5, 1
/* 80A51C5C  38 C0 00 00 */	li r6, 0
/* 80A51C60  38 E0 00 00 */	li r7, 0
/* 80A51C64  48 00 C0 75 */	bl changeDemoMode__9daPy_py_cFUliis
lbl_80A51C68:
/* 80A51C68  A8 1F 0B 44 */	lha r0, 0xb44(r31)
/* 80A51C6C  2C 00 00 78 */	cmpwi r0, 0x78
/* 80A51C70  41 80 00 18 */	blt lbl_80A51C88
/* 80A51C74  38 7F 0B B8 */	addi r3, r31, 0xbb8
/* 80A51C78  C0 3E 00 D4 */	lfs f1, 0xd4(r30)
/* 80A51C7C  C0 5E 01 C4 */	lfs f2, 0x1c4(r30)
/* 80A51C80  C0 7E 01 40 */	lfs f3, 0x140(r30)
/* 80A51C84  4B 81 DD B9 */	bl cLib_addCalc2__FPffff
lbl_80A51C88:
/* 80A51C88  A8 1F 0B 44 */	lha r0, 0xb44(r31)
/* 80A51C8C  2C 00 01 0E */	cmpwi r0, 0x10e
/* 80A51C90  40 82 09 DC */	bne lbl_80A5266C
/* 80A51C94  38 00 00 CB */	li r0, 0xcb
/* 80A51C98  B0 1F 0B 42 */	sth r0, 0xb42(r31)
/* 80A51C9C  38 00 00 00 */	li r0, 0
/* 80A51CA0  B0 1F 0B 44 */	sth r0, 0xb44(r31)
/* 80A51CA4  48 00 09 C8 */	b lbl_80A5266C
lbl_80A51CA8:
/* 80A51CA8  38 7F 0B 60 */	addi r3, r31, 0xb60
/* 80A51CAC  C0 3E 02 D8 */	lfs f1, 0x2d8(r30)
/* 80A51CB0  C0 5E 02 DC */	lfs f2, 0x2dc(r30)
/* 80A51CB4  C0 7E 02 E0 */	lfs f3, 0x2e0(r30)
/* 80A51CB8  48 00 BF ED */	bl set__4cXyzFfff
/* 80A51CBC  38 7F 0B 48 */	addi r3, r31, 0xb48
/* 80A51CC0  C0 3E 02 E4 */	lfs f1, 0x2e4(r30)
/* 80A51CC4  C0 5E 02 E8 */	lfs f2, 0x2e8(r30)
/* 80A51CC8  C0 7E 02 EC */	lfs f3, 0x2ec(r30)
/* 80A51CCC  48 00 BF D9 */	bl set__4cXyzFfff
/* 80A51CD0  C0 1E 00 BC */	lfs f0, 0xbc(r30)
/* 80A51CD4  D0 1F 0B B8 */	stfs f0, 0xbb8(r31)
/* 80A51CD8  A8 1F 0B 44 */	lha r0, 0xb44(r31)
/* 80A51CDC  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A51CE0  40 82 00 20 */	bne lbl_80A51D00
/* 80A51CE4  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 80A51CE8  83 43 10 18 */	lwz r26, m_midnaActor__9daPy_py_c@l(r3)  /* 0x80451018@l */
/* 80A51CEC  7F 43 D3 78 */	mr r3, r26
/* 80A51CF0  48 00 C0 D9 */	bl changeOriginalDemo__9daMidna_cFv
/* 80A51CF4  7F 43 D3 78 */	mr r3, r26
/* 80A51CF8  38 80 00 02 */	li r4, 2
/* 80A51CFC  48 00 C0 C5 */	bl changeDemoMode__9daMidna_cFUl
lbl_80A51D00:
/* 80A51D00  A8 1F 0B 44 */	lha r0, 0xb44(r31)
/* 80A51D04  2C 00 00 64 */	cmpwi r0, 0x64
/* 80A51D08  41 80 00 0C */	blt lbl_80A51D14
/* 80A51D0C  38 00 00 64 */	li r0, 0x64
/* 80A51D10  B0 1F 0B 44 */	sth r0, 0xb44(r31)
lbl_80A51D14:
/* 80A51D14  A8 1F 0B 44 */	lha r0, 0xb44(r31)
/* 80A51D18  2C 00 00 46 */	cmpwi r0, 0x46
/* 80A51D1C  41 80 09 50 */	blt lbl_80A5266C
/* 80A51D20  40 82 00 1C */	bne lbl_80A51D3C
/* 80A51D24  38 7F 0A F4 */	addi r3, r31, 0xaf4
/* 80A51D28  7F E4 FB 78 */	mr r4, r31
/* 80A51D2C  38 A0 07 DF */	li r5, 0x7df
/* 80A51D30  38 C0 00 00 */	li r6, 0
/* 80A51D34  38 E0 00 00 */	li r7, 0
/* 80A51D38  4B 7F 82 59 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
lbl_80A51D3C:
/* 80A51D3C  38 7F 0A F4 */	addi r3, r31, 0xaf4
/* 80A51D40  7F E4 FB 78 */	mr r4, r31
/* 80A51D44  38 A0 00 00 */	li r5, 0
/* 80A51D48  38 C0 00 00 */	li r6, 0
/* 80A51D4C  4B 7F 85 8D */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 80A51D50  2C 03 00 00 */	cmpwi r3, 0
/* 80A51D54  41 82 09 18 */	beq lbl_80A5266C
/* 80A51D58  38 00 00 CC */	li r0, 0xcc
/* 80A51D5C  B0 1F 0B 42 */	sth r0, 0xb42(r31)
/* 80A51D60  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 80A51D64  38 63 10 18 */	addi r3, r3, m_midnaActor__9daPy_py_c@l /* 0x80451018@l */
/* 80A51D68  80 63 00 00 */	lwz r3, 0(r3)
/* 80A51D6C  38 80 00 05 */	li r4, 5
/* 80A51D70  48 00 C0 51 */	bl changeDemoMode__9daMidna_cFUl
/* 80A51D74  48 00 08 F8 */	b lbl_80A5266C
lbl_80A51D78:
/* 80A51D78  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 80A51D7C  38 63 10 18 */	addi r3, r3, m_midnaActor__9daPy_py_c@l /* 0x80451018@l */
/* 80A51D80  80 63 00 00 */	lwz r3, 0(r3)
/* 80A51D84  48 00 BF ED */	bl checkShadowReturnEnd__9daMidna_cCFv
/* 80A51D88  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A51D8C  41 82 08 E0 */	beq lbl_80A5266C
/* 80A51D90  38 00 00 64 */	li r0, 0x64
/* 80A51D94  B0 1F 0B 42 */	sth r0, 0xb42(r31)
/* 80A51D98  48 00 08 D4 */	b lbl_80A5266C
lbl_80A51D9C:
/* 80A51D9C  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 80A51DA0  48 00 BF 71 */	bl checkCommandDemoAccrpt__11dEvt_info_cFv
/* 80A51DA4  2C 03 00 00 */	cmpwi r3, 0
/* 80A51DA8  40 82 00 44 */	bne lbl_80A51DEC
/* 80A51DAC  7F E3 FB 78 */	mr r3, r31
/* 80A51DB0  38 80 00 02 */	li r4, 2
/* 80A51DB4  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 80A51DB8  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 80A51DBC  38 C0 00 00 */	li r6, 0
/* 80A51DC0  4B 5C 9B 49 */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 80A51DC4  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 80A51DC8  38 80 00 02 */	li r4, 2
/* 80A51DCC  48 00 BF 35 */	bl onCondition__11dEvt_info_cFUs
/* 80A51DD0  38 61 00 5C */	addi r3, r1, 0x5c
/* 80A51DD4  38 80 FF FF */	li r4, -1
/* 80A51DD8  4B FF 73 91 */	bl __dt__4cXyzFv
/* 80A51DDC  38 61 00 68 */	addi r3, r1, 0x68
/* 80A51DE0  38 80 FF FF */	li r4, -1
/* 80A51DE4  4B FF 73 85 */	bl __dt__4cXyzFv
/* 80A51DE8  48 00 0A 04 */	b lbl_80A527EC
lbl_80A51DEC:
/* 80A51DEC  38 00 01 2D */	li r0, 0x12d
/* 80A51DF0  B0 1F 0B 42 */	sth r0, 0xb42(r31)
/* 80A51DF4  38 7C 02 48 */	addi r3, r28, 0x248
/* 80A51DF8  4B 70 F6 D9 */	bl Stop__9dCamera_cFv
/* 80A51DFC  38 7C 02 48 */	addi r3, r28, 0x248
/* 80A51E00  38 80 00 03 */	li r4, 3
/* 80A51E04  4B 71 12 09 */	bl SetTrimSize__9dCamera_cFl
/* 80A51E08  38 00 00 00 */	li r0, 0
/* 80A51E0C  B0 1F 0B 44 */	sth r0, 0xb44(r31)
/* 80A51E10  C0 1E 00 88 */	lfs f0, 0x88(r30)
/* 80A51E14  D0 1F 0B B8 */	stfs f0, 0xbb8(r31)
/* 80A51E18  7F A3 EB 78 */	mr r3, r29
/* 80A51E1C  48 00 BE D1 */	bl changeOriginalDemo__9daPy_py_cFv
/* 80A51E20  38 7F 0B 60 */	addi r3, r31, 0xb60
/* 80A51E24  C0 3E 02 F0 */	lfs f1, 0x2f0(r30)
/* 80A51E28  C0 5E 02 F4 */	lfs f2, 0x2f4(r30)
/* 80A51E2C  C0 7E 02 F8 */	lfs f3, 0x2f8(r30)
/* 80A51E30  48 00 BE 75 */	bl set__4cXyzFfff
/* 80A51E34  38 7F 0B 48 */	addi r3, r31, 0xb48
/* 80A51E38  C0 3E 02 FC */	lfs f1, 0x2fc(r30)
/* 80A51E3C  C0 5E 03 00 */	lfs f2, 0x300(r30)
/* 80A51E40  C0 7E 03 04 */	lfs f3, 0x304(r30)
/* 80A51E44  48 00 BE 61 */	bl set__4cXyzFfff
lbl_80A51E48:
/* 80A51E48  38 61 00 5C */	addi r3, r1, 0x5c
/* 80A51E4C  C0 3E 03 08 */	lfs f1, 0x308(r30)
/* 80A51E50  C0 5E 00 14 */	lfs f2, 0x14(r30)
/* 80A51E54  C0 7E 03 0C */	lfs f3, 0x30c(r30)
/* 80A51E58  48 00 BE 4D */	bl set__4cXyzFfff
/* 80A51E5C  38 61 00 5C */	addi r3, r1, 0x5c
/* 80A51E60  38 80 E7 4C */	li r4, -6324
/* 80A51E64  4B FF 71 9D */	bl setPlayerPosAndAngle__FP4cXyzs
/* 80A51E68  A8 1F 0B 44 */	lha r0, 0xb44(r31)
/* 80A51E6C  2C 00 00 3C */	cmpwi r0, 0x3c
/* 80A51E70  40 82 07 FC */	bne lbl_80A5266C
/* 80A51E74  38 00 01 2E */	li r0, 0x12e
/* 80A51E78  B0 1F 0B 42 */	sth r0, 0xb42(r31)
/* 80A51E7C  38 00 00 00 */	li r0, 0
/* 80A51E80  B0 1F 0B 44 */	sth r0, 0xb44(r31)
/* 80A51E84  38 7F 0B 60 */	addi r3, r31, 0xb60
/* 80A51E88  C0 3E 03 10 */	lfs f1, 0x310(r30)
/* 80A51E8C  C0 5E 03 14 */	lfs f2, 0x314(r30)
/* 80A51E90  C0 7E 03 18 */	lfs f3, 0x318(r30)
/* 80A51E94  48 00 BE 11 */	bl set__4cXyzFfff
/* 80A51E98  38 7F 0B 48 */	addi r3, r31, 0xb48
/* 80A51E9C  C0 3E 03 1C */	lfs f1, 0x31c(r30)
/* 80A51EA0  C0 5E 03 20 */	lfs f2, 0x320(r30)
/* 80A51EA4  C0 7E 03 24 */	lfs f3, 0x324(r30)
/* 80A51EA8  48 00 BD FD */	bl set__4cXyzFfff
/* 80A51EAC  7F E3 FB 78 */	mr r3, r31
/* 80A51EB0  38 80 00 33 */	li r4, 0x33
/* 80A51EB4  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 80A51EB8  38 A0 00 02 */	li r5, 2
/* 80A51EBC  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 80A51EC0  4B FF 72 E5 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A51EC4  38 00 00 03 */	li r0, 3
/* 80A51EC8  98 1F 0C 17 */	stb r0, 0xc17(r31)
/* 80A51ECC  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600AC@ha */
/* 80A51ED0  38 63 00 AC */	addi r3, r3, 0x00AC /* 0x000600AC@l */
/* 80A51ED4  38 9F 0C 04 */	addi r4, r31, 0xc04
/* 80A51ED8  38 A0 00 00 */	li r5, 0
/* 80A51EDC  38 C0 00 00 */	li r6, 0
/* 80A51EE0  48 00 BF 75 */	bl mDoAud_seStart__FUlPC3VecUlSc
/* 80A51EE4  48 00 07 88 */	b lbl_80A5266C
lbl_80A51EE8:
/* 80A51EE8  A8 1F 0B 44 */	lha r0, 0xb44(r31)
/* 80A51EEC  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80A51EF0  40 82 00 14 */	bne lbl_80A51F04
/* 80A51EF4  48 00 BC C1 */	bl dComIfGs_getMaxOil__Fv
/* 80A51EF8  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80A51EFC  7C 60 00 D0 */	neg r3, r0
/* 80A51F00  48 00 BC 9D */	bl dComIfGp_setItemOilCount__Fl
lbl_80A51F04:
/* 80A51F04  A8 1F 0B 44 */	lha r0, 0xb44(r31)
/* 80A51F08  2C 00 00 50 */	cmpwi r0, 0x50
/* 80A51F0C  40 82 07 60 */	bne lbl_80A5266C
/* 80A51F10  38 00 01 2F */	li r0, 0x12f
/* 80A51F14  B0 1F 0B 42 */	sth r0, 0xb42(r31)
/* 80A51F18  38 00 00 00 */	li r0, 0
/* 80A51F1C  B0 1F 0B 44 */	sth r0, 0xb44(r31)
/* 80A51F20  38 7F 0B 60 */	addi r3, r31, 0xb60
/* 80A51F24  C0 3E 03 28 */	lfs f1, 0x328(r30)
/* 80A51F28  C0 5E 03 2C */	lfs f2, 0x32c(r30)
/* 80A51F2C  C0 7E 03 30 */	lfs f3, 0x330(r30)
/* 80A51F30  48 00 BD 75 */	bl set__4cXyzFfff
/* 80A51F34  38 7F 0B 48 */	addi r3, r31, 0xb48
/* 80A51F38  C0 3E 03 34 */	lfs f1, 0x334(r30)
/* 80A51F3C  C0 5E 03 38 */	lfs f2, 0x338(r30)
/* 80A51F40  C0 7E 03 3C */	lfs f3, 0x33c(r30)
/* 80A51F44  48 00 BD 61 */	bl set__4cXyzFfff
/* 80A51F48  48 00 07 24 */	b lbl_80A5266C
lbl_80A51F4C:
/* 80A51F4C  A8 1F 0B 44 */	lha r0, 0xb44(r31)
/* 80A51F50  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A51F54  40 82 00 34 */	bne lbl_80A51F88
/* 80A51F58  7F E3 FB 78 */	mr r3, r31
/* 80A51F5C  38 80 00 1A */	li r4, 0x1a
/* 80A51F60  C0 3E 00 90 */	lfs f1, 0x90(r30)
/* 80A51F64  38 A0 00 02 */	li r5, 2
/* 80A51F68  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 80A51F6C  4B FF 72 39 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A51F70  38 00 01 2D */	li r0, 0x12d
/* 80A51F74  B0 1F 05 EA */	sth r0, 0x5ea(r31)
/* 80A51F78  3C 60 80 A6 */	lis r3, l_HIO@ha /* 0x80A5FEB8@ha */
/* 80A51F7C  38 63 FE B8 */	addi r3, r3, l_HIO@l /* 0x80A5FEB8@l */
/* 80A51F80  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80A51F84  D0 1F 05 2C */	stfs f0, 0x52c(r31)
lbl_80A51F88:
/* 80A51F88  A8 1F 0B 44 */	lha r0, 0xb44(r31)
/* 80A51F8C  2C 00 00 50 */	cmpwi r0, 0x50
/* 80A51F90  40 82 06 DC */	bne lbl_80A5266C
/* 80A51F94  38 00 00 64 */	li r0, 0x64
/* 80A51F98  B0 1F 0B 42 */	sth r0, 0xb42(r31)
/* 80A51F9C  38 00 01 2E */	li r0, 0x12e
/* 80A51FA0  B0 1F 05 EA */	sth r0, 0x5ea(r31)
/* 80A51FA4  7F E3 FB 78 */	mr r3, r31
/* 80A51FA8  38 80 00 33 */	li r4, 0x33
/* 80A51FAC  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 80A51FB0  38 A0 00 02 */	li r5, 2
/* 80A51FB4  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 80A51FB8  4B FF 71 ED */	bl anm_init__FP12npc_ks_classifUcf
/* 80A51FBC  3C 60 80 3A */	lis r3, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80A51FC0  38 63 72 88 */	addi r3, r3, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80A51FC4  A0 63 01 C2 */	lhz r3, 0x1c2(r3)
/* 80A51FC8  48 00 BE F1 */	bl dComIfGs_onEventBit__FUs
/* 80A51FCC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A51FD0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A51FD4  38 80 00 3D */	li r4, 0x3d
/* 80A51FD8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80A51FDC  7C 05 07 74 */	extsb r5, r0
/* 80A51FE0  4B 5E 32 D1 */	bl offSwitch__10dSv_info_cFii
/* 80A51FE4  48 00 06 88 */	b lbl_80A5266C
lbl_80A51FE8:
/* 80A51FE8  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 80A51FEC  48 00 BD 25 */	bl checkCommandDemoAccrpt__11dEvt_info_cFv
/* 80A51FF0  2C 03 00 00 */	cmpwi r3, 0
/* 80A51FF4  40 82 00 44 */	bne lbl_80A52038
/* 80A51FF8  7F E3 FB 78 */	mr r3, r31
/* 80A51FFC  38 80 00 02 */	li r4, 2
/* 80A52000  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 80A52004  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 80A52008  38 C0 00 00 */	li r6, 0
/* 80A5200C  4B 5C 98 FD */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 80A52010  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 80A52014  38 80 00 02 */	li r4, 2
/* 80A52018  48 00 BC E9 */	bl onCondition__11dEvt_info_cFUs
/* 80A5201C  38 61 00 5C */	addi r3, r1, 0x5c
/* 80A52020  38 80 FF FF */	li r4, -1
/* 80A52024  4B FF 71 45 */	bl __dt__4cXyzFv
/* 80A52028  38 61 00 68 */	addi r3, r1, 0x68
/* 80A5202C  38 80 FF FF */	li r4, -1
/* 80A52030  4B FF 71 39 */	bl __dt__4cXyzFv
/* 80A52034  48 00 07 B8 */	b lbl_80A527EC
lbl_80A52038:
/* 80A52038  38 00 01 5F */	li r0, 0x15f
/* 80A5203C  B0 1F 0B 42 */	sth r0, 0xb42(r31)
/* 80A52040  38 7C 02 48 */	addi r3, r28, 0x248
/* 80A52044  4B 70 F4 8D */	bl Stop__9dCamera_cFv
/* 80A52048  38 7C 02 48 */	addi r3, r28, 0x248
/* 80A5204C  38 80 00 03 */	li r4, 3
/* 80A52050  4B 71 0F BD */	bl SetTrimSize__9dCamera_cFl
/* 80A52054  38 00 00 00 */	li r0, 0
/* 80A52058  B0 1F 0B 44 */	sth r0, 0xb44(r31)
/* 80A5205C  C0 1E 00 BC */	lfs f0, 0xbc(r30)
/* 80A52060  D0 1F 0B B8 */	stfs f0, 0xbb8(r31)
/* 80A52064  7F A3 EB 78 */	mr r3, r29
/* 80A52068  48 00 BC 85 */	bl changeOriginalDemo__9daPy_py_cFv
/* 80A5206C  38 7F 0B 60 */	addi r3, r31, 0xb60
/* 80A52070  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80A52074  48 00 BC 41 */	bl __as__4cXyzFRC4cXyz
/* 80A52078  38 7F 0B 48 */	addi r3, r31, 0xb48
/* 80A5207C  C0 3E 03 40 */	lfs f1, 0x340(r30)
/* 80A52080  C0 5E 03 44 */	lfs f2, 0x344(r30)
/* 80A52084  C0 7E 03 48 */	lfs f3, 0x348(r30)
/* 80A52088  48 00 BC 1D */	bl set__4cXyzFfff
lbl_80A5208C:
/* 80A5208C  38 61 00 68 */	addi r3, r1, 0x68
/* 80A52090  C0 3E 03 4C */	lfs f1, 0x34c(r30)
/* 80A52094  C0 5E 03 50 */	lfs f2, 0x350(r30)
/* 80A52098  C0 7E 03 54 */	lfs f3, 0x354(r30)
/* 80A5209C  48 00 BC 09 */	bl set__4cXyzFfff
/* 80A520A0  48 00 BB 25 */	bl daPy_getPlayerActorClass__Fv
/* 80A520A4  38 81 00 68 */	addi r4, r1, 0x68
/* 80A520A8  38 A0 80 00 */	li r5, -32768
/* 80A520AC  38 C0 00 00 */	li r6, 0
/* 80A520B0  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80A520B4  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80A520B8  7D 89 03 A6 */	mtctr r12
/* 80A520BC  4E 80 04 21 */	bctrl 
/* 80A520C0  38 61 00 68 */	addi r3, r1, 0x68
/* 80A520C4  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80A520C8  48 00 BB ED */	bl __as__4cXyzFRC4cXyz
/* 80A520CC  38 7F 0B 60 */	addi r3, r31, 0xb60
/* 80A520D0  C0 21 00 68 */	lfs f1, 0x68(r1)
/* 80A520D4  C0 5E 01 40 */	lfs f2, 0x140(r30)
/* 80A520D8  C0 7E 00 40 */	lfs f3, 0x40(r30)
/* 80A520DC  4B 81 D9 61 */	bl cLib_addCalc2__FPffff
/* 80A520E0  38 7F 0B 64 */	addi r3, r31, 0xb64
/* 80A520E4  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 80A520E8  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80A520EC  EC 21 00 2A */	fadds f1, f1, f0
/* 80A520F0  C0 5E 01 40 */	lfs f2, 0x140(r30)
/* 80A520F4  C0 7E 00 40 */	lfs f3, 0x40(r30)
/* 80A520F8  4B 81 D9 45 */	bl cLib_addCalc2__FPffff
/* 80A520FC  38 7F 0B 68 */	addi r3, r31, 0xb68
/* 80A52100  C0 21 00 70 */	lfs f1, 0x70(r1)
/* 80A52104  C0 5E 01 40 */	lfs f2, 0x140(r30)
/* 80A52108  C0 7E 00 40 */	lfs f3, 0x40(r30)
/* 80A5210C  4B 81 D9 31 */	bl cLib_addCalc2__FPffff
/* 80A52110  A8 1F 0B 44 */	lha r0, 0xb44(r31)
/* 80A52114  2C 00 00 69 */	cmpwi r0, 0x69
/* 80A52118  40 82 00 18 */	bne lbl_80A52130
/* 80A5211C  38 7F 0B 48 */	addi r3, r31, 0xb48
/* 80A52120  C0 3E 03 58 */	lfs f1, 0x358(r30)
/* 80A52124  C0 5E 00 48 */	lfs f2, 0x48(r30)
/* 80A52128  C0 7E 03 5C */	lfs f3, 0x35c(r30)
/* 80A5212C  48 00 BB 79 */	bl set__4cXyzFfff
lbl_80A52130:
/* 80A52130  A8 1F 0B 44 */	lha r0, 0xb44(r31)
/* 80A52134  2C 00 00 B2 */	cmpwi r0, 0xb2
/* 80A52138  40 82 00 14 */	bne lbl_80A5214C
/* 80A5213C  3C 60 80 A5 */	lis r3, s_fsdown_sub__FPvPv@ha /* 0x80A50028@ha */
/* 80A52140  38 63 00 28 */	addi r3, r3, s_fsdown_sub__FPvPv@l /* 0x80A50028@l */
/* 80A52144  7F E4 FB 78 */	mr r4, r31
/* 80A52148  4B 5C F1 F1 */	bl fpcEx_Search__FPFPvPv_PvPv
lbl_80A5214C:
/* 80A5214C  A8 1F 0B 44 */	lha r0, 0xb44(r31)
/* 80A52150  2C 00 00 B4 */	cmpwi r0, 0xb4
/* 80A52154  40 82 05 18 */	bne lbl_80A5266C
/* 80A52158  38 7F 0B 60 */	addi r3, r31, 0xb60
/* 80A5215C  C0 3E 03 60 */	lfs f1, 0x360(r30)
/* 80A52160  C0 5E 00 1C */	lfs f2, 0x1c(r30)
/* 80A52164  C0 7E 03 64 */	lfs f3, 0x364(r30)
/* 80A52168  48 00 BB 3D */	bl set__4cXyzFfff
/* 80A5216C  38 7F 0B 48 */	addi r3, r31, 0xb48
/* 80A52170  C0 3E 03 68 */	lfs f1, 0x368(r30)
/* 80A52174  C0 5E 03 6C */	lfs f2, 0x36c(r30)
/* 80A52178  C0 7E 03 70 */	lfs f3, 0x370(r30)
/* 80A5217C  48 00 BB 29 */	bl set__4cXyzFfff
/* 80A52180  38 7F 0B 6C */	addi r3, r31, 0xb6c
/* 80A52184  C0 3E 03 74 */	lfs f1, 0x374(r30)
/* 80A52188  C0 5E 03 78 */	lfs f2, 0x378(r30)
/* 80A5218C  C0 7E 03 7C */	lfs f3, 0x37c(r30)
/* 80A52190  48 00 BB 15 */	bl set__4cXyzFfff
/* 80A52194  38 7F 0B 54 */	addi r3, r31, 0xb54
/* 80A52198  C0 3E 03 80 */	lfs f1, 0x380(r30)
/* 80A5219C  C0 5E 03 84 */	lfs f2, 0x384(r30)
/* 80A521A0  C0 7E 03 88 */	lfs f3, 0x388(r30)
/* 80A521A4  48 00 BB 01 */	bl set__4cXyzFfff
/* 80A521A8  C0 3F 0B 54 */	lfs f1, 0xb54(r31)
/* 80A521AC  C0 1F 0B 48 */	lfs f0, 0xb48(r31)
/* 80A521B0  EC 21 00 28 */	fsubs f1, f1, f0
/* 80A521B4  48 00 BA E5 */	bl fabsf__3stdFf
/* 80A521B8  D0 3F 0B 78 */	stfs f1, 0xb78(r31)
/* 80A521BC  C0 3F 0B 58 */	lfs f1, 0xb58(r31)
/* 80A521C0  C0 1F 0B 4C */	lfs f0, 0xb4c(r31)
/* 80A521C4  EC 21 00 28 */	fsubs f1, f1, f0
/* 80A521C8  48 00 BA D1 */	bl fabsf__3stdFf
/* 80A521CC  D0 3F 0B 7C */	stfs f1, 0xb7c(r31)
/* 80A521D0  C0 3F 0B 5C */	lfs f1, 0xb5c(r31)
/* 80A521D4  C0 1F 0B 50 */	lfs f0, 0xb50(r31)
/* 80A521D8  EC 21 00 28 */	fsubs f1, f1, f0
/* 80A521DC  48 00 BA BD */	bl fabsf__3stdFf
/* 80A521E0  D0 3F 0B 80 */	stfs f1, 0xb80(r31)
/* 80A521E4  C0 3F 0B 6C */	lfs f1, 0xb6c(r31)
/* 80A521E8  C0 1F 0B 60 */	lfs f0, 0xb60(r31)
/* 80A521EC  EC 21 00 28 */	fsubs f1, f1, f0
/* 80A521F0  48 00 BA A9 */	bl fabsf__3stdFf
/* 80A521F4  D0 3F 0B 84 */	stfs f1, 0xb84(r31)
/* 80A521F8  C0 3F 0B 70 */	lfs f1, 0xb70(r31)
/* 80A521FC  C0 1F 0B 64 */	lfs f0, 0xb64(r31)
/* 80A52200  EC 21 00 28 */	fsubs f1, f1, f0
/* 80A52204  48 00 BA 95 */	bl fabsf__3stdFf
/* 80A52208  D0 3F 0B 88 */	stfs f1, 0xb88(r31)
/* 80A5220C  C0 3F 0B 74 */	lfs f1, 0xb74(r31)
/* 80A52210  C0 1F 0B 68 */	lfs f0, 0xb68(r31)
/* 80A52214  EC 21 00 28 */	fsubs f1, f1, f0
/* 80A52218  48 00 BA 81 */	bl fabsf__3stdFf
/* 80A5221C  D0 3F 0B 8C */	stfs f1, 0xb8c(r31)
/* 80A52220  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80A52224  D0 1F 0B C4 */	stfs f0, 0xbc4(r31)
/* 80A52228  38 00 01 60 */	li r0, 0x160
/* 80A5222C  B0 1F 0B 42 */	sth r0, 0xb42(r31)
/* 80A52230  38 00 00 00 */	li r0, 0
/* 80A52234  B0 1F 0B 44 */	sth r0, 0xb44(r31)
/* 80A52238  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 80A5223C  D0 1F 0B 64 */	stfs f0, 0xb64(r31)
/* 80A52240  48 00 04 2C */	b lbl_80A5266C
lbl_80A52244:
/* 80A52244  A8 1F 0B 44 */	lha r0, 0xb44(r31)
/* 80A52248  2C 00 00 28 */	cmpwi r0, 0x28
/* 80A5224C  40 82 00 0C */	bne lbl_80A52258
/* 80A52250  38 00 00 28 */	li r0, 0x28
/* 80A52254  B0 1F 05 EA */	sth r0, 0x5ea(r31)
lbl_80A52258:
/* 80A52258  A8 1F 0B 44 */	lha r0, 0xb44(r31)
/* 80A5225C  2C 00 00 6E */	cmpwi r0, 0x6e
/* 80A52260  40 82 00 14 */	bne lbl_80A52274
/* 80A52264  3C 60 80 A5 */	lis r3, s_fsdown_sub__FPvPv@ha /* 0x80A50028@ha */
/* 80A52268  38 63 00 28 */	addi r3, r3, s_fsdown_sub__FPvPv@l /* 0x80A50028@l */
/* 80A5226C  7F E4 FB 78 */	mr r4, r31
/* 80A52270  4B 5C F0 C9 */	bl fpcEx_Search__FPFPvPv_PvPv
lbl_80A52274:
/* 80A52274  A8 1F 0B 44 */	lha r0, 0xb44(r31)
/* 80A52278  2C 00 00 A0 */	cmpwi r0, 0xa0
/* 80A5227C  40 81 00 28 */	ble lbl_80A522A4
/* 80A52280  7F E3 FB 78 */	mr r3, r31
/* 80A52284  C0 3E 00 FC */	lfs f1, 0xfc(r30)
/* 80A52288  4B FF DC 69 */	bl cam_3d_morf__FP12npc_ks_classf
/* 80A5228C  38 7F 0B C4 */	addi r3, r31, 0xbc4
/* 80A52290  C0 3E 01 40 */	lfs f1, 0x140(r30)
/* 80A52294  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 80A52298  C0 7E 01 4C */	lfs f3, 0x14c(r30)
/* 80A5229C  4B 81 D7 A1 */	bl cLib_addCalc2__FPffff
/* 80A522A0  48 00 00 20 */	b lbl_80A522C0
lbl_80A522A4:
/* 80A522A4  2C 00 00 19 */	cmpwi r0, 0x19
/* 80A522A8  40 81 00 18 */	ble lbl_80A522C0
/* 80A522AC  38 7F 0B 64 */	addi r3, r31, 0xb64
/* 80A522B0  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 80A522B4  C0 5E 00 2C */	lfs f2, 0x2c(r30)
/* 80A522B8  C0 7E 00 20 */	lfs f3, 0x20(r30)
/* 80A522BC  4B 81 D7 81 */	bl cLib_addCalc2__FPffff
lbl_80A522C0:
/* 80A522C0  A8 1F 0B 44 */	lha r0, 0xb44(r31)
/* 80A522C4  2C 00 00 E6 */	cmpwi r0, 0xe6
/* 80A522C8  40 82 03 A4 */	bne lbl_80A5266C
/* 80A522CC  38 00 00 64 */	li r0, 0x64
/* 80A522D0  B0 1F 0B 42 */	sth r0, 0xb42(r31)
/* 80A522D4  3C 60 80 A5 */	lis r3, s_fsdown_sub__FPvPv@ha /* 0x80A50028@ha */
/* 80A522D8  38 63 00 28 */	addi r3, r3, s_fsdown_sub__FPvPv@l /* 0x80A50028@l */
/* 80A522DC  7F E4 FB 78 */	mr r4, r31
/* 80A522E0  4B 5C F0 59 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 80A522E4  3C 60 80 3A */	lis r3, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80A522E8  38 63 72 88 */	addi r3, r3, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80A522EC  A0 63 04 40 */	lhz r3, 0x440(r3)
/* 80A522F0  48 00 BB C9 */	bl dComIfGs_onEventBit__FUs
/* 80A522F4  48 00 03 78 */	b lbl_80A5266C
lbl_80A522F8:
/* 80A522F8  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 80A522FC  48 00 BA 15 */	bl checkCommandDemoAccrpt__11dEvt_info_cFv
/* 80A52300  2C 03 00 00 */	cmpwi r3, 0
/* 80A52304  40 82 00 44 */	bne lbl_80A52348
/* 80A52308  7F E3 FB 78 */	mr r3, r31
/* 80A5230C  38 80 00 02 */	li r4, 2
/* 80A52310  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 80A52314  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 80A52318  38 C0 00 00 */	li r6, 0
/* 80A5231C  4B 5C 95 ED */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 80A52320  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 80A52324  38 80 00 02 */	li r4, 2
/* 80A52328  48 00 B9 D9 */	bl onCondition__11dEvt_info_cFUs
/* 80A5232C  38 61 00 5C */	addi r3, r1, 0x5c
/* 80A52330  38 80 FF FF */	li r4, -1
/* 80A52334  4B FF 6E 35 */	bl __dt__4cXyzFv
/* 80A52338  38 61 00 68 */	addi r3, r1, 0x68
/* 80A5233C  38 80 FF FF */	li r4, -1
/* 80A52340  4B FF 6E 29 */	bl __dt__4cXyzFv
/* 80A52344  48 00 04 A8 */	b lbl_80A527EC
lbl_80A52348:
/* 80A52348  38 00 01 69 */	li r0, 0x169
/* 80A5234C  B0 1F 0B 42 */	sth r0, 0xb42(r31)
/* 80A52350  38 7C 02 48 */	addi r3, r28, 0x248
/* 80A52354  4B 70 F1 7D */	bl Stop__9dCamera_cFv
/* 80A52358  38 7C 02 48 */	addi r3, r28, 0x248
/* 80A5235C  38 80 00 03 */	li r4, 3
/* 80A52360  4B 71 0C AD */	bl SetTrimSize__9dCamera_cFl
/* 80A52364  38 00 00 00 */	li r0, 0
/* 80A52368  B0 1F 0B 44 */	sth r0, 0xb44(r31)
/* 80A5236C  C0 1E 00 BC */	lfs f0, 0xbc(r30)
/* 80A52370  D0 1F 0B B8 */	stfs f0, 0xbb8(r31)
/* 80A52374  7F A3 EB 78 */	mr r3, r29
/* 80A52378  48 00 B9 75 */	bl changeOriginalDemo__9daPy_py_cFv
/* 80A5237C  38 7F 0B 60 */	addi r3, r31, 0xb60
/* 80A52380  C0 3E 03 8C */	lfs f1, 0x38c(r30)
/* 80A52384  C0 5E 03 90 */	lfs f2, 0x390(r30)
/* 80A52388  C0 7E 03 94 */	lfs f3, 0x394(r30)
/* 80A5238C  48 00 B9 19 */	bl set__4cXyzFfff
/* 80A52390  38 7F 0B 48 */	addi r3, r31, 0xb48
/* 80A52394  C0 3E 03 98 */	lfs f1, 0x398(r30)
/* 80A52398  C0 5E 03 90 */	lfs f2, 0x390(r30)
/* 80A5239C  C0 7E 03 9C */	lfs f3, 0x39c(r30)
/* 80A523A0  48 00 B9 05 */	bl set__4cXyzFfff
/* 80A523A4  38 7F 0B 6C */	addi r3, r31, 0xb6c
/* 80A523A8  C0 3E 03 A0 */	lfs f1, 0x3a0(r30)
/* 80A523AC  C0 5E 03 A4 */	lfs f2, 0x3a4(r30)
/* 80A523B0  C0 7E 03 A8 */	lfs f3, 0x3a8(r30)
/* 80A523B4  48 00 B8 F1 */	bl set__4cXyzFfff
/* 80A523B8  38 7F 0B 54 */	addi r3, r31, 0xb54
/* 80A523BC  C0 3E 03 AC */	lfs f1, 0x3ac(r30)
/* 80A523C0  C0 5E 03 B0 */	lfs f2, 0x3b0(r30)
/* 80A523C4  C0 7E 03 B4 */	lfs f3, 0x3b4(r30)
/* 80A523C8  48 00 B8 DD */	bl set__4cXyzFfff
/* 80A523CC  C0 3F 0B 54 */	lfs f1, 0xb54(r31)
/* 80A523D0  C0 1F 0B 48 */	lfs f0, 0xb48(r31)
/* 80A523D4  EC 21 00 28 */	fsubs f1, f1, f0
/* 80A523D8  48 00 B8 C1 */	bl fabsf__3stdFf
/* 80A523DC  D0 3F 0B 78 */	stfs f1, 0xb78(r31)
/* 80A523E0  C0 3F 0B 58 */	lfs f1, 0xb58(r31)
/* 80A523E4  C0 1F 0B 4C */	lfs f0, 0xb4c(r31)
/* 80A523E8  EC 21 00 28 */	fsubs f1, f1, f0
/* 80A523EC  48 00 B8 AD */	bl fabsf__3stdFf
/* 80A523F0  D0 3F 0B 7C */	stfs f1, 0xb7c(r31)
/* 80A523F4  C0 3F 0B 5C */	lfs f1, 0xb5c(r31)
/* 80A523F8  C0 1F 0B 50 */	lfs f0, 0xb50(r31)
/* 80A523FC  EC 21 00 28 */	fsubs f1, f1, f0
/* 80A52400  48 00 B8 99 */	bl fabsf__3stdFf
/* 80A52404  D0 3F 0B 80 */	stfs f1, 0xb80(r31)
/* 80A52408  C0 3F 0B 6C */	lfs f1, 0xb6c(r31)
/* 80A5240C  C0 1F 0B 60 */	lfs f0, 0xb60(r31)
/* 80A52410  EC 21 00 28 */	fsubs f1, f1, f0
/* 80A52414  48 00 B8 85 */	bl fabsf__3stdFf
/* 80A52418  D0 3F 0B 84 */	stfs f1, 0xb84(r31)
/* 80A5241C  C0 3F 0B 70 */	lfs f1, 0xb70(r31)
/* 80A52420  C0 1F 0B 64 */	lfs f0, 0xb64(r31)
/* 80A52424  EC 21 00 28 */	fsubs f1, f1, f0
/* 80A52428  48 00 B8 71 */	bl fabsf__3stdFf
/* 80A5242C  D0 3F 0B 88 */	stfs f1, 0xb88(r31)
/* 80A52430  C0 3F 0B 74 */	lfs f1, 0xb74(r31)
/* 80A52434  C0 1F 0B 68 */	lfs f0, 0xb68(r31)
/* 80A52438  EC 21 00 28 */	fsubs f1, f1, f0
/* 80A5243C  48 00 B8 5D */	bl fabsf__3stdFf
/* 80A52440  D0 3F 0B 8C */	stfs f1, 0xb8c(r31)
/* 80A52444  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80A52448  D0 1F 0B C4 */	stfs f0, 0xbc4(r31)
/* 80A5244C  7F E3 FB 78 */	mr r3, r31
/* 80A52450  38 80 00 27 */	li r4, 0x27
/* 80A52454  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 80A52458  38 A0 00 02 */	li r5, 2
/* 80A5245C  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 80A52460  4B FF 6D 45 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A52464  38 00 00 29 */	li r0, 0x29
/* 80A52468  B0 1F 05 EA */	sth r0, 0x5ea(r31)
/* 80A5246C  38 00 00 1E */	li r0, 0x1e
/* 80A52470  B0 1F 05 F0 */	sth r0, 0x5f0(r31)
lbl_80A52474:
/* 80A52474  38 61 00 68 */	addi r3, r1, 0x68
/* 80A52478  C0 3E 03 B8 */	lfs f1, 0x3b8(r30)
/* 80A5247C  C0 5E 03 50 */	lfs f2, 0x350(r30)
/* 80A52480  C0 7E 03 BC */	lfs f3, 0x3bc(r30)
/* 80A52484  48 00 B8 21 */	bl set__4cXyzFfff
/* 80A52488  48 00 B7 3D */	bl daPy_getPlayerActorClass__Fv
/* 80A5248C  38 81 00 68 */	addi r4, r1, 0x68
/* 80A52490  38 A0 80 00 */	li r5, -32768
/* 80A52494  38 C0 00 00 */	li r6, 0
/* 80A52498  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80A5249C  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80A524A0  7D 89 03 A6 */	mtctr r12
/* 80A524A4  4E 80 04 21 */	bctrl 
/* 80A524A8  A8 1F 0B 44 */	lha r0, 0xb44(r31)
/* 80A524AC  2C 00 00 69 */	cmpwi r0, 0x69
/* 80A524B0  41 80 01 BC */	blt lbl_80A5266C
/* 80A524B4  40 82 00 1C */	bne lbl_80A524D0
/* 80A524B8  38 7F 0A F4 */	addi r3, r31, 0xaf4
/* 80A524BC  7F E4 FB 78 */	mr r4, r31
/* 80A524C0  38 A0 00 74 */	li r5, 0x74
/* 80A524C4  38 C0 00 00 */	li r6, 0
/* 80A524C8  38 E0 00 00 */	li r7, 0
/* 80A524CC  4B 7F 7A C5 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
lbl_80A524D0:
/* 80A524D0  38 7F 0A F4 */	addi r3, r31, 0xaf4
/* 80A524D4  4B 7F 80 6D */	bl getNowMsgNo__10dMsgFlow_cFv
/* 80A524D8  28 03 14 21 */	cmplwi r3, 0x1421
/* 80A524DC  40 82 00 14 */	bne lbl_80A524F0
/* 80A524E0  38 00 01 6A */	li r0, 0x16a
/* 80A524E4  B0 1F 0B 42 */	sth r0, 0xb42(r31)
/* 80A524E8  38 00 00 00 */	li r0, 0
/* 80A524EC  B0 1F 0B 44 */	sth r0, 0xb44(r31)
lbl_80A524F0:
/* 80A524F0  38 7F 0A F4 */	addi r3, r31, 0xaf4
/* 80A524F4  7F E4 FB 78 */	mr r4, r31
/* 80A524F8  38 A0 00 00 */	li r5, 0
/* 80A524FC  38 C0 00 00 */	li r6, 0
/* 80A52500  4B 7F 7D D9 */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 80A52504  48 00 01 68 */	b lbl_80A5266C
lbl_80A52508:
/* 80A52508  A8 1F 0B 44 */	lha r0, 0xb44(r31)
/* 80A5250C  2C 00 00 0F */	cmpwi r0, 0xf
/* 80A52510  40 82 00 0C */	bne lbl_80A5251C
/* 80A52514  38 00 00 1E */	li r0, 0x1e
/* 80A52518  B0 1F 05 F4 */	sth r0, 0x5f4(r31)
lbl_80A5251C:
/* 80A5251C  A8 1F 0B 44 */	lha r0, 0xb44(r31)
/* 80A52520  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80A52524  41 80 00 24 */	blt lbl_80A52548
/* 80A52528  7F E3 FB 78 */	mr r3, r31
/* 80A5252C  C0 3E 01 40 */	lfs f1, 0x140(r30)
/* 80A52530  4B FF D9 C1 */	bl cam_3d_morf__FP12npc_ks_classf
/* 80A52534  38 7F 0B C4 */	addi r3, r31, 0xbc4
/* 80A52538  C0 3E 01 0C */	lfs f1, 0x10c(r30)
/* 80A5253C  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 80A52540  C0 7E 03 C0 */	lfs f3, 0x3c0(r30)
/* 80A52544  4B 81 D4 F9 */	bl cLib_addCalc2__FPffff
lbl_80A52548:
/* 80A52548  38 7F 0A F4 */	addi r3, r31, 0xaf4
/* 80A5254C  4B 7F 7F F5 */	bl getNowMsgNo__10dMsgFlow_cFv
/* 80A52550  28 03 14 23 */	cmplwi r3, 0x1423
/* 80A52554  40 82 00 BC */	bne lbl_80A52610
/* 80A52558  38 00 01 6B */	li r0, 0x16b
/* 80A5255C  B0 1F 0B 42 */	sth r0, 0xb42(r31)
/* 80A52560  38 00 00 00 */	li r0, 0
/* 80A52564  B0 1F 0B 44 */	sth r0, 0xb44(r31)
/* 80A52568  38 7F 0B 6C */	addi r3, r31, 0xb6c
/* 80A5256C  C0 3E 03 C4 */	lfs f1, 0x3c4(r30)
/* 80A52570  C0 5E 03 C8 */	lfs f2, 0x3c8(r30)
/* 80A52574  C0 7E 03 CC */	lfs f3, 0x3cc(r30)
/* 80A52578  48 00 B7 2D */	bl set__4cXyzFfff
/* 80A5257C  38 7F 0B 54 */	addi r3, r31, 0xb54
/* 80A52580  C0 3E 03 D0 */	lfs f1, 0x3d0(r30)
/* 80A52584  C0 5E 03 D4 */	lfs f2, 0x3d4(r30)
/* 80A52588  C0 7E 03 D8 */	lfs f3, 0x3d8(r30)
/* 80A5258C  48 00 B7 19 */	bl set__4cXyzFfff
/* 80A52590  C0 3F 0B 54 */	lfs f1, 0xb54(r31)
/* 80A52594  C0 1F 0B 48 */	lfs f0, 0xb48(r31)
/* 80A52598  EC 21 00 28 */	fsubs f1, f1, f0
/* 80A5259C  48 00 B6 FD */	bl fabsf__3stdFf
/* 80A525A0  D0 3F 0B 78 */	stfs f1, 0xb78(r31)
/* 80A525A4  C0 3F 0B 58 */	lfs f1, 0xb58(r31)
/* 80A525A8  C0 1F 0B 4C */	lfs f0, 0xb4c(r31)
/* 80A525AC  EC 21 00 28 */	fsubs f1, f1, f0
/* 80A525B0  48 00 B6 E9 */	bl fabsf__3stdFf
/* 80A525B4  D0 3F 0B 7C */	stfs f1, 0xb7c(r31)
/* 80A525B8  C0 3F 0B 5C */	lfs f1, 0xb5c(r31)
/* 80A525BC  C0 1F 0B 50 */	lfs f0, 0xb50(r31)
/* 80A525C0  EC 21 00 28 */	fsubs f1, f1, f0
/* 80A525C4  48 00 B6 D5 */	bl fabsf__3stdFf
/* 80A525C8  D0 3F 0B 80 */	stfs f1, 0xb80(r31)
/* 80A525CC  C0 3F 0B 6C */	lfs f1, 0xb6c(r31)
/* 80A525D0  C0 1F 0B 60 */	lfs f0, 0xb60(r31)
/* 80A525D4  EC 21 00 28 */	fsubs f1, f1, f0
/* 80A525D8  48 00 B6 C1 */	bl fabsf__3stdFf
/* 80A525DC  D0 3F 0B 84 */	stfs f1, 0xb84(r31)
/* 80A525E0  C0 3F 0B 70 */	lfs f1, 0xb70(r31)
/* 80A525E4  C0 1F 0B 64 */	lfs f0, 0xb64(r31)
/* 80A525E8  EC 21 00 28 */	fsubs f1, f1, f0
/* 80A525EC  48 00 B6 AD */	bl fabsf__3stdFf
/* 80A525F0  D0 3F 0B 88 */	stfs f1, 0xb88(r31)
/* 80A525F4  C0 3F 0B 74 */	lfs f1, 0xb74(r31)
/* 80A525F8  C0 1F 0B 68 */	lfs f0, 0xb68(r31)
/* 80A525FC  EC 21 00 28 */	fsubs f1, f1, f0
/* 80A52600  48 00 B6 99 */	bl fabsf__3stdFf
/* 80A52604  D0 3F 0B 8C */	stfs f1, 0xb8c(r31)
/* 80A52608  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80A5260C  D0 1F 0B C4 */	stfs f0, 0xbc4(r31)
lbl_80A52610:
/* 80A52610  38 7F 0A F4 */	addi r3, r31, 0xaf4
/* 80A52614  7F E4 FB 78 */	mr r4, r31
/* 80A52618  38 A0 00 00 */	li r5, 0
/* 80A5261C  38 C0 00 00 */	li r6, 0
/* 80A52620  4B 7F 7C B9 */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 80A52624  48 00 00 48 */	b lbl_80A5266C
lbl_80A52628:
/* 80A52628  7F E3 FB 78 */	mr r3, r31
/* 80A5262C  C0 3E 00 FC */	lfs f1, 0xfc(r30)
/* 80A52630  4B FF D8 C1 */	bl cam_3d_morf__FP12npc_ks_classf
/* 80A52634  38 7F 0B C4 */	addi r3, r31, 0xbc4
/* 80A52638  C0 3E 01 0C */	lfs f1, 0x10c(r30)
/* 80A5263C  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 80A52640  C0 7E 03 C0 */	lfs f3, 0x3c0(r30)
/* 80A52644  4B 81 D3 F9 */	bl cLib_addCalc2__FPffff
/* 80A52648  38 7F 0A F4 */	addi r3, r31, 0xaf4
/* 80A5264C  7F E4 FB 78 */	mr r4, r31
/* 80A52650  38 A0 00 00 */	li r5, 0
/* 80A52654  38 C0 00 00 */	li r6, 0
/* 80A52658  4B 7F 7C 81 */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 80A5265C  2C 03 00 00 */	cmpwi r3, 0
/* 80A52660  41 82 00 0C */	beq lbl_80A5266C
/* 80A52664  38 00 00 64 */	li r0, 0x64
/* 80A52668  B0 1F 0B 42 */	sth r0, 0xb42(r31)
lbl_80A5266C:
/* 80A5266C  A8 1F 0B 42 */	lha r0, 0xb42(r31)
/* 80A52670  2C 00 00 63 */	cmpwi r0, 0x63
/* 80A52674  41 82 00 0C */	beq lbl_80A52680
/* 80A52678  2C 00 00 62 */	cmpwi r0, 0x62
/* 80A5267C  40 82 00 7C */	bne lbl_80A526F8
lbl_80A52680:
/* 80A52680  2C 00 00 63 */	cmpwi r0, 0x63
/* 80A52684  40 82 00 0C */	bne lbl_80A52690
/* 80A52688  7F E3 FB 78 */	mr r3, r31
/* 80A5268C  4B 5C 75 F1 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_80A52690:
/* 80A52690  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80A52694  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80A52698  80 63 00 00 */	lwz r3, 0(r3)
/* 80A5269C  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 80A526A0  4B 5B 9D 3D */	bl mDoMtx_YrotS__FPA4_fs
/* 80A526A4  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80A526A8  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80A526AC  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 80A526B0  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80A526B4  C0 1E 01 50 */	lfs f0, 0x150(r30)
/* 80A526B8  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80A526BC  38 61 00 68 */	addi r3, r1, 0x68
/* 80A526C0  38 9F 0B 48 */	addi r4, r31, 0xb48
/* 80A526C4  4B 81 E8 29 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80A526C8  38 7F 0B 48 */	addi r3, r31, 0xb48
/* 80A526CC  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80A526D0  48 00 B5 95 */	bl __apl__4cXyzFRC3Vec
/* 80A526D4  38 7F 0B 60 */	addi r3, r31, 0xb60
/* 80A526D8  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80A526DC  48 00 B5 D9 */	bl __as__4cXyzFRC4cXyz
/* 80A526E0  C0 3F 0B 64 */	lfs f1, 0xb64(r31)
/* 80A526E4  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 80A526E8  EC 01 00 2A */	fadds f0, f1, f0
/* 80A526EC  D0 1F 0B 64 */	stfs f0, 0xb64(r31)
/* 80A526F0  38 00 00 64 */	li r0, 0x64
/* 80A526F4  B0 1F 0B 42 */	sth r0, 0xb42(r31)
lbl_80A526F8:
/* 80A526F8  A8 1F 0B 42 */	lha r0, 0xb42(r31)
/* 80A526FC  2C 00 00 64 */	cmpwi r0, 0x64
/* 80A52700  40 82 00 74 */	bne lbl_80A52774
/* 80A52704  38 61 00 38 */	addi r3, r1, 0x38
/* 80A52708  38 9F 0B 60 */	addi r4, r31, 0xb60
/* 80A5270C  48 00 B4 75 */	bl __ct__4cXyzFRC4cXyz
/* 80A52710  38 61 00 2C */	addi r3, r1, 0x2c
/* 80A52714  38 9F 0B 48 */	addi r4, r31, 0xb48
/* 80A52718  48 00 B4 69 */	bl __ct__4cXyzFRC4cXyz
/* 80A5271C  38 7C 02 48 */	addi r3, r28, 0x248
/* 80A52720  38 81 00 38 */	addi r4, r1, 0x38
/* 80A52724  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80A52728  C0 3F 0B B8 */	lfs f1, 0xbb8(r31)
/* 80A5272C  38 C0 00 00 */	li r6, 0
/* 80A52730  4B 72 E4 71 */	bl Reset__9dCamera_cF4cXyz4cXyzfs
/* 80A52734  38 61 00 2C */	addi r3, r1, 0x2c
/* 80A52738  38 80 FF FF */	li r4, -1
/* 80A5273C  4B FF 6A 2D */	bl __dt__4cXyzFv
/* 80A52740  38 61 00 38 */	addi r3, r1, 0x38
/* 80A52744  38 80 FF FF */	li r4, -1
/* 80A52748  4B FF 6A 21 */	bl __dt__4cXyzFv
/* 80A5274C  38 7C 02 48 */	addi r3, r28, 0x248
/* 80A52750  4B 70 ED 5D */	bl Start__9dCamera_cFv
/* 80A52754  38 7C 02 48 */	addi r3, r28, 0x248
/* 80A52758  38 80 00 00 */	li r4, 0
/* 80A5275C  4B 71 08 B1 */	bl SetTrimSize__9dCamera_cFl
/* 80A52760  48 00 B3 F5 */	bl dComIfGp_event_reset__Fv
/* 80A52764  48 00 B4 61 */	bl daPy_getPlayerActorClass__Fv
/* 80A52768  48 00 B3 D9 */	bl cancelOriginalDemo__9daPy_py_cFv
/* 80A5276C  38 00 00 00 */	li r0, 0
/* 80A52770  B0 1F 0B 42 */	sth r0, 0xb42(r31)
lbl_80A52774:
/* 80A52774  A8 1F 0B 42 */	lha r0, 0xb42(r31)
/* 80A52778  2C 00 00 00 */	cmpwi r0, 0
/* 80A5277C  41 82 00 58 */	beq lbl_80A527D4
/* 80A52780  38 61 00 20 */	addi r3, r1, 0x20
/* 80A52784  38 9F 0B 60 */	addi r4, r31, 0xb60
/* 80A52788  48 00 B3 F9 */	bl __ct__4cXyzFRC4cXyz
/* 80A5278C  38 61 00 14 */	addi r3, r1, 0x14
/* 80A52790  38 9F 0B 48 */	addi r4, r31, 0xb48
/* 80A52794  48 00 B3 ED */	bl __ct__4cXyzFRC4cXyz
/* 80A52798  38 7C 02 48 */	addi r3, r28, 0x248
/* 80A5279C  38 81 00 20 */	addi r4, r1, 0x20
/* 80A527A0  38 A1 00 14 */	addi r5, r1, 0x14
/* 80A527A4  C0 3F 0B B8 */	lfs f1, 0xbb8(r31)
/* 80A527A8  38 C0 00 00 */	li r6, 0
/* 80A527AC  4B 72 E3 35 */	bl Set__9dCamera_cF4cXyz4cXyzfs
/* 80A527B0  38 61 00 14 */	addi r3, r1, 0x14
/* 80A527B4  38 80 FF FF */	li r4, -1
/* 80A527B8  4B FF 69 B1 */	bl __dt__4cXyzFv
/* 80A527BC  38 61 00 20 */	addi r3, r1, 0x20
/* 80A527C0  38 80 FF FF */	li r4, -1
/* 80A527C4  4B FF 69 A5 */	bl __dt__4cXyzFv
/* 80A527C8  A8 7F 0B 44 */	lha r3, 0xb44(r31)
/* 80A527CC  38 03 00 01 */	addi r0, r3, 1
/* 80A527D0  B0 1F 0B 44 */	sth r0, 0xb44(r31)
lbl_80A527D4:
/* 80A527D4  38 61 00 5C */	addi r3, r1, 0x5c
/* 80A527D8  38 80 FF FF */	li r4, -1
/* 80A527DC  4B FF 69 8D */	bl __dt__4cXyzFv
/* 80A527E0  38 61 00 68 */	addi r3, r1, 0x68
/* 80A527E4  38 80 FF FF */	li r4, -1
/* 80A527E8  4B FF 69 81 */	bl __dt__4cXyzFv
lbl_80A527EC:
/* 80A527EC  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 80A527F0  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 80A527F4  39 61 00 90 */	addi r11, r1, 0x90
/* 80A527F8  4B 90 FA 25 */	bl _restgpr_26
/* 80A527FC  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80A52800  7C 08 03 A6 */	mtlr r0
/* 80A52804  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80A52808  4E 80 00 20 */	blr 
