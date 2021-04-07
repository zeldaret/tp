lbl_80681128:
/* 80681128  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8068112C  7C 08 02 A6 */	mflr r0
/* 80681130  90 01 00 84 */	stw r0, 0x84(r1)
/* 80681134  39 61 00 80 */	addi r11, r1, 0x80
/* 80681138  4B CE 10 8D */	bl _savegpr_23
/* 8068113C  7C 7F 1B 78 */	mr r31, r3
/* 80681140  3C 60 80 68 */	lis r3, lit_3947@ha /* 0x806823BC@ha */
/* 80681144  3B A3 23 BC */	addi r29, r3, lit_3947@l /* 0x806823BC@l */
/* 80681148  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8068114C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80681150  83 83 5D AC */	lwz r28, 0x5dac(r3)
/* 80681154  A8 7F 06 70 */	lha r3, 0x670(r31)
/* 80681158  38 03 00 01 */	addi r0, r3, 1
/* 8068115C  B0 1F 06 70 */	sth r0, 0x670(r31)
/* 80681160  38 60 00 00 */	li r3, 0
/* 80681164  38 00 00 04 */	li r0, 4
/* 80681168  7C 09 03 A6 */	mtctr r0
lbl_8068116C:
/* 8068116C  38 A3 06 A6 */	addi r5, r3, 0x6a6
/* 80681170  7C 9F 2A AE */	lhax r4, r31, r5
/* 80681174  2C 04 00 00 */	cmpwi r4, 0
/* 80681178  41 82 00 0C */	beq lbl_80681184
/* 8068117C  38 04 FF FF */	addi r0, r4, -1
/* 80681180  7C 1F 2B 2E */	sthx r0, r31, r5
lbl_80681184:
/* 80681184  38 63 00 02 */	addi r3, r3, 2
/* 80681188  42 00 FF E4 */	bdnz lbl_8068116C
/* 8068118C  A8 7F 06 AE */	lha r3, 0x6ae(r31)
/* 80681190  2C 03 00 00 */	cmpwi r3, 0
/* 80681194  41 82 00 0C */	beq lbl_806811A0
/* 80681198  38 03 FF FF */	addi r0, r3, -1
/* 8068119C  B0 1F 06 AE */	sth r0, 0x6ae(r31)
lbl_806811A0:
/* 806811A0  7F E3 FB 78 */	mr r3, r31
/* 806811A4  4B FF FC 29 */	bl action__FP10e_ba_class
/* 806811A8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 806811AC  7C 03 07 74 */	extsb r3, r0
/* 806811B0  4B 9A BE BD */	bl dComIfGp_getReverb__Fi
/* 806811B4  7C 65 1B 78 */	mr r5, r3
/* 806811B8  80 7F 05 C4 */	lwz r3, 0x5c4(r31)
/* 806811BC  38 80 00 00 */	li r4, 0
/* 806811C0  4B 98 FE F1 */	bl play__16mDoExt_McaMorfSOFUlSc
/* 806811C4  80 1F 06 6C */	lwz r0, 0x66c(r31)
/* 806811C8  2C 00 00 09 */	cmpwi r0, 9
/* 806811CC  41 82 00 0C */	beq lbl_806811D8
/* 806811D0  2C 00 00 06 */	cmpwi r0, 6
/* 806811D4  40 82 00 88 */	bne lbl_8068125C
lbl_806811D8:
/* 806811D8  80 7F 05 C4 */	lwz r3, 0x5c4(r31)
/* 806811DC  38 63 00 0C */	addi r3, r3, 0xc
/* 806811E0  C0 3D 00 98 */	lfs f1, 0x98(r29)
/* 806811E4  4B CA 72 49 */	bl checkPass__12J3DFrameCtrlFf
/* 806811E8  2C 03 00 00 */	cmpwi r3, 0
/* 806811EC  41 82 00 B8 */	beq lbl_806812A4
/* 806811F0  80 1F 06 6C */	lwz r0, 0x66c(r31)
/* 806811F4  2C 00 00 09 */	cmpwi r0, 9
/* 806811F8  40 82 00 34 */	bne lbl_8068122C
/* 806811FC  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700A7@ha */
/* 80681200  38 03 00 A7 */	addi r0, r3, 0x00A7 /* 0x000700A7@l */
/* 80681204  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80681208  38 7F 05 C8 */	addi r3, r31, 0x5c8
/* 8068120C  38 81 00 2C */	addi r4, r1, 0x2c
/* 80681210  38 A0 00 00 */	li r5, 0
/* 80681214  38 C0 FF FF */	li r6, -1
/* 80681218  81 9F 05 C8 */	lwz r12, 0x5c8(r31)
/* 8068121C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80681220  7D 89 03 A6 */	mtctr r12
/* 80681224  4E 80 04 21 */	bctrl 
/* 80681228  48 00 00 7C */	b lbl_806812A4
lbl_8068122C:
/* 8068122C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700A7@ha */
/* 80681230  38 03 00 A7 */	addi r0, r3, 0x00A7 /* 0x000700A7@l */
/* 80681234  90 01 00 28 */	stw r0, 0x28(r1)
/* 80681238  38 7F 05 C8 */	addi r3, r31, 0x5c8
/* 8068123C  38 81 00 28 */	addi r4, r1, 0x28
/* 80681240  38 A0 00 00 */	li r5, 0
/* 80681244  38 C0 FF FF */	li r6, -1
/* 80681248  81 9F 05 C8 */	lwz r12, 0x5c8(r31)
/* 8068124C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80681250  7D 89 03 A6 */	mtctr r12
/* 80681254  4E 80 04 21 */	bctrl 
/* 80681258  48 00 00 4C */	b lbl_806812A4
lbl_8068125C:
/* 8068125C  2C 00 00 07 */	cmpwi r0, 7
/* 80681260  40 82 00 44 */	bne lbl_806812A4
/* 80681264  80 7F 05 C4 */	lwz r3, 0x5c4(r31)
/* 80681268  38 63 00 0C */	addi r3, r3, 0xc
/* 8068126C  C0 3D 00 04 */	lfs f1, 4(r29)
/* 80681270  4B CA 71 BD */	bl checkPass__12J3DFrameCtrlFf
/* 80681274  2C 03 00 00 */	cmpwi r3, 0
/* 80681278  41 82 00 2C */	beq lbl_806812A4
/* 8068127C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701C5@ha */
/* 80681280  38 03 01 C5 */	addi r0, r3, 0x01C5 /* 0x000701C5@l */
/* 80681284  90 01 00 24 */	stw r0, 0x24(r1)
/* 80681288  38 7F 05 C8 */	addi r3, r31, 0x5c8
/* 8068128C  38 81 00 24 */	addi r4, r1, 0x24
/* 80681290  38 A0 FF FF */	li r5, -1
/* 80681294  81 9F 05 C8 */	lwz r12, 0x5c8(r31)
/* 80681298  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8068129C  7D 89 03 A6 */	mtctr r12
/* 806812A0  4E 80 04 21 */	bctrl 
lbl_806812A4:
/* 806812A4  80 7F 05 C4 */	lwz r3, 0x5c4(r31)
/* 806812A8  83 C3 00 04 */	lwz r30, 4(r3)
/* 806812AC  A8 1F 06 72 */	lha r0, 0x672(r31)
/* 806812B0  2C 00 00 0D */	cmpwi r0, 0xd
/* 806812B4  40 82 00 80 */	bne lbl_80681334
/* 806812B8  A8 1F 06 74 */	lha r0, 0x674(r31)
/* 806812BC  2C 00 00 02 */	cmpwi r0, 2
/* 806812C0  40 80 00 74 */	bge lbl_80681334
/* 806812C4  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 806812C8  54 00 00 3E */	slwi r0, r0, 0
/* 806812CC  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 806812D0  38 00 00 00 */	li r0, 0
/* 806812D4  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 806812D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806812DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806812E0  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 806812E4  81 83 06 28 */	lwz r12, 0x628(r3)
/* 806812E8  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 806812EC  7D 89 03 A6 */	mtctr r12
/* 806812F0  4E 80 04 21 */	bctrl 
/* 806812F4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806812F8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806812FC  4B CC 51 B5 */	bl PSMTXCopy
/* 80681300  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80681304  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80681308  38 9E 00 24 */	addi r4, r30, 0x24
/* 8068130C  4B CC 51 A5 */	bl PSMTXCopy
/* 80681310  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80681314  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80681318  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8068131C  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80681320  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80681324  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80681328  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8068132C  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80681330  48 00 00 AC */	b lbl_806813DC
lbl_80681334:
/* 80681334  A8 1F 05 62 */	lha r0, 0x562(r31)
/* 80681338  2C 00 00 00 */	cmpwi r0, 0
/* 8068133C  40 81 00 2C */	ble lbl_80681368
/* 80681340  88 1F 06 A4 */	lbz r0, 0x6a4(r31)
/* 80681344  7C 00 07 75 */	extsb. r0, r0
/* 80681348  40 82 00 20 */	bne lbl_80681368
/* 8068134C  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 80681350  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80681354  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80681358  40 80 00 10 */	bge lbl_80681368
/* 8068135C  38 00 00 04 */	li r0, 4
/* 80681360  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80681364  48 00 00 18 */	b lbl_8068137C
lbl_80681368:
/* 80681368  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 8068136C  54 00 00 3E */	slwi r0, r0, 0
/* 80681370  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 80681374  38 00 00 00 */	li r0, 0
/* 80681378  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_8068137C:
/* 8068137C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80681380  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80681384  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80681388  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 8068138C  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80681390  4B CC 55 59 */	bl PSMTXTrans
/* 80681394  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80681398  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8068139C  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 806813A0  4B 98 B0 95 */	bl mDoMtx_YrotM__FPA4_fs
/* 806813A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806813A8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806813AC  A8 9F 04 E8 */	lha r4, 0x4e8(r31)
/* 806813B0  4B 98 B1 1D */	bl mDoMtx_ZrotM__FPA4_fs
/* 806813B4  3C 60 80 68 */	lis r3, l_HIO@ha /* 0x80682648@ha */
/* 806813B8  38 63 26 48 */	addi r3, r3, l_HIO@l /* 0x80682648@l */
/* 806813BC  C0 23 00 08 */	lfs f1, 8(r3)
/* 806813C0  FC 40 08 90 */	fmr f2, f1
/* 806813C4  FC 60 08 90 */	fmr f3, f1
/* 806813C8  4B 98 BA 71 */	bl scaleM__14mDoMtx_stack_cFfff
/* 806813CC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806813D0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806813D4  38 9E 00 24 */	addi r4, r30, 0x24
/* 806813D8  4B CC 50 D9 */	bl PSMTXCopy
lbl_806813DC:
/* 806813DC  80 7F 05 C4 */	lwz r3, 0x5c4(r31)
/* 806813E0  4B 98 FE 0D */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 806813E4  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 806813E8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806813EC  38 63 00 60 */	addi r3, r3, 0x60
/* 806813F0  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 806813F4  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 806813F8  80 84 00 00 */	lwz r4, 0(r4)
/* 806813FC  4B CC 50 B5 */	bl PSMTXCopy
/* 80681400  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80681404  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80681408  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8068140C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80681410  38 61 00 48 */	addi r3, r1, 0x48
/* 80681414  38 9F 05 38 */	addi r4, r31, 0x538
/* 80681418  4B BE FA D5 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8068141C  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 80681420  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 80681424  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 80681428  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 8068142C  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 80681430  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 80681434  C0 3F 05 54 */	lfs f1, 0x554(r31)
/* 80681438  C0 1D 00 A4 */	lfs f0, 0xa4(r29)
/* 8068143C  EC 01 00 2A */	fadds f0, f1, f0
/* 80681440  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80681444  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80681448  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8068144C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80681450  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80681454  38 61 00 48 */	addi r3, r1, 0x48
/* 80681458  38 81 00 3C */	addi r4, r1, 0x3c
/* 8068145C  4B BE FA 91 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80681460  A8 1F 06 AE */	lha r0, 0x6ae(r31)
/* 80681464  2C 00 00 00 */	cmpwi r0, 0
/* 80681468  41 82 00 14 */	beq lbl_8068147C
/* 8068146C  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 80681470  C0 1D 00 B4 */	lfs f0, 0xb4(r29)
/* 80681474  EC 01 00 28 */	fsubs f0, f1, f0
/* 80681478  D0 01 00 44 */	stfs f0, 0x44(r1)
lbl_8068147C:
/* 8068147C  38 7F 0A 44 */	addi r3, r31, 0xa44
/* 80681480  38 81 00 3C */	addi r4, r1, 0x3c
/* 80681484  4B BE E1 C5 */	bl SetC__8cM3dGSphFRC4cXyz
/* 80681488  38 7F 0A 44 */	addi r3, r31, 0xa44
/* 8068148C  C0 3D 00 6C */	lfs f1, 0x6c(r29)
/* 80681490  3C 80 80 68 */	lis r4, l_HIO@ha /* 0x80682648@ha */
/* 80681494  38 84 26 48 */	addi r4, r4, l_HIO@l /* 0x80682648@l */
/* 80681498  C0 04 00 08 */	lfs f0, 8(r4)
/* 8068149C  EC 21 00 32 */	fmuls f1, f1, f0
/* 806814A0  4B BE E2 69 */	bl SetR__8cM3dGSphFf
/* 806814A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806814A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806814AC  38 63 23 3C */	addi r3, r3, 0x233c
/* 806814B0  38 9F 09 20 */	addi r4, r31, 0x920
/* 806814B4  4B BE 36 F5 */	bl Set__4cCcSFP8cCcD_Obj
/* 806814B8  88 1F 05 B6 */	lbz r0, 0x5b6(r31)
/* 806814BC  28 00 00 00 */	cmplwi r0, 0
/* 806814C0  41 82 02 4C */	beq lbl_8068170C
/* 806814C4  38 61 00 30 */	addi r3, r1, 0x30
/* 806814C8  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 806814CC  38 BF 04 BC */	addi r5, r31, 0x4bc
/* 806814D0  4B BE 56 65 */	bl __mi__4cXyzCFRC3Vec
/* 806814D4  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 806814D8  D0 1F 06 B0 */	stfs f0, 0x6b0(r31)
/* 806814DC  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 806814E0  D0 1F 06 B4 */	stfs f0, 0x6b4(r31)
/* 806814E4  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 806814E8  D0 1F 06 B8 */	stfs f0, 0x6b8(r31)
/* 806814EC  38 7F 06 B0 */	addi r3, r31, 0x6b0
/* 806814F0  7C 64 1B 78 */	mr r4, r3
/* 806814F4  C0 3D 00 B8 */	lfs f1, 0xb8(r29)
/* 806814F8  4B CC 5B E1 */	bl PSVECScale
/* 806814FC  88 1F 05 B6 */	lbz r0, 0x5b6(r31)
/* 80681500  28 00 00 01 */	cmplwi r0, 1
/* 80681504  40 82 01 24 */	bne lbl_80681628
/* 80681508  A8 1F 06 72 */	lha r0, 0x672(r31)
/* 8068150C  2C 00 00 0F */	cmpwi r0, 0xf
/* 80681510  41 82 01 FC */	beq lbl_8068170C
/* 80681514  3B 60 00 00 */	li r27, 0
/* 80681518  3B 20 00 00 */	li r25, 0
/* 8068151C  3B 40 00 00 */	li r26, 0
/* 80681520  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80681524  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80681528  3B 9F 06 B0 */	addi r28, r31, 0x6b0
/* 8068152C  3C 60 80 68 */	lis r3, fire_name@ha /* 0x80682514@ha */
/* 80681530  3B 03 25 14 */	addi r24, r3, fire_name@l /* 0x80682514@l */
lbl_80681534:
/* 80681534  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80681538  38 00 00 FF */	li r0, 0xff
/* 8068153C  90 01 00 08 */	stw r0, 8(r1)
/* 80681540  38 80 00 00 */	li r4, 0
/* 80681544  90 81 00 0C */	stw r4, 0xc(r1)
/* 80681548  38 00 FF FF */	li r0, -1
/* 8068154C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80681550  90 81 00 14 */	stw r4, 0x14(r1)
/* 80681554  90 81 00 18 */	stw r4, 0x18(r1)
/* 80681558  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8068155C  3A FA 0A 84 */	addi r23, r26, 0xa84
/* 80681560  7C 9F B8 2E */	lwzx r4, r31, r23
/* 80681564  38 A0 00 00 */	li r5, 0
/* 80681568  7C D8 CA 2E */	lhzx r6, r24, r25
/* 8068156C  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 80681570  39 00 00 00 */	li r8, 0
/* 80681574  39 20 00 00 */	li r9, 0
/* 80681578  39 40 00 00 */	li r10, 0
/* 8068157C  C0 3D 00 08 */	lfs f1, 8(r29)
/* 80681580  4B 9C BF 4D */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80681584  7C 7F B9 2E */	stwx r3, r31, r23
/* 80681588  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 8068158C  38 63 02 10 */	addi r3, r3, 0x210
/* 80681590  7C 9F B8 2E */	lwzx r4, r31, r23
/* 80681594  4B 9C A3 85 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 80681598  7C 77 1B 79 */	or. r23, r3, r3
/* 8068159C  41 82 00 48 */	beq lbl_806815E4
/* 806815A0  80 7F 05 C4 */	lwz r3, 0x5c4(r31)
/* 806815A4  80 63 00 04 */	lwz r3, 4(r3)
/* 806815A8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806815AC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806815B0  38 63 03 60 */	addi r3, r3, 0x360
/* 806815B4  38 97 00 68 */	addi r4, r23, 0x68
/* 806815B8  38 B7 00 98 */	addi r5, r23, 0x98
/* 806815BC  38 D7 00 A4 */	addi r6, r23, 0xa4
/* 806815C0  4B BF F2 49 */	bl func_80280808
/* 806815C4  C0 37 00 9C */	lfs f1, 0x9c(r23)
/* 806815C8  C0 17 00 98 */	lfs f0, 0x98(r23)
/* 806815CC  D0 17 00 B0 */	stfs f0, 0xb0(r23)
/* 806815D0  D0 37 00 B4 */	stfs f1, 0xb4(r23)
/* 806815D4  3C 60 80 45 */	lis r3, mParticleTracePCB__13dPa_control_c@ha /* 0x80450EC8@ha */
/* 806815D8  38 03 0E C8 */	addi r0, r3, mParticleTracePCB__13dPa_control_c@l /* 0x80450EC8@l */
/* 806815DC  90 17 00 F0 */	stw r0, 0xf0(r23)
/* 806815E0  93 97 00 C0 */	stw r28, 0xc0(r23)
lbl_806815E4:
/* 806815E4  3B 7B 00 01 */	addi r27, r27, 1
/* 806815E8  2C 1B 00 04 */	cmpwi r27, 4
/* 806815EC  3B 39 00 02 */	addi r25, r25, 2
/* 806815F0  3B 5A 00 04 */	addi r26, r26, 4
/* 806815F4  41 80 FF 40 */	blt lbl_80681534
/* 806815F8  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701C6@ha */
/* 806815FC  38 03 01 C6 */	addi r0, r3, 0x01C6 /* 0x000701C6@l */
/* 80681600  90 01 00 20 */	stw r0, 0x20(r1)
/* 80681604  38 7F 05 C8 */	addi r3, r31, 0x5c8
/* 80681608  38 81 00 20 */	addi r4, r1, 0x20
/* 8068160C  38 A0 00 00 */	li r5, 0
/* 80681610  38 C0 FF FF */	li r6, -1
/* 80681614  81 9F 05 C8 */	lwz r12, 0x5c8(r31)
/* 80681618  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8068161C  7D 89 03 A6 */	mtctr r12
/* 80681620  4E 80 04 21 */	bctrl 
/* 80681624  48 00 00 E8 */	b lbl_8068170C
lbl_80681628:
/* 80681628  3B 60 00 00 */	li r27, 0
/* 8068162C  3B 40 00 00 */	li r26, 0
/* 80681630  3B 20 00 00 */	li r25, 0
/* 80681634  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80681638  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8068163C  3B 9F 06 B0 */	addi r28, r31, 0x6b0
/* 80681640  3C 60 80 68 */	lis r3, ice_name@ha /* 0x8068251C@ha */
/* 80681644  3A E3 25 1C */	addi r23, r3, ice_name@l /* 0x8068251C@l */
lbl_80681648:
/* 80681648  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 8068164C  38 00 00 FF */	li r0, 0xff
/* 80681650  90 01 00 08 */	stw r0, 8(r1)
/* 80681654  38 80 00 00 */	li r4, 0
/* 80681658  90 81 00 0C */	stw r4, 0xc(r1)
/* 8068165C  38 00 FF FF */	li r0, -1
/* 80681660  90 01 00 10 */	stw r0, 0x10(r1)
/* 80681664  90 81 00 14 */	stw r4, 0x14(r1)
/* 80681668  90 81 00 18 */	stw r4, 0x18(r1)
/* 8068166C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80681670  3B 19 0A 84 */	addi r24, r25, 0xa84
/* 80681674  7C 9F C0 2E */	lwzx r4, r31, r24
/* 80681678  38 A0 00 00 */	li r5, 0
/* 8068167C  7C D7 D2 2E */	lhzx r6, r23, r26
/* 80681680  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 80681684  39 00 00 00 */	li r8, 0
/* 80681688  39 20 00 00 */	li r9, 0
/* 8068168C  39 40 00 00 */	li r10, 0
/* 80681690  C0 3D 00 08 */	lfs f1, 8(r29)
/* 80681694  4B 9C BE 39 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80681698  7C 7F C1 2E */	stwx r3, r31, r24
/* 8068169C  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 806816A0  38 63 02 10 */	addi r3, r3, 0x210
/* 806816A4  7C 9F C0 2E */	lwzx r4, r31, r24
/* 806816A8  4B 9C A2 71 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 806816AC  7C 78 1B 79 */	or. r24, r3, r3
/* 806816B0  41 82 00 48 */	beq lbl_806816F8
/* 806816B4  80 7F 05 C4 */	lwz r3, 0x5c4(r31)
/* 806816B8  80 63 00 04 */	lwz r3, 4(r3)
/* 806816BC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806816C0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806816C4  38 63 03 60 */	addi r3, r3, 0x360
/* 806816C8  38 98 00 68 */	addi r4, r24, 0x68
/* 806816CC  38 B8 00 98 */	addi r5, r24, 0x98
/* 806816D0  38 D8 00 A4 */	addi r6, r24, 0xa4
/* 806816D4  4B BF F1 35 */	bl func_80280808
/* 806816D8  C0 38 00 9C */	lfs f1, 0x9c(r24)
/* 806816DC  C0 18 00 98 */	lfs f0, 0x98(r24)
/* 806816E0  D0 18 00 B0 */	stfs f0, 0xb0(r24)
/* 806816E4  D0 38 00 B4 */	stfs f1, 0xb4(r24)
/* 806816E8  3C 60 80 45 */	lis r3, mParticleTracePCB__13dPa_control_c@ha /* 0x80450EC8@ha */
/* 806816EC  38 03 0E C8 */	addi r0, r3, mParticleTracePCB__13dPa_control_c@l /* 0x80450EC8@l */
/* 806816F0  90 18 00 F0 */	stw r0, 0xf0(r24)
/* 806816F4  93 98 00 C0 */	stw r28, 0xc0(r24)
lbl_806816F8:
/* 806816F8  3B 7B 00 01 */	addi r27, r27, 1
/* 806816FC  2C 1B 00 03 */	cmpwi r27, 3
/* 80681700  3B 5A 00 02 */	addi r26, r26, 2
/* 80681704  3B 39 00 04 */	addi r25, r25, 4
/* 80681708  41 80 FF 40 */	blt lbl_80681648
lbl_8068170C:
/* 8068170C  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 80681710  64 00 00 20 */	oris r0, r0, 0x20
/* 80681714  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80681718  38 60 00 01 */	li r3, 1
/* 8068171C  39 61 00 80 */	addi r11, r1, 0x80
/* 80681720  4B CE 0A F1 */	bl _restgpr_23
/* 80681724  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80681728  7C 08 03 A6 */	mtlr r0
/* 8068172C  38 21 00 80 */	addi r1, r1, 0x80
/* 80681730  4E 80 00 20 */	blr 
