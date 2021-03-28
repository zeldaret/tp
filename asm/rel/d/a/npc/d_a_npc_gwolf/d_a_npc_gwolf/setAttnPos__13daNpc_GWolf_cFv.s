lbl_809F4698:
/* 809F4698  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 809F469C  7C 08 02 A6 */	mflr r0
/* 809F46A0  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 809F46A4  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 809F46A8  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 809F46AC  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 809F46B0  F3 C1 00 98 */	psq_st f30, 152(r1), 0, 0 /* qr0 */
/* 809F46B4  39 61 00 90 */	addi r11, r1, 0x90
/* 809F46B8  4B 96 DB 10 */	b _savegpr_24
/* 809F46BC  7C 7D 1B 78 */	mr r29, r3
/* 809F46C0  3C 60 80 A0 */	lis r3, lit_1109@ha
/* 809F46C4  3B C3 8E C8 */	addi r30, r3, lit_1109@l
/* 809F46C8  3C 60 80 A0 */	lis r3, m__19daNpc_GWolf_Param_c@ha
/* 809F46CC  3B E3 84 F4 */	addi r31, r3, m__19daNpc_GWolf_Param_c@l
/* 809F46D0  88 1E 00 5C */	lbz r0, 0x5c(r30)
/* 809F46D4  7C 00 07 75 */	extsb. r0, r0
/* 809F46D8  40 82 00 34 */	bne lbl_809F470C
/* 809F46DC  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 809F46E0  D0 1E 00 60 */	stfs f0, 0x60(r30)
/* 809F46E4  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 809F46E8  38 7E 00 60 */	addi r3, r30, 0x60
/* 809F46EC  D0 03 00 04 */	stfs f0, 4(r3)
/* 809F46F0  D0 03 00 08 */	stfs f0, 8(r3)
/* 809F46F4  3C 80 80 9F */	lis r4, __dt__4cXyzFv@ha
/* 809F46F8  38 84 7D 44 */	addi r4, r4, __dt__4cXyzFv@l
/* 809F46FC  38 BE 00 50 */	addi r5, r30, 0x50
/* 809F4700  4B FF E9 39 */	bl __register_global_object
/* 809F4704  38 00 00 01 */	li r0, 1
/* 809F4708  98 1E 00 5C */	stb r0, 0x5c(r30)
lbl_809F470C:
/* 809F470C  C3 FF 00 00 */	lfs f31, 0(r31)
/* 809F4710  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809F4714  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809F4718  A8 9D 09 90 */	lha r4, 0x990(r29)
/* 809F471C  4B 61 7C C0 */	b mDoMtx_YrotS__FPA4_fs
/* 809F4720  38 7D 09 84 */	addi r3, r29, 0x984
/* 809F4724  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 809F4728  C0 5F 00 C8 */	lfs f2, 0xc8(r31)
/* 809F472C  C0 7F 00 CC */	lfs f3, 0xcc(r31)
/* 809F4730  4B 87 B3 0C */	b cLib_addCalc2__FPffff
/* 809F4734  38 7D 09 8C */	addi r3, r29, 0x98c
/* 809F4738  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 809F473C  C0 5F 00 C8 */	lfs f2, 0xc8(r31)
/* 809F4740  C0 7F 00 CC */	lfs f3, 0xcc(r31)
/* 809F4744  4B 87 B2 F8 */	b cLib_addCalc2__FPffff
/* 809F4748  3B 00 00 00 */	li r24, 0
/* 809F474C  3B 80 00 00 */	li r28, 0
/* 809F4750  3B 60 00 00 */	li r27, 0
/* 809F4754  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 809F4758  3B 23 9A 20 */	addi r25, r3, sincosTable___5JMath@l
/* 809F475C  C3 DF 00 A0 */	lfs f30, 0xa0(r31)
/* 809F4760  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809F4764  3B 43 D4 70 */	addi r26, r3, now__14mDoMtx_stack_c@l
lbl_809F4768:
/* 809F4768  A8 1D 09 92 */	lha r0, 0x992(r29)
/* 809F476C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 809F4770  7C 39 04 2E */	lfsx f1, r25, r0
/* 809F4774  38 1B 09 84 */	addi r0, r27, 0x984
/* 809F4778  7C 1D 04 2E */	lfsx f0, r29, r0
/* 809F477C  EC 00 00 72 */	fmuls f0, f0, f1
/* 809F4780  D3 C1 00 30 */	stfs f30, 0x30(r1)
/* 809F4784  D3 C1 00 34 */	stfs f30, 0x34(r1)
/* 809F4788  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 809F478C  7F 43 D3 78 */	mr r3, r26
/* 809F4790  38 81 00 30 */	addi r4, r1, 0x30
/* 809F4794  38 A1 00 24 */	addi r5, r1, 0x24
/* 809F4798  4B 95 25 D4 */	b PSMTXMultVec
/* 809F479C  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 809F47A0  FC 00 00 50 */	fneg f0, f0
/* 809F47A4  FC 00 00 1E */	fctiwz f0, f0
/* 809F47A8  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 809F47AC  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 809F47B0  7C 7D E2 14 */	add r3, r29, r28
/* 809F47B4  B0 03 09 08 */	sth r0, 0x908(r3)
/* 809F47B8  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 809F47BC  FC 00 00 50 */	fneg f0, f0
/* 809F47C0  FC 00 00 1E */	fctiwz f0, f0
/* 809F47C4  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 809F47C8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 809F47CC  B0 03 09 0C */	sth r0, 0x90c(r3)
/* 809F47D0  3B 18 00 01 */	addi r24, r24, 1
/* 809F47D4  2C 18 00 03 */	cmpwi r24, 3
/* 809F47D8  3B 9C 00 06 */	addi r28, r28, 6
/* 809F47DC  3B 7B 00 04 */	addi r27, r27, 4
/* 809F47E0  41 80 FF 88 */	blt lbl_809F4768
/* 809F47E4  38 7D 09 92 */	addi r3, r29, 0x992
/* 809F47E8  38 80 00 00 */	li r4, 0
/* 809F47EC  38 A0 05 55 */	li r5, 0x555
/* 809F47F0  4B 87 BE E0 */	b cLib_chaseS__FPsss
/* 809F47F4  A8 1D 0E 0C */	lha r0, 0xe0c(r29)
/* 809F47F8  2C 00 00 01 */	cmpwi r0, 1
/* 809F47FC  40 82 00 2C */	bne lbl_809F4828
/* 809F4800  38 60 00 00 */	li r3, 0
/* 809F4804  38 80 00 00 */	li r4, 0
/* 809F4808  38 00 00 03 */	li r0, 3
/* 809F480C  7C 09 03 A6 */	mtctr r0
lbl_809F4810:
/* 809F4810  7C BD 1A 14 */	add r5, r29, r3
/* 809F4814  B0 85 09 1A */	sth r4, 0x91a(r5)
/* 809F4818  B0 85 09 1C */	sth r4, 0x91c(r5)
/* 809F481C  B0 85 09 1E */	sth r4, 0x91e(r5)
/* 809F4820  38 63 00 06 */	addi r3, r3, 6
/* 809F4824  42 00 FF EC */	bdnz lbl_809F4810
lbl_809F4828:
/* 809F4828  7F A3 EB 78 */	mr r3, r29
/* 809F482C  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 809F4830  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 809F4834  7D 89 03 A6 */	mtctr r12
/* 809F4838  4E 80 04 21 */	bctrl 
/* 809F483C  7F A3 EB 78 */	mr r3, r29
/* 809F4840  48 00 13 45 */	bl lookat__13daNpc_GWolf_cFv
/* 809F4844  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 809F4848  80 63 00 04 */	lwz r3, 4(r3)
/* 809F484C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 809F4850  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809F4854  38 63 00 C0 */	addi r3, r3, 0xc0
/* 809F4858  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 809F485C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 809F4860  4B 95 1C 50 */	b PSMTXCopy
/* 809F4864  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809F4868  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809F486C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 809F4870  D0 1D 08 E4 */	stfs f0, 0x8e4(r29)
/* 809F4874  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 809F4878  D0 1D 08 E8 */	stfs f0, 0x8e8(r29)
/* 809F487C  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 809F4880  D0 1D 08 EC */	stfs f0, 0x8ec(r29)
/* 809F4884  38 9E 00 60 */	addi r4, r30, 0x60
/* 809F4888  38 BD 05 38 */	addi r5, r29, 0x538
/* 809F488C  4B 95 24 E0 */	b PSMTXMultVec
/* 809F4890  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 809F4894  38 9E 00 60 */	addi r4, r30, 0x60
/* 809F4898  D0 04 00 04 */	stfs f0, 4(r4)
/* 809F489C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809F48A0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809F48A4  38 A1 00 30 */	addi r5, r1, 0x30
/* 809F48A8  4B 95 24 C4 */	b PSMTXMultVec
/* 809F48AC  38 7D 08 E4 */	addi r3, r29, 0x8e4
/* 809F48B0  38 81 00 30 */	addi r4, r1, 0x30
/* 809F48B4  4B 87 C3 C0 */	b cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 809F48B8  B0 7D 09 02 */	sth r3, 0x902(r29)
/* 809F48BC  38 7D 08 E4 */	addi r3, r29, 0x8e4
/* 809F48C0  38 81 00 30 */	addi r4, r1, 0x30
/* 809F48C4  4B 87 C3 40 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 809F48C8  B0 7D 09 04 */	sth r3, 0x904(r29)
/* 809F48CC  80 9D 0C 0C */	lwz r4, 0xc0c(r29)
/* 809F48D0  28 04 00 00 */	cmplwi r4, 0
/* 809F48D4  41 82 01 84 */	beq lbl_809F4A58
/* 809F48D8  38 61 00 18 */	addi r3, r1, 0x18
/* 809F48DC  38 BD 05 38 */	addi r5, r29, 0x538
/* 809F48E0  4B 87 22 54 */	b __mi__4cXyzCFRC3Vec
/* 809F48E4  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 809F48E8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 809F48EC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 809F48F0  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 809F48F4  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 809F48F8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 809F48FC  A8 7D 09 28 */	lha r3, 0x928(r29)
/* 809F4900  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 809F4904  7C 03 02 14 */	add r0, r3, r0
/* 809F4908  7C 00 00 D0 */	neg r0, r0
/* 809F490C  B0 1D 08 FE */	sth r0, 0x8fe(r29)
/* 809F4910  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 809F4914  C0 41 00 44 */	lfs f2, 0x44(r1)
/* 809F4918  4B 87 2D 5C */	b cM_atan2s__Fff
/* 809F491C  A8 1D 08 FE */	lha r0, 0x8fe(r29)
/* 809F4920  7C 00 1A 14 */	add r0, r0, r3
/* 809F4924  B0 1D 08 FE */	sth r0, 0x8fe(r29)
/* 809F4928  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 809F492C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 809F4930  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 809F4934  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 809F4938  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 809F493C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 809F4940  38 61 00 0C */	addi r3, r1, 0xc
/* 809F4944  4B 95 27 F4 */	b PSVECSquareMag
/* 809F4948  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 809F494C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809F4950  40 81 00 58 */	ble lbl_809F49A8
/* 809F4954  FC 00 08 34 */	frsqrte f0, f1
/* 809F4958  C8 9F 00 D0 */	lfd f4, 0xd0(r31)
/* 809F495C  FC 44 00 32 */	fmul f2, f4, f0
/* 809F4960  C8 7F 00 D8 */	lfd f3, 0xd8(r31)
/* 809F4964  FC 00 00 32 */	fmul f0, f0, f0
/* 809F4968  FC 01 00 32 */	fmul f0, f1, f0
/* 809F496C  FC 03 00 28 */	fsub f0, f3, f0
/* 809F4970  FC 02 00 32 */	fmul f0, f2, f0
/* 809F4974  FC 44 00 32 */	fmul f2, f4, f0
/* 809F4978  FC 00 00 32 */	fmul f0, f0, f0
/* 809F497C  FC 01 00 32 */	fmul f0, f1, f0
/* 809F4980  FC 03 00 28 */	fsub f0, f3, f0
/* 809F4984  FC 02 00 32 */	fmul f0, f2, f0
/* 809F4988  FC 44 00 32 */	fmul f2, f4, f0
/* 809F498C  FC 00 00 32 */	fmul f0, f0, f0
/* 809F4990  FC 01 00 32 */	fmul f0, f1, f0
/* 809F4994  FC 03 00 28 */	fsub f0, f3, f0
/* 809F4998  FC 02 00 32 */	fmul f0, f2, f0
/* 809F499C  FC 41 00 32 */	fmul f2, f1, f0
/* 809F49A0  FC 40 10 18 */	frsp f2, f2
/* 809F49A4  48 00 00 90 */	b lbl_809F4A34
lbl_809F49A8:
/* 809F49A8  C8 1F 00 E0 */	lfd f0, 0xe0(r31)
/* 809F49AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809F49B0  40 80 00 10 */	bge lbl_809F49C0
/* 809F49B4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 809F49B8  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 809F49BC  48 00 00 78 */	b lbl_809F4A34
lbl_809F49C0:
/* 809F49C0  D0 21 00 08 */	stfs f1, 8(r1)
/* 809F49C4  80 81 00 08 */	lwz r4, 8(r1)
/* 809F49C8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 809F49CC  3C 00 7F 80 */	lis r0, 0x7f80
/* 809F49D0  7C 03 00 00 */	cmpw r3, r0
/* 809F49D4  41 82 00 14 */	beq lbl_809F49E8
/* 809F49D8  40 80 00 40 */	bge lbl_809F4A18
/* 809F49DC  2C 03 00 00 */	cmpwi r3, 0
/* 809F49E0  41 82 00 20 */	beq lbl_809F4A00
/* 809F49E4  48 00 00 34 */	b lbl_809F4A18
lbl_809F49E8:
/* 809F49E8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 809F49EC  41 82 00 0C */	beq lbl_809F49F8
/* 809F49F0  38 00 00 01 */	li r0, 1
/* 809F49F4  48 00 00 28 */	b lbl_809F4A1C
lbl_809F49F8:
/* 809F49F8  38 00 00 02 */	li r0, 2
/* 809F49FC  48 00 00 20 */	b lbl_809F4A1C
lbl_809F4A00:
/* 809F4A00  54 80 02 7F */	clrlwi. r0, r4, 9
/* 809F4A04  41 82 00 0C */	beq lbl_809F4A10
/* 809F4A08  38 00 00 05 */	li r0, 5
/* 809F4A0C  48 00 00 10 */	b lbl_809F4A1C
lbl_809F4A10:
/* 809F4A10  38 00 00 03 */	li r0, 3
/* 809F4A14  48 00 00 08 */	b lbl_809F4A1C
lbl_809F4A18:
/* 809F4A18  38 00 00 04 */	li r0, 4
lbl_809F4A1C:
/* 809F4A1C  2C 00 00 01 */	cmpwi r0, 1
/* 809F4A20  40 82 00 10 */	bne lbl_809F4A30
/* 809F4A24  3C 60 80 45 */	lis r3, __float_nan@ha
/* 809F4A28  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 809F4A2C  48 00 00 08 */	b lbl_809F4A34
lbl_809F4A30:
/* 809F4A30  FC 40 08 90 */	fmr f2, f1
lbl_809F4A34:
/* 809F4A34  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 809F4A38  4B 87 2C 3C */	b cM_atan2s__Fff
/* 809F4A3C  7C 03 00 D0 */	neg r0, r3
/* 809F4A40  B0 1D 08 FC */	sth r0, 0x8fc(r29)
/* 809F4A44  A8 7D 08 FC */	lha r3, 0x8fc(r29)
/* 809F4A48  A8 1D 09 02 */	lha r0, 0x902(r29)
/* 809F4A4C  7C 03 02 14 */	add r0, r3, r0
/* 809F4A50  B0 1D 08 FC */	sth r0, 0x8fc(r29)
/* 809F4A54  48 00 00 10 */	b lbl_809F4A64
lbl_809F4A58:
/* 809F4A58  38 00 00 00 */	li r0, 0
/* 809F4A5C  B0 1D 08 FE */	sth r0, 0x8fe(r29)
/* 809F4A60  B0 1D 08 FC */	sth r0, 0x8fc(r29)
lbl_809F4A64:
/* 809F4A64  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 809F4A68  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 809F4A6C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 809F4A70  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 809F4A74  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 809F4A78  4B 61 82 EC */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 809F4A7C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809F4A80  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809F4A84  A8 9D 08 F0 */	lha r4, 0x8f0(r29)
/* 809F4A88  A8 BD 08 F2 */	lha r5, 0x8f2(r29)
/* 809F4A8C  A8 DD 08 F4 */	lha r6, 0x8f4(r29)
/* 809F4A90  4B 61 78 10 */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 809F4A94  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809F4A98  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809F4A9C  38 81 00 3C */	addi r4, r1, 0x3c
/* 809F4AA0  38 A1 00 48 */	addi r5, r1, 0x48
/* 809F4AA4  4B 95 22 C8 */	b PSMTXMultVec
/* 809F4AA8  C0 5D 08 EC */	lfs f2, 0x8ec(r29)
/* 809F4AAC  C0 1D 08 E8 */	lfs f0, 0x8e8(r29)
/* 809F4AB0  EC 20 F8 2A */	fadds f1, f0, f31
/* 809F4AB4  C0 1D 08 E4 */	lfs f0, 0x8e4(r29)
/* 809F4AB8  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 809F4ABC  D0 3D 05 54 */	stfs f1, 0x554(r29)
/* 809F4AC0  D0 5D 05 58 */	stfs f2, 0x558(r29)
/* 809F4AC4  88 1D 09 F2 */	lbz r0, 0x9f2(r29)
/* 809F4AC8  28 00 00 00 */	cmplwi r0, 0
/* 809F4ACC  40 82 00 A8 */	bne lbl_809F4B74
/* 809F4AD0  88 1D 09 F4 */	lbz r0, 0x9f4(r29)
/* 809F4AD4  28 00 00 00 */	cmplwi r0, 0
/* 809F4AD8  40 82 00 9C */	bne lbl_809F4B74
/* 809F4ADC  88 1D 0E 10 */	lbz r0, 0xe10(r29)
/* 809F4AE0  28 00 00 00 */	cmplwi r0, 0
/* 809F4AE4  40 82 00 90 */	bne lbl_809F4B74
/* 809F4AE8  88 1D 09 F0 */	lbz r0, 0x9f0(r29)
/* 809F4AEC  28 00 00 00 */	cmplwi r0, 0
/* 809F4AF0  40 82 00 28 */	bne lbl_809F4B18
/* 809F4AF4  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 809F4AF8  38 03 FD FF */	addi r0, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 809F4AFC  90 1D 0C B4 */	stw r0, 0xcb4(r29)
/* 809F4B00  38 00 00 1F */	li r0, 0x1f
/* 809F4B04  90 1D 0C A4 */	stw r0, 0xca4(r29)
/* 809F4B08  80 1D 0D 28 */	lwz r0, 0xd28(r29)
/* 809F4B0C  60 00 00 04 */	ori r0, r0, 4
/* 809F4B10  90 1D 0D 28 */	stw r0, 0xd28(r29)
/* 809F4B14  48 00 00 10 */	b lbl_809F4B24
lbl_809F4B18:
/* 809F4B18  38 00 00 00 */	li r0, 0
/* 809F4B1C  90 1D 0C B4 */	stw r0, 0xcb4(r29)
/* 809F4B20  90 1D 0C A4 */	stw r0, 0xca4(r29)
lbl_809F4B24:
/* 809F4B24  38 7D 0D B0 */	addi r3, r29, 0xdb0
/* 809F4B28  38 81 00 48 */	addi r4, r1, 0x48
/* 809F4B2C  4B 87 A6 B0 */	b SetC__8cM3dGCylFRC4cXyz
/* 809F4B30  38 7D 0D B0 */	addi r3, r29, 0xdb0
/* 809F4B34  38 9F 00 00 */	addi r4, r31, 0
/* 809F4B38  C0 24 00 14 */	lfs f1, 0x14(r4)
/* 809F4B3C  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 809F4B40  EC 21 00 2A */	fadds f1, f1, f0
/* 809F4B44  4B 87 A6 B4 */	b SetH__8cM3dGCylFf
/* 809F4B48  38 7D 0D B0 */	addi r3, r29, 0xdb0
/* 809F4B4C  38 9F 00 00 */	addi r4, r31, 0
/* 809F4B50  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 809F4B54  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 809F4B58  EC 21 00 2A */	fadds f1, f1, f0
/* 809F4B5C  4B 87 A6 A4 */	b SetR__8cM3dGCylFf
/* 809F4B60  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809F4B64  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809F4B68  38 63 23 3C */	addi r3, r3, 0x233c
/* 809F4B6C  38 9D 0C 8C */	addi r4, r29, 0xc8c
/* 809F4B70  4B 87 00 38 */	b Set__4cCcSFP8cCcD_Obj
lbl_809F4B74:
/* 809F4B74  38 7D 0C 8C */	addi r3, r29, 0xc8c
/* 809F4B78  81 9D 0C C8 */	lwz r12, 0xcc8(r29)
/* 809F4B7C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 809F4B80  7D 89 03 A6 */	mtctr r12
/* 809F4B84  4E 80 04 21 */	bctrl 
/* 809F4B88  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 809F4B8C  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 809F4B90  E3 C1 00 98 */	psq_l f30, 152(r1), 0, 0 /* qr0 */
/* 809F4B94  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 809F4B98  39 61 00 90 */	addi r11, r1, 0x90
/* 809F4B9C  4B 96 D6 78 */	b _restgpr_24
/* 809F4BA0  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 809F4BA4  7C 08 03 A6 */	mtlr r0
/* 809F4BA8  38 21 00 B0 */	addi r1, r1, 0xb0
/* 809F4BAC  4E 80 00 20 */	blr 
