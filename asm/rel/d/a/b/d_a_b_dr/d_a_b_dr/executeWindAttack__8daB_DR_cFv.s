lbl_805C062C:
/* 805C062C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 805C0630  7C 08 02 A6 */	mflr r0
/* 805C0634  90 01 00 64 */	stw r0, 0x64(r1)
/* 805C0638  39 61 00 60 */	addi r11, r1, 0x60
/* 805C063C  4B DA 1B 9C */	b _savegpr_28
/* 805C0640  7C 7C 1B 78 */	mr r28, r3
/* 805C0644  3C 80 80 5C */	lis r4, lit_3800@ha
/* 805C0648  3B A4 6C 74 */	addi r29, r4, lit_3800@l
/* 805C064C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 805C0650  3B C4 61 C0 */	addi r30, r4, g_dComIfG_gameInfo@l
/* 805C0654  83 FE 5D AC */	lwz r31, 0x5dac(r30)
/* 805C0658  80 03 07 10 */	lwz r0, 0x710(r3)
/* 805C065C  2C 00 00 2D */	cmpwi r0, 0x2d
/* 805C0660  41 82 00 0C */	beq lbl_805C066C
/* 805C0664  80 9C 07 08 */	lwz r4, 0x708(r28)
/* 805C0668  4B FF BB E1 */	bl mHabatakiAnmSet__8daB_DR_cFi
lbl_805C066C:
/* 805C066C  38 7C 05 2C */	addi r3, r28, 0x52c
/* 805C0670  C0 3D 03 DC */	lfs f1, 0x3dc(r29)
/* 805C0674  C0 5D 00 20 */	lfs f2, 0x20(r29)
/* 805C0678  4B CA F4 08 */	b cLib_addCalc0__FPfff
/* 805C067C  38 7C 04 FC */	addi r3, r28, 0x4fc
/* 805C0680  C0 3D 03 DC */	lfs f1, 0x3dc(r29)
/* 805C0684  C0 5D 00 20 */	lfs f2, 0x20(r29)
/* 805C0688  4B CA F3 F8 */	b cLib_addCalc0__FPfff
/* 805C068C  80 1C 07 0C */	lwz r0, 0x70c(r28)
/* 805C0690  2C 00 00 01 */	cmpwi r0, 1
/* 805C0694  41 82 00 88 */	beq lbl_805C071C
/* 805C0698  40 80 00 10 */	bge lbl_805C06A8
/* 805C069C  2C 00 00 00 */	cmpwi r0, 0
/* 805C06A0  40 80 00 14 */	bge lbl_805C06B4
/* 805C06A4  48 00 01 E4 */	b lbl_805C0888
lbl_805C06A8:
/* 805C06A8  2C 00 00 03 */	cmpwi r0, 3
/* 805C06AC  40 80 01 DC */	bge lbl_805C0888
/* 805C06B0  48 00 01 D0 */	b lbl_805C0880
lbl_805C06B4:
/* 805C06B4  38 00 00 00 */	li r0, 0
/* 805C06B8  98 1C 07 D6 */	stb r0, 0x7d6(r28)
/* 805C06BC  7F 83 E3 78 */	mr r3, r28
/* 805C06C0  4B FF C5 59 */	bl mAllClr__8daB_DR_cFv
/* 805C06C4  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 805C06C8  D0 1C 07 B4 */	stfs f0, 0x7b4(r28)
/* 805C06CC  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 805C06D0  D0 1C 07 B8 */	stfs f0, 0x7b8(r28)
/* 805C06D4  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 805C06D8  D0 1C 07 BC */	stfs f0, 0x7bc(r28)
/* 805C06DC  C0 3C 07 BC */	lfs f1, 0x7bc(r28)
/* 805C06E0  C0 1D 00 30 */	lfs f0, 0x30(r29)
/* 805C06E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C06E8  40 80 00 10 */	bge lbl_805C06F8
/* 805C06EC  C0 1D 03 E0 */	lfs f0, 0x3e0(r29)
/* 805C06F0  D0 1C 07 BC */	stfs f0, 0x7bc(r28)
/* 805C06F4  48 00 00 0C */	b lbl_805C0700
lbl_805C06F8:
/* 805C06F8  C0 1D 03 E4 */	lfs f0, 0x3e4(r29)
/* 805C06FC  D0 1C 07 BC */	stfs f0, 0x7bc(r28)
lbl_805C0700:
/* 805C0700  C0 1D 00 30 */	lfs f0, 0x30(r29)
/* 805C0704  D0 1C 05 30 */	stfs f0, 0x530(r28)
/* 805C0708  38 00 01 90 */	li r0, 0x190
/* 805C070C  B0 1C 07 50 */	sth r0, 0x750(r28)
/* 805C0710  80 7C 07 0C */	lwz r3, 0x70c(r28)
/* 805C0714  38 03 00 01 */	addi r0, r3, 1
/* 805C0718  90 1C 07 0C */	stw r0, 0x70c(r28)
lbl_805C071C:
/* 805C071C  C0 1C 04 A8 */	lfs f0, 0x4a8(r28)
/* 805C0720  D0 1C 07 A8 */	stfs f0, 0x7a8(r28)
/* 805C0724  C0 1C 04 AC */	lfs f0, 0x4ac(r28)
/* 805C0728  D0 1C 07 AC */	stfs f0, 0x7ac(r28)
/* 805C072C  C0 1C 04 B0 */	lfs f0, 0x4b0(r28)
/* 805C0730  D0 1C 07 B0 */	stfs f0, 0x7b0(r28)
/* 805C0734  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 805C0738  38 9C 07 A8 */	addi r4, r28, 0x7a8
/* 805C073C  C0 3D 00 00 */	lfs f1, 0(r29)
/* 805C0740  C0 5D 00 7C */	lfs f2, 0x7c(r29)
/* 805C0744  C0 7D 00 1C */	lfs f3, 0x1c(r29)
/* 805C0748  4B CA F3 70 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 805C074C  38 61 00 20 */	addi r3, r1, 0x20
/* 805C0750  38 9C 07 A8 */	addi r4, r28, 0x7a8
/* 805C0754  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 805C0758  4B CA 63 DC */	b __mi__4cXyzCFRC3Vec
/* 805C075C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 805C0760  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 805C0764  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 805C0768  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 805C076C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 805C0770  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 805C0774  C0 1D 00 30 */	lfs f0, 0x30(r29)
/* 805C0778  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 805C077C  38 61 00 38 */	addi r3, r1, 0x38
/* 805C0780  4B D8 69 B8 */	b PSVECSquareMag
/* 805C0784  C0 1D 00 30 */	lfs f0, 0x30(r29)
/* 805C0788  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C078C  40 81 00 58 */	ble lbl_805C07E4
/* 805C0790  FC 00 08 34 */	frsqrte f0, f1
/* 805C0794  C8 9D 03 98 */	lfd f4, 0x398(r29)
/* 805C0798  FC 44 00 32 */	fmul f2, f4, f0
/* 805C079C  C8 7D 03 A0 */	lfd f3, 0x3a0(r29)
/* 805C07A0  FC 00 00 32 */	fmul f0, f0, f0
/* 805C07A4  FC 01 00 32 */	fmul f0, f1, f0
/* 805C07A8  FC 03 00 28 */	fsub f0, f3, f0
/* 805C07AC  FC 02 00 32 */	fmul f0, f2, f0
/* 805C07B0  FC 44 00 32 */	fmul f2, f4, f0
/* 805C07B4  FC 00 00 32 */	fmul f0, f0, f0
/* 805C07B8  FC 01 00 32 */	fmul f0, f1, f0
/* 805C07BC  FC 03 00 28 */	fsub f0, f3, f0
/* 805C07C0  FC 02 00 32 */	fmul f0, f2, f0
/* 805C07C4  FC 44 00 32 */	fmul f2, f4, f0
/* 805C07C8  FC 00 00 32 */	fmul f0, f0, f0
/* 805C07CC  FC 01 00 32 */	fmul f0, f1, f0
/* 805C07D0  FC 03 00 28 */	fsub f0, f3, f0
/* 805C07D4  FC 02 00 32 */	fmul f0, f2, f0
/* 805C07D8  FC 21 00 32 */	fmul f1, f1, f0
/* 805C07DC  FC 20 08 18 */	frsp f1, f1
/* 805C07E0  48 00 00 88 */	b lbl_805C0868
lbl_805C07E4:
/* 805C07E4  C8 1D 03 A8 */	lfd f0, 0x3a8(r29)
/* 805C07E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C07EC  40 80 00 10 */	bge lbl_805C07FC
/* 805C07F0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805C07F4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 805C07F8  48 00 00 70 */	b lbl_805C0868
lbl_805C07FC:
/* 805C07FC  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 805C0800  80 81 00 10 */	lwz r4, 0x10(r1)
/* 805C0804  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805C0808  3C 00 7F 80 */	lis r0, 0x7f80
/* 805C080C  7C 03 00 00 */	cmpw r3, r0
/* 805C0810  41 82 00 14 */	beq lbl_805C0824
/* 805C0814  40 80 00 40 */	bge lbl_805C0854
/* 805C0818  2C 03 00 00 */	cmpwi r3, 0
/* 805C081C  41 82 00 20 */	beq lbl_805C083C
/* 805C0820  48 00 00 34 */	b lbl_805C0854
lbl_805C0824:
/* 805C0824  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805C0828  41 82 00 0C */	beq lbl_805C0834
/* 805C082C  38 00 00 01 */	li r0, 1
/* 805C0830  48 00 00 28 */	b lbl_805C0858
lbl_805C0834:
/* 805C0834  38 00 00 02 */	li r0, 2
/* 805C0838  48 00 00 20 */	b lbl_805C0858
lbl_805C083C:
/* 805C083C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805C0840  41 82 00 0C */	beq lbl_805C084C
/* 805C0844  38 00 00 05 */	li r0, 5
/* 805C0848  48 00 00 10 */	b lbl_805C0858
lbl_805C084C:
/* 805C084C  38 00 00 03 */	li r0, 3
/* 805C0850  48 00 00 08 */	b lbl_805C0858
lbl_805C0854:
/* 805C0854  38 00 00 04 */	li r0, 4
lbl_805C0858:
/* 805C0858  2C 00 00 01 */	cmpwi r0, 1
/* 805C085C  40 82 00 0C */	bne lbl_805C0868
/* 805C0860  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805C0864  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_805C0868:
/* 805C0868  C0 1D 00 18 */	lfs f0, 0x18(r29)
/* 805C086C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C0870  41 81 00 18 */	bgt lbl_805C0888
/* 805C0874  80 7C 07 0C */	lwz r3, 0x70c(r28)
/* 805C0878  38 03 00 01 */	addi r0, r3, 1
/* 805C087C  90 1C 07 0C */	stw r0, 0x70c(r28)
lbl_805C0880:
/* 805C0880  7F 83 E3 78 */	mr r3, r28
/* 805C0884  4B FF CB 61 */	bl normalHoverMove__8daB_DR_cFv
lbl_805C0888:
/* 805C0888  80 1C 07 0C */	lwz r0, 0x70c(r28)
/* 805C088C  2C 00 00 02 */	cmpwi r0, 2
/* 805C0890  40 82 00 38 */	bne lbl_805C08C8
/* 805C0894  7F 83 E3 78 */	mr r3, r28
/* 805C0898  4B FF C7 C5 */	bl mPlayerHighCheck__8daB_DR_cFv
/* 805C089C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805C08A0  41 82 00 28 */	beq lbl_805C08C8
/* 805C08A4  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 805C08A8  A8 03 05 6C */	lha r0, 0x56c(r3)
/* 805C08AC  7C 00 07 35 */	extsh. r0, r0
/* 805C08B0  40 82 00 18 */	bne lbl_805C08C8
/* 805C08B4  7F 83 E3 78 */	mr r3, r28
/* 805C08B8  38 80 00 05 */	li r4, 5
/* 805C08BC  38 A0 00 00 */	li r5, 0
/* 805C08C0  4B FF AB F5 */	bl setActionMode__8daB_DR_cFii
/* 805C08C4  48 00 03 D0 */	b lbl_805C0C94
lbl_805C08C8:
/* 805C08C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805C08CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805C08D0  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 805C08D4  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 805C08D8  41 82 00 2C */	beq lbl_805C0904
/* 805C08DC  38 00 00 00 */	li r0, 0
/* 805C08E0  98 1C 07 E5 */	stb r0, 0x7e5(r28)
/* 805C08E4  90 1C 07 C4 */	stw r0, 0x7c4(r28)
/* 805C08E8  98 1C 07 E6 */	stb r0, 0x7e6(r28)
/* 805C08EC  90 1C 07 C8 */	stw r0, 0x7c8(r28)
/* 805C08F0  7F 83 E3 78 */	mr r3, r28
/* 805C08F4  38 80 00 07 */	li r4, 7
/* 805C08F8  38 A0 00 00 */	li r5, 0
/* 805C08FC  4B FF AB B9 */	bl setActionMode__8daB_DR_cFii
/* 805C0900  48 00 03 94 */	b lbl_805C0C94
lbl_805C0904:
/* 805C0904  38 61 00 14 */	addi r3, r1, 0x14
/* 805C0908  38 9C 04 A8 */	addi r4, r28, 0x4a8
/* 805C090C  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 805C0910  4B CA 62 24 */	b __mi__4cXyzCFRC3Vec
/* 805C0914  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 805C0918  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805C091C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 805C0920  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805C0924  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 805C0928  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 805C092C  C0 1D 00 30 */	lfs f0, 0x30(r29)
/* 805C0930  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805C0934  80 1C 07 10 */	lwz r0, 0x710(r28)
/* 805C0938  2C 00 00 2D */	cmpwi r0, 0x2d
/* 805C093C  40 82 02 F4 */	bne lbl_805C0C30
/* 805C0940  38 61 00 2C */	addi r3, r1, 0x2c
/* 805C0944  4B D8 67 F4 */	b PSVECSquareMag
/* 805C0948  C0 1D 00 30 */	lfs f0, 0x30(r29)
/* 805C094C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C0950  40 81 00 58 */	ble lbl_805C09A8
/* 805C0954  FC 00 08 34 */	frsqrte f0, f1
/* 805C0958  C8 9D 03 98 */	lfd f4, 0x398(r29)
/* 805C095C  FC 44 00 32 */	fmul f2, f4, f0
/* 805C0960  C8 7D 03 A0 */	lfd f3, 0x3a0(r29)
/* 805C0964  FC 00 00 32 */	fmul f0, f0, f0
/* 805C0968  FC 01 00 32 */	fmul f0, f1, f0
/* 805C096C  FC 03 00 28 */	fsub f0, f3, f0
/* 805C0970  FC 02 00 32 */	fmul f0, f2, f0
/* 805C0974  FC 44 00 32 */	fmul f2, f4, f0
/* 805C0978  FC 00 00 32 */	fmul f0, f0, f0
/* 805C097C  FC 01 00 32 */	fmul f0, f1, f0
/* 805C0980  FC 03 00 28 */	fsub f0, f3, f0
/* 805C0984  FC 02 00 32 */	fmul f0, f2, f0
/* 805C0988  FC 44 00 32 */	fmul f2, f4, f0
/* 805C098C  FC 00 00 32 */	fmul f0, f0, f0
/* 805C0990  FC 01 00 32 */	fmul f0, f1, f0
/* 805C0994  FC 03 00 28 */	fsub f0, f3, f0
/* 805C0998  FC 02 00 32 */	fmul f0, f2, f0
/* 805C099C  FC 21 00 32 */	fmul f1, f1, f0
/* 805C09A0  FC 20 08 18 */	frsp f1, f1
/* 805C09A4  48 00 00 88 */	b lbl_805C0A2C
lbl_805C09A8:
/* 805C09A8  C8 1D 03 A8 */	lfd f0, 0x3a8(r29)
/* 805C09AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C09B0  40 80 00 10 */	bge lbl_805C09C0
/* 805C09B4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805C09B8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 805C09BC  48 00 00 70 */	b lbl_805C0A2C
lbl_805C09C0:
/* 805C09C0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 805C09C4  80 81 00 0C */	lwz r4, 0xc(r1)
/* 805C09C8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805C09CC  3C 00 7F 80 */	lis r0, 0x7f80
/* 805C09D0  7C 03 00 00 */	cmpw r3, r0
/* 805C09D4  41 82 00 14 */	beq lbl_805C09E8
/* 805C09D8  40 80 00 40 */	bge lbl_805C0A18
/* 805C09DC  2C 03 00 00 */	cmpwi r3, 0
/* 805C09E0  41 82 00 20 */	beq lbl_805C0A00
/* 805C09E4  48 00 00 34 */	b lbl_805C0A18
lbl_805C09E8:
/* 805C09E8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805C09EC  41 82 00 0C */	beq lbl_805C09F8
/* 805C09F0  38 00 00 01 */	li r0, 1
/* 805C09F4  48 00 00 28 */	b lbl_805C0A1C
lbl_805C09F8:
/* 805C09F8  38 00 00 02 */	li r0, 2
/* 805C09FC  48 00 00 20 */	b lbl_805C0A1C
lbl_805C0A00:
/* 805C0A00  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805C0A04  41 82 00 0C */	beq lbl_805C0A10
/* 805C0A08  38 00 00 05 */	li r0, 5
/* 805C0A0C  48 00 00 10 */	b lbl_805C0A1C
lbl_805C0A10:
/* 805C0A10  38 00 00 03 */	li r0, 3
/* 805C0A14  48 00 00 08 */	b lbl_805C0A1C
lbl_805C0A18:
/* 805C0A18  38 00 00 04 */	li r0, 4
lbl_805C0A1C:
/* 805C0A1C  2C 00 00 01 */	cmpwi r0, 1
/* 805C0A20  40 82 00 0C */	bne lbl_805C0A2C
/* 805C0A24  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805C0A28  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_805C0A2C:
/* 805C0A2C  C0 5D 03 74 */	lfs f2, 0x374(r29)
/* 805C0A30  3C 60 80 5C */	lis r3, l_HIO@ha
/* 805C0A34  3B E3 79 0C */	addi r31, r3, l_HIO@l
/* 805C0A38  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 805C0A3C  EC 02 00 2A */	fadds f0, f2, f0
/* 805C0A40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C0A44  40 81 00 48 */	ble lbl_805C0A8C
/* 805C0A48  C0 1D 00 34 */	lfs f0, 0x34(r29)
/* 805C0A4C  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 805C0A50  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 805C0A54  38 00 00 00 */	li r0, 0
/* 805C0A58  98 1C 07 E6 */	stb r0, 0x7e6(r28)
/* 805C0A5C  90 1C 07 C8 */	stw r0, 0x7c8(r28)
/* 805C0A60  88 1C 07 E5 */	lbz r0, 0x7e5(r28)
/* 805C0A64  28 00 00 00 */	cmplwi r0, 0
/* 805C0A68  40 82 00 54 */	bne lbl_805C0ABC
/* 805C0A6C  80 1C 07 C4 */	lwz r0, 0x7c4(r28)
/* 805C0A70  2C 00 00 00 */	cmpwi r0, 0
/* 805C0A74  40 82 00 48 */	bne lbl_805C0ABC
/* 805C0A78  A8 1F 00 48 */	lha r0, 0x48(r31)
/* 805C0A7C  90 1C 07 C4 */	stw r0, 0x7c4(r28)
/* 805C0A80  38 00 00 01 */	li r0, 1
/* 805C0A84  98 1C 07 E5 */	stb r0, 0x7e5(r28)
/* 805C0A88  48 00 00 34 */	b lbl_805C0ABC
lbl_805C0A8C:
/* 805C0A8C  38 00 00 02 */	li r0, 2
/* 805C0A90  98 1C 07 D3 */	stb r0, 0x7d3(r28)
/* 805C0A94  C0 1D 03 E8 */	lfs f0, 0x3e8(r29)
/* 805C0A98  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 805C0A9C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 805C0AA0  88 1C 07 E6 */	lbz r0, 0x7e6(r28)
/* 805C0AA4  28 00 00 00 */	cmplwi r0, 0
/* 805C0AA8  40 82 00 14 */	bne lbl_805C0ABC
/* 805C0AAC  38 00 00 01 */	li r0, 1
/* 805C0AB0  98 1C 07 E6 */	stb r0, 0x7e6(r28)
/* 805C0AB4  A8 1F 00 3A */	lha r0, 0x3a(r31)
/* 805C0AB8  90 1C 07 C8 */	stw r0, 0x7c8(r28)
lbl_805C0ABC:
/* 805C0ABC  88 1C 07 E6 */	lbz r0, 0x7e6(r28)
/* 805C0AC0  28 00 00 00 */	cmplwi r0, 0
/* 805C0AC4  41 82 00 14 */	beq lbl_805C0AD8
/* 805C0AC8  38 7C 07 C8 */	addi r3, r28, 0x7c8
/* 805C0ACC  48 00 61 11 */	bl func_805C6BDC
/* 805C0AD0  2C 03 00 00 */	cmpwi r3, 0
/* 805C0AD4  41 82 00 20 */	beq lbl_805C0AF4
lbl_805C0AD8:
/* 805C0AD8  88 1C 07 E5 */	lbz r0, 0x7e5(r28)
/* 805C0ADC  28 00 00 00 */	cmplwi r0, 0
/* 805C0AE0  41 82 00 3C */	beq lbl_805C0B1C
/* 805C0AE4  38 7C 07 C4 */	addi r3, r28, 0x7c4
/* 805C0AE8  48 00 60 F5 */	bl func_805C6BDC
/* 805C0AEC  2C 03 00 00 */	cmpwi r3, 0
/* 805C0AF0  40 82 00 2C */	bne lbl_805C0B1C
lbl_805C0AF4:
/* 805C0AF4  38 00 00 00 */	li r0, 0
/* 805C0AF8  98 1C 07 E5 */	stb r0, 0x7e5(r28)
/* 805C0AFC  90 1C 07 C4 */	stw r0, 0x7c4(r28)
/* 805C0B00  98 1C 07 E6 */	stb r0, 0x7e6(r28)
/* 805C0B04  90 1C 07 C8 */	stw r0, 0x7c8(r28)
/* 805C0B08  7F 83 E3 78 */	mr r3, r28
/* 805C0B0C  38 80 00 07 */	li r4, 7
/* 805C0B10  38 A0 00 00 */	li r5, 0
/* 805C0B14  4B FF A9 A1 */	bl setActionMode__8daB_DR_cFii
/* 805C0B18  48 00 01 7C */	b lbl_805C0C94
lbl_805C0B1C:
/* 805C0B1C  38 61 00 2C */	addi r3, r1, 0x2c
/* 805C0B20  4B D8 66 18 */	b PSVECSquareMag
/* 805C0B24  C0 1D 00 30 */	lfs f0, 0x30(r29)
/* 805C0B28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C0B2C  40 81 00 58 */	ble lbl_805C0B84
/* 805C0B30  FC 00 08 34 */	frsqrte f0, f1
/* 805C0B34  C8 9D 03 98 */	lfd f4, 0x398(r29)
/* 805C0B38  FC 44 00 32 */	fmul f2, f4, f0
/* 805C0B3C  C8 7D 03 A0 */	lfd f3, 0x3a0(r29)
/* 805C0B40  FC 00 00 32 */	fmul f0, f0, f0
/* 805C0B44  FC 01 00 32 */	fmul f0, f1, f0
/* 805C0B48  FC 03 00 28 */	fsub f0, f3, f0
/* 805C0B4C  FC 02 00 32 */	fmul f0, f2, f0
/* 805C0B50  FC 44 00 32 */	fmul f2, f4, f0
/* 805C0B54  FC 00 00 32 */	fmul f0, f0, f0
/* 805C0B58  FC 01 00 32 */	fmul f0, f1, f0
/* 805C0B5C  FC 03 00 28 */	fsub f0, f3, f0
/* 805C0B60  FC 02 00 32 */	fmul f0, f2, f0
/* 805C0B64  FC 44 00 32 */	fmul f2, f4, f0
/* 805C0B68  FC 00 00 32 */	fmul f0, f0, f0
/* 805C0B6C  FC 01 00 32 */	fmul f0, f1, f0
/* 805C0B70  FC 03 00 28 */	fsub f0, f3, f0
/* 805C0B74  FC 02 00 32 */	fmul f0, f2, f0
/* 805C0B78  FC 21 00 32 */	fmul f1, f1, f0
/* 805C0B7C  FC 20 08 18 */	frsp f1, f1
/* 805C0B80  48 00 00 88 */	b lbl_805C0C08
lbl_805C0B84:
/* 805C0B84  C8 1D 03 A8 */	lfd f0, 0x3a8(r29)
/* 805C0B88  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C0B8C  40 80 00 10 */	bge lbl_805C0B9C
/* 805C0B90  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805C0B94  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 805C0B98  48 00 00 70 */	b lbl_805C0C08
lbl_805C0B9C:
/* 805C0B9C  D0 21 00 08 */	stfs f1, 8(r1)
/* 805C0BA0  80 81 00 08 */	lwz r4, 8(r1)
/* 805C0BA4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805C0BA8  3C 00 7F 80 */	lis r0, 0x7f80
/* 805C0BAC  7C 03 00 00 */	cmpw r3, r0
/* 805C0BB0  41 82 00 14 */	beq lbl_805C0BC4
/* 805C0BB4  40 80 00 40 */	bge lbl_805C0BF4
/* 805C0BB8  2C 03 00 00 */	cmpwi r3, 0
/* 805C0BBC  41 82 00 20 */	beq lbl_805C0BDC
/* 805C0BC0  48 00 00 34 */	b lbl_805C0BF4
lbl_805C0BC4:
/* 805C0BC4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805C0BC8  41 82 00 0C */	beq lbl_805C0BD4
/* 805C0BCC  38 00 00 01 */	li r0, 1
/* 805C0BD0  48 00 00 28 */	b lbl_805C0BF8
lbl_805C0BD4:
/* 805C0BD4  38 00 00 02 */	li r0, 2
/* 805C0BD8  48 00 00 20 */	b lbl_805C0BF8
lbl_805C0BDC:
/* 805C0BDC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805C0BE0  41 82 00 0C */	beq lbl_805C0BEC
/* 805C0BE4  38 00 00 05 */	li r0, 5
/* 805C0BE8  48 00 00 10 */	b lbl_805C0BF8
lbl_805C0BEC:
/* 805C0BEC  38 00 00 03 */	li r0, 3
/* 805C0BF0  48 00 00 08 */	b lbl_805C0BF8
lbl_805C0BF4:
/* 805C0BF4  38 00 00 04 */	li r0, 4
lbl_805C0BF8:
/* 805C0BF8  2C 00 00 01 */	cmpwi r0, 1
/* 805C0BFC  40 82 00 0C */	bne lbl_805C0C08
/* 805C0C00  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805C0C04  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_805C0C08:
/* 805C0C08  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 805C0C0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C0C10  40 80 00 14 */	bge lbl_805C0C24
/* 805C0C14  7F 83 E3 78 */	mr r3, r28
/* 805C0C18  38 80 00 01 */	li r4, 1
/* 805C0C1C  4B FF AA 31 */	bl mStatusONOFF__8daB_DR_cFi
/* 805C0C20  48 00 00 10 */	b lbl_805C0C30
lbl_805C0C24:
/* 805C0C24  7F 83 E3 78 */	mr r3, r28
/* 805C0C28  38 80 00 00 */	li r4, 0
/* 805C0C2C  4B FF AA 21 */	bl mStatusONOFF__8daB_DR_cFi
lbl_805C0C30:
/* 805C0C30  7F 83 E3 78 */	mr r3, r28
/* 805C0C34  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 805C0C38  4B A5 9A D8 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 805C0C3C  7C 64 1B 78 */	mr r4, r3
/* 805C0C40  38 7C 04 DE */	addi r3, r28, 0x4de
/* 805C0C44  A8 BC 07 50 */	lha r5, 0x750(r28)
/* 805C0C48  38 C0 04 00 */	li r6, 0x400
/* 805C0C4C  4B CA F9 BC */	b cLib_addCalcAngleS2__FPssss
/* 805C0C50  38 7C 04 E6 */	addi r3, r28, 0x4e6
/* 805C0C54  A8 9C 04 DE */	lha r4, 0x4de(r28)
/* 805C0C58  A8 BC 07 50 */	lha r5, 0x750(r28)
/* 805C0C5C  38 C0 04 00 */	li r6, 0x400
/* 805C0C60  4B CA F9 A8 */	b cLib_addCalcAngleS2__FPssss
/* 805C0C64  38 7C 07 50 */	addi r3, r28, 0x750
/* 805C0C68  38 80 00 08 */	li r4, 8
/* 805C0C6C  38 A0 00 08 */	li r5, 8
/* 805C0C70  38 C0 00 14 */	li r6, 0x14
/* 805C0C74  4B CA F9 94 */	b cLib_addCalcAngleS2__FPssss
/* 805C0C78  38 7C 04 D4 */	addi r3, r28, 0x4d4
/* 805C0C7C  C0 3D 03 84 */	lfs f1, 0x384(r29)
/* 805C0C80  C0 1C 07 20 */	lfs f0, 0x720(r28)
/* 805C0C84  EC 21 00 2A */	fadds f1, f1, f0
/* 805C0C88  C0 5D 00 00 */	lfs f2, 0(r29)
/* 805C0C8C  C0 7D 00 1C */	lfs f3, 0x1c(r29)
/* 805C0C90  4B CA ED AC */	b cLib_addCalc2__FPffff
lbl_805C0C94:
/* 805C0C94  39 61 00 60 */	addi r11, r1, 0x60
/* 805C0C98  4B DA 15 8C */	b _restgpr_28
/* 805C0C9C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805C0CA0  7C 08 03 A6 */	mtlr r0
/* 805C0CA4  38 21 00 60 */	addi r1, r1, 0x60
/* 805C0CA8  4E 80 00 20 */	blr 
