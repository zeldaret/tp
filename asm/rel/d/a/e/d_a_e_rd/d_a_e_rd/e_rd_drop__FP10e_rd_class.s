lbl_8050C630:
/* 8050C630  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8050C634  7C 08 02 A6 */	mflr r0
/* 8050C638  90 01 00 44 */	stw r0, 0x44(r1)
/* 8050C63C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8050C640  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8050C644  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8050C648  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8050C64C  7C 7E 1B 78 */	mr r30, r3
/* 8050C650  3C 60 80 52 */	lis r3, lit_4208@ha
/* 8050C654  3B E3 85 84 */	addi r31, r3, lit_4208@l
/* 8050C658  C3 FF 00 04 */	lfs f31, 4(r31)
/* 8050C65C  A8 1E 05 B4 */	lha r0, 0x5b4(r30)
/* 8050C660  2C 00 00 02 */	cmpwi r0, 2
/* 8050C664  41 82 01 74 */	beq lbl_8050C7D8
/* 8050C668  40 80 00 14 */	bge lbl_8050C67C
/* 8050C66C  2C 00 00 00 */	cmpwi r0, 0
/* 8050C670  41 82 00 18 */	beq lbl_8050C688
/* 8050C674  40 80 00 78 */	bge lbl_8050C6EC
/* 8050C678  48 00 03 B8 */	b lbl_8050CA30
lbl_8050C67C:
/* 8050C67C  2C 00 00 04 */	cmpwi r0, 4
/* 8050C680  40 80 03 B0 */	bge lbl_8050CA30
/* 8050C684  48 00 02 04 */	b lbl_8050C888
lbl_8050C688:
/* 8050C688  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070015@ha */
/* 8050C68C  38 03 00 15 */	addi r0, r3, 0x0015 /* 0x00070015@l */
/* 8050C690  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8050C694  38 7E 05 D4 */	addi r3, r30, 0x5d4
/* 8050C698  38 81 00 1C */	addi r4, r1, 0x1c
/* 8050C69C  38 A0 FF FF */	li r5, -1
/* 8050C6A0  81 9E 05 D4 */	lwz r12, 0x5d4(r30)
/* 8050C6A4  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8050C6A8  7D 89 03 A6 */	mtctr r12
/* 8050C6AC  4E 80 04 21 */	bctrl 
/* 8050C6B0  7F C3 F3 78 */	mr r3, r30
/* 8050C6B4  38 80 00 0D */	li r4, 0xd
/* 8050C6B8  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 8050C6BC  38 A0 00 00 */	li r5, 0
/* 8050C6C0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8050C6C4  4B FF 85 11 */	bl anm_init__FP10e_rd_classifUcf
/* 8050C6C8  38 00 00 01 */	li r0, 1
/* 8050C6CC  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8050C6D0  3C 60 80 52 */	lis r3, data_80519200@ha
/* 8050C6D4  88 03 92 00 */	lbz r0, data_80519200@l(r3)
/* 8050C6D8  28 00 00 00 */	cmplwi r0, 0
/* 8050C6DC  41 82 03 54 */	beq lbl_8050CA30
/* 8050C6E0  38 00 00 0A */	li r0, 0xa
/* 8050C6E4  B0 1E 12 A4 */	sth r0, 0x12a4(r30)
/* 8050C6E8  48 00 03 48 */	b lbl_8050CA30
lbl_8050C6EC:
/* 8050C6EC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070015@ha */
/* 8050C6F0  38 03 00 15 */	addi r0, r3, 0x0015 /* 0x00070015@l */
/* 8050C6F4  90 01 00 18 */	stw r0, 0x18(r1)
/* 8050C6F8  38 7E 05 D4 */	addi r3, r30, 0x5d4
/* 8050C6FC  38 81 00 18 */	addi r4, r1, 0x18
/* 8050C700  38 A0 FF FF */	li r5, -1
/* 8050C704  81 9E 05 D4 */	lwz r12, 0x5d4(r30)
/* 8050C708  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8050C70C  7D 89 03 A6 */	mtctr r12
/* 8050C710  4E 80 04 21 */	bctrl 
/* 8050C714  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 8050C718  38 80 00 01 */	li r4, 1
/* 8050C71C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8050C720  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8050C724  40 82 00 18 */	bne lbl_8050C73C
/* 8050C728  FC 20 F8 90 */	fmr f1, f31
/* 8050C72C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8050C730  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8050C734  41 82 00 08 */	beq lbl_8050C73C
/* 8050C738  38 80 00 00 */	li r4, 0
lbl_8050C73C:
/* 8050C73C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8050C740  41 82 02 F0 */	beq lbl_8050CA30
/* 8050C744  7F C3 F3 78 */	mr r3, r30
/* 8050C748  38 80 00 16 */	li r4, 0x16
/* 8050C74C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8050C750  38 A0 00 02 */	li r5, 2
/* 8050C754  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8050C758  4B FF 84 7D */	bl anm_init__FP10e_rd_classifUcf
/* 8050C75C  38 00 00 02 */	li r0, 2
/* 8050C760  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8050C764  A8 1E 12 A4 */	lha r0, 0x12a4(r30)
/* 8050C768  2C 00 00 00 */	cmpwi r0, 0
/* 8050C76C  41 82 00 10 */	beq lbl_8050C77C
/* 8050C770  A8 1E 09 7C */	lha r0, 0x97c(r30)
/* 8050C774  B0 1E 05 CC */	sth r0, 0x5cc(r30)
/* 8050C778  48 00 00 44 */	b lbl_8050C7BC
lbl_8050C77C:
/* 8050C77C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8050C780  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8050C784  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 8050C788  3C 80 80 52 */	lis r4, stringBase0@ha
/* 8050C78C  38 84 89 68 */	addi r4, r4, stringBase0@l
/* 8050C790  38 84 00 0E */	addi r4, r4, 0xe
/* 8050C794  4B E5 C2 00 */	b strcmp
/* 8050C798  2C 03 00 00 */	cmpwi r3, 0
/* 8050C79C  40 82 00 10 */	bne lbl_8050C7AC
/* 8050C7A0  A8 1E 04 B6 */	lha r0, 0x4b6(r30)
/* 8050C7A4  B0 1E 05 CC */	sth r0, 0x5cc(r30)
/* 8050C7A8  48 00 00 14 */	b lbl_8050C7BC
lbl_8050C7AC:
/* 8050C7AC  7F C3 F3 78 */	mr r3, r30
/* 8050C7B0  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 8050C7B4  4B FF F9 79 */	bl gake_check__FP10e_rd_classf
/* 8050C7B8  B0 7E 05 CC */	sth r3, 0x5cc(r30)
lbl_8050C7BC:
/* 8050C7BC  3C 60 80 51 */	lis r3, s_bikkuri_sub__FPvPv@ha
/* 8050C7C0  38 63 C2 D8 */	addi r3, r3, s_bikkuri_sub__FPvPv@l
/* 8050C7C4  7F C4 F3 78 */	mr r4, r30
/* 8050C7C8  4B B1 4B 70 */	b fpcEx_Search__FPFPvPv_PvPv
/* 8050C7CC  38 00 00 3C */	li r0, 0x3c
/* 8050C7D0  B0 1E 09 90 */	sth r0, 0x990(r30)
/* 8050C7D4  48 00 02 5C */	b lbl_8050CA30
lbl_8050C7D8:
/* 8050C7D8  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070015@ha */
/* 8050C7DC  38 03 00 15 */	addi r0, r3, 0x0015 /* 0x00070015@l */
/* 8050C7E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8050C7E4  38 7E 05 D4 */	addi r3, r30, 0x5d4
/* 8050C7E8  38 81 00 14 */	addi r4, r1, 0x14
/* 8050C7EC  38 A0 FF FF */	li r5, -1
/* 8050C7F0  81 9E 05 D4 */	lwz r12, 0x5d4(r30)
/* 8050C7F4  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8050C7F8  7D 89 03 A6 */	mtctr r12
/* 8050C7FC  4E 80 04 21 */	bctrl 
/* 8050C800  C3 FF 00 DC */	lfs f31, 0xdc(r31)
/* 8050C804  38 7E 04 DE */	addi r3, r30, 0x4de
/* 8050C808  A8 9E 05 CC */	lha r4, 0x5cc(r30)
/* 8050C80C  38 A0 00 08 */	li r5, 8
/* 8050C810  38 C0 04 00 */	li r6, 0x400
/* 8050C814  4B D6 3D F4 */	b cLib_addCalcAngleS2__FPssss
/* 8050C818  A8 1E 09 90 */	lha r0, 0x990(r30)
/* 8050C81C  2C 00 00 00 */	cmpwi r0, 0
/* 8050C820  40 82 00 18 */	bne lbl_8050C838
/* 8050C824  38 00 00 17 */	li r0, 0x17
/* 8050C828  B0 1E 09 72 */	sth r0, 0x972(r30)
/* 8050C82C  38 00 00 00 */	li r0, 0
/* 8050C830  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8050C834  48 00 02 10 */	b lbl_8050CA44
lbl_8050C838:
/* 8050C838  7F C3 F3 78 */	mr r3, r30
/* 8050C83C  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 8050C840  4B FF 9F 61 */	bl move_gake_check__FP10e_rd_classf
/* 8050C844  2C 03 00 00 */	cmpwi r3, 0
/* 8050C848  41 82 01 E8 */	beq lbl_8050CA30
/* 8050C84C  38 00 00 03 */	li r0, 3
/* 8050C850  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8050C854  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 8050C858  3C 63 00 01 */	addis r3, r3, 1
/* 8050C85C  38 03 80 00 */	addi r0, r3, -32768
/* 8050C860  B0 1E 0A 0E */	sth r0, 0xa0e(r30)
/* 8050C864  38 00 00 00 */	li r0, 0
/* 8050C868  B0 1E 0A 0C */	sth r0, 0xa0c(r30)
/* 8050C86C  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 8050C870  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 8050C874  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8050C878  B0 1E 0A F8 */	sth r0, 0xaf8(r30)
/* 8050C87C  38 00 00 14 */	li r0, 0x14
/* 8050C880  B0 1E 09 90 */	sth r0, 0x990(r30)
/* 8050C884  48 00 01 AC */	b lbl_8050CA30
lbl_8050C888:
/* 8050C888  A8 1E 09 90 */	lha r0, 0x990(r30)
/* 8050C88C  2C 00 00 13 */	cmpwi r0, 0x13
/* 8050C890  40 82 00 20 */	bne lbl_8050C8B0
/* 8050C894  3C 60 80 51 */	lis r3, s_saku_sub__FPvPv@ha
/* 8050C898  38 63 C4 B0 */	addi r3, r3, s_saku_sub__FPvPv@l
/* 8050C89C  7F C4 F3 78 */	mr r4, r30
/* 8050C8A0  4B B1 4A 98 */	b fpcEx_Search__FPFPvPv_PvPv
/* 8050C8A4  28 03 00 00 */	cmplwi r3, 0
/* 8050C8A8  41 82 00 08 */	beq lbl_8050C8B0
/* 8050C8AC  48 70 8C 80 */	b BreakSet__13daObjH_Saku_cFv
lbl_8050C8B0:
/* 8050C8B0  C3 FF 00 4C */	lfs f31, 0x4c(r31)
/* 8050C8B4  A8 1E 0A 0C */	lha r0, 0xa0c(r30)
/* 8050C8B8  2C 00 C0 00 */	cmpwi r0, -16384
/* 8050C8BC  40 81 00 38 */	ble lbl_8050C8F4
/* 8050C8C0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8050C8C4  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8050C8C8  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070015@ha */
/* 8050C8CC  38 03 00 15 */	addi r0, r3, 0x0015 /* 0x00070015@l */
/* 8050C8D0  90 01 00 10 */	stw r0, 0x10(r1)
/* 8050C8D4  38 7E 05 D4 */	addi r3, r30, 0x5d4
/* 8050C8D8  38 81 00 10 */	addi r4, r1, 0x10
/* 8050C8DC  38 A0 FF FF */	li r5, -1
/* 8050C8E0  81 9E 05 D4 */	lwz r12, 0x5d4(r30)
/* 8050C8E4  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8050C8E8  7D 89 03 A6 */	mtctr r12
/* 8050C8EC  4E 80 04 21 */	bctrl 
/* 8050C8F0  48 00 00 8C */	b lbl_8050C97C
lbl_8050C8F4:
/* 8050C8F4  2C 00 98 00 */	cmpwi r0, -26624
/* 8050C8F8  40 81 00 5C */	ble lbl_8050C954
/* 8050C8FC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8050C900  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8050C904  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8050C908  7C 63 02 14 */	add r3, r3, r0
/* 8050C90C  C0 23 00 04 */	lfs f1, 4(r3)
/* 8050C910  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 8050C914  EC 00 00 72 */	fmuls f0, f0, f1
/* 8050C918  FC 00 02 10 */	fabs f0, f0
/* 8050C91C  FC 00 00 18 */	frsp f0, f0
/* 8050C920  FC 00 00 50 */	fneg f0, f0
/* 8050C924  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8050C928  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070016@ha */
/* 8050C92C  38 03 00 16 */	addi r0, r3, 0x0016 /* 0x00070016@l */
/* 8050C930  90 01 00 0C */	stw r0, 0xc(r1)
/* 8050C934  38 7E 05 D4 */	addi r3, r30, 0x5d4
/* 8050C938  38 81 00 0C */	addi r4, r1, 0xc
/* 8050C93C  38 A0 FF FF */	li r5, -1
/* 8050C940  81 9E 05 D4 */	lwz r12, 0x5d4(r30)
/* 8050C944  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8050C948  7D 89 03 A6 */	mtctr r12
/* 8050C94C  4E 80 04 21 */	bctrl 
/* 8050C950  48 00 00 2C */	b lbl_8050C97C
lbl_8050C954:
/* 8050C954  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070016@ha */
/* 8050C958  38 03 00 16 */	addi r0, r3, 0x0016 /* 0x00070016@l */
/* 8050C95C  90 01 00 08 */	stw r0, 8(r1)
/* 8050C960  38 7E 05 D4 */	addi r3, r30, 0x5d4
/* 8050C964  38 81 00 08 */	addi r4, r1, 8
/* 8050C968  38 A0 FF FF */	li r5, -1
/* 8050C96C  81 9E 05 D4 */	lwz r12, 0x5d4(r30)
/* 8050C970  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8050C974  7D 89 03 A6 */	mtctr r12
/* 8050C978  4E 80 04 21 */	bctrl 
lbl_8050C97C:
/* 8050C97C  38 7E 0A 0C */	addi r3, r30, 0xa0c
/* 8050C980  38 80 90 00 */	li r4, -28672
/* 8050C984  38 A0 00 02 */	li r5, 2
/* 8050C988  A8 DE 0A F8 */	lha r6, 0xaf8(r30)
/* 8050C98C  4B D6 3C 7C */	b cLib_addCalcAngleS2__FPssss
/* 8050C990  38 7E 0A F8 */	addi r3, r30, 0xaf8
/* 8050C994  38 80 08 00 */	li r4, 0x800
/* 8050C998  38 A0 00 01 */	li r5, 1
/* 8050C99C  38 C0 00 50 */	li r6, 0x50
/* 8050C9A0  4B D6 3C 68 */	b cLib_addCalcAngleS2__FPssss
/* 8050C9A4  38 00 00 02 */	li r0, 2
/* 8050C9A8  98 1E 09 AB */	stb r0, 0x9ab(r30)
/* 8050C9AC  A8 1E 09 90 */	lha r0, 0x990(r30)
/* 8050C9B0  2C 00 00 00 */	cmpwi r0, 0
/* 8050C9B4  40 82 00 7C */	bne lbl_8050CA30
/* 8050C9B8  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 8050C9BC  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8050C9C0  C0 1E 0B DC */	lfs f0, 0xbdc(r30)
/* 8050C9C4  EC 01 00 2A */	fadds f0, f1, f0
/* 8050C9C8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8050C9CC  4C 40 13 82 */	cror 2, 0, 2
/* 8050C9D0  40 82 00 60 */	bne lbl_8050CA30
/* 8050C9D4  88 1E 05 B7 */	lbz r0, 0x5b7(r30)
/* 8050C9D8  28 00 00 0D */	cmplwi r0, 0xd
/* 8050C9DC  41 82 00 0C */	beq lbl_8050C9E8
/* 8050C9E0  28 00 00 0E */	cmplwi r0, 0xe
/* 8050C9E4  40 82 00 24 */	bne lbl_8050CA08
lbl_8050C9E8:
/* 8050C9E8  38 00 00 3C */	li r0, 0x3c
/* 8050C9EC  B0 1E 09 72 */	sth r0, 0x972(r30)
/* 8050C9F0  38 00 00 01 */	li r0, 1
/* 8050C9F4  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8050C9F8  98 1E 0A FB */	stb r0, 0xafb(r30)
/* 8050C9FC  38 00 00 00 */	li r0, 0
/* 8050CA00  B0 1E 0A F2 */	sth r0, 0xaf2(r30)
/* 8050CA04  48 00 00 2C */	b lbl_8050CA30
lbl_8050CA08:
/* 8050CA08  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 8050CA0C  38 00 C0 00 */	li r0, -16384
/* 8050CA10  B0 1E 0A 0C */	sth r0, 0xa0c(r30)
/* 8050CA14  38 00 00 15 */	li r0, 0x15
/* 8050CA18  B0 1E 09 72 */	sth r0, 0x972(r30)
/* 8050CA1C  38 00 00 00 */	li r0, 0
/* 8050CA20  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8050CA24  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8050CA28  D0 1E 09 EC */	stfs f0, 0x9ec(r30)
/* 8050CA2C  B0 1E 05 62 */	sth r0, 0x562(r30)
lbl_8050CA30:
/* 8050CA30  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8050CA34  FC 20 F8 90 */	fmr f1, f31
/* 8050CA38  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8050CA3C  C0 7F 00 4C */	lfs f3, 0x4c(r31)
/* 8050CA40  4B D6 2F FC */	b cLib_addCalc2__FPffff
lbl_8050CA44:
/* 8050CA44  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8050CA48  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8050CA4C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8050CA50  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8050CA54  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8050CA58  7C 08 03 A6 */	mtlr r0
/* 8050CA5C  38 21 00 40 */	addi r1, r1, 0x40
/* 8050CA60  4E 80 00 20 */	blr 
