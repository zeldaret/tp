lbl_80707680:
/* 80707680  94 21 FE C0 */	stwu r1, -0x140(r1)
/* 80707684  7C 08 02 A6 */	mflr r0
/* 80707688  90 01 01 44 */	stw r0, 0x144(r1)
/* 8070768C  DB E1 01 30 */	stfd f31, 0x130(r1)
/* 80707690  F3 E1 01 38 */	psq_st f31, 312(r1), 0, 0 /* qr0 */
/* 80707694  DB C1 01 20 */	stfd f30, 0x120(r1)
/* 80707698  F3 C1 01 28 */	psq_st f30, 296(r1), 0, 0 /* qr0 */
/* 8070769C  DB A1 01 10 */	stfd f29, 0x110(r1)
/* 807076A0  F3 A1 01 18 */	psq_st f29, 280(r1), 0, 0 /* qr0 */
/* 807076A4  39 61 01 10 */	addi r11, r1, 0x110
/* 807076A8  4B C5 AB 29 */	bl _savegpr_26
/* 807076AC  7C 7F 1B 78 */	mr r31, r3
/* 807076B0  3C 60 80 71 */	lis r3, lit_1109@ha /* 0x80708BF0@ha */
/* 807076B4  3B A3 8B F0 */	addi r29, r3, lit_1109@l /* 0x80708BF0@l */
/* 807076B8  3C 60 80 71 */	lis r3, lit_3764@ha /* 0x80708A10@ha */
/* 807076BC  3B C3 8A 10 */	addi r30, r3, lit_3764@l /* 0x80708A10@l */
/* 807076C0  4B 91 0B E9 */	bl cDmrNowMidnaTalk__Fv
/* 807076C4  2C 03 00 00 */	cmpwi r3, 0
/* 807076C8  41 82 00 0C */	beq lbl_807076D4
/* 807076CC  38 60 00 01 */	li r3, 1
/* 807076D0  48 00 0A 48 */	b lbl_80708118
lbl_807076D4:
/* 807076D4  A8 7F 06 98 */	lha r3, 0x698(r31)
/* 807076D8  38 03 00 01 */	addi r0, r3, 1
/* 807076DC  B0 1F 06 98 */	sth r0, 0x698(r31)
/* 807076E0  38 60 00 00 */	li r3, 0
/* 807076E4  38 00 00 03 */	li r0, 3
/* 807076E8  7C 09 03 A6 */	mtctr r0
lbl_807076EC:
/* 807076EC  38 A3 06 9C */	addi r5, r3, 0x69c
/* 807076F0  7C 9F 2A AE */	lhax r4, r31, r5
/* 807076F4  2C 04 00 00 */	cmpwi r4, 0
/* 807076F8  41 82 00 0C */	beq lbl_80707704
/* 807076FC  38 04 FF FF */	addi r0, r4, -1
/* 80707700  7C 1F 2B 2E */	sthx r0, r31, r5
lbl_80707704:
/* 80707704  38 63 00 02 */	addi r3, r3, 2
/* 80707708  42 00 FF E4 */	bdnz lbl_807076EC
/* 8070770C  A8 7F 06 A2 */	lha r3, 0x6a2(r31)
/* 80707710  2C 03 00 00 */	cmpwi r3, 0
/* 80707714  41 82 00 0C */	beq lbl_80707720
/* 80707718  38 03 FF FF */	addi r0, r3, -1
/* 8070771C  B0 1F 06 A2 */	sth r0, 0x6a2(r31)
lbl_80707720:
/* 80707720  C3 BE 00 0C */	lfs f29, 0xc(r30)
/* 80707724  7F E3 FB 78 */	mr r3, r31
/* 80707728  4B FF FE 49 */	bl action__FP10e_mb_class
/* 8070772C  7C 60 07 74 */	extsb r0, r3
/* 80707730  2C 00 00 01 */	cmpwi r0, 1
/* 80707734  40 82 03 20 */	bne lbl_80707A54
/* 80707738  38 61 00 88 */	addi r3, r1, 0x88
/* 8070773C  38 9F 05 B8 */	addi r4, r31, 0x5b8
/* 80707740  38 BF 06 A4 */	addi r5, r31, 0x6a4
/* 80707744  4B B5 F3 F1 */	bl __mi__4cXyzCFRC3Vec
/* 80707748  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 8070774C  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 80707750  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 80707754  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 80707758  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 8070775C  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 80707760  38 61 00 D0 */	addi r3, r1, 0xd0
/* 80707764  4B C3 F9 D5 */	bl PSVECSquareMag
/* 80707768  FC 00 E8 90 */	fmr f0, f29
/* 8070776C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80707770  40 81 00 58 */	ble lbl_807077C8
/* 80707774  FC 00 08 34 */	frsqrte f0, f1
/* 80707778  C8 9E 00 30 */	lfd f4, 0x30(r30)
/* 8070777C  FC 44 00 32 */	fmul f2, f4, f0
/* 80707780  C8 7E 00 38 */	lfd f3, 0x38(r30)
/* 80707784  FC 00 00 32 */	fmul f0, f0, f0
/* 80707788  FC 01 00 32 */	fmul f0, f1, f0
/* 8070778C  FC 03 00 28 */	fsub f0, f3, f0
/* 80707790  FC 02 00 32 */	fmul f0, f2, f0
/* 80707794  FC 44 00 32 */	fmul f2, f4, f0
/* 80707798  FC 00 00 32 */	fmul f0, f0, f0
/* 8070779C  FC 01 00 32 */	fmul f0, f1, f0
/* 807077A0  FC 03 00 28 */	fsub f0, f3, f0
/* 807077A4  FC 02 00 32 */	fmul f0, f2, f0
/* 807077A8  FC 44 00 32 */	fmul f2, f4, f0
/* 807077AC  FC 00 00 32 */	fmul f0, f0, f0
/* 807077B0  FC 01 00 32 */	fmul f0, f1, f0
/* 807077B4  FC 03 00 28 */	fsub f0, f3, f0
/* 807077B8  FC 02 00 32 */	fmul f0, f2, f0
/* 807077BC  FF E1 00 32 */	fmul f31, f1, f0
/* 807077C0  FF E0 F8 18 */	frsp f31, f31
/* 807077C4  48 00 00 90 */	b lbl_80707854
lbl_807077C8:
/* 807077C8  C8 1E 00 40 */	lfd f0, 0x40(r30)
/* 807077CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807077D0  40 80 00 10 */	bge lbl_807077E0
/* 807077D4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807077D8  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 807077DC  48 00 00 78 */	b lbl_80707854
lbl_807077E0:
/* 807077E0  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 807077E4  80 81 00 14 */	lwz r4, 0x14(r1)
/* 807077E8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807077EC  3C 00 7F 80 */	lis r0, 0x7f80
/* 807077F0  7C 03 00 00 */	cmpw r3, r0
/* 807077F4  41 82 00 14 */	beq lbl_80707808
/* 807077F8  40 80 00 40 */	bge lbl_80707838
/* 807077FC  2C 03 00 00 */	cmpwi r3, 0
/* 80707800  41 82 00 20 */	beq lbl_80707820
/* 80707804  48 00 00 34 */	b lbl_80707838
lbl_80707808:
/* 80707808  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8070780C  41 82 00 0C */	beq lbl_80707818
/* 80707810  38 00 00 01 */	li r0, 1
/* 80707814  48 00 00 28 */	b lbl_8070783C
lbl_80707818:
/* 80707818  38 00 00 02 */	li r0, 2
/* 8070781C  48 00 00 20 */	b lbl_8070783C
lbl_80707820:
/* 80707820  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80707824  41 82 00 0C */	beq lbl_80707830
/* 80707828  38 00 00 05 */	li r0, 5
/* 8070782C  48 00 00 10 */	b lbl_8070783C
lbl_80707830:
/* 80707830  38 00 00 03 */	li r0, 3
/* 80707834  48 00 00 08 */	b lbl_8070783C
lbl_80707838:
/* 80707838  38 00 00 04 */	li r0, 4
lbl_8070783C:
/* 8070783C  2C 00 00 01 */	cmpwi r0, 1
/* 80707840  40 82 00 10 */	bne lbl_80707850
/* 80707844  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80707848  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8070784C  48 00 00 08 */	b lbl_80707854
lbl_80707850:
/* 80707850  FF E0 08 90 */	fmr f31, f1
lbl_80707854:
/* 80707854  38 61 00 7C */	addi r3, r1, 0x7c
/* 80707858  38 9F 05 B8 */	addi r4, r31, 0x5b8
/* 8070785C  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80707860  4B B5 F2 D5 */	bl __mi__4cXyzCFRC3Vec
/* 80707864  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 80707868  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 8070786C  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 80707870  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 80707874  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 80707878  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 8070787C  38 61 00 D0 */	addi r3, r1, 0xd0
/* 80707880  4B C3 F8 B9 */	bl PSVECSquareMag
/* 80707884  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80707888  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8070788C  40 81 00 58 */	ble lbl_807078E4
/* 80707890  FC 00 08 34 */	frsqrte f0, f1
/* 80707894  C8 9E 00 30 */	lfd f4, 0x30(r30)
/* 80707898  FC 44 00 32 */	fmul f2, f4, f0
/* 8070789C  C8 7E 00 38 */	lfd f3, 0x38(r30)
/* 807078A0  FC 00 00 32 */	fmul f0, f0, f0
/* 807078A4  FC 01 00 32 */	fmul f0, f1, f0
/* 807078A8  FC 03 00 28 */	fsub f0, f3, f0
/* 807078AC  FC 02 00 32 */	fmul f0, f2, f0
/* 807078B0  FC 44 00 32 */	fmul f2, f4, f0
/* 807078B4  FC 00 00 32 */	fmul f0, f0, f0
/* 807078B8  FC 01 00 32 */	fmul f0, f1, f0
/* 807078BC  FC 03 00 28 */	fsub f0, f3, f0
/* 807078C0  FC 02 00 32 */	fmul f0, f2, f0
/* 807078C4  FC 44 00 32 */	fmul f2, f4, f0
/* 807078C8  FC 00 00 32 */	fmul f0, f0, f0
/* 807078CC  FC 01 00 32 */	fmul f0, f1, f0
/* 807078D0  FC 03 00 28 */	fsub f0, f3, f0
/* 807078D4  FC 02 00 32 */	fmul f0, f2, f0
/* 807078D8  FC 21 00 32 */	fmul f1, f1, f0
/* 807078DC  FC 20 08 18 */	frsp f1, f1
/* 807078E0  48 00 00 88 */	b lbl_80707968
lbl_807078E4:
/* 807078E4  C8 1E 00 40 */	lfd f0, 0x40(r30)
/* 807078E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807078EC  40 80 00 10 */	bge lbl_807078FC
/* 807078F0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807078F4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 807078F8  48 00 00 70 */	b lbl_80707968
lbl_807078FC:
/* 807078FC  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80707900  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80707904  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80707908  3C 00 7F 80 */	lis r0, 0x7f80
/* 8070790C  7C 03 00 00 */	cmpw r3, r0
/* 80707910  41 82 00 14 */	beq lbl_80707924
/* 80707914  40 80 00 40 */	bge lbl_80707954
/* 80707918  2C 03 00 00 */	cmpwi r3, 0
/* 8070791C  41 82 00 20 */	beq lbl_8070793C
/* 80707920  48 00 00 34 */	b lbl_80707954
lbl_80707924:
/* 80707924  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80707928  41 82 00 0C */	beq lbl_80707934
/* 8070792C  38 00 00 01 */	li r0, 1
/* 80707930  48 00 00 28 */	b lbl_80707958
lbl_80707934:
/* 80707934  38 00 00 02 */	li r0, 2
/* 80707938  48 00 00 20 */	b lbl_80707958
lbl_8070793C:
/* 8070793C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80707940  41 82 00 0C */	beq lbl_8070794C
/* 80707944  38 00 00 05 */	li r0, 5
/* 80707948  48 00 00 10 */	b lbl_80707958
lbl_8070794C:
/* 8070794C  38 00 00 03 */	li r0, 3
/* 80707950  48 00 00 08 */	b lbl_80707958
lbl_80707954:
/* 80707954  38 00 00 04 */	li r0, 4
lbl_80707958:
/* 80707958  2C 00 00 01 */	cmpwi r0, 1
/* 8070795C  40 82 00 0C */	bne lbl_80707968
/* 80707960  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80707964  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80707968:
/* 80707968  C0 5E 00 74 */	lfs f2, 0x74(r30)
/* 8070796C  EC 01 F8 24 */	fdivs f0, f1, f31
/* 80707970  EC 02 00 32 */	fmuls f0, f2, f0
/* 80707974  FC 00 00 1E */	fctiwz f0, f0
/* 80707978  D8 01 00 E0 */	stfd f0, 0xe0(r1)
/* 8070797C  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 80707980  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 80707984  38 7D 00 4C */	addi r3, r29, 0x4c
/* 80707988  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8070798C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80707990  EC 3F 00 32 */	fmuls f1, f31, f0
/* 80707994  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80707998  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8070799C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 807079A0  7C 03 04 2E */	lfsx f0, r3, r0
/* 807079A4  EF A1 00 32 */	fmuls f29, f1, f0
/* 807079A8  7C 63 02 14 */	add r3, r3, r0
/* 807079AC  C0 23 00 04 */	lfs f1, 4(r3)
/* 807079B0  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 807079B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807079B8  40 81 00 50 */	ble lbl_80707A08
/* 807079BC  80 1F 05 CC */	lwz r0, 0x5cc(r31)
/* 807079C0  2C 00 00 0D */	cmpwi r0, 0xd
/* 807079C4  40 82 00 20 */	bne lbl_807079E4
/* 807079C8  7F E3 FB 78 */	mr r3, r31
/* 807079CC  38 80 00 0C */	li r4, 0xc
/* 807079D0  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 807079D4  38 A0 00 00 */	li r5, 0
/* 807079D8  C0 5E 00 00 */	lfs f2, 0(r30)
/* 807079DC  4B FF E7 D9 */	bl anm_init__FP10e_mb_classifUcf
/* 807079E0  48 00 00 88 */	b lbl_80707A68
lbl_807079E4:
/* 807079E4  2C 00 00 10 */	cmpwi r0, 0x10
/* 807079E8  40 82 00 80 */	bne lbl_80707A68
/* 807079EC  7F E3 FB 78 */	mr r3, r31
/* 807079F0  38 80 00 0F */	li r4, 0xf
/* 807079F4  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 807079F8  38 A0 00 00 */	li r5, 0
/* 807079FC  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80707A00  4B FF E7 B5 */	bl anm_init__FP10e_mb_classifUcf
/* 80707A04  48 00 00 64 */	b lbl_80707A68
lbl_80707A08:
/* 80707A08  80 1F 05 CC */	lwz r0, 0x5cc(r31)
/* 80707A0C  2C 00 00 0C */	cmpwi r0, 0xc
/* 80707A10  40 82 00 20 */	bne lbl_80707A30
/* 80707A14  7F E3 FB 78 */	mr r3, r31
/* 80707A18  38 80 00 0D */	li r4, 0xd
/* 80707A1C  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 80707A20  38 A0 00 00 */	li r5, 0
/* 80707A24  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80707A28  4B FF E7 8D */	bl anm_init__FP10e_mb_classifUcf
/* 80707A2C  48 00 00 3C */	b lbl_80707A68
lbl_80707A30:
/* 80707A30  2C 00 00 0F */	cmpwi r0, 0xf
/* 80707A34  40 82 00 34 */	bne lbl_80707A68
/* 80707A38  7F E3 FB 78 */	mr r3, r31
/* 80707A3C  38 80 00 10 */	li r4, 0x10
/* 80707A40  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 80707A44  38 A0 00 00 */	li r5, 0
/* 80707A48  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80707A4C  4B FF E7 69 */	bl anm_init__FP10e_mb_classifUcf
/* 80707A50  48 00 00 18 */	b lbl_80707A68
lbl_80707A54:
/* 80707A54  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80707A58  38 80 00 00 */	li r4, 0
/* 80707A5C  38 A0 00 01 */	li r5, 1
/* 80707A60  38 C0 04 00 */	li r6, 0x400
/* 80707A64  4B B6 8B A5 */	bl cLib_addCalcAngleS2__FPssss
lbl_80707A68:
/* 80707A68  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80707A6C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80707A70  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80707A74  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80707A78  EC 40 E8 28 */	fsubs f2, f0, f29
/* 80707A7C  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80707A80  38 9D 00 4C */	addi r4, r29, 0x4c
/* 80707A84  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 80707A88  EC 63 00 2A */	fadds f3, f3, f0
/* 80707A8C  4B C3 EE 5D */	bl PSMTXTrans
/* 80707A90  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80707A94  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80707A98  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80707A9C  4B 90 49 99 */	bl mDoMtx_YrotM__FPA4_fs
/* 80707AA0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80707AA4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80707AA8  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80707AAC  4B 90 48 F1 */	bl mDoMtx_XrotM__FPA4_fs
/* 80707AB0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80707AB4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80707AB8  A8 9F 04 E8 */	lha r4, 0x4e8(r31)
/* 80707ABC  4B 90 4A 11 */	bl mDoMtx_ZrotM__FPA4_fs
/* 80707AC0  38 7D 00 4C */	addi r3, r29, 0x4c
/* 80707AC4  C0 23 00 08 */	lfs f1, 8(r3)
/* 80707AC8  FC 40 08 90 */	fmr f2, f1
/* 80707ACC  FC 60 08 90 */	fmr f3, f1
/* 80707AD0  4B 90 53 69 */	bl scaleM__14mDoMtx_stack_cFfff
/* 80707AD4  80 7F 05 C8 */	lwz r3, 0x5c8(r31)
/* 80707AD8  80 83 00 04 */	lwz r4, 4(r3)
/* 80707ADC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80707AE0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80707AE4  38 84 00 24 */	addi r4, r4, 0x24
/* 80707AE8  4B C3 E9 C9 */	bl PSMTXCopy
/* 80707AEC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80707AF0  7C 03 07 74 */	extsb r3, r0
/* 80707AF4  4B 92 55 79 */	bl dComIfGp_getReverb__Fi
/* 80707AF8  7C 65 1B 78 */	mr r5, r3
/* 80707AFC  80 7F 05 C8 */	lwz r3, 0x5c8(r31)
/* 80707B00  38 80 00 00 */	li r4, 0
/* 80707B04  4B 90 95 AD */	bl play__16mDoExt_McaMorfSOFUlSc
/* 80707B08  A8 7F 05 D4 */	lha r3, 0x5d4(r31)
/* 80707B0C  2C 03 00 00 */	cmpwi r3, 0
/* 80707B10  40 82 00 28 */	bne lbl_80707B38
/* 80707B14  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 80707B18  4B B5 FE 3D */	bl cM_rndF__Ff
/* 80707B1C  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 80707B20  EC 00 08 2A */	fadds f0, f0, f1
/* 80707B24  FC 00 00 1E */	fctiwz f0, f0
/* 80707B28  D8 01 00 E0 */	stfd f0, 0xe0(r1)
/* 80707B2C  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 80707B30  B0 1F 05 D4 */	sth r0, 0x5d4(r31)
/* 80707B34  48 00 00 48 */	b lbl_80707B7C
lbl_80707B38:
/* 80707B38  38 03 FF FF */	addi r0, r3, -1
/* 80707B3C  B0 1F 05 D4 */	sth r0, 0x5d4(r31)
/* 80707B40  A8 1F 05 D4 */	lha r0, 0x5d4(r31)
/* 80707B44  2C 00 00 0C */	cmpwi r0, 0xc
/* 80707B48  41 81 00 2C */	bgt lbl_80707B74
/* 80707B4C  20 00 00 0C */	subfic r0, r0, 0xc
/* 80707B50  C8 3E 00 60 */	lfd f1, 0x60(r30)
/* 80707B54  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80707B58  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 80707B5C  3C 00 43 30 */	lis r0, 0x4330
/* 80707B60  90 01 00 E0 */	stw r0, 0xe0(r1)
/* 80707B64  C8 01 00 E0 */	lfd f0, 0xe0(r1)
/* 80707B68  EC 00 08 28 */	fsubs f0, f0, f1
/* 80707B6C  D0 1F 05 D8 */	stfs f0, 0x5d8(r31)
/* 80707B70  48 00 00 0C */	b lbl_80707B7C
lbl_80707B74:
/* 80707B74  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80707B78  D0 1F 05 D8 */	stfs f0, 0x5d8(r31)
lbl_80707B7C:
/* 80707B7C  C0 1F 05 D8 */	lfs f0, 0x5d8(r31)
/* 80707B80  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 80707B84  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80707B88  80 7F 05 C8 */	lwz r3, 0x5c8(r31)
/* 80707B8C  4B 90 96 61 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 80707B90  80 7F 05 C8 */	lwz r3, 0x5c8(r31)
/* 80707B94  80 63 00 04 */	lwz r3, 4(r3)
/* 80707B98  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80707B9C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80707BA0  38 63 04 20 */	addi r3, r3, 0x420
/* 80707BA4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80707BA8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80707BAC  4B C3 E9 05 */	bl PSMTXCopy
/* 80707BB0  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80707BB4  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 80707BB8  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 80707BBC  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 80707BC0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80707BC4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80707BC8  38 81 00 D0 */	addi r4, r1, 0xd0
/* 80707BCC  38 BF 05 DC */	addi r5, r31, 0x5dc
/* 80707BD0  4B C3 F1 9D */	bl PSMTXMultVec
/* 80707BD4  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 80707BD8  54 00 00 3E */	slwi r0, r0, 0
/* 80707BDC  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 80707BE0  38 00 00 00 */	li r0, 0
/* 80707BE4  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80707BE8  88 7F 06 8C */	lbz r3, 0x68c(r31)
/* 80707BEC  7C 60 07 75 */	extsb. r0, r3
/* 80707BF0  41 82 02 A0 */	beq lbl_80707E90
/* 80707BF4  7C 60 07 74 */	extsb r0, r3
/* 80707BF8  2C 00 00 01 */	cmpwi r0, 1
/* 80707BFC  40 82 01 F0 */	bne lbl_80707DEC
/* 80707C00  80 7F 05 C8 */	lwz r3, 0x5c8(r31)
/* 80707C04  80 63 00 04 */	lwz r3, 4(r3)
/* 80707C08  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80707C0C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80707C10  38 63 05 40 */	addi r3, r3, 0x540
/* 80707C14  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80707C18  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80707C1C  4B C3 E8 95 */	bl PSMTXCopy
/* 80707C20  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 80707C24  C0 5E 00 88 */	lfs f2, 0x88(r30)
/* 80707C28  C0 7E 00 2C */	lfs f3, 0x2c(r30)
/* 80707C2C  4B 90 51 71 */	bl transM__14mDoMtx_stack_cFfff
/* 80707C30  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80707C34  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80707C38  38 80 FE 0C */	li r4, -500
/* 80707C3C  4B 90 47 61 */	bl mDoMtx_XrotM__FPA4_fs
/* 80707C40  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80707C44  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80707C48  38 80 50 14 */	li r4, 0x5014
/* 80707C4C  4B 90 48 81 */	bl mDoMtx_ZrotM__FPA4_fs
/* 80707C50  80 7F 06 90 */	lwz r3, 0x690(r31)
/* 80707C54  80 83 00 04 */	lwz r4, 4(r3)
/* 80707C58  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80707C5C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80707C60  38 84 00 24 */	addi r4, r4, 0x24
/* 80707C64  4B C3 E8 4D */	bl PSMTXCopy
/* 80707C68  80 7F 06 90 */	lwz r3, 0x690(r31)
/* 80707C6C  4B 90 8A 41 */	bl modelCalc__14mDoExt_McaMorfFv
/* 80707C70  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80707C74  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80707C78  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80707C7C  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 80707C80  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80707C84  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 80707C88  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80707C8C  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 80707C90  38 7F 08 54 */	addi r3, r31, 0x854
/* 80707C94  38 81 00 C4 */	addi r4, r1, 0xc4
/* 80707C98  4B B6 79 B1 */	bl SetC__8cM3dGSphFRC4cXyz
/* 80707C9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80707CA0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80707CA4  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 80707CA8  54 00 03 19 */	rlwinm. r0, r0, 0, 0xc, 0xc
/* 80707CAC  41 82 00 14 */	beq lbl_80707CC0
/* 80707CB0  38 7F 08 54 */	addi r3, r31, 0x854
/* 80707CB4  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 80707CB8  4B B6 7A 51 */	bl SetR__8cM3dGSphFf
/* 80707CBC  48 00 00 10 */	b lbl_80707CCC
lbl_80707CC0:
/* 80707CC0  38 7F 08 54 */	addi r3, r31, 0x854
/* 80707CC4  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 80707CC8  4B B6 7A 41 */	bl SetR__8cM3dGSphFf
lbl_80707CCC:
/* 80707CCC  C0 01 00 C4 */	lfs f0, 0xc4(r1)
/* 80707CD0  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 80707CD4  C0 01 00 C8 */	lfs f0, 0xc8(r1)
/* 80707CD8  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 80707CDC  C0 01 00 CC */	lfs f0, 0xcc(r1)
/* 80707CE0  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 80707CE4  38 7F 07 30 */	addi r3, r31, 0x730
/* 80707CE8  4B 97 C7 79 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80707CEC  28 03 00 00 */	cmplwi r3, 0
/* 80707CF0  41 82 00 94 */	beq lbl_80707D84
/* 80707CF4  38 00 00 0A */	li r0, 0xa
/* 80707CF8  B0 1F 06 A2 */	sth r0, 0x6a2(r31)
/* 80707CFC  38 7F 07 30 */	addi r3, r31, 0x730
/* 80707D00  4B 97 C7 F9 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 80707D04  90 7F 08 68 */	stw r3, 0x868(r31)
/* 80707D08  7F E3 FB 78 */	mr r3, r31
/* 80707D0C  38 9F 08 68 */	addi r4, r31, 0x868
/* 80707D10  4B 97 FE F5 */	bl cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 80707D14  80 7F 08 68 */	lwz r3, 0x868(r31)
/* 80707D18  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80707D1C  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 80707D20  41 82 00 64 */	beq lbl_80707D84
/* 80707D24  38 00 00 00 */	li r0, 0
/* 80707D28  90 01 00 08 */	stw r0, 8(r1)
/* 80707D2C  38 60 02 21 */	li r3, 0x221
/* 80707D30  38 80 00 0C */	li r4, 0xc
/* 80707D34  38 BF 05 38 */	addi r5, r31, 0x538
/* 80707D38  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80707D3C  7C 06 07 74 */	extsb r6, r0
/* 80707D40  38 FF 04 DC */	addi r7, r31, 0x4dc
/* 80707D44  39 00 00 00 */	li r8, 0
/* 80707D48  39 20 FF FF */	li r9, -1
/* 80707D4C  39 40 00 00 */	li r10, 0
/* 80707D50  4B 91 20 B5 */	bl fopAcM_fastCreate__FsUlPC4cXyziPC5csXyzPC4cXyzScPFPv_iPv
/* 80707D54  38 00 00 00 */	li r0, 0
/* 80707D58  98 1F 06 8C */	stb r0, 0x68c(r31)
/* 80707D5C  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005002D@ha */
/* 80707D60  38 03 00 2D */	addi r0, r3, 0x002D /* 0x0005002D@l */
/* 80707D64  90 01 00 18 */	stw r0, 0x18(r1)
/* 80707D68  38 7F 05 E8 */	addi r3, r31, 0x5e8
/* 80707D6C  38 81 00 18 */	addi r4, r1, 0x18
/* 80707D70  38 A0 FF FF */	li r5, -1
/* 80707D74  81 9F 05 E8 */	lwz r12, 0x5e8(r31)
/* 80707D78  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80707D7C  7D 89 03 A6 */	mtctr r12
/* 80707D80  4E 80 04 21 */	bctrl 
lbl_80707D84:
/* 80707D84  7F E3 FB 78 */	mr r3, r31
/* 80707D88  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80707D8C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80707D90  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80707D94  4B 91 29 7D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80707D98  7C 64 1B 78 */	mr r4, r3
/* 80707D9C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80707DA0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80707DA4  80 63 00 00 */	lwz r3, 0(r3)
/* 80707DA8  4B 90 46 35 */	bl mDoMtx_YrotS__FPA4_fs
/* 80707DAC  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80707DB0  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 80707DB4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80707DB8  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 80707DBC  C0 1E 00 8C */	lfs f0, 0x8c(r30)
/* 80707DC0  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 80707DC4  38 61 00 D0 */	addi r3, r1, 0xd0
/* 80707DC8  38 9F 05 50 */	addi r4, r31, 0x550
/* 80707DCC  4B B6 91 21 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80707DD0  38 7F 05 50 */	addi r3, r31, 0x550
/* 80707DD4  38 9F 05 38 */	addi r4, r31, 0x538
/* 80707DD8  7C 65 1B 78 */	mr r5, r3
/* 80707DDC  4B C3 F2 B5 */	bl PSVECAdd
/* 80707DE0  38 00 00 04 */	li r0, 4
/* 80707DE4  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80707DE8  48 00 00 F4 */	b lbl_80707EDC
lbl_80707DEC:
/* 80707DEC  80 7F 06 94 */	lwz r3, 0x694(r31)
/* 80707DF0  38 80 00 00 */	li r4, 0
/* 80707DF4  38 A0 00 00 */	li r5, 0
/* 80707DF8  38 C0 00 00 */	li r6, 0
/* 80707DFC  4B 90 87 CD */	bl play__14mDoExt_McaMorfFP3VecUlSc
/* 80707E00  80 7F 05 C8 */	lwz r3, 0x5c8(r31)
/* 80707E04  80 63 00 04 */	lwz r3, 4(r3)
/* 80707E08  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80707E0C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80707E10  38 63 03 F0 */	addi r3, r3, 0x3f0
/* 80707E14  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80707E18  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80707E1C  4B C3 E6 95 */	bl PSMTXCopy
/* 80707E20  80 7F 06 94 */	lwz r3, 0x694(r31)
/* 80707E24  80 83 00 04 */	lwz r4, 4(r3)
/* 80707E28  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80707E2C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80707E30  38 84 00 24 */	addi r4, r4, 0x24
/* 80707E34  4B C3 E6 7D */	bl PSMTXCopy
/* 80707E38  80 7F 06 94 */	lwz r3, 0x694(r31)
/* 80707E3C  4B 90 88 71 */	bl modelCalc__14mDoExt_McaMorfFv
/* 80707E40  C0 1E 00 90 */	lfs f0, 0x90(r30)
/* 80707E44  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 80707E48  C0 1E 00 94 */	lfs f0, 0x94(r30)
/* 80707E4C  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 80707E50  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 80707E54  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 80707E58  38 7F 08 54 */	addi r3, r31, 0x854
/* 80707E5C  38 81 00 C4 */	addi r4, r1, 0xc4
/* 80707E60  4B B6 77 E9 */	bl SetC__8cM3dGSphFRC4cXyz
/* 80707E64  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80707E68  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 80707E6C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80707E70  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 80707E74  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80707E78  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 80707E7C  C0 3F 05 3C */	lfs f1, 0x53c(r31)
/* 80707E80  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 80707E84  EC 01 00 2A */	fadds f0, f1, f0
/* 80707E88  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 80707E8C  48 00 00 50 */	b lbl_80707EDC
lbl_80707E90:
/* 80707E90  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80707E94  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 80707E98  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80707E9C  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 80707EA0  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80707EA4  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 80707EA8  C0 3F 05 3C */	lfs f1, 0x53c(r31)
/* 80707EAC  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 80707EB0  EC 01 00 2A */	fadds f0, f1, f0
/* 80707EB4  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 80707EB8  C0 1E 00 90 */	lfs f0, 0x90(r30)
/* 80707EBC  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 80707EC0  C0 1E 00 94 */	lfs f0, 0x94(r30)
/* 80707EC4  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 80707EC8  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 80707ECC  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 80707ED0  38 7F 08 54 */	addi r3, r31, 0x854
/* 80707ED4  38 81 00 C4 */	addi r4, r1, 0xc4
/* 80707ED8  4B B6 77 71 */	bl SetC__8cM3dGSphFRC4cXyz
lbl_80707EDC:
/* 80707EDC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80707EE0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80707EE4  38 63 23 3C */	addi r3, r3, 0x233c
/* 80707EE8  38 9F 07 30 */	addi r4, r31, 0x730
/* 80707EEC  4B B5 CC BD */	bl Set__4cCcSFP8cCcD_Obj
/* 80707EF0  C0 1D 00 A4 */	lfs f0, 0xa4(r29)
/* 80707EF4  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 80707EF8  38 7D 00 A4 */	addi r3, r29, 0xa4
/* 80707EFC  C0 03 00 04 */	lfs f0, 4(r3)
/* 80707F00  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 80707F04  C0 03 00 08 */	lfs f0, 8(r3)
/* 80707F08  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 80707F0C  C0 1D 00 EC */	lfs f0, 0xec(r29)
/* 80707F10  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 80707F14  38 7D 00 EC */	addi r3, r29, 0xec
/* 80707F18  C0 03 00 04 */	lfs f0, 4(r3)
/* 80707F1C  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 80707F20  C0 03 00 08 */	lfs f0, 8(r3)
/* 80707F24  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 80707F28  38 61 00 70 */	addi r3, r1, 0x70
/* 80707F2C  38 81 00 A0 */	addi r4, r1, 0xa0
/* 80707F30  38 A1 00 AC */	addi r5, r1, 0xac
/* 80707F34  4B B5 EC 01 */	bl __mi__4cXyzCFRC3Vec
/* 80707F38  38 61 00 64 */	addi r3, r1, 0x64
/* 80707F3C  38 81 00 70 */	addi r4, r1, 0x70
/* 80707F40  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 80707F44  4B B5 EC 41 */	bl __ml__4cXyzCFf
/* 80707F48  38 61 00 58 */	addi r3, r1, 0x58
/* 80707F4C  38 81 00 AC */	addi r4, r1, 0xac
/* 80707F50  38 A1 00 64 */	addi r5, r1, 0x64
/* 80707F54  4B B5 EB 91 */	bl __pl__4cXyzCFRC3Vec
/* 80707F58  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80707F5C  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 80707F60  C0 21 00 5C */	lfs f1, 0x5c(r1)
/* 80707F64  D0 21 00 BC */	stfs f1, 0xbc(r1)
/* 80707F68  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 80707F6C  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 80707F70  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 80707F74  EC 01 00 2A */	fadds f0, f1, f0
/* 80707F78  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 80707F7C  80 7F 06 EC */	lwz r3, 0x6ec(r31)
/* 80707F80  83 63 00 00 */	lwz r27, 0(r3)
/* 80707F84  A8 1F 06 9A */	lha r0, 0x69a(r31)
/* 80707F88  2C 00 00 02 */	cmpwi r0, 2
/* 80707F8C  40 82 00 4C */	bne lbl_80707FD8
/* 80707F90  A8 1F 05 B4 */	lha r0, 0x5b4(r31)
/* 80707F94  2C 00 00 02 */	cmpwi r0, 2
/* 80707F98  41 80 00 40 */	blt lbl_80707FD8
/* 80707F9C  38 61 00 4C */	addi r3, r1, 0x4c
/* 80707FA0  38 81 00 B8 */	addi r4, r1, 0xb8
/* 80707FA4  38 BF 05 DC */	addi r5, r31, 0x5dc
/* 80707FA8  4B B5 EB 8D */	bl __mi__4cXyzCFRC3Vec
/* 80707FAC  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80707FB0  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 80707FB4  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80707FB8  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 80707FBC  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80707FC0  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 80707FC4  38 7F 06 F0 */	addi r3, r31, 0x6f0
/* 80707FC8  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80707FCC  C0 5E 00 24 */	lfs f2, 0x24(r30)
/* 80707FD0  4B B6 7A B1 */	bl cLib_addCalc0__FPfff
/* 80707FD4  48 00 00 78 */	b lbl_8070804C
lbl_80707FD8:
/* 80707FD8  88 1F 06 B0 */	lbz r0, 0x6b0(r31)
/* 80707FDC  7C 00 07 75 */	extsb. r0, r0
/* 80707FE0  40 82 00 30 */	bne lbl_80708010
/* 80707FE4  38 61 00 40 */	addi r3, r1, 0x40
/* 80707FE8  38 81 00 B8 */	addi r4, r1, 0xb8
/* 80707FEC  38 A1 00 AC */	addi r5, r1, 0xac
/* 80707FF0  4B B5 EB 45 */	bl __mi__4cXyzCFRC3Vec
/* 80707FF4  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80707FF8  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 80707FFC  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80708000  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 80708004  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80708008  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 8070800C  48 00 00 2C */	b lbl_80708038
lbl_80708010:
/* 80708010  38 61 00 34 */	addi r3, r1, 0x34
/* 80708014  38 81 00 B8 */	addi r4, r1, 0xb8
/* 80708018  38 A1 00 A0 */	addi r5, r1, 0xa0
/* 8070801C  4B B5 EB 19 */	bl __mi__4cXyzCFRC3Vec
/* 80708020  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80708024  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 80708028  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8070802C  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 80708030  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80708034  D0 01 00 9C */	stfs f0, 0x9c(r1)
lbl_80708038:
/* 80708038  38 7F 06 F0 */	addi r3, r31, 0x6f0
/* 8070803C  C0 3E 00 A4 */	lfs f1, 0xa4(r30)
/* 80708040  C0 5E 00 54 */	lfs f2, 0x54(r30)
/* 80708044  C0 7E 00 48 */	lfs f3, 0x48(r30)
/* 80708048  4B B6 79 F5 */	bl cLib_addCalc2__FPffff
lbl_8070804C:
/* 8070804C  38 61 00 94 */	addi r3, r1, 0x94
/* 80708050  7C 64 1B 78 */	mr r4, r3
/* 80708054  C0 3E 00 A8 */	lfs f1, 0xa8(r30)
/* 80708058  4B C3 F0 81 */	bl PSVECScale
/* 8070805C  3B 40 00 00 */	li r26, 0
/* 80708060  CB BE 00 60 */	lfd f29, 0x60(r30)
/* 80708064  3F 80 43 30 */	lis r28, 0x4330
/* 80708068  C3 DE 00 74 */	lfs f30, 0x74(r30)
/* 8070806C  C3 FE 00 2C */	lfs f31, 0x2c(r30)
/* 80708070  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80708074  3B A3 9A 20 */	addi r29, r3, sincosTable___5JMath@l /* 0x80439A20@l */
lbl_80708078:
/* 80708078  38 61 00 28 */	addi r3, r1, 0x28
/* 8070807C  38 81 00 94 */	addi r4, r1, 0x94
/* 80708080  6F 40 80 00 */	xoris r0, r26, 0x8000
/* 80708084  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 80708088  93 81 00 E0 */	stw r28, 0xe0(r1)
/* 8070808C  C8 01 00 E0 */	lfd f0, 0xe0(r1)
/* 80708090  EC 20 E8 28 */	fsubs f1, f0, f29
/* 80708094  4B B5 EA F1 */	bl __ml__4cXyzCFf
/* 80708098  38 61 00 1C */	addi r3, r1, 0x1c
/* 8070809C  38 81 00 B8 */	addi r4, r1, 0xb8
/* 807080A0  38 A1 00 28 */	addi r5, r1, 0x28
/* 807080A4  4B B5 EA 91 */	bl __mi__4cXyzCFRC3Vec
/* 807080A8  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 807080AC  D0 1B 00 00 */	stfs f0, 0(r27)
/* 807080B0  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 807080B4  D0 1B 00 04 */	stfs f0, 4(r27)
/* 807080B8  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 807080BC  D0 1B 00 08 */	stfs f0, 8(r27)
/* 807080C0  C0 5B 00 04 */	lfs f2, 4(r27)
/* 807080C4  C0 3F 06 F0 */	lfs f1, 0x6f0(r31)
/* 807080C8  6F 40 80 00 */	xoris r0, r26, 0x8000
/* 807080CC  90 01 00 EC */	stw r0, 0xec(r1)
/* 807080D0  93 81 00 E8 */	stw r28, 0xe8(r1)
/* 807080D4  C8 01 00 E8 */	lfd f0, 0xe8(r1)
/* 807080D8  EC 00 E8 28 */	fsubs f0, f0, f29
/* 807080DC  EC 00 F8 24 */	fdivs f0, f0, f31
/* 807080E0  EC 1E 00 32 */	fmuls f0, f30, f0
/* 807080E4  FC 00 00 1E */	fctiwz f0, f0
/* 807080E8  D8 01 00 F0 */	stfd f0, 0xf0(r1)
/* 807080EC  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 807080F0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 807080F4  7C 1D 04 2E */	lfsx f0, r29, r0
/* 807080F8  EC 01 00 32 */	fmuls f0, f1, f0
/* 807080FC  EC 02 00 2A */	fadds f0, f2, f0
/* 80708100  D0 1B 00 04 */	stfs f0, 4(r27)
/* 80708104  3B 5A 00 01 */	addi r26, r26, 1
/* 80708108  2C 1A 00 10 */	cmpwi r26, 0x10
/* 8070810C  3B 7B 00 0C */	addi r27, r27, 0xc
/* 80708110  41 80 FF 68 */	blt lbl_80708078
/* 80708114  38 60 00 01 */	li r3, 1
lbl_80708118:
/* 80708118  E3 E1 01 38 */	psq_l f31, 312(r1), 0, 0 /* qr0 */
/* 8070811C  CB E1 01 30 */	lfd f31, 0x130(r1)
/* 80708120  E3 C1 01 28 */	psq_l f30, 296(r1), 0, 0 /* qr0 */
/* 80708124  CB C1 01 20 */	lfd f30, 0x120(r1)
/* 80708128  E3 A1 01 18 */	psq_l f29, 280(r1), 0, 0 /* qr0 */
/* 8070812C  CB A1 01 10 */	lfd f29, 0x110(r1)
/* 80708130  39 61 01 10 */	addi r11, r1, 0x110
/* 80708134  4B C5 A0 E9 */	bl _restgpr_26
/* 80708138  80 01 01 44 */	lwz r0, 0x144(r1)
/* 8070813C  7C 08 03 A6 */	mtlr r0
/* 80708140  38 21 01 40 */	addi r1, r1, 0x140
/* 80708144  4E 80 00 20 */	blr 
