lbl_8080CFC8:
/* 8080CFC8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8080CFCC  7C 08 02 A6 */	mflr r0
/* 8080CFD0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8080CFD4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8080CFD8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8080CFDC  7C 7E 1B 78 */	mr r30, r3
/* 8080CFE0  3C 60 80 81 */	lis r3, lit_3925@ha /* 0x80815994@ha */
/* 8080CFE4  3B E3 59 94 */	addi r31, r3, lit_3925@l /* 0x80815994@l */
/* 8080CFE8  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 8080CFEC  C0 3F 00 DC */	lfs f1, 0xdc(r31)
/* 8080CFF0  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 8080CFF4  4B A6 37 4D */	bl cLib_chaseF__FPfff
/* 8080CFF8  80 1E 06 98 */	lwz r0, 0x698(r30)
/* 8080CFFC  2C 00 00 01 */	cmpwi r0, 1
/* 8080D000  41 82 00 5C */	beq lbl_8080D05C
/* 8080D004  40 80 00 10 */	bge lbl_8080D014
/* 8080D008  2C 00 00 00 */	cmpwi r0, 0
/* 8080D00C  40 80 00 14 */	bge lbl_8080D020
/* 8080D010  48 00 02 A0 */	b lbl_8080D2B0
lbl_8080D014:
/* 8080D014  2C 00 00 03 */	cmpwi r0, 3
/* 8080D018  40 80 02 98 */	bge lbl_8080D2B0
/* 8080D01C  48 00 01 84 */	b lbl_8080D1A0
lbl_8080D020:
/* 8080D020  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070117@ha */
/* 8080D024  38 03 01 17 */	addi r0, r3, 0x0117 /* 0x00070117@l */
/* 8080D028  90 01 00 18 */	stw r0, 0x18(r1)
/* 8080D02C  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 8080D030  38 81 00 18 */	addi r4, r1, 0x18
/* 8080D034  38 A0 00 00 */	li r5, 0
/* 8080D038  38 C0 FF FF */	li r6, -1
/* 8080D03C  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 8080D040  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8080D044  7D 89 03 A6 */	mtctr r12
/* 8080D048  4E 80 04 21 */	bctrl 
/* 8080D04C  38 00 00 0C */	li r0, 0xc
/* 8080D050  B0 1E 06 F0 */	sth r0, 0x6f0(r30)
/* 8080D054  38 00 00 01 */	li r0, 1
/* 8080D058  90 1E 06 98 */	stw r0, 0x698(r30)
lbl_8080D05C:
/* 8080D05C  A8 1E 06 F0 */	lha r0, 0x6f0(r30)
/* 8080D060  2C 00 00 00 */	cmpwi r0, 0
/* 8080D064  40 82 02 4C */	bne lbl_8080D2B0
/* 8080D068  38 00 00 00 */	li r0, 0
/* 8080D06C  98 1E 06 A0 */	stb r0, 0x6a0(r30)
/* 8080D070  7F C3 F3 78 */	mr r3, r30
/* 8080D074  38 80 00 0B */	li r4, 0xb
/* 8080D078  38 A0 00 00 */	li r5, 0
/* 8080D07C  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8080D080  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 8080D084  4B FF B1 5D */	bl bckSet__8daE_YM_cFiUcff
/* 8080D088  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700F0@ha */
/* 8080D08C  38 03 00 F0 */	addi r0, r3, 0x00F0 /* 0x000700F0@l */
/* 8080D090  90 01 00 14 */	stw r0, 0x14(r1)
/* 8080D094  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 8080D098  38 81 00 14 */	addi r4, r1, 0x14
/* 8080D09C  38 A0 00 00 */	li r5, 0
/* 8080D0A0  38 C0 FF FF */	li r6, -1
/* 8080D0A4  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 8080D0A8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8080D0AC  7D 89 03 A6 */	mtctr r12
/* 8080D0B0  4E 80 04 21 */	bctrl 
/* 8080D0B4  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 8080D0B8  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8080D0BC  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 8080D0C0  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8080D0C4  38 00 00 02 */	li r0, 2
/* 8080D0C8  90 1E 06 98 */	stw r0, 0x698(r30)
/* 8080D0CC  38 7E 07 20 */	addi r3, r30, 0x720
/* 8080D0D0  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 8080D0D4  C0 5F 00 B8 */	lfs f2, 0xb8(r31)
/* 8080D0D8  4B 86 8E 81 */	bl SetWall__12dBgS_AcchCirFff
/* 8080D0DC  38 7E 07 60 */	addi r3, r30, 0x760
/* 8080D0E0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8080D0E4  4B 86 A0 31 */	bl SetGroundUpY__9dBgS_AcchFf
/* 8080D0E8  A8 1E 06 68 */	lha r0, 0x668(r30)
/* 8080D0EC  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 8080D0F0  A8 1E 06 6C */	lha r0, 0x66c(r30)
/* 8080D0F4  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 8080D0F8  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 8080D0FC  3C 63 00 01 */	addis r3, r3, 1
/* 8080D100  38 03 80 00 */	addi r0, r3, -32768
/* 8080D104  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 8080D108  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 8080D10C  A8 9E 06 EA */	lha r4, 0x6ea(r30)
/* 8080D110  4B A6 3D 15 */	bl cLib_distanceAngleS__Fss
/* 8080D114  7C 60 07 34 */	extsh r0, r3
/* 8080D118  2C 00 10 00 */	cmpwi r0, 0x1000
/* 8080D11C  40 80 00 40 */	bge lbl_8080D15C
/* 8080D120  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 8080D124  A8 9E 06 EA */	lha r4, 0x6ea(r30)
/* 8080D128  38 04 10 00 */	addi r0, r4, 0x1000
/* 8080D12C  7C 04 07 34 */	extsh r4, r0
/* 8080D130  4B A6 3C F5 */	bl cLib_distanceAngleS__Fss
/* 8080D134  7C 60 07 34 */	extsh r0, r3
/* 8080D138  2C 00 10 00 */	cmpwi r0, 0x1000
/* 8080D13C  40 80 00 14 */	bge lbl_8080D150
/* 8080D140  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 8080D144  38 03 90 00 */	addi r0, r3, -28672
/* 8080D148  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 8080D14C  48 00 00 10 */	b lbl_8080D15C
lbl_8080D150:
/* 8080D150  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 8080D154  38 03 70 00 */	addi r0, r3, 0x7000
/* 8080D158  B0 1E 04 DE */	sth r0, 0x4de(r30)
lbl_8080D15C:
/* 8080D15C  38 00 00 00 */	li r0, 0
/* 8080D160  B0 1E 06 6C */	sth r0, 0x66c(r30)
/* 8080D164  B0 1E 06 68 */	sth r0, 0x668(r30)
/* 8080D168  7F C3 F3 78 */	mr r3, r30
/* 8080D16C  4B FF B7 19 */	bl setElecEffect1__8daE_YM_cFv
/* 8080D170  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070195@ha */
/* 8080D174  38 03 01 95 */	addi r0, r3, 0x0195 /* 0x00070195@l */
/* 8080D178  90 01 00 10 */	stw r0, 0x10(r1)
/* 8080D17C  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 8080D180  38 81 00 10 */	addi r4, r1, 0x10
/* 8080D184  38 A0 00 00 */	li r5, 0
/* 8080D188  38 C0 FF FF */	li r6, -1
/* 8080D18C  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 8080D190  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8080D194  7D 89 03 A6 */	mtctr r12
/* 8080D198  4E 80 04 21 */	bctrl 
/* 8080D19C  48 00 01 14 */	b lbl_8080D2B0
lbl_8080D1A0:
/* 8080D1A0  38 00 00 1E */	li r0, 0x1e
/* 8080D1A4  B0 1E 06 FE */	sth r0, 0x6fe(r30)
/* 8080D1A8  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 8080D1AC  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 8080D1B0  38 A0 10 00 */	li r5, 0x1000
/* 8080D1B4  4B A6 39 DD */	bl cLib_chaseAngleS__FPsss
/* 8080D1B8  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 8080D1BC  38 80 00 00 */	li r4, 0
/* 8080D1C0  38 A0 08 00 */	li r5, 0x800
/* 8080D1C4  4B A6 39 CD */	bl cLib_chaseAngleS__FPsss
/* 8080D1C8  7F C3 F3 78 */	mr r3, r30
/* 8080D1CC  4B FF B8 11 */	bl setElecEffect2__8daE_YM_cFv
/* 8080D1D0  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070196@ha */
/* 8080D1D4  38 03 01 96 */	addi r0, r3, 0x0196 /* 0x00070196@l */
/* 8080D1D8  90 01 00 0C */	stw r0, 0xc(r1)
/* 8080D1DC  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 8080D1E0  38 81 00 0C */	addi r4, r1, 0xc
/* 8080D1E4  38 A0 00 00 */	li r5, 0
/* 8080D1E8  38 C0 FF FF */	li r6, -1
/* 8080D1EC  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 8080D1F0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8080D1F4  7D 89 03 A6 */	mtctr r12
/* 8080D1F8  4E 80 04 21 */	bctrl 
/* 8080D1FC  3C 60 80 81 */	lis r3, l_HIO@ha /* 0x80815D38@ha */
/* 8080D200  38 63 5D 38 */	addi r3, r3, l_HIO@l /* 0x80815D38@l */
/* 8080D204  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8080D208  FC 00 00 1E */	fctiwz f0, f0
/* 8080D20C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8080D210  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8080D214  B0 1E 07 00 */	sth r0, 0x700(r30)
/* 8080D218  80 1E 09 74 */	lwz r0, 0x974(r30)
/* 8080D21C  60 00 00 01 */	ori r0, r0, 1
/* 8080D220  90 1E 09 74 */	stw r0, 0x974(r30)
/* 8080D224  80 1E 07 8C */	lwz r0, 0x78c(r30)
/* 8080D228  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8080D22C  41 82 00 84 */	beq lbl_8080D2B0
/* 8080D230  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007011E@ha */
/* 8080D234  38 03 01 1E */	addi r0, r3, 0x011E /* 0x0007011E@l */
/* 8080D238  90 01 00 08 */	stw r0, 8(r1)
/* 8080D23C  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 8080D240  38 81 00 08 */	addi r4, r1, 8
/* 8080D244  38 A0 00 00 */	li r5, 0
/* 8080D248  38 C0 FF FF */	li r6, -1
/* 8080D24C  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 8080D250  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8080D254  7D 89 03 A6 */	mtctr r12
/* 8080D258  4E 80 04 21 */	bctrl 
/* 8080D25C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8080D260  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8080D264  7F C3 F3 78 */	mr r3, r30
/* 8080D268  38 80 00 00 */	li r4, 0
/* 8080D26C  4B FF CD 31 */	bl setActionMode__8daE_YM_cFi
/* 8080D270  7F C3 F3 78 */	mr r3, r30
/* 8080D274  38 80 00 0F */	li r4, 0xf
/* 8080D278  38 A0 00 02 */	li r5, 2
/* 8080D27C  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 8080D280  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8080D284  4B FF AF 5D */	bl bckSet__8daE_YM_cFiUcff
/* 8080D288  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 8080D28C  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 8080D290  38 00 00 00 */	li r0, 0
/* 8080D294  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 8080D298  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8080D29C  D0 1E 06 70 */	stfs f0, 0x670(r30)
/* 8080D2A0  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8080D2A4  D0 1E 06 74 */	stfs f0, 0x674(r30)
/* 8080D2A8  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8080D2AC  D0 1E 06 78 */	stfs f0, 0x678(r30)
lbl_8080D2B0:
/* 8080D2B0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8080D2B4  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8080D2B8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8080D2BC  7C 08 03 A6 */	mtlr r0
/* 8080D2C0  38 21 00 30 */	addi r1, r1, 0x30
/* 8080D2C4  4E 80 00 20 */	blr 
