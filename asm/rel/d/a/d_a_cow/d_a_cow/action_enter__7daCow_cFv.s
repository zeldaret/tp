lbl_8065C70C:
/* 8065C70C  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8065C710  7C 08 02 A6 */	mflr r0
/* 8065C714  90 01 00 94 */	stw r0, 0x94(r1)
/* 8065C718  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 8065C71C  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 8065C720  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 8065C724  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 8065C728  39 61 00 70 */	addi r11, r1, 0x70
/* 8065C72C  4B D0 5A B1 */	bl _savegpr_29
/* 8065C730  7C 7D 1B 78 */	mr r29, r3
/* 8065C734  3C 60 80 66 */	lis r3, lit_1109@ha /* 0x80663460@ha */
/* 8065C738  3B C3 34 60 */	addi r30, r3, lit_1109@l /* 0x80663460@l */
/* 8065C73C  3C 60 80 66 */	lis r3, lit_3987@ha /* 0x80662DB0@ha */
/* 8065C740  3B E3 2D B0 */	addi r31, r3, lit_3987@l /* 0x80662DB0@l */
/* 8065C744  38 61 00 3C */	addi r3, r1, 0x3c
/* 8065C748  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8065C74C  38 BE 00 4C */	addi r5, r30, 0x4c
/* 8065C750  4B C0 A3 E5 */	bl __mi__4cXyzCFRC3Vec
/* 8065C754  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 8065C758  D0 41 00 54 */	stfs f2, 0x54(r1)
/* 8065C75C  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8065C760  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8065C764  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 8065C768  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 8065C76C  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 8065C770  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8065C774  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8065C778  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8065C77C  38 61 00 18 */	addi r3, r1, 0x18
/* 8065C780  4B CE A9 B9 */	bl PSVECSquareMag
/* 8065C784  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8065C788  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8065C78C  40 81 00 58 */	ble lbl_8065C7E4
/* 8065C790  FC 00 08 34 */	frsqrte f0, f1
/* 8065C794  C8 9F 00 68 */	lfd f4, 0x68(r31)
/* 8065C798  FC 44 00 32 */	fmul f2, f4, f0
/* 8065C79C  C8 7F 00 70 */	lfd f3, 0x70(r31)
/* 8065C7A0  FC 00 00 32 */	fmul f0, f0, f0
/* 8065C7A4  FC 01 00 32 */	fmul f0, f1, f0
/* 8065C7A8  FC 03 00 28 */	fsub f0, f3, f0
/* 8065C7AC  FC 02 00 32 */	fmul f0, f2, f0
/* 8065C7B0  FC 44 00 32 */	fmul f2, f4, f0
/* 8065C7B4  FC 00 00 32 */	fmul f0, f0, f0
/* 8065C7B8  FC 01 00 32 */	fmul f0, f1, f0
/* 8065C7BC  FC 03 00 28 */	fsub f0, f3, f0
/* 8065C7C0  FC 02 00 32 */	fmul f0, f2, f0
/* 8065C7C4  FC 44 00 32 */	fmul f2, f4, f0
/* 8065C7C8  FC 00 00 32 */	fmul f0, f0, f0
/* 8065C7CC  FC 01 00 32 */	fmul f0, f1, f0
/* 8065C7D0  FC 03 00 28 */	fsub f0, f3, f0
/* 8065C7D4  FC 02 00 32 */	fmul f0, f2, f0
/* 8065C7D8  FF C1 00 32 */	fmul f30, f1, f0
/* 8065C7DC  FF C0 F0 18 */	frsp f30, f30
/* 8065C7E0  48 00 00 90 */	b lbl_8065C870
lbl_8065C7E4:
/* 8065C7E4  C8 1F 00 78 */	lfd f0, 0x78(r31)
/* 8065C7E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8065C7EC  40 80 00 10 */	bge lbl_8065C7FC
/* 8065C7F0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8065C7F4  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8065C7F8  48 00 00 78 */	b lbl_8065C870
lbl_8065C7FC:
/* 8065C7FC  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8065C800  80 81 00 10 */	lwz r4, 0x10(r1)
/* 8065C804  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8065C808  3C 00 7F 80 */	lis r0, 0x7f80
/* 8065C80C  7C 03 00 00 */	cmpw r3, r0
/* 8065C810  41 82 00 14 */	beq lbl_8065C824
/* 8065C814  40 80 00 40 */	bge lbl_8065C854
/* 8065C818  2C 03 00 00 */	cmpwi r3, 0
/* 8065C81C  41 82 00 20 */	beq lbl_8065C83C
/* 8065C820  48 00 00 34 */	b lbl_8065C854
lbl_8065C824:
/* 8065C824  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8065C828  41 82 00 0C */	beq lbl_8065C834
/* 8065C82C  38 00 00 01 */	li r0, 1
/* 8065C830  48 00 00 28 */	b lbl_8065C858
lbl_8065C834:
/* 8065C834  38 00 00 02 */	li r0, 2
/* 8065C838  48 00 00 20 */	b lbl_8065C858
lbl_8065C83C:
/* 8065C83C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8065C840  41 82 00 0C */	beq lbl_8065C84C
/* 8065C844  38 00 00 05 */	li r0, 5
/* 8065C848  48 00 00 10 */	b lbl_8065C858
lbl_8065C84C:
/* 8065C84C  38 00 00 03 */	li r0, 3
/* 8065C850  48 00 00 08 */	b lbl_8065C858
lbl_8065C854:
/* 8065C854  38 00 00 04 */	li r0, 4
lbl_8065C858:
/* 8065C858  2C 00 00 01 */	cmpwi r0, 1
/* 8065C85C  40 82 00 10 */	bne lbl_8065C86C
/* 8065C860  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8065C864  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8065C868  48 00 00 08 */	b lbl_8065C870
lbl_8065C86C:
/* 8065C86C  FF C0 08 90 */	fmr f30, f1
lbl_8065C870:
/* 8065C870  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 8065C874  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8065C878  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8065C87C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8065C880  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 8065C884  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8065C888  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8065C88C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8065C890  3C 80 80 66 */	lis r4, struct_80662FB8+0x0@ha /* 0x80662FB8@ha */
/* 8065C894  A8 04 2F B8 */	lha r0, struct_80662FB8+0x0@l(r4)  /* 0x80662FB8@l */
/* 8065C898  7C 00 00 D0 */	neg r0, r0
/* 8065C89C  7C 04 07 34 */	extsh r4, r0
/* 8065C8A0  4B 9A FB 3D */	bl mDoMtx_YrotS__FPA4_fs
/* 8065C8A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8065C8A8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8065C8AC  38 81 00 48 */	addi r4, r1, 0x48
/* 8065C8B0  7C 85 23 78 */	mr r5, r4
/* 8065C8B4  4B CE A5 99 */	bl PSMTXMultVecSR
/* 8065C8B8  A0 1D 0C 5C */	lhz r0, 0xc5c(r29)
/* 8065C8BC  2C 00 00 02 */	cmpwi r0, 2
/* 8065C8C0  41 82 06 B0 */	beq lbl_8065CF70
/* 8065C8C4  40 80 06 AC */	bge lbl_8065CF70
/* 8065C8C8  2C 00 00 00 */	cmpwi r0, 0
/* 8065C8CC  41 82 00 10 */	beq lbl_8065C8DC
/* 8065C8D0  40 80 00 58 */	bge lbl_8065C928
/* 8065C8D4  48 00 06 9C */	b lbl_8065CF70
/* 8065C8D8  48 00 06 98 */	b lbl_8065CF70
lbl_8065C8DC:
/* 8065C8DC  7F A3 EB 78 */	mr r3, r29
/* 8065C8E0  38 80 00 01 */	li r4, 1
/* 8065C8E4  4B FF BC E9 */	bl calcRunAnime__7daCow_cFi
/* 8065C8E8  38 00 00 01 */	li r0, 1
/* 8065C8EC  B0 1D 0C 5C */	sth r0, 0xc5c(r29)
/* 8065C8F0  3B C0 00 00 */	li r30, 0
/* 8065C8F4  9B DD 0C 9F */	stb r30, 0xc9f(r29)
/* 8065C8F8  3B E0 00 00 */	li r31, 0
lbl_8065C8FC:
/* 8065C8FC  38 7E 08 8C */	addi r3, r30, 0x88c
/* 8065C900  7C 1D 18 2E */	lwzx r0, r29, r3
/* 8065C904  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8065C908  7C 1D 19 2E */	stwx r0, r29, r3
/* 8065C90C  38 7D 07 E4 */	addi r3, r29, 0x7e4
/* 8065C910  4B C0 70 4D */	bl ClrCcMove__9cCcD_SttsFv
/* 8065C914  3B FF 00 01 */	addi r31, r31, 1
/* 8065C918  2C 1F 00 03 */	cmpwi r31, 3
/* 8065C91C  3B DE 01 38 */	addi r30, r30, 0x138
/* 8065C920  41 80 FF DC */	blt lbl_8065C8FC
/* 8065C924  48 00 06 4C */	b lbl_8065CF70
lbl_8065C928:
/* 8065C928  C3 FF 00 CC */	lfs f31, 0xcc(r31)
/* 8065C92C  88 1D 0C 9F */	lbz r0, 0xc9f(r29)
/* 8065C930  2C 00 00 02 */	cmpwi r0, 2
/* 8065C934  41 82 02 54 */	beq lbl_8065CB88
/* 8065C938  40 80 00 14 */	bge lbl_8065C94C
/* 8065C93C  2C 00 00 00 */	cmpwi r0, 0
/* 8065C940  41 82 00 1C */	beq lbl_8065C95C
/* 8065C944  40 80 00 B4 */	bge lbl_8065C9F8
/* 8065C948  48 00 05 A8 */	b lbl_8065CEF0
lbl_8065C94C:
/* 8065C94C  2C 00 00 04 */	cmpwi r0, 4
/* 8065C950  41 82 05 50 */	beq lbl_8065CEA0
/* 8065C954  40 80 05 9C */	bge lbl_8065CEF0
/* 8065C958  48 00 03 B4 */	b lbl_8065CD0C
lbl_8065C95C:
/* 8065C95C  7F A3 EB 78 */	mr r3, r29
/* 8065C960  38 80 00 00 */	li r4, 0
/* 8065C964  4B FF BC 69 */	bl calcRunAnime__7daCow_cFi
/* 8065C968  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 8065C96C  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 8065C970  40 80 00 10 */	bge lbl_8065C980
/* 8065C974  7F A3 EB 78 */	mr r3, r29
/* 8065C978  4B FF FD 09 */	bl setEnterCount__7daCow_cFv
/* 8065C97C  48 00 05 74 */	b lbl_8065CEF0
lbl_8065C980:
/* 8065C980  7F A3 EB 78 */	mr r3, r29
/* 8065C984  4B FF EF 25 */	bl getCowshedAngle__7daCow_cFv
/* 8065C988  B0 7D 0C 72 */	sth r3, 0xc72(r29)
/* 8065C98C  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 8065C990  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 8065C994  40 80 00 30 */	bge lbl_8065C9C4
/* 8065C998  38 7D 04 DE */	addi r3, r29, 0x4de
/* 8065C99C  A8 9D 0C 72 */	lha r4, 0xc72(r29)
/* 8065C9A0  38 A0 00 04 */	li r5, 4
/* 8065C9A4  38 C0 10 00 */	li r6, 0x1000
/* 8065C9A8  4B C1 3C 61 */	bl cLib_addCalcAngleS2__FPssss
/* 8065C9AC  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 8065C9B0  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 8065C9B4  38 A0 00 04 */	li r5, 4
/* 8065C9B8  38 C0 10 00 */	li r6, 0x1000
/* 8065C9BC  4B C1 3C 4D */	bl cLib_addCalcAngleS2__FPssss
/* 8065C9C0  48 00 00 2C */	b lbl_8065C9EC
lbl_8065C9C4:
/* 8065C9C4  38 7D 04 DE */	addi r3, r29, 0x4de
/* 8065C9C8  A8 9D 0C 72 */	lha r4, 0xc72(r29)
/* 8065C9CC  38 A0 00 08 */	li r5, 8
/* 8065C9D0  38 C0 08 00 */	li r6, 0x800
/* 8065C9D4  4B C1 3C 35 */	bl cLib_addCalcAngleS2__FPssss
/* 8065C9D8  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 8065C9DC  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 8065C9E0  38 A0 00 08 */	li r5, 8
/* 8065C9E4  38 C0 08 00 */	li r6, 0x800
/* 8065C9E8  4B C1 3C 21 */	bl cLib_addCalcAngleS2__FPssss
lbl_8065C9EC:
/* 8065C9EC  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 8065C9F0  B0 1D 0C 34 */	sth r0, 0xc34(r29)
/* 8065C9F4  48 00 04 FC */	b lbl_8065CEF0
lbl_8065C9F8:
/* 8065C9F8  7F A3 EB 78 */	mr r3, r29
/* 8065C9FC  38 80 00 00 */	li r4, 0
/* 8065CA00  4B FF BB CD */	bl calcRunAnime__7daCow_cFi
/* 8065CA04  3C 60 80 66 */	lis r3, struct_80662FB8+0x0@ha /* 0x80662FB8@ha */
/* 8065CA08  A8 03 2F B8 */	lha r0, struct_80662FB8+0x0@l(r3)  /* 0x80662FB8@l */
/* 8065CA0C  B0 1D 0C 72 */	sth r0, 0xc72(r29)
/* 8065CA10  38 7D 04 DE */	addi r3, r29, 0x4de
/* 8065CA14  A8 9D 0C 72 */	lha r4, 0xc72(r29)
/* 8065CA18  38 A0 00 04 */	li r5, 4
/* 8065CA1C  38 C0 08 00 */	li r6, 0x800
/* 8065CA20  4B C1 3B E9 */	bl cLib_addCalcAngleS2__FPssss
/* 8065CA24  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 8065CA28  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 8065CA2C  38 A0 00 08 */	li r5, 8
/* 8065CA30  38 C0 08 00 */	li r6, 0x800
/* 8065CA34  4B C1 3B D5 */	bl cLib_addCalcAngleS2__FPssss
/* 8065CA38  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 8065CA3C  B0 1D 0C 34 */	sth r0, 0xc34(r29)
/* 8065CA40  C0 21 00 50 */	lfs f1, 0x50(r1)
/* 8065CA44  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 8065CA48  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8065CA4C  40 81 04 A4 */	ble lbl_8065CEF0
/* 8065CA50  38 60 00 00 */	li r3, 0
/* 8065CA54  38 00 00 03 */	li r0, 3
/* 8065CA58  7C 09 03 A6 */	mtctr r0
lbl_8065CA5C:
/* 8065CA5C  38 83 08 8C */	addi r4, r3, 0x88c
/* 8065CA60  7C 1D 20 2E */	lwzx r0, r29, r4
/* 8065CA64  60 00 00 01 */	ori r0, r0, 1
/* 8065CA68  7C 1D 21 2E */	stwx r0, r29, r4
/* 8065CA6C  38 63 01 38 */	addi r3, r3, 0x138
/* 8065CA70  42 00 FF EC */	bdnz lbl_8065CA5C
/* 8065CA74  38 00 00 19 */	li r0, 0x19
/* 8065CA78  90 1D 08 8C */	stw r0, 0x88c(r29)
/* 8065CA7C  38 7D 0C 90 */	addi r3, r29, 0xc90
/* 8065CA80  48 00 62 31 */	bl func_80662CB0
/* 8065CA84  2C 03 00 00 */	cmpwi r3, 0
/* 8065CA88  40 82 04 68 */	bne lbl_8065CEF0
/* 8065CA8C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8065CA90  4B C0 AE FD */	bl cM_rndFX__Ff
/* 8065CA94  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 8065CA98  EC 20 00 72 */	fmuls f1, f0, f1
/* 8065CA9C  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 8065CAA0  EF C0 08 2A */	fadds f30, f0, f1
/* 8065CAA4  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 8065CAA8  4B C0 AE E5 */	bl cM_rndFX__Ff
/* 8065CAAC  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 8065CAB0  EC 00 00 72 */	fmuls f0, f0, f1
/* 8065CAB4  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8065CAB8  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8065CABC  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8065CAC0  D3 C1 00 50 */	stfs f30, 0x50(r1)
/* 8065CAC4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8065CAC8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8065CACC  3C 80 80 66 */	lis r4, struct_80662FB8+0x0@ha /* 0x80662FB8@ha */
/* 8065CAD0  38 84 2F B8 */	addi r4, r4, struct_80662FB8+0x0@l /* 0x80662FB8@l */
/* 8065CAD4  A8 84 00 00 */	lha r4, 0(r4)
/* 8065CAD8  4B 9A F9 05 */	bl mDoMtx_YrotS__FPA4_fs
/* 8065CADC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8065CAE0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8065CAE4  38 81 00 48 */	addi r4, r1, 0x48
/* 8065CAE8  7C 85 23 78 */	mr r5, r4
/* 8065CAEC  4B CE A3 61 */	bl PSMTXMultVecSR
/* 8065CAF0  38 61 00 30 */	addi r3, r1, 0x30
/* 8065CAF4  38 9E 00 4C */	addi r4, r30, 0x4c
/* 8065CAF8  38 A1 00 48 */	addi r5, r1, 0x48
/* 8065CAFC  4B C0 9F E9 */	bl __pl__4cXyzCFRC3Vec
/* 8065CB00  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8065CB04  D0 1D 0C 20 */	stfs f0, 0xc20(r29)
/* 8065CB08  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8065CB0C  D0 1D 0C 24 */	stfs f0, 0xc24(r29)
/* 8065CB10  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8065CB14  D0 1D 0C 28 */	stfs f0, 0xc28(r29)
/* 8065CB18  7F A3 EB 78 */	mr r3, r29
/* 8065CB1C  38 80 00 1B */	li r4, 0x1b
/* 8065CB20  38 A0 00 02 */	li r5, 2
/* 8065CB24  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8065CB28  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8065CB2C  4B FF BC 05 */	bl setBck__7daCow_cFiUcff
/* 8065CB30  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8065CB34  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8065CB38  38 00 00 02 */	li r0, 2
/* 8065CB3C  98 1D 0C 9F */	stb r0, 0xc9f(r29)
/* 8065CB40  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 8065CB44  38 83 01 88 */	addi r4, r3, g_meter2_info@l /* 0x80430188@l */
/* 8065CB48  88 64 00 BC */	lbz r3, 0xbc(r4)
/* 8065CB4C  88 04 00 BB */	lbz r0, 0xbb(r4)
/* 8065CB50  7C 03 00 40 */	cmplw r3, r0
/* 8065CB54  40 82 03 9C */	bne lbl_8065CEF0
/* 8065CB58  88 1D 0C A9 */	lbz r0, 0xca9(r29)
/* 8065CB5C  28 00 00 00 */	cmplwi r0, 0
/* 8065CB60  41 82 03 90 */	beq lbl_8065CEF0
/* 8065CB64  38 60 02 43 */	li r3, 0x243
/* 8065CB68  38 81 00 14 */	addi r4, r1, 0x14
/* 8065CB6C  4B 9B CE C1 */	bl fopAcM_SearchByName__FsPP10fopAc_ac_c
/* 8065CB70  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8065CB74  28 03 00 00 */	cmplwi r3, 0
/* 8065CB78  41 82 03 78 */	beq lbl_8065CEF0
/* 8065CB7C  38 00 00 01 */	li r0, 1
/* 8065CB80  98 03 0F CE */	stb r0, 0xfce(r3)
/* 8065CB84  48 00 03 6C */	b lbl_8065CEF0
lbl_8065CB88:
/* 8065CB88  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8065CB8C  38 9D 0C 20 */	addi r4, r29, 0xc20
/* 8065CB90  4B C1 40 75 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8065CB94  7C 64 1B 78 */	mr r4, r3
/* 8065CB98  38 7D 04 DE */	addi r3, r29, 0x4de
/* 8065CB9C  38 A0 00 04 */	li r5, 4
/* 8065CBA0  38 C0 01 00 */	li r6, 0x100
/* 8065CBA4  4B C1 3A 65 */	bl cLib_addCalcAngleS2__FPssss
/* 8065CBA8  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 8065CBAC  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 8065CBB0  38 A0 00 08 */	li r5, 8
/* 8065CBB4  38 C0 08 00 */	li r6, 0x800
/* 8065CBB8  4B C1 3A 51 */	bl cLib_addCalcAngleS2__FPssss
/* 8065CBBC  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 8065CBC0  B0 1D 0C 34 */	sth r0, 0xc34(r29)
/* 8065CBC4  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8065CBC8  38 9D 0C 20 */	addi r4, r29, 0xc20
/* 8065CBCC  4B CE A7 D1 */	bl PSVECSquareDistance
/* 8065CBD0  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8065CBD4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8065CBD8  40 81 00 58 */	ble lbl_8065CC30
/* 8065CBDC  FC 00 08 34 */	frsqrte f0, f1
/* 8065CBE0  C8 9F 00 68 */	lfd f4, 0x68(r31)
/* 8065CBE4  FC 44 00 32 */	fmul f2, f4, f0
/* 8065CBE8  C8 7F 00 70 */	lfd f3, 0x70(r31)
/* 8065CBEC  FC 00 00 32 */	fmul f0, f0, f0
/* 8065CBF0  FC 01 00 32 */	fmul f0, f1, f0
/* 8065CBF4  FC 03 00 28 */	fsub f0, f3, f0
/* 8065CBF8  FC 02 00 32 */	fmul f0, f2, f0
/* 8065CBFC  FC 44 00 32 */	fmul f2, f4, f0
/* 8065CC00  FC 00 00 32 */	fmul f0, f0, f0
/* 8065CC04  FC 01 00 32 */	fmul f0, f1, f0
/* 8065CC08  FC 03 00 28 */	fsub f0, f3, f0
/* 8065CC0C  FC 02 00 32 */	fmul f0, f2, f0
/* 8065CC10  FC 44 00 32 */	fmul f2, f4, f0
/* 8065CC14  FC 00 00 32 */	fmul f0, f0, f0
/* 8065CC18  FC 01 00 32 */	fmul f0, f1, f0
/* 8065CC1C  FC 03 00 28 */	fsub f0, f3, f0
/* 8065CC20  FC 02 00 32 */	fmul f0, f2, f0
/* 8065CC24  FC 21 00 32 */	fmul f1, f1, f0
/* 8065CC28  FC 20 08 18 */	frsp f1, f1
/* 8065CC2C  48 00 00 88 */	b lbl_8065CCB4
lbl_8065CC30:
/* 8065CC30  C8 1F 00 78 */	lfd f0, 0x78(r31)
/* 8065CC34  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8065CC38  40 80 00 10 */	bge lbl_8065CC48
/* 8065CC3C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8065CC40  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8065CC44  48 00 00 70 */	b lbl_8065CCB4
lbl_8065CC48:
/* 8065CC48  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8065CC4C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8065CC50  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8065CC54  3C 00 7F 80 */	lis r0, 0x7f80
/* 8065CC58  7C 03 00 00 */	cmpw r3, r0
/* 8065CC5C  41 82 00 14 */	beq lbl_8065CC70
/* 8065CC60  40 80 00 40 */	bge lbl_8065CCA0
/* 8065CC64  2C 03 00 00 */	cmpwi r3, 0
/* 8065CC68  41 82 00 20 */	beq lbl_8065CC88
/* 8065CC6C  48 00 00 34 */	b lbl_8065CCA0
lbl_8065CC70:
/* 8065CC70  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8065CC74  41 82 00 0C */	beq lbl_8065CC80
/* 8065CC78  38 00 00 01 */	li r0, 1
/* 8065CC7C  48 00 00 28 */	b lbl_8065CCA4
lbl_8065CC80:
/* 8065CC80  38 00 00 02 */	li r0, 2
/* 8065CC84  48 00 00 20 */	b lbl_8065CCA4
lbl_8065CC88:
/* 8065CC88  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8065CC8C  41 82 00 0C */	beq lbl_8065CC98
/* 8065CC90  38 00 00 05 */	li r0, 5
/* 8065CC94  48 00 00 10 */	b lbl_8065CCA4
lbl_8065CC98:
/* 8065CC98  38 00 00 03 */	li r0, 3
/* 8065CC9C  48 00 00 08 */	b lbl_8065CCA4
lbl_8065CCA0:
/* 8065CCA0  38 00 00 04 */	li r0, 4
lbl_8065CCA4:
/* 8065CCA4  2C 00 00 01 */	cmpwi r0, 1
/* 8065CCA8  40 82 00 0C */	bne lbl_8065CCB4
/* 8065CCAC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8065CCB0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8065CCB4:
/* 8065CCB4  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 8065CCB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8065CCBC  40 80 00 2C */	bge lbl_8065CCE8
/* 8065CCC0  7F A3 EB 78 */	mr r3, r29
/* 8065CCC4  38 80 00 0F */	li r4, 0xf
/* 8065CCC8  38 A0 00 00 */	li r5, 0
/* 8065CCCC  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8065CCD0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8065CCD4  4B FF BA 5D */	bl setBck__7daCow_cFiUcff
/* 8065CCD8  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8065CCDC  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8065CCE0  38 00 00 03 */	li r0, 3
/* 8065CCE4  98 1D 0C 9F */	stb r0, 0xc9f(r29)
lbl_8065CCE8:
/* 8065CCE8  7F A3 EB 78 */	mr r3, r29
/* 8065CCEC  4B FF F6 41 */	bl checkCurringPen__7daCow_cFv
/* 8065CCF0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8065CCF4  41 82 01 FC */	beq lbl_8065CEF0
/* 8065CCF8  38 00 00 04 */	li r0, 4
/* 8065CCFC  98 1D 0C 9F */	stb r0, 0xc9f(r29)
/* 8065CD00  7F A3 EB 78 */	mr r3, r29
/* 8065CD04  4B FF F8 05 */	bl setCowInCage__7daCow_cFv
/* 8065CD08  48 00 01 E8 */	b lbl_8065CEF0
lbl_8065CD0C:
/* 8065CD0C  80 7D 05 74 */	lwz r3, 0x574(r29)
/* 8065CD10  38 80 00 01 */	li r4, 1
/* 8065CD14  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8065CD18  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8065CD1C  40 82 00 18 */	bne lbl_8065CD34
/* 8065CD20  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 8065CD24  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8065CD28  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8065CD2C  41 82 00 08 */	beq lbl_8065CD34
/* 8065CD30  38 80 00 00 */	li r4, 0
lbl_8065CD34:
/* 8065CD34  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8065CD38  41 82 01 44 */	beq lbl_8065CE7C
/* 8065CD3C  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8065CD40  38 9D 0C 20 */	addi r4, r29, 0xc20
/* 8065CD44  4B CE A6 59 */	bl PSVECSquareDistance
/* 8065CD48  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8065CD4C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8065CD50  40 81 00 58 */	ble lbl_8065CDA8
/* 8065CD54  FC 00 08 34 */	frsqrte f0, f1
/* 8065CD58  C8 9F 00 68 */	lfd f4, 0x68(r31)
/* 8065CD5C  FC 44 00 32 */	fmul f2, f4, f0
/* 8065CD60  C8 7F 00 70 */	lfd f3, 0x70(r31)
/* 8065CD64  FC 00 00 32 */	fmul f0, f0, f0
/* 8065CD68  FC 01 00 32 */	fmul f0, f1, f0
/* 8065CD6C  FC 03 00 28 */	fsub f0, f3, f0
/* 8065CD70  FC 02 00 32 */	fmul f0, f2, f0
/* 8065CD74  FC 44 00 32 */	fmul f2, f4, f0
/* 8065CD78  FC 00 00 32 */	fmul f0, f0, f0
/* 8065CD7C  FC 01 00 32 */	fmul f0, f1, f0
/* 8065CD80  FC 03 00 28 */	fsub f0, f3, f0
/* 8065CD84  FC 02 00 32 */	fmul f0, f2, f0
/* 8065CD88  FC 44 00 32 */	fmul f2, f4, f0
/* 8065CD8C  FC 00 00 32 */	fmul f0, f0, f0
/* 8065CD90  FC 01 00 32 */	fmul f0, f1, f0
/* 8065CD94  FC 03 00 28 */	fsub f0, f3, f0
/* 8065CD98  FC 02 00 32 */	fmul f0, f2, f0
/* 8065CD9C  FC 21 00 32 */	fmul f1, f1, f0
/* 8065CDA0  FC 20 08 18 */	frsp f1, f1
/* 8065CDA4  48 00 00 88 */	b lbl_8065CE2C
lbl_8065CDA8:
/* 8065CDA8  C8 1F 00 78 */	lfd f0, 0x78(r31)
/* 8065CDAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8065CDB0  40 80 00 10 */	bge lbl_8065CDC0
/* 8065CDB4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8065CDB8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8065CDBC  48 00 00 70 */	b lbl_8065CE2C
lbl_8065CDC0:
/* 8065CDC0  D0 21 00 08 */	stfs f1, 8(r1)
/* 8065CDC4  80 81 00 08 */	lwz r4, 8(r1)
/* 8065CDC8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8065CDCC  3C 00 7F 80 */	lis r0, 0x7f80
/* 8065CDD0  7C 03 00 00 */	cmpw r3, r0
/* 8065CDD4  41 82 00 14 */	beq lbl_8065CDE8
/* 8065CDD8  40 80 00 40 */	bge lbl_8065CE18
/* 8065CDDC  2C 03 00 00 */	cmpwi r3, 0
/* 8065CDE0  41 82 00 20 */	beq lbl_8065CE00
/* 8065CDE4  48 00 00 34 */	b lbl_8065CE18
lbl_8065CDE8:
/* 8065CDE8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8065CDEC  41 82 00 0C */	beq lbl_8065CDF8
/* 8065CDF0  38 00 00 01 */	li r0, 1
/* 8065CDF4  48 00 00 28 */	b lbl_8065CE1C
lbl_8065CDF8:
/* 8065CDF8  38 00 00 02 */	li r0, 2
/* 8065CDFC  48 00 00 20 */	b lbl_8065CE1C
lbl_8065CE00:
/* 8065CE00  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8065CE04  41 82 00 0C */	beq lbl_8065CE10
/* 8065CE08  38 00 00 05 */	li r0, 5
/* 8065CE0C  48 00 00 10 */	b lbl_8065CE1C
lbl_8065CE10:
/* 8065CE10  38 00 00 03 */	li r0, 3
/* 8065CE14  48 00 00 08 */	b lbl_8065CE1C
lbl_8065CE18:
/* 8065CE18  38 00 00 04 */	li r0, 4
lbl_8065CE1C:
/* 8065CE1C  2C 00 00 01 */	cmpwi r0, 1
/* 8065CE20  40 82 00 0C */	bne lbl_8065CE2C
/* 8065CE24  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8065CE28  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8065CE2C:
/* 8065CE2C  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 8065CE30  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8065CE34  40 81 00 30 */	ble lbl_8065CE64
/* 8065CE38  38 00 00 02 */	li r0, 2
/* 8065CE3C  98 1D 0C 9F */	stb r0, 0xc9f(r29)
/* 8065CE40  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8065CE44  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8065CE48  7F A3 EB 78 */	mr r3, r29
/* 8065CE4C  38 80 00 1B */	li r4, 0x1b
/* 8065CE50  38 A0 00 02 */	li r5, 2
/* 8065CE54  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8065CE58  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8065CE5C  4B FF B8 D5 */	bl setBck__7daCow_cFiUcff
/* 8065CE60  48 00 00 1C */	b lbl_8065CE7C
lbl_8065CE64:
/* 8065CE64  7F A3 EB 78 */	mr r3, r29
/* 8065CE68  38 80 00 0F */	li r4, 0xf
/* 8065CE6C  38 A0 00 00 */	li r5, 0
/* 8065CE70  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8065CE74  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8065CE78  4B FF B8 B9 */	bl setBck__7daCow_cFiUcff
lbl_8065CE7C:
/* 8065CE7C  7F A3 EB 78 */	mr r3, r29
/* 8065CE80  4B FF F4 AD */	bl checkCurringPen__7daCow_cFv
/* 8065CE84  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8065CE88  41 82 00 68 */	beq lbl_8065CEF0
/* 8065CE8C  38 00 00 04 */	li r0, 4
/* 8065CE90  98 1D 0C 9F */	stb r0, 0xc9f(r29)
/* 8065CE94  7F A3 EB 78 */	mr r3, r29
/* 8065CE98  4B FF F6 71 */	bl setCowInCage__7daCow_cFv
/* 8065CE9C  48 00 00 54 */	b lbl_8065CEF0
lbl_8065CEA0:
/* 8065CEA0  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8065CEA4  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8065CEA8  38 00 00 01 */	li r0, 1
/* 8065CEAC  98 1D 0C A5 */	stb r0, 0xca5(r29)
/* 8065CEB0  3C 60 80 66 */	lis r3, lit_5818@ha /* 0x80663208@ha */
/* 8065CEB4  38 83 32 08 */	addi r4, r3, lit_5818@l /* 0x80663208@l */
/* 8065CEB8  80 64 00 00 */	lwz r3, 0(r4)
/* 8065CEBC  80 04 00 04 */	lwz r0, 4(r4)
/* 8065CEC0  90 61 00 24 */	stw r3, 0x24(r1)
/* 8065CEC4  90 01 00 28 */	stw r0, 0x28(r1)
/* 8065CEC8  80 04 00 08 */	lwz r0, 8(r4)
/* 8065CECC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8065CED0  7F A3 EB 78 */	mr r3, r29
/* 8065CED4  38 81 00 24 */	addi r4, r1, 0x24
/* 8065CED8  38 A0 00 00 */	li r5, 0
/* 8065CEDC  4B FF C2 39 */	bl setProcess__7daCow_cFM7daCow_cFPCvPv_vi
/* 8065CEE0  38 7D 08 20 */	addi r3, r29, 0x820
/* 8065CEE4  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 8065CEE8  C0 5F 00 A4 */	lfs f2, 0xa4(r31)
/* 8065CEEC  4B A1 90 6D */	bl SetWall__12dBgS_AcchCirFff
lbl_8065CEF0:
/* 8065CEF0  88 1D 0C 9F */	lbz r0, 0xc9f(r29)
/* 8065CEF4  28 00 00 01 */	cmplwi r0, 1
/* 8065CEF8  41 81 00 78 */	bgt lbl_8065CF70
/* 8065CEFC  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 8065CF00  D0 1E 00 94 */	stfs f0, 0x94(r30)
/* 8065CF04  38 00 00 00 */	li r0, 0
/* 8065CF08  B0 1E 00 9A */	sth r0, 0x9a(r30)
/* 8065CF0C  38 00 20 00 */	li r0, 0x2000
/* 8065CF10  B0 1E 00 98 */	sth r0, 0x98(r30)
/* 8065CF14  3C 60 80 66 */	lis r3, s_near_cow__FPvPv@ha /* 0x8065972C@ha */
/* 8065CF18  38 63 97 2C */	addi r3, r3, s_near_cow__FPvPv@l /* 0x8065972C@l */
/* 8065CF1C  7F A4 EB 78 */	mr r4, r29
/* 8065CF20  4B 9C 44 19 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 8065CF24  C0 3E 00 94 */	lfs f1, 0x94(r30)
/* 8065CF28  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 8065CF2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8065CF30  40 80 00 08 */	bge lbl_8065CF38
/* 8065CF34  C3 FF 00 2C */	lfs f31, 0x2c(r31)
lbl_8065CF38:
/* 8065CF38  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 8065CF3C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8065CF40  40 81 00 10 */	ble lbl_8065CF50
/* 8065CF44  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8065CF48  EF FF 00 28 */	fsubs f31, f31, f0
/* 8065CF4C  48 00 00 14 */	b lbl_8065CF60
lbl_8065CF50:
/* 8065CF50  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8065CF54  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8065CF58  40 80 00 08 */	bge lbl_8065CF60
/* 8065CF5C  C3 FF 00 2C */	lfs f31, 0x2c(r31)
lbl_8065CF60:
/* 8065CF60  38 7D 05 2C */	addi r3, r29, 0x52c
/* 8065CF64  FC 20 F8 90 */	fmr f1, f31
/* 8065CF68  C0 5F 00 E8 */	lfs f2, 0xe8(r31)
/* 8065CF6C  4B C1 37 D5 */	bl cLib_chaseF__FPfff
lbl_8065CF70:
/* 8065CF70  38 60 00 00 */	li r3, 0
/* 8065CF74  38 00 00 03 */	li r0, 3
/* 8065CF78  7C 09 03 A6 */	mtctr r0
lbl_8065CF7C:
/* 8065CF7C  38 83 08 78 */	addi r4, r3, 0x878
/* 8065CF80  7C 1D 20 2E */	lwzx r0, r29, r4
/* 8065CF84  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8065CF88  7C 1D 21 2E */	stwx r0, r29, r4
/* 8065CF8C  38 63 01 38 */	addi r3, r3, 0x138
/* 8065CF90  42 00 FF EC */	bdnz lbl_8065CF7C
/* 8065CF94  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 8065CF98  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 8065CF9C  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 8065CFA0  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 8065CFA4  39 61 00 70 */	addi r11, r1, 0x70
/* 8065CFA8  4B D0 52 81 */	bl _restgpr_29
/* 8065CFAC  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8065CFB0  7C 08 03 A6 */	mtlr r0
/* 8065CFB4  38 21 00 90 */	addi r1, r1, 0x90
/* 8065CFB8  4E 80 00 20 */	blr 
