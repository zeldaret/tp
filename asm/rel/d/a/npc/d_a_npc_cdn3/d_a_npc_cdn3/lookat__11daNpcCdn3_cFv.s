lbl_8097D120:
/* 8097D120  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 8097D124  7C 08 02 A6 */	mflr r0
/* 8097D128  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 8097D12C  93 E1 00 CC */	stw r31, 0xcc(r1)
/* 8097D130  93 C1 00 C8 */	stw r30, 0xc8(r1)
/* 8097D134  7C 7F 1B 78 */	mr r31, r3
/* 8097D138  80 83 0A 98 */	lwz r4, 0xa98(r3)
/* 8097D13C  2C 04 00 10 */	cmpwi r4, 0x10
/* 8097D140  40 80 00 1C */	bge lbl_8097D15C
/* 8097D144  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha
/* 8097D148  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l
/* 8097D14C  1C 04 02 0C */	mulli r0, r4, 0x20c
/* 8097D150  7C 63 02 14 */	add r3, r3, r0
/* 8097D154  A8 03 01 D2 */	lha r0, 0x1d2(r3)
/* 8097D158  48 00 00 18 */	b lbl_8097D170
lbl_8097D15C:
/* 8097D15C  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha
/* 8097D160  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l
/* 8097D164  1C 04 02 3C */	mulli r0, r4, 0x23c
/* 8097D168  7C 63 02 14 */	add r3, r3, r0
/* 8097D16C  A8 03 FF 02 */	lha r0, -0xfe(r3)
lbl_8097D170:
/* 8097D170  7C 05 07 34 */	extsh r5, r0
/* 8097D174  2C 04 00 10 */	cmpwi r4, 0x10
/* 8097D178  40 80 00 1C */	bge lbl_8097D194
/* 8097D17C  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha
/* 8097D180  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l
/* 8097D184  1C 04 02 0C */	mulli r0, r4, 0x20c
/* 8097D188  7C 63 02 14 */	add r3, r3, r0
/* 8097D18C  A8 03 01 D0 */	lha r0, 0x1d0(r3)
/* 8097D190  48 00 00 18 */	b lbl_8097D1A8
lbl_8097D194:
/* 8097D194  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha
/* 8097D198  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l
/* 8097D19C  1C 04 02 3C */	mulli r0, r4, 0x23c
/* 8097D1A0  7C 63 02 14 */	add r3, r3, r0
/* 8097D1A4  A8 03 FF 00 */	lha r0, -0x100(r3)
lbl_8097D1A8:
/* 8097D1A8  7C 04 07 34 */	extsh r4, r0
/* 8097D1AC  38 61 00 30 */	addi r3, r1, 0x30
/* 8097D1B0  38 C0 00 00 */	li r6, 0
/* 8097D1B4  4B 8E A2 40 */	b __ct__5csXyzFsss
/* 8097D1B8  80 01 00 30 */	lwz r0, 0x30(r1)
/* 8097D1BC  90 01 00 80 */	stw r0, 0x80(r1)
/* 8097D1C0  A0 01 00 34 */	lhz r0, 0x34(r1)
/* 8097D1C4  B0 01 00 84 */	sth r0, 0x84(r1)
/* 8097D1C8  80 9F 0A 98 */	lwz r4, 0xa98(r31)
/* 8097D1CC  2C 04 00 10 */	cmpwi r4, 0x10
/* 8097D1D0  40 80 00 1C */	bge lbl_8097D1EC
/* 8097D1D4  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha
/* 8097D1D8  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l
/* 8097D1DC  1C 04 02 0C */	mulli r0, r4, 0x20c
/* 8097D1E0  7C 63 02 14 */	add r3, r3, r0
/* 8097D1E4  A8 03 01 DA */	lha r0, 0x1da(r3)
/* 8097D1E8  48 00 00 18 */	b lbl_8097D200
lbl_8097D1EC:
/* 8097D1EC  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha
/* 8097D1F0  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l
/* 8097D1F4  1C 04 02 3C */	mulli r0, r4, 0x23c
/* 8097D1F8  7C 63 02 14 */	add r3, r3, r0
/* 8097D1FC  A8 03 FF 0A */	lha r0, -0xf6(r3)
lbl_8097D200:
/* 8097D200  7C 05 07 34 */	extsh r5, r0
/* 8097D204  2C 04 00 10 */	cmpwi r4, 0x10
/* 8097D208  40 80 00 1C */	bge lbl_8097D224
/* 8097D20C  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha
/* 8097D210  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l
/* 8097D214  1C 04 02 0C */	mulli r0, r4, 0x20c
/* 8097D218  7C 63 02 14 */	add r3, r3, r0
/* 8097D21C  A8 03 01 D8 */	lha r0, 0x1d8(r3)
/* 8097D220  48 00 00 18 */	b lbl_8097D238
lbl_8097D224:
/* 8097D224  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha
/* 8097D228  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l
/* 8097D22C  1C 04 02 3C */	mulli r0, r4, 0x23c
/* 8097D230  7C 63 02 14 */	add r3, r3, r0
/* 8097D234  A8 03 FF 08 */	lha r0, -0xf8(r3)
lbl_8097D238:
/* 8097D238  7C 04 07 34 */	extsh r4, r0
/* 8097D23C  38 61 00 28 */	addi r3, r1, 0x28
/* 8097D240  38 C0 00 00 */	li r6, 0
/* 8097D244  4B 8E A1 B0 */	b __ct__5csXyzFsss
/* 8097D248  80 01 00 28 */	lwz r0, 0x28(r1)
/* 8097D24C  90 01 00 86 */	stw r0, 0x86(r1)
/* 8097D250  A0 01 00 2C */	lhz r0, 0x2c(r1)
/* 8097D254  B0 01 00 8A */	sth r0, 0x8a(r1)
/* 8097D258  80 9F 0A 98 */	lwz r4, 0xa98(r31)
/* 8097D25C  2C 04 00 10 */	cmpwi r4, 0x10
/* 8097D260  40 80 00 1C */	bge lbl_8097D27C
/* 8097D264  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha
/* 8097D268  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l
/* 8097D26C  1C 04 02 0C */	mulli r0, r4, 0x20c
/* 8097D270  7C 63 02 14 */	add r3, r3, r0
/* 8097D274  A8 03 01 E2 */	lha r0, 0x1e2(r3)
/* 8097D278  48 00 00 18 */	b lbl_8097D290
lbl_8097D27C:
/* 8097D27C  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha
/* 8097D280  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l
/* 8097D284  1C 04 02 3C */	mulli r0, r4, 0x23c
/* 8097D288  7C 63 02 14 */	add r3, r3, r0
/* 8097D28C  A8 03 FF 12 */	lha r0, -0xee(r3)
lbl_8097D290:
/* 8097D290  7C 05 07 34 */	extsh r5, r0
/* 8097D294  2C 04 00 10 */	cmpwi r4, 0x10
/* 8097D298  40 80 00 1C */	bge lbl_8097D2B4
/* 8097D29C  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha
/* 8097D2A0  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l
/* 8097D2A4  1C 04 02 0C */	mulli r0, r4, 0x20c
/* 8097D2A8  7C 63 02 14 */	add r3, r3, r0
/* 8097D2AC  A8 03 01 E0 */	lha r0, 0x1e0(r3)
/* 8097D2B0  48 00 00 18 */	b lbl_8097D2C8
lbl_8097D2B4:
/* 8097D2B4  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha
/* 8097D2B8  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l
/* 8097D2BC  1C 04 02 3C */	mulli r0, r4, 0x23c
/* 8097D2C0  7C 63 02 14 */	add r3, r3, r0
/* 8097D2C4  A8 03 FF 10 */	lha r0, -0xf0(r3)
lbl_8097D2C8:
/* 8097D2C8  7C 04 07 34 */	extsh r4, r0
/* 8097D2CC  38 61 00 20 */	addi r3, r1, 0x20
/* 8097D2D0  38 C0 00 00 */	li r6, 0
/* 8097D2D4  4B 8E A1 20 */	b __ct__5csXyzFsss
/* 8097D2D8  80 01 00 20 */	lwz r0, 0x20(r1)
/* 8097D2DC  90 01 00 8C */	stw r0, 0x8c(r1)
/* 8097D2E0  A0 01 00 24 */	lhz r0, 0x24(r1)
/* 8097D2E4  B0 01 00 90 */	sth r0, 0x90(r1)
/* 8097D2E8  80 9F 0A 98 */	lwz r4, 0xa98(r31)
/* 8097D2EC  2C 04 00 10 */	cmpwi r4, 0x10
/* 8097D2F0  40 80 00 1C */	bge lbl_8097D30C
/* 8097D2F4  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha
/* 8097D2F8  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l
/* 8097D2FC  1C 04 02 0C */	mulli r0, r4, 0x20c
/* 8097D300  7C 63 02 14 */	add r3, r3, r0
/* 8097D304  A8 03 01 D6 */	lha r0, 0x1d6(r3)
/* 8097D308  48 00 00 18 */	b lbl_8097D320
lbl_8097D30C:
/* 8097D30C  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha
/* 8097D310  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l
/* 8097D314  1C 04 02 3C */	mulli r0, r4, 0x23c
/* 8097D318  7C 63 02 14 */	add r3, r3, r0
/* 8097D31C  A8 03 FF 06 */	lha r0, -0xfa(r3)
lbl_8097D320:
/* 8097D320  7C 05 07 34 */	extsh r5, r0
/* 8097D324  2C 04 00 10 */	cmpwi r4, 0x10
/* 8097D328  40 80 00 1C */	bge lbl_8097D344
/* 8097D32C  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha
/* 8097D330  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l
/* 8097D334  1C 04 02 0C */	mulli r0, r4, 0x20c
/* 8097D338  7C 63 02 14 */	add r3, r3, r0
/* 8097D33C  A8 03 01 D4 */	lha r0, 0x1d4(r3)
/* 8097D340  48 00 00 18 */	b lbl_8097D358
lbl_8097D344:
/* 8097D344  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha
/* 8097D348  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l
/* 8097D34C  1C 04 02 3C */	mulli r0, r4, 0x23c
/* 8097D350  7C 63 02 14 */	add r3, r3, r0
/* 8097D354  A8 03 FF 04 */	lha r0, -0xfc(r3)
lbl_8097D358:
/* 8097D358  7C 04 07 34 */	extsh r4, r0
/* 8097D35C  38 61 00 18 */	addi r3, r1, 0x18
/* 8097D360  38 C0 00 00 */	li r6, 0
/* 8097D364  4B 8E A0 90 */	b __ct__5csXyzFsss
/* 8097D368  80 01 00 18 */	lwz r0, 0x18(r1)
/* 8097D36C  90 01 00 6C */	stw r0, 0x6c(r1)
/* 8097D370  A0 01 00 1C */	lhz r0, 0x1c(r1)
/* 8097D374  B0 01 00 70 */	sth r0, 0x70(r1)
/* 8097D378  80 9F 0A 98 */	lwz r4, 0xa98(r31)
/* 8097D37C  2C 04 00 10 */	cmpwi r4, 0x10
/* 8097D380  40 80 00 1C */	bge lbl_8097D39C
/* 8097D384  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha
/* 8097D388  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l
/* 8097D38C  1C 04 02 0C */	mulli r0, r4, 0x20c
/* 8097D390  7C 63 02 14 */	add r3, r3, r0
/* 8097D394  A8 03 01 DE */	lha r0, 0x1de(r3)
/* 8097D398  48 00 00 18 */	b lbl_8097D3B0
lbl_8097D39C:
/* 8097D39C  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha
/* 8097D3A0  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l
/* 8097D3A4  1C 04 02 3C */	mulli r0, r4, 0x23c
/* 8097D3A8  7C 63 02 14 */	add r3, r3, r0
/* 8097D3AC  A8 03 FF 0E */	lha r0, -0xf2(r3)
lbl_8097D3B0:
/* 8097D3B0  7C 05 07 34 */	extsh r5, r0
/* 8097D3B4  2C 04 00 10 */	cmpwi r4, 0x10
/* 8097D3B8  40 80 00 1C */	bge lbl_8097D3D4
/* 8097D3BC  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha
/* 8097D3C0  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l
/* 8097D3C4  1C 04 02 0C */	mulli r0, r4, 0x20c
/* 8097D3C8  7C 63 02 14 */	add r3, r3, r0
/* 8097D3CC  A8 03 01 DC */	lha r0, 0x1dc(r3)
/* 8097D3D0  48 00 00 18 */	b lbl_8097D3E8
lbl_8097D3D4:
/* 8097D3D4  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha
/* 8097D3D8  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l
/* 8097D3DC  1C 04 02 3C */	mulli r0, r4, 0x23c
/* 8097D3E0  7C 63 02 14 */	add r3, r3, r0
/* 8097D3E4  A8 03 FF 0C */	lha r0, -0xf4(r3)
lbl_8097D3E8:
/* 8097D3E8  7C 04 07 34 */	extsh r4, r0
/* 8097D3EC  38 61 00 10 */	addi r3, r1, 0x10
/* 8097D3F0  38 C0 00 00 */	li r6, 0
/* 8097D3F4  4B 8E A0 00 */	b __ct__5csXyzFsss
/* 8097D3F8  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8097D3FC  90 01 00 72 */	stw r0, 0x72(r1)
/* 8097D400  A0 01 00 14 */	lhz r0, 0x14(r1)
/* 8097D404  B0 01 00 76 */	sth r0, 0x76(r1)
/* 8097D408  80 9F 0A 98 */	lwz r4, 0xa98(r31)
/* 8097D40C  2C 04 00 10 */	cmpwi r4, 0x10
/* 8097D410  40 80 00 1C */	bge lbl_8097D42C
/* 8097D414  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha
/* 8097D418  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l
/* 8097D41C  1C 04 02 0C */	mulli r0, r4, 0x20c
/* 8097D420  7C 63 02 14 */	add r3, r3, r0
/* 8097D424  A8 03 01 E6 */	lha r0, 0x1e6(r3)
/* 8097D428  48 00 00 18 */	b lbl_8097D440
lbl_8097D42C:
/* 8097D42C  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha
/* 8097D430  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l
/* 8097D434  1C 04 02 3C */	mulli r0, r4, 0x23c
/* 8097D438  7C 63 02 14 */	add r3, r3, r0
/* 8097D43C  A8 03 FF 16 */	lha r0, -0xea(r3)
lbl_8097D440:
/* 8097D440  7C 05 07 34 */	extsh r5, r0
/* 8097D444  2C 04 00 10 */	cmpwi r4, 0x10
/* 8097D448  40 80 00 1C */	bge lbl_8097D464
/* 8097D44C  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha
/* 8097D450  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l
/* 8097D454  1C 04 02 0C */	mulli r0, r4, 0x20c
/* 8097D458  7C 63 02 14 */	add r3, r3, r0
/* 8097D45C  A8 03 01 E4 */	lha r0, 0x1e4(r3)
/* 8097D460  48 00 00 18 */	b lbl_8097D478
lbl_8097D464:
/* 8097D464  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha
/* 8097D468  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l
/* 8097D46C  1C 04 02 3C */	mulli r0, r4, 0x23c
/* 8097D470  7C 63 02 14 */	add r3, r3, r0
/* 8097D474  A8 03 FF 14 */	lha r0, -0xec(r3)
lbl_8097D478:
/* 8097D478  7C 04 07 34 */	extsh r4, r0
/* 8097D47C  38 61 00 08 */	addi r3, r1, 8
/* 8097D480  38 C0 00 00 */	li r6, 0
/* 8097D484  4B 8E 9F 70 */	b __ct__5csXyzFsss
/* 8097D488  80 01 00 08 */	lwz r0, 8(r1)
/* 8097D48C  90 01 00 78 */	stw r0, 0x78(r1)
/* 8097D490  A0 01 00 0C */	lhz r0, 0xc(r1)
/* 8097D494  B0 01 00 7C */	sth r0, 0x7c(r1)
/* 8097D498  3C 60 80 43 */	lis r3, Zero__4cXyz@ha
/* 8097D49C  3B C3 0C F4 */	addi r30, r3, Zero__4cXyz@l
/* 8097D4A0  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8097D4A4  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8097D4A8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8097D4AC  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8097D4B0  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8097D4B4  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8097D4B8  7F E3 FB 78 */	mr r3, r31
/* 8097D4BC  4B 7D AB EC */	b isM___10daNpcCd2_cFv
/* 8097D4C0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8097D4C4  41 82 00 28 */	beq lbl_8097D4EC
/* 8097D4C8  38 00 00 01 */	li r0, 1
/* 8097D4CC  90 01 00 5C */	stw r0, 0x5c(r1)
/* 8097D4D0  38 00 00 02 */	li r0, 2
/* 8097D4D4  90 01 00 60 */	stw r0, 0x60(r1)
/* 8097D4D8  38 00 00 03 */	li r0, 3
/* 8097D4DC  90 01 00 64 */	stw r0, 0x64(r1)
/* 8097D4E0  38 00 FF FF */	li r0, -1
/* 8097D4E4  90 01 00 68 */	stw r0, 0x68(r1)
/* 8097D4E8  48 00 00 24 */	b lbl_8097D50C
lbl_8097D4EC:
/* 8097D4EC  38 00 00 01 */	li r0, 1
/* 8097D4F0  90 01 00 5C */	stw r0, 0x5c(r1)
/* 8097D4F4  38 00 00 02 */	li r0, 2
/* 8097D4F8  90 01 00 60 */	stw r0, 0x60(r1)
/* 8097D4FC  38 00 00 03 */	li r0, 3
/* 8097D500  90 01 00 64 */	stw r0, 0x64(r1)
/* 8097D504  38 00 FF FF */	li r0, -1
/* 8097D508  90 01 00 68 */	stw r0, 0x68(r1)
lbl_8097D50C:
/* 8097D50C  80 7F 05 8C */	lwz r3, 0x58c(r31)
/* 8097D510  80 83 00 04 */	lwz r4, 4(r3)
/* 8097D514  38 7F 09 C8 */	addi r3, r31, 0x9c8
/* 8097D518  38 A1 00 5C */	addi r5, r1, 0x5c
/* 8097D51C  38 C1 00 80 */	addi r6, r1, 0x80
/* 8097D520  38 E1 00 6C */	addi r7, r1, 0x6c
/* 8097D524  4B 8D 3E E8 */	b init__16dNpcLib_lookat_cFP8J3DModelPiP5csXyzP5csXyz
/* 8097D528  38 7F 0A F8 */	addi r3, r31, 0xaf8
/* 8097D52C  4B 7C 81 DC */	b getActorP__18daNpcT_ActorMngr_cFv
/* 8097D530  28 03 00 00 */	cmplwi r3, 0
/* 8097D534  41 82 00 3C */	beq lbl_8097D570
/* 8097D538  80 7F 05 8C */	lwz r3, 0x58c(r31)
/* 8097D53C  80 63 00 04 */	lwz r3, 4(r3)
/* 8097D540  38 63 00 24 */	addi r3, r3, 0x24
/* 8097D544  38 81 00 94 */	addi r4, r1, 0x94
/* 8097D548  4B 9C 8F 68 */	b PSMTXCopy
/* 8097D54C  38 7F 0A F8 */	addi r3, r31, 0xaf8
/* 8097D550  4B 7C 81 B8 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 8097D554  C0 03 05 38 */	lfs f0, 0x538(r3)
/* 8097D558  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8097D55C  C0 03 05 3C */	lfs f0, 0x53c(r3)
/* 8097D560  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8097D564  C0 03 05 40 */	lfs f0, 0x540(r3)
/* 8097D568  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8097D56C  48 00 00 34 */	b lbl_8097D5A0
lbl_8097D570:
/* 8097D570  80 7F 05 8C */	lwz r3, 0x58c(r31)
/* 8097D574  80 63 00 04 */	lwz r3, 4(r3)
/* 8097D578  38 63 00 24 */	addi r3, r3, 0x24
/* 8097D57C  38 81 00 94 */	addi r4, r1, 0x94
/* 8097D580  4B 9C 8F 30 */	b PSMTXCopy
/* 8097D584  3C 60 80 43 */	lis r3, Zero__4cXyz@ha
/* 8097D588  C0 03 0C F4 */	lfs f0, Zero__4cXyz@l(r3)
/* 8097D58C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8097D590  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8097D594  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8097D598  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8097D59C  D0 01 00 58 */	stfs f0, 0x58(r1)
lbl_8097D5A0:
/* 8097D5A0  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 8097D5A4  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8097D5A8  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 8097D5AC  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8097D5B0  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8097D5B4  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8097D5B8  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 8097D5BC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8097D5C0  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 8097D5C4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8097D5C8  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 8097D5CC  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8097D5D0  38 7F 0A F8 */	addi r3, r31, 0xaf8
/* 8097D5D4  4B 7C 81 34 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 8097D5D8  30 03 FF FF */	addic r0, r3, -1
/* 8097D5DC  7C 00 19 10 */	subfe r0, r0, r3
/* 8097D5E0  54 08 06 3E */	clrlwi r8, r0, 0x18
/* 8097D5E4  38 7F 09 C8 */	addi r3, r31, 0x9c8
/* 8097D5E8  38 81 00 44 */	addi r4, r1, 0x44
/* 8097D5EC  38 A1 00 38 */	addi r5, r1, 0x38
/* 8097D5F0  7F E6 FB 78 */	mr r6, r31
/* 8097D5F4  38 E1 00 94 */	addi r7, r1, 0x94
/* 8097D5F8  4B 8D 3F 3C */	b action__16dNpcLib_lookat_cF4cXyz4cXyzP10fopAc_ac_cPA4_fi
/* 8097D5FC  83 E1 00 CC */	lwz r31, 0xcc(r1)
/* 8097D600  83 C1 00 C8 */	lwz r30, 0xc8(r1)
/* 8097D604  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 8097D608  7C 08 03 A6 */	mtlr r0
/* 8097D60C  38 21 00 D0 */	addi r1, r1, 0xd0
/* 8097D610  4E 80 00 20 */	blr 
