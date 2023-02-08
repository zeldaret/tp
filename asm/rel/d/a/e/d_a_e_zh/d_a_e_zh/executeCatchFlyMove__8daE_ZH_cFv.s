lbl_8082C670:
/* 8082C670  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8082C674  7C 08 02 A6 */	mflr r0
/* 8082C678  90 01 00 54 */	stw r0, 0x54(r1)
/* 8082C67C  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8082C680  93 C1 00 48 */	stw r30, 0x48(r1)
/* 8082C684  7C 7E 1B 78 */	mr r30, r3
/* 8082C688  3C 80 80 83 */	lis r4, lit_3778@ha /* 0x8082F208@ha */
/* 8082C68C  3B E4 F2 08 */	addi r31, r4, lit_3778@l /* 0x8082F208@l */
/* 8082C690  80 83 06 64 */	lwz r4, 0x664(r3)
/* 8082C694  28 04 00 00 */	cmplwi r4, 0
/* 8082C698  40 82 00 14 */	bne lbl_8082C6AC
/* 8082C69C  38 80 00 08 */	li r4, 8
/* 8082C6A0  38 A0 00 00 */	li r5, 0
/* 8082C6A4  4B FF CD B1 */	bl setActionMode__8daE_ZH_cFii
/* 8082C6A8  48 00 06 74 */	b lbl_8082CD1C
lbl_8082C6AC:
/* 8082C6AC  88 04 0D BC */	lbz r0, 0xdbc(r4)
/* 8082C6B0  2C 00 00 00 */	cmpwi r0, 0
/* 8082C6B4  41 82 00 3C */	beq lbl_8082C6F0
/* 8082C6B8  38 60 00 05 */	li r3, 5
/* 8082C6BC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8082C6C0  7C 04 07 74 */	extsb r4, r0
/* 8082C6C4  4B 80 14 3D */	bl dComIfGs_offOneZoneSwitch__Fii
/* 8082C6C8  38 00 00 00 */	li r0, 0
/* 8082C6CC  80 7E 06 64 */	lwz r3, 0x664(r30)
/* 8082C6D0  98 03 0D BB */	stb r0, 0xdbb(r3)
/* 8082C6D4  38 00 00 02 */	li r0, 2
/* 8082C6D8  90 1E 07 8C */	stw r0, 0x78c(r30)
/* 8082C6DC  7F C3 F3 78 */	mr r3, r30
/* 8082C6E0  38 80 00 0A */	li r4, 0xa
/* 8082C6E4  38 A0 00 00 */	li r5, 0
/* 8082C6E8  4B FF CD 6D */	bl setActionMode__8daE_ZH_cFii
/* 8082C6EC  48 00 06 30 */	b lbl_8082CD1C
lbl_8082C6F0:
/* 8082C6F0  80 1E 07 84 */	lwz r0, 0x784(r30)
/* 8082C6F4  2C 00 00 05 */	cmpwi r0, 5
/* 8082C6F8  41 82 00 A4 */	beq lbl_8082C79C
/* 8082C6FC  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 8082C700  D0 1E 07 70 */	stfs f0, 0x770(r30)
/* 8082C704  88 1E 07 AB */	lbz r0, 0x7ab(r30)
/* 8082C708  28 00 00 00 */	cmplwi r0, 0
/* 8082C70C  40 82 00 34 */	bne lbl_8082C740
/* 8082C710  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 8082C714  C0 3E 08 8C */	lfs f1, 0x88c(r30)
/* 8082C718  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8082C71C  41 82 00 14 */	beq lbl_8082C730
/* 8082C720  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 8082C724  EC 00 08 2A */	fadds f0, f0, f1
/* 8082C728  D0 1E 07 70 */	stfs f0, 0x770(r30)
/* 8082C72C  48 00 00 14 */	b lbl_8082C740
lbl_8082C730:
/* 8082C730  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 8082C734  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 8082C738  EC 01 00 2A */	fadds f0, f1, f0
/* 8082C73C  D0 1E 07 70 */	stfs f0, 0x770(r30)
lbl_8082C740:
/* 8082C740  C0 1F 01 7C */	lfs f0, 0x17c(r31)
/* 8082C744  C0 3E 08 B8 */	lfs f1, 0x8b8(r30)
/* 8082C748  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8082C74C  41 82 00 1C */	beq lbl_8082C768
/* 8082C750  C0 1E 07 70 */	lfs f0, 0x770(r30)
/* 8082C754  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8082C758  40 81 00 10 */	ble lbl_8082C768
/* 8082C75C  C0 1F 01 80 */	lfs f0, 0x180(r31)
/* 8082C760  EC 01 00 28 */	fsubs f0, f1, f0
/* 8082C764  D0 1E 07 70 */	stfs f0, 0x770(r30)
lbl_8082C768:
/* 8082C768  3C 60 80 83 */	lis r3, l_HIO@ha /* 0x8082F734@ha */
/* 8082C76C  38 63 F7 34 */	addi r3, r3, l_HIO@l /* 0x8082F734@l */
/* 8082C770  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 8082C774  FC 60 08 90 */	fmr f3, f1
/* 8082C778  80 1E 07 84 */	lwz r0, 0x784(r30)
/* 8082C77C  2C 00 00 01 */	cmpwi r0, 1
/* 8082C780  40 81 00 0C */	ble lbl_8082C78C
/* 8082C784  C0 1F 01 B0 */	lfs f0, 0x1b0(r31)
/* 8082C788  EC 60 00 72 */	fmuls f3, f0, f1
lbl_8082C78C:
/* 8082C78C  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 8082C790  C0 3E 07 70 */	lfs f1, 0x770(r30)
/* 8082C794  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 8082C798  4B A4 32 A5 */	bl cLib_addCalc2__FPffff
lbl_8082C79C:
/* 8082C79C  80 1E 07 84 */	lwz r0, 0x784(r30)
/* 8082C7A0  28 00 00 0C */	cmplwi r0, 0xc
/* 8082C7A4  41 81 05 5C */	bgt lbl_8082CD00
/* 8082C7A8  3C 60 80 83 */	lis r3, lit_5390@ha /* 0x8082F5A8@ha */
/* 8082C7AC  38 63 F5 A8 */	addi r3, r3, lit_5390@l /* 0x8082F5A8@l */
/* 8082C7B0  54 00 10 3A */	slwi r0, r0, 2
/* 8082C7B4  7C 03 00 2E */	lwzx r0, r3, r0
/* 8082C7B8  7C 09 03 A6 */	mtctr r0
/* 8082C7BC  4E 80 04 20 */	bctr 
lbl_8082C7C0:
/* 8082C7C0  38 00 00 01 */	li r0, 1
/* 8082C7C4  80 7E 06 64 */	lwz r3, 0x664(r30)
/* 8082C7C8  98 03 0D BB */	stb r0, 0xdbb(r3)
/* 8082C7CC  3C 60 D8 48 */	lis r3, 0xD848 /* 0xD84820BA@ha */
/* 8082C7D0  38 03 20 BA */	addi r0, r3, 0x20BA /* 0xD84820BA@l */
/* 8082C7D4  90 1E 0A 30 */	stw r0, 0xa30(r30)
/* 8082C7D8  90 1E 0B 68 */	stw r0, 0xb68(r30)
/* 8082C7DC  80 1E 07 94 */	lwz r0, 0x794(r30)
/* 8082C7E0  2C 00 00 00 */	cmpwi r0, 0
/* 8082C7E4  40 82 05 1C */	bne lbl_8082CD00
/* 8082C7E8  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8082C7EC  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 8082C7F0  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8082C7F4  7F C3 F3 78 */	mr r3, r30
/* 8082C7F8  38 80 00 0A */	li r4, 0xa
/* 8082C7FC  38 A0 00 02 */	li r5, 2
/* 8082C800  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 8082C804  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8082C808  4B FF CB A1 */	bl setBck__8daE_ZH_cFiUcff
/* 8082C80C  80 7E 07 84 */	lwz r3, 0x784(r30)
/* 8082C810  38 03 00 01 */	addi r0, r3, 1
/* 8082C814  90 1E 07 84 */	stw r0, 0x784(r30)
lbl_8082C818:
/* 8082C818  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 8082C81C  C0 3E 07 70 */	lfs f1, 0x770(r30)
/* 8082C820  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 8082C824  EC 01 00 28 */	fsubs f0, f1, f0
/* 8082C828  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8082C82C  4C 41 13 82 */	cror 2, 1, 2
/* 8082C830  40 82 04 D0 */	bne lbl_8082CD00
/* 8082C834  88 1E 07 AB */	lbz r0, 0x7ab(r30)
/* 8082C838  28 00 00 00 */	cmplwi r0, 0
/* 8082C83C  41 82 00 28 */	beq lbl_8082C864
/* 8082C840  38 00 00 00 */	li r0, 0
/* 8082C844  B0 1E 07 B0 */	sth r0, 0x7b0(r30)
/* 8082C848  38 00 00 14 */	li r0, 0x14
/* 8082C84C  90 1E 07 94 */	stw r0, 0x794(r30)
/* 8082C850  7F C3 F3 78 */	mr r3, r30
/* 8082C854  4B FF D2 85 */	bl mReturnLineMove__8daE_ZH_cFv
/* 8082C858  38 00 00 0A */	li r0, 0xa
/* 8082C85C  90 1E 07 84 */	stw r0, 0x784(r30)
/* 8082C860  48 00 04 A0 */	b lbl_8082CD00
lbl_8082C864:
/* 8082C864  38 00 00 00 */	li r0, 0
/* 8082C868  B0 1E 07 B0 */	sth r0, 0x7b0(r30)
/* 8082C86C  38 00 00 14 */	li r0, 0x14
/* 8082C870  90 1E 07 94 */	stw r0, 0x794(r30)
/* 8082C874  80 7E 07 84 */	lwz r3, 0x784(r30)
/* 8082C878  38 03 00 01 */	addi r0, r3, 1
/* 8082C87C  90 1E 07 84 */	stw r0, 0x784(r30)
/* 8082C880  48 00 04 80 */	b lbl_8082CD00
lbl_8082C884:
/* 8082C884  80 1E 07 94 */	lwz r0, 0x794(r30)
/* 8082C888  2C 00 00 00 */	cmpwi r0, 0
/* 8082C88C  40 82 04 74 */	bne lbl_8082CD00
/* 8082C890  7F C3 F3 78 */	mr r3, r30
/* 8082C894  4B FF D2 45 */	bl mReturnLineMove__8daE_ZH_cFv
/* 8082C898  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8082C89C  41 82 04 64 */	beq lbl_8082CD00
/* 8082C8A0  80 7E 07 84 */	lwz r3, 0x784(r30)
/* 8082C8A4  38 03 00 01 */	addi r0, r3, 1
/* 8082C8A8  90 1E 07 84 */	stw r0, 0x784(r30)
lbl_8082C8AC:
/* 8082C8AC  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8082C8B0  D0 1E 07 74 */	stfs f0, 0x774(r30)
/* 8082C8B4  7F C3 F3 78 */	mr r3, r30
/* 8082C8B8  38 80 00 01 */	li r4, 1
/* 8082C8BC  4B FF D7 61 */	bl mSearchMove__8daE_ZH_cFUc
/* 8082C8C0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8082C8C4  41 82 04 3C */	beq lbl_8082CD00
/* 8082C8C8  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 8082C8CC  D0 1E 07 60 */	stfs f0, 0x760(r30)
/* 8082C8D0  7F C3 F3 78 */	mr r3, r30
/* 8082C8D4  38 80 00 0B */	li r4, 0xb
/* 8082C8D8  38 A0 00 00 */	li r5, 0
/* 8082C8DC  C0 3F 01 74 */	lfs f1, 0x174(r31)
/* 8082C8E0  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 8082C8E4  4B FF CA C5 */	bl setBck__8daE_ZH_cFiUcff
/* 8082C8E8  80 7E 07 84 */	lwz r3, 0x784(r30)
/* 8082C8EC  38 03 00 01 */	addi r0, r3, 1
/* 8082C8F0  90 1E 07 84 */	stw r0, 0x784(r30)
/* 8082C8F4  48 00 04 0C */	b lbl_8082CD00
lbl_8082C8F8:
/* 8082C8F8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8082C8FC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8082C900  80 63 00 00 */	lwz r3, 0(r3)
/* 8082C904  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 8082C908  4B 7D FA D5 */	bl mDoMtx_YrotS__FPA4_fs
/* 8082C90C  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8082C910  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8082C914  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8082C918  C0 1E 07 74 */	lfs f0, 0x774(r30)
/* 8082C91C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8082C920  38 61 00 34 */	addi r3, r1, 0x34
/* 8082C924  38 81 00 28 */	addi r4, r1, 0x28
/* 8082C928  4B A4 45 C5 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8082C92C  38 61 00 28 */	addi r3, r1, 0x28
/* 8082C930  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 8082C934  7C 65 1B 78 */	mr r5, r3
/* 8082C938  4B B1 A7 59 */	bl PSVECAdd
/* 8082C93C  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8082C940  38 81 00 28 */	addi r4, r1, 0x28
/* 8082C944  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 8082C948  C0 5F 00 04 */	lfs f2, 4(r31)
/* 8082C94C  C0 7F 00 2C */	lfs f3, 0x2c(r31)
/* 8082C950  4B A4 31 69 */	bl cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 8082C954  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 8082C958  A8 9E 04 B6 */	lha r4, 0x4b6(r30)
/* 8082C95C  38 A0 00 04 */	li r5, 4
/* 8082C960  38 C0 04 00 */	li r6, 0x400
/* 8082C964  4B A4 3C A5 */	bl cLib_addCalcAngleS2__FPssss
/* 8082C968  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8082C96C  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 8082C970  80 1E 08 20 */	lwz r0, 0x820(r30)
/* 8082C974  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8082C978  41 82 03 88 */	beq lbl_8082CD00
/* 8082C97C  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8082C980  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8082C984  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8082C988  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8082C98C  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8082C990  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8082C994  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8082C998  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8082C99C  38 80 00 05 */	li r4, 5
/* 8082C9A0  38 A0 00 1F */	li r5, 0x1f
/* 8082C9A4  38 C1 00 1C */	addi r6, r1, 0x1c
/* 8082C9A8  4B 84 30 7D */	bl StartShock__12dVibration_cFii4cXyz
/* 8082C9AC  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8082C9B0  D0 1E 07 60 */	stfs f0, 0x760(r30)
/* 8082C9B4  A8 1E 04 B6 */	lha r0, 0x4b6(r30)
/* 8082C9B8  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 8082C9BC  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 8082C9C0  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 8082C9C4  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 8082C9C8  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 8082C9CC  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 8082C9D0  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 8082C9D4  C0 1F 01 84 */	lfs f0, 0x184(r31)
/* 8082C9D8  D0 1E 07 74 */	stfs f0, 0x774(r30)
/* 8082C9DC  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008002F@ha */
/* 8082C9E0  38 03 00 2F */	addi r0, r3, 0x002F /* 0x0008002F@l */
/* 8082C9E4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8082C9E8  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 8082C9EC  38 81 00 0C */	addi r4, r1, 0xc
/* 8082C9F0  38 A0 00 00 */	li r5, 0
/* 8082C9F4  38 C0 FF FF */	li r6, -1
/* 8082C9F8  81 9E 05 C0 */	lwz r12, 0x5c0(r30)
/* 8082C9FC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8082CA00  7D 89 03 A6 */	mtctr r12
/* 8082CA04  4E 80 04 21 */	bctrl 
/* 8082CA08  80 7E 07 84 */	lwz r3, 0x784(r30)
/* 8082CA0C  38 03 00 01 */	addi r0, r3, 1
/* 8082CA10  90 1E 07 84 */	stw r0, 0x784(r30)
/* 8082CA14  48 00 02 EC */	b lbl_8082CD00
lbl_8082CA18:
/* 8082CA18  7F C3 F3 78 */	mr r3, r30
/* 8082CA1C  38 80 00 00 */	li r4, 0
/* 8082CA20  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 8082CA24  FC 40 08 90 */	fmr f2, f1
/* 8082CA28  4B FF CF D1 */	bl mColorSet__8daE_ZH_cFbff
/* 8082CA2C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8082CA30  41 82 02 D0 */	beq lbl_8082CD00
/* 8082CA34  7F C3 F3 78 */	mr r3, r30
/* 8082CA38  38 80 00 01 */	li r4, 1
/* 8082CA3C  38 A0 00 00 */	li r5, 0
/* 8082CA40  4B FF CA 15 */	bl setActionMode__8daE_ZH_cFii
lbl_8082CA44:
/* 8082CA44  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 8082CA48  54 00 00 3E */	slwi r0, r0, 0
/* 8082CA4C  90 1E 04 9C */	stw r0, 0x49c(r30)
/* 8082CA50  80 1E 05 5C */	lwz r0, 0x55c(r30)
/* 8082CA54  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 8082CA58  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 8082CA5C  38 60 00 00 */	li r3, 0
/* 8082CA60  98 7E 05 46 */	stb r3, 0x546(r30)
/* 8082CA64  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8082CA68  38 00 00 03 */	li r0, 3
/* 8082CA6C  7C 09 03 A6 */	mtctr r0
lbl_8082CA70:
/* 8082CA70  38 03 07 64 */	addi r0, r3, 0x764
/* 8082CA74  7C 1E 05 2E */	stfsx f0, r30, r0
/* 8082CA78  38 63 00 04 */	addi r3, r3, 4
/* 8082CA7C  42 00 FF F4 */	bdnz lbl_8082CA70
/* 8082CA80  38 60 00 05 */	li r3, 5
/* 8082CA84  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8082CA88  7C 04 07 74 */	extsb r4, r0
/* 8082CA8C  4B 80 10 75 */	bl dComIfGs_offOneZoneSwitch__Fii
/* 8082CA90  88 1E 07 A9 */	lbz r0, 0x7a9(r30)
/* 8082CA94  28 00 00 10 */	cmplwi r0, 0x10
/* 8082CA98  40 82 00 50 */	bne lbl_8082CAE8
/* 8082CA9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8082CAA0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8082CAA4  3B E3 07 F0 */	addi r31, r3, 0x7f0
/* 8082CAA8  7F E3 FB 78 */	mr r3, r31
/* 8082CAAC  38 80 26 40 */	li r4, 0x2640
/* 8082CAB0  4B 80 7E F5 */	bl offEventBit__11dSv_event_cFUs
/* 8082CAB4  7F E3 FB 78 */	mr r3, r31
/* 8082CAB8  38 80 26 10 */	li r4, 0x2610
/* 8082CABC  4B 80 7E E9 */	bl offEventBit__11dSv_event_cFUs
/* 8082CAC0  7F E3 FB 78 */	mr r3, r31
/* 8082CAC4  38 80 26 04 */	li r4, 0x2604
/* 8082CAC8  4B 80 7E DD */	bl offEventBit__11dSv_event_cFUs
/* 8082CACC  7F E3 FB 78 */	mr r3, r31
/* 8082CAD0  38 80 26 01 */	li r4, 0x2601
/* 8082CAD4  4B 80 7E D1 */	bl offEventBit__11dSv_event_cFUs
/* 8082CAD8  7F E3 FB 78 */	mr r3, r31
/* 8082CADC  38 80 27 40 */	li r4, 0x2740
/* 8082CAE0  4B 80 7E C5 */	bl offEventBit__11dSv_event_cFUs
/* 8082CAE4  48 00 00 4C */	b lbl_8082CB30
lbl_8082CAE8:
/* 8082CAE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8082CAEC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8082CAF0  3B E3 07 F0 */	addi r31, r3, 0x7f0
/* 8082CAF4  7F E3 FB 78 */	mr r3, r31
/* 8082CAF8  38 80 26 20 */	li r4, 0x2620
/* 8082CAFC  4B 80 7E A9 */	bl offEventBit__11dSv_event_cFUs
/* 8082CB00  7F E3 FB 78 */	mr r3, r31
/* 8082CB04  38 80 26 08 */	li r4, 0x2608
/* 8082CB08  4B 80 7E 9D */	bl offEventBit__11dSv_event_cFUs
/* 8082CB0C  7F E3 FB 78 */	mr r3, r31
/* 8082CB10  38 80 26 02 */	li r4, 0x2602
/* 8082CB14  4B 80 7E 91 */	bl offEventBit__11dSv_event_cFUs
/* 8082CB18  7F E3 FB 78 */	mr r3, r31
/* 8082CB1C  38 80 27 80 */	li r4, 0x2780
/* 8082CB20  4B 80 7E 85 */	bl offEventBit__11dSv_event_cFUs
/* 8082CB24  7F E3 FB 78 */	mr r3, r31
/* 8082CB28  38 80 27 20 */	li r4, 0x2720
/* 8082CB2C  4B 80 7E 79 */	bl offEventBit__11dSv_event_cFUs
lbl_8082CB30:
/* 8082CB30  3C 60 D8 48 */	lis r3, 0xD848 /* 0xD84860BA@ha */
/* 8082CB34  38 03 60 BA */	addi r0, r3, 0x60BA /* 0xD84860BA@l */
/* 8082CB38  90 1E 0A 30 */	stw r0, 0xa30(r30)
/* 8082CB3C  90 1E 0B 68 */	stw r0, 0xb68(r30)
/* 8082CB40  38 00 00 00 */	li r0, 0
/* 8082CB44  80 7E 06 64 */	lwz r3, 0x664(r30)
/* 8082CB48  98 03 0D BB */	stb r0, 0xdbb(r3)
/* 8082CB4C  80 1E 07 84 */	lwz r0, 0x784(r30)
/* 8082CB50  2C 00 00 0C */	cmpwi r0, 0xc
/* 8082CB54  40 82 01 AC */	bne lbl_8082CD00
/* 8082CB58  80 7E 06 64 */	lwz r3, 0x664(r30)
/* 8082CB5C  4B 7E D1 21 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 8082CB60  7F C3 F3 78 */	mr r3, r30
/* 8082CB64  38 80 00 0B */	li r4, 0xb
/* 8082CB68  38 A0 00 0A */	li r5, 0xa
/* 8082CB6C  4B FF C8 E9 */	bl setActionMode__8daE_ZH_cFii
/* 8082CB70  48 00 01 90 */	b lbl_8082CD00
lbl_8082CB74:
/* 8082CB74  7F C3 F3 78 */	mr r3, r30
/* 8082CB78  4B FF CF 61 */	bl mReturnLineMove__8daE_ZH_cFv
/* 8082CB7C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8082CB80  41 82 01 80 */	beq lbl_8082CD00
/* 8082CB84  38 00 00 00 */	li r0, 0
/* 8082CB88  B0 1E 07 B0 */	sth r0, 0x7b0(r30)
/* 8082CB8C  80 7E 07 84 */	lwz r3, 0x784(r30)
/* 8082CB90  38 03 00 01 */	addi r0, r3, 1
/* 8082CB94  90 1E 07 84 */	stw r0, 0x784(r30)
lbl_8082CB98:
/* 8082CB98  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8082CB9C  D0 1E 07 74 */	stfs f0, 0x774(r30)
/* 8082CBA0  7F C3 F3 78 */	mr r3, r30
/* 8082CBA4  38 80 00 02 */	li r4, 2
/* 8082CBA8  4B FF D4 75 */	bl mSearchMove__8daE_ZH_cFUc
/* 8082CBAC  38 61 00 10 */	addi r3, r1, 0x10
/* 8082CBB0  38 9E 06 8C */	addi r4, r30, 0x68c
/* 8082CBB4  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8082CBB8  4B A3 9F 7D */	bl __mi__4cXyzCFRC3Vec
/* 8082CBBC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8082CBC0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8082CBC4  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8082CBC8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8082CBCC  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8082CBD0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8082CBD4  38 61 00 28 */	addi r3, r1, 0x28
/* 8082CBD8  4B B1 A5 61 */	bl PSVECSquareMag
/* 8082CBDC  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8082CBE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8082CBE4  40 81 00 58 */	ble lbl_8082CC3C
/* 8082CBE8  FC 00 08 34 */	frsqrte f0, f1
/* 8082CBEC  C8 9F 01 88 */	lfd f4, 0x188(r31)
/* 8082CBF0  FC 44 00 32 */	fmul f2, f4, f0
/* 8082CBF4  C8 7F 01 90 */	lfd f3, 0x190(r31)
/* 8082CBF8  FC 00 00 32 */	fmul f0, f0, f0
/* 8082CBFC  FC 01 00 32 */	fmul f0, f1, f0
/* 8082CC00  FC 03 00 28 */	fsub f0, f3, f0
/* 8082CC04  FC 02 00 32 */	fmul f0, f2, f0
/* 8082CC08  FC 44 00 32 */	fmul f2, f4, f0
/* 8082CC0C  FC 00 00 32 */	fmul f0, f0, f0
/* 8082CC10  FC 01 00 32 */	fmul f0, f1, f0
/* 8082CC14  FC 03 00 28 */	fsub f0, f3, f0
/* 8082CC18  FC 02 00 32 */	fmul f0, f2, f0
/* 8082CC1C  FC 44 00 32 */	fmul f2, f4, f0
/* 8082CC20  FC 00 00 32 */	fmul f0, f0, f0
/* 8082CC24  FC 01 00 32 */	fmul f0, f1, f0
/* 8082CC28  FC 03 00 28 */	fsub f0, f3, f0
/* 8082CC2C  FC 02 00 32 */	fmul f0, f2, f0
/* 8082CC30  FC 21 00 32 */	fmul f1, f1, f0
/* 8082CC34  FC 20 08 18 */	frsp f1, f1
/* 8082CC38  48 00 00 88 */	b lbl_8082CCC0
lbl_8082CC3C:
/* 8082CC3C  C8 1F 01 98 */	lfd f0, 0x198(r31)
/* 8082CC40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8082CC44  40 80 00 10 */	bge lbl_8082CC54
/* 8082CC48  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8082CC4C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8082CC50  48 00 00 70 */	b lbl_8082CCC0
lbl_8082CC54:
/* 8082CC54  D0 21 00 08 */	stfs f1, 8(r1)
/* 8082CC58  80 81 00 08 */	lwz r4, 8(r1)
/* 8082CC5C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8082CC60  3C 00 7F 80 */	lis r0, 0x7f80
/* 8082CC64  7C 03 00 00 */	cmpw r3, r0
/* 8082CC68  41 82 00 14 */	beq lbl_8082CC7C
/* 8082CC6C  40 80 00 40 */	bge lbl_8082CCAC
/* 8082CC70  2C 03 00 00 */	cmpwi r3, 0
/* 8082CC74  41 82 00 20 */	beq lbl_8082CC94
/* 8082CC78  48 00 00 34 */	b lbl_8082CCAC
lbl_8082CC7C:
/* 8082CC7C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8082CC80  41 82 00 0C */	beq lbl_8082CC8C
/* 8082CC84  38 00 00 01 */	li r0, 1
/* 8082CC88  48 00 00 28 */	b lbl_8082CCB0
lbl_8082CC8C:
/* 8082CC8C  38 00 00 02 */	li r0, 2
/* 8082CC90  48 00 00 20 */	b lbl_8082CCB0
lbl_8082CC94:
/* 8082CC94  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8082CC98  41 82 00 0C */	beq lbl_8082CCA4
/* 8082CC9C  38 00 00 05 */	li r0, 5
/* 8082CCA0  48 00 00 10 */	b lbl_8082CCB0
lbl_8082CCA4:
/* 8082CCA4  38 00 00 03 */	li r0, 3
/* 8082CCA8  48 00 00 08 */	b lbl_8082CCB0
lbl_8082CCAC:
/* 8082CCAC  38 00 00 04 */	li r0, 4
lbl_8082CCB0:
/* 8082CCB0  2C 00 00 01 */	cmpwi r0, 1
/* 8082CCB4  40 82 00 0C */	bne lbl_8082CCC0
/* 8082CCB8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8082CCBC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8082CCC0:
/* 8082CCC0  C0 1F 01 B4 */	lfs f0, 0x1b4(r31)
/* 8082CCC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8082CCC8  40 80 00 38 */	bge lbl_8082CD00
/* 8082CCCC  38 60 00 06 */	li r3, 6
/* 8082CCD0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8082CCD4  7C 04 07 74 */	extsb r4, r0
/* 8082CCD8  4B 80 0D C5 */	bl dComIfGs_onOneZoneSwitch__Fii
/* 8082CCDC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8082CCE0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8082CCE4  38 63 09 78 */	addi r3, r3, 0x978
/* 8082CCE8  38 80 00 28 */	li r4, 0x28
/* 8082CCEC  4B 80 7E AD */	bl onSwitch__12dSv_danBit_cFi
/* 8082CCF0  7F C3 F3 78 */	mr r3, r30
/* 8082CCF4  38 80 00 09 */	li r4, 9
/* 8082CCF8  38 A0 00 00 */	li r5, 0
/* 8082CCFC  4B FF C7 59 */	bl setActionMode__8daE_ZH_cFii
lbl_8082CD00:
/* 8082CD00  80 7E 06 64 */	lwz r3, 0x664(r30)
/* 8082CD04  C0 1E 06 68 */	lfs f0, 0x668(r30)
/* 8082CD08  D0 03 04 D0 */	stfs f0, 0x4d0(r3)
/* 8082CD0C  C0 1E 06 6C */	lfs f0, 0x66c(r30)
/* 8082CD10  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
/* 8082CD14  C0 1E 06 70 */	lfs f0, 0x670(r30)
/* 8082CD18  D0 03 04 D8 */	stfs f0, 0x4d8(r3)
lbl_8082CD1C:
/* 8082CD1C  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8082CD20  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 8082CD24  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8082CD28  7C 08 03 A6 */	mtlr r0
/* 8082CD2C  38 21 00 50 */	addi r1, r1, 0x50
/* 8082CD30  4E 80 00 20 */	blr 
