lbl_80C51644:
/* 80C51644  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80C51648  7C 08 02 A6 */	mflr r0
/* 80C5164C  90 01 00 64 */	stw r0, 0x64(r1)
/* 80C51650  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80C51654  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80C51658  39 61 00 50 */	addi r11, r1, 0x50
/* 80C5165C  4B 71 0B 71 */	bl _savegpr_25
/* 80C51660  3C 80 80 C5 */	lis r4, M_attr__10daObjLdy_c@ha /* 0x80C52000@ha */
/* 80C51664  3B E4 20 00 */	addi r31, r4, M_attr__10daObjLdy_c@l /* 0x80C52000@l */
/* 80C51668  3B A3 07 20 */	addi r29, r3, 0x720
/* 80C5166C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C51670  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C51674  38 63 05 78 */	addi r3, r3, 0x578
/* 80C51678  4B 6F 4E 39 */	bl PSMTXCopy
/* 80C5167C  3B 80 00 00 */	li r28, 0
/* 80C51680  3B DF 00 00 */	addi r30, r31, 0
/* 80C51684  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C51688  3B 23 D4 70 */	addi r25, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C5168C  7F 3A CB 78 */	mr r26, r25
/* 80C51690  C3 FF 00 50 */	lfs f31, 0x50(r31)
/* 80C51694  7F 3B CB 78 */	mr r27, r25
lbl_80C51698:
/* 80C51698  4B 3B B6 31 */	bl push__14mDoMtx_stack_cFv
/* 80C5169C  7F 23 CB 78 */	mr r3, r25
/* 80C516A0  7F 24 CB 78 */	mr r4, r25
/* 80C516A4  4B 6F 4F 0D */	bl PSMTXInverse
/* 80C516A8  7F 43 D3 78 */	mr r3, r26
/* 80C516AC  7F A4 EB 78 */	mr r4, r29
/* 80C516B0  38 A1 00 18 */	addi r5, r1, 0x18
/* 80C516B4  4B 6F 56 B9 */	bl PSMTXMultVec
/* 80C516B8  4B 3B B6 5D */	bl pop__14mDoMtx_stack_cFv
/* 80C516BC  38 61 00 18 */	addi r3, r1, 0x18
/* 80C516C0  7C 64 1B 78 */	mr r4, r3
/* 80C516C4  C0 3F 00 C0 */	lfs f1, 0xc0(r31)
/* 80C516C8  4B 6F 5A 11 */	bl PSVECScale
/* 80C516CC  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80C516D0  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 80C516D4  4B 61 5F A1 */	bl cM_atan2s__Fff
/* 80C516D8  B0 7D 00 30 */	sth r3, 0x30(r29)
/* 80C516DC  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80C516E0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C516E4  D3 E1 00 10 */	stfs f31, 0x10(r1)
/* 80C516E8  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80C516EC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C516F0  38 61 00 0C */	addi r3, r1, 0xc
/* 80C516F4  4B 6F 5A 45 */	bl PSVECSquareMag
/* 80C516F8  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80C516FC  40 81 00 58 */	ble lbl_80C51754
/* 80C51700  FC 00 08 34 */	frsqrte f0, f1
/* 80C51704  C8 9F 00 98 */	lfd f4, 0x98(r31)
/* 80C51708  FC 44 00 32 */	fmul f2, f4, f0
/* 80C5170C  C8 7F 00 A0 */	lfd f3, 0xa0(r31)
/* 80C51710  FC 00 00 32 */	fmul f0, f0, f0
/* 80C51714  FC 01 00 32 */	fmul f0, f1, f0
/* 80C51718  FC 03 00 28 */	fsub f0, f3, f0
/* 80C5171C  FC 02 00 32 */	fmul f0, f2, f0
/* 80C51720  FC 44 00 32 */	fmul f2, f4, f0
/* 80C51724  FC 00 00 32 */	fmul f0, f0, f0
/* 80C51728  FC 01 00 32 */	fmul f0, f1, f0
/* 80C5172C  FC 03 00 28 */	fsub f0, f3, f0
/* 80C51730  FC 02 00 32 */	fmul f0, f2, f0
/* 80C51734  FC 44 00 32 */	fmul f2, f4, f0
/* 80C51738  FC 00 00 32 */	fmul f0, f0, f0
/* 80C5173C  FC 01 00 32 */	fmul f0, f1, f0
/* 80C51740  FC 03 00 28 */	fsub f0, f3, f0
/* 80C51744  FC 02 00 32 */	fmul f0, f2, f0
/* 80C51748  FC 41 00 32 */	fmul f2, f1, f0
/* 80C5174C  FC 40 10 18 */	frsp f2, f2
/* 80C51750  48 00 00 90 */	b lbl_80C517E0
lbl_80C51754:
/* 80C51754  C8 1F 00 A8 */	lfd f0, 0xa8(r31)
/* 80C51758  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C5175C  40 80 00 10 */	bge lbl_80C5176C
/* 80C51760  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C51764  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C51768  48 00 00 78 */	b lbl_80C517E0
lbl_80C5176C:
/* 80C5176C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80C51770  80 81 00 08 */	lwz r4, 8(r1)
/* 80C51774  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C51778  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C5177C  7C 03 00 00 */	cmpw r3, r0
/* 80C51780  41 82 00 14 */	beq lbl_80C51794
/* 80C51784  40 80 00 40 */	bge lbl_80C517C4
/* 80C51788  2C 03 00 00 */	cmpwi r3, 0
/* 80C5178C  41 82 00 20 */	beq lbl_80C517AC
/* 80C51790  48 00 00 34 */	b lbl_80C517C4
lbl_80C51794:
/* 80C51794  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C51798  41 82 00 0C */	beq lbl_80C517A4
/* 80C5179C  38 00 00 01 */	li r0, 1
/* 80C517A0  48 00 00 28 */	b lbl_80C517C8
lbl_80C517A4:
/* 80C517A4  38 00 00 02 */	li r0, 2
/* 80C517A8  48 00 00 20 */	b lbl_80C517C8
lbl_80C517AC:
/* 80C517AC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C517B0  41 82 00 0C */	beq lbl_80C517BC
/* 80C517B4  38 00 00 05 */	li r0, 5
/* 80C517B8  48 00 00 10 */	b lbl_80C517C8
lbl_80C517BC:
/* 80C517BC  38 00 00 03 */	li r0, 3
/* 80C517C0  48 00 00 08 */	b lbl_80C517C8
lbl_80C517C4:
/* 80C517C4  38 00 00 04 */	li r0, 4
lbl_80C517C8:
/* 80C517C8  2C 00 00 01 */	cmpwi r0, 1
/* 80C517CC  40 82 00 10 */	bne lbl_80C517DC
/* 80C517D0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C517D4  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C517D8  48 00 00 08 */	b lbl_80C517E0
lbl_80C517DC:
/* 80C517DC  FC 40 08 90 */	fmr f2, f1
lbl_80C517E0:
/* 80C517E0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80C517E4  FC 20 00 50 */	fneg f1, f0
/* 80C517E8  4B 61 5E 8D */	bl cM_atan2s__Fff
/* 80C517EC  B0 7D 00 34 */	sth r3, 0x34(r29)
/* 80C517F0  7F 63 DB 78 */	mr r3, r27
/* 80C517F4  A8 9D 00 30 */	lha r4, 0x30(r29)
/* 80C517F8  4B 3B AB A5 */	bl mDoMtx_XrotM__FPA4_fs
/* 80C517FC  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80C51800  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 80C51804  FC 60 08 90 */	fmr f3, f1
/* 80C51808  4B 3B B5 95 */	bl transM__14mDoMtx_stack_cFfff
/* 80C5180C  3B 9C 00 01 */	addi r28, r28, 1
/* 80C51810  2C 1C 00 03 */	cmpwi r28, 3
/* 80C51814  3B BD 00 38 */	addi r29, r29, 0x38
/* 80C51818  41 80 FE 80 */	blt lbl_80C51698
/* 80C5181C  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80C51820  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80C51824  39 61 00 50 */	addi r11, r1, 0x50
/* 80C51828  4B 71 09 F1 */	bl _restgpr_25
/* 80C5182C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80C51830  7C 08 03 A6 */	mtlr r0
/* 80C51834  38 21 00 60 */	addi r1, r1, 0x60
/* 80C51838  4E 80 00 20 */	blr 
