lbl_80BFB508:
/* 80BFB508  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80BFB50C  7C 08 02 A6 */	mflr r0
/* 80BFB510  90 01 00 34 */	stw r0, 0x34(r1)
/* 80BFB514  39 61 00 30 */	addi r11, r1, 0x30
/* 80BFB518  4B 76 6C C0 */	b _savegpr_28
/* 80BFB51C  7C 7D 1B 78 */	mr r29, r3
/* 80BFB520  3C 60 80 C0 */	lis r3, cNullVec__6Z2Calc@ha
/* 80BFB524  3B C3 D3 C8 */	addi r30, r3, cNullVec__6Z2Calc@l
/* 80BFB528  3C 60 80 C0 */	lis r3, lit_3686@ha
/* 80BFB52C  3B E3 D3 2C */	addi r31, r3, lit_3686@l
/* 80BFB530  C0 3D 06 30 */	lfs f1, 0x630(r29)
/* 80BFB534  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 80BFB538  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 80BFB53C  40 81 00 7C */	ble lbl_80BFB5B8
/* 80BFB540  A8 7D 06 40 */	lha r3, 0x640(r29)
/* 80BFB544  88 1D 05 70 */	lbz r0, 0x570(r29)
/* 80BFB548  54 00 08 3C */	slwi r0, r0, 1
/* 80BFB54C  38 DE 00 58 */	addi r6, r30, 0x58
/* 80BFB550  7C 06 02 AE */	lhax r0, r6, r0
/* 80BFB554  7C 03 01 D6 */	mullw r0, r3, r0
/* 80BFB558  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80BFB55C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80BFB560  38 A3 9A 20 */	addi r5, r3, sincosTable___5JMath@l
/* 80BFB564  7C 05 04 2E */	lfsx f0, r5, r0
/* 80BFB568  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BFB56C  D0 1D 06 34 */	stfs f0, 0x634(r29)
/* 80BFB570  A8 9D 06 40 */	lha r4, 0x640(r29)
/* 80BFB574  88 1D 05 70 */	lbz r0, 0x570(r29)
/* 80BFB578  54 00 08 3C */	slwi r0, r0, 1
/* 80BFB57C  7C 66 02 AE */	lhax r3, r6, r0
/* 80BFB580  38 03 00 64 */	addi r0, r3, 0x64
/* 80BFB584  7C 04 01 D6 */	mullw r0, r4, r0
/* 80BFB588  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80BFB58C  7C 25 04 2E */	lfsx f1, r5, r0
/* 80BFB590  C0 1D 06 30 */	lfs f0, 0x630(r29)
/* 80BFB594  EC 00 00 72 */	fmuls f0, f0, f1
/* 80BFB598  D0 1D 06 38 */	stfs f0, 0x638(r29)
/* 80BFB59C  38 7D 06 30 */	addi r3, r29, 0x630
/* 80BFB5A0  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 80BFB5A4  4B 67 44 DC */	b cLib_addCalc0__FPfff
/* 80BFB5A8  A8 7D 06 40 */	lha r3, 0x640(r29)
/* 80BFB5AC  38 03 00 01 */	addi r0, r3, 1
/* 80BFB5B0  B0 1D 06 40 */	sth r0, 0x640(r29)
/* 80BFB5B4  48 00 00 0C */	b lbl_80BFB5C0
lbl_80BFB5B8:
/* 80BFB5B8  38 00 00 00 */	li r0, 0
/* 80BFB5BC  B0 1D 06 40 */	sth r0, 0x640(r29)
lbl_80BFB5C0:
/* 80BFB5C0  88 1D 05 70 */	lbz r0, 0x570(r29)
/* 80BFB5C4  54 00 10 3A */	slwi r0, r0, 2
/* 80BFB5C8  38 7E 00 3C */	addi r3, r30, 0x3c
/* 80BFB5CC  7C 23 04 2E */	lfsx f1, r3, r0
/* 80BFB5D0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80BFB5D4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80BFB5D8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80BFB5DC  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80BFB5E0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80BFB5E4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80BFB5E8  80 63 00 00 */	lwz r3, 0(r3)
/* 80BFB5EC  A8 9D 04 DC */	lha r4, 0x4dc(r29)
/* 80BFB5F0  4B 41 0D 54 */	b mDoMtx_XrotS__FPA4_fs
/* 80BFB5F4  38 61 00 14 */	addi r3, r1, 0x14
/* 80BFB5F8  38 81 00 08 */	addi r4, r1, 8
/* 80BFB5FC  4B 67 58 F0 */	b MtxPosition__FP4cXyzP4cXyz
/* 80BFB600  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 80BFB604  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 80BFB608  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80BFB60C  EC 42 00 2A */	fadds f2, f2, f0
/* 80BFB610  C0 7D 04 D8 */	lfs f3, 0x4d8(r29)
/* 80BFB614  38 60 00 00 */	li r3, 0
/* 80BFB618  4B 67 58 44 */	b MtxTrans__FfffUc
/* 80BFB61C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80BFB620  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80BFB624  80 63 00 00 */	lwz r3, 0(r3)
/* 80BFB628  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 80BFB62C  4B 41 0E 08 */	b mDoMtx_YrotM__FPA4_fs
/* 80BFB630  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80BFB634  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80BFB638  80 63 00 00 */	lwz r3, 0(r3)
/* 80BFB63C  A8 9D 04 DC */	lha r4, 0x4dc(r29)
/* 80BFB640  4B 41 0D 5C */	b mDoMtx_XrotM__FPA4_fs
/* 80BFB644  C0 3D 06 34 */	lfs f1, 0x634(r29)
/* 80BFB648  C0 5F 00 04 */	lfs f2, 4(r31)
/* 80BFB64C  C0 7D 06 38 */	lfs f3, 0x638(r29)
/* 80BFB650  38 60 00 01 */	li r3, 1
/* 80BFB654  4B 67 58 08 */	b MtxTrans__FfffUc
/* 80BFB658  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80BFB65C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80BFB660  80 63 00 00 */	lwz r3, 0(r3)
/* 80BFB664  A8 9D 06 4C */	lha r4, 0x64c(r29)
/* 80BFB668  4B 41 0D CC */	b mDoMtx_YrotM__FPA4_fs
/* 80BFB66C  4B 67 58 B0 */	b MtxPush__Fv
/* 80BFB670  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80BFB674  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80BFB678  80 63 00 00 */	lwz r3, 0(r3)
/* 80BFB67C  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 80BFB680  4B 41 0D B4 */	b mDoMtx_YrotM__FPA4_fs
/* 80BFB684  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80BFB688  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80BFB68C  80 63 00 00 */	lwz r3, 0(r3)
/* 80BFB690  A8 9D 04 E4 */	lha r4, 0x4e4(r29)
/* 80BFB694  4B 41 0D 08 */	b mDoMtx_XrotM__FPA4_fs
/* 80BFB698  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80BFB69C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80BFB6A0  80 63 00 00 */	lwz r3, 0(r3)
/* 80BFB6A4  80 9D 05 74 */	lwz r4, 0x574(r29)
/* 80BFB6A8  38 84 00 24 */	addi r4, r4, 0x24
/* 80BFB6AC  4B 74 AE 04 */	b PSMTXCopy
/* 80BFB6B0  88 1D 05 70 */	lbz r0, 0x570(r29)
/* 80BFB6B4  28 00 00 05 */	cmplwi r0, 5
/* 80BFB6B8  40 82 00 30 */	bne lbl_80BFB6E8
/* 80BFB6BC  83 9D 06 50 */	lwz r28, 0x650(r29)
/* 80BFB6C0  28 1C 00 00 */	cmplwi r28, 0
/* 80BFB6C4  41 82 00 54 */	beq lbl_80BFB718
/* 80BFB6C8  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80BFB6CC  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80BFB6D0  80 63 00 00 */	lwz r3, 0(r3)
/* 80BFB6D4  38 9C 0A 00 */	addi r4, r28, 0xa00
/* 80BFB6D8  4B 74 AD D8 */	b PSMTXCopy
/* 80BFB6DC  38 00 00 01 */	li r0, 1
/* 80BFB6E0  98 1C 09 FC */	stb r0, 0x9fc(r28)
/* 80BFB6E4  48 00 00 34 */	b lbl_80BFB718
lbl_80BFB6E8:
/* 80BFB6E8  28 00 00 06 */	cmplwi r0, 6
/* 80BFB6EC  40 82 00 2C */	bne lbl_80BFB718
/* 80BFB6F0  80 9D 06 50 */	lwz r4, 0x650(r29)
/* 80BFB6F4  28 04 00 00 */	cmplwi r4, 0
/* 80BFB6F8  41 82 00 20 */	beq lbl_80BFB718
/* 80BFB6FC  38 00 00 01 */	li r0, 1
/* 80BFB700  98 04 1B 60 */	stb r0, 0x1b60(r4)
/* 80BFB704  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80BFB708  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80BFB70C  80 63 00 00 */	lwz r3, 0(r3)
/* 80BFB710  38 84 1B 64 */	addi r4, r4, 0x1b64
/* 80BFB714  4B 74 AD 9C */	b PSMTXCopy
lbl_80BFB718:
/* 80BFB718  4B 67 58 40 */	b MtxPull__Fv
/* 80BFB71C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80BFB720  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80BFB724  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80BFB728  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80BFB72C  38 61 00 14 */	addi r3, r1, 0x14
/* 80BFB730  38 9D 07 14 */	addi r4, r29, 0x714
/* 80BFB734  4B 67 57 B8 */	b MtxPosition__FP4cXyzP4cXyz
/* 80BFB738  C0 1D 07 14 */	lfs f0, 0x714(r29)
/* 80BFB73C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80BFB740  C0 3D 07 18 */	lfs f1, 0x718(r29)
/* 80BFB744  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80BFB748  C0 1D 07 1C */	lfs f0, 0x71c(r29)
/* 80BFB74C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80BFB750  A8 1D 09 48 */	lha r0, 0x948(r29)
/* 80BFB754  2C 00 00 00 */	cmpwi r0, 0
/* 80BFB758  41 82 00 10 */	beq lbl_80BFB768
/* 80BFB75C  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80BFB760  EC 01 00 28 */	fsubs f0, f1, f0
/* 80BFB764  D0 01 00 0C */	stfs f0, 0xc(r1)
lbl_80BFB768:
/* 80BFB768  88 1D 05 70 */	lbz r0, 0x570(r29)
/* 80BFB76C  28 00 00 06 */	cmplwi r0, 6
/* 80BFB770  40 80 00 3C */	bge lbl_80BFB7AC
/* 80BFB774  38 7D 0A AC */	addi r3, r29, 0xaac
/* 80BFB778  38 81 00 08 */	addi r4, r1, 8
/* 80BFB77C  4B 67 3E CC */	b SetC__8cM3dGSphFRC4cXyz
/* 80BFB780  38 7D 0A AC */	addi r3, r29, 0xaac
/* 80BFB784  88 1D 05 70 */	lbz r0, 0x570(r29)
/* 80BFB788  54 00 10 3A */	slwi r0, r0, 2
/* 80BFB78C  38 9E 00 20 */	addi r4, r30, 0x20
/* 80BFB790  7C 24 04 2E */	lfsx f1, r4, r0
/* 80BFB794  4B 67 3F 74 */	b SetR__8cM3dGSphFf
/* 80BFB798  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BFB79C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BFB7A0  38 63 23 3C */	addi r3, r3, 0x233c
/* 80BFB7A4  38 9D 09 88 */	addi r4, r29, 0x988
/* 80BFB7A8  4B 66 94 00 */	b Set__4cCcSFP8cCcD_Obj
lbl_80BFB7AC:
/* 80BFB7AC  C0 1D 07 14 */	lfs f0, 0x714(r29)
/* 80BFB7B0  D0 1D 05 38 */	stfs f0, 0x538(r29)
/* 80BFB7B4  C0 1D 07 18 */	lfs f0, 0x718(r29)
/* 80BFB7B8  D0 1D 05 3C */	stfs f0, 0x53c(r29)
/* 80BFB7BC  C0 1D 07 1C */	lfs f0, 0x71c(r29)
/* 80BFB7C0  D0 1D 05 40 */	stfs f0, 0x540(r29)
/* 80BFB7C4  C0 3D 05 3C */	lfs f1, 0x53c(r29)
/* 80BFB7C8  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80BFB7CC  EC 01 00 2A */	fadds f0, f1, f0
/* 80BFB7D0  D0 1D 05 3C */	stfs f0, 0x53c(r29)
/* 80BFB7D4  C0 1D 05 38 */	lfs f0, 0x538(r29)
/* 80BFB7D8  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 80BFB7DC  C0 1D 05 3C */	lfs f0, 0x53c(r29)
/* 80BFB7E0  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 80BFB7E4  C0 1D 05 40 */	lfs f0, 0x540(r29)
/* 80BFB7E8  D0 1D 05 58 */	stfs f0, 0x558(r29)
/* 80BFB7EC  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80BFB7F0  88 1D 05 70 */	lbz r0, 0x570(r29)
/* 80BFB7F4  54 00 10 3A */	slwi r0, r0, 2
/* 80BFB7F8  38 7E 00 20 */	addi r3, r30, 0x20
/* 80BFB7FC  7C 03 04 2E */	lfsx f0, r3, r0
/* 80BFB800  EC 21 00 32 */	fmuls f1, f1, f0
/* 80BFB804  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80BFB808  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80BFB80C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80BFB810  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80BFB814  38 61 00 14 */	addi r3, r1, 0x14
/* 80BFB818  38 9D 06 54 */	addi r4, r29, 0x654
/* 80BFB81C  4B 67 56 D0 */	b MtxPosition__FP4cXyzP4cXyz
/* 80BFB820  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80BFB824  88 1D 05 70 */	lbz r0, 0x570(r29)
/* 80BFB828  54 00 10 3A */	slwi r0, r0, 2
/* 80BFB82C  38 7E 00 20 */	addi r3, r30, 0x20
/* 80BFB830  7C 03 04 2E */	lfsx f0, r3, r0
/* 80BFB834  FC 00 00 50 */	fneg f0, f0
/* 80BFB838  EC 21 00 32 */	fmuls f1, f1, f0
/* 80BFB83C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80BFB840  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80BFB844  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80BFB848  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80BFB84C  38 61 00 14 */	addi r3, r1, 0x14
/* 80BFB850  38 9D 06 60 */	addi r4, r29, 0x660
/* 80BFB854  4B 67 56 98 */	b MtxPosition__FP4cXyzP4cXyz
/* 80BFB858  7F A3 EB 78 */	mr r3, r29
/* 80BFB85C  4B FF FB B5 */	bl ito_pos_set__FP12obj_gm_class
/* 80BFB860  38 7D 09 88 */	addi r3, r29, 0x988
/* 80BFB864  4B 48 8B FC */	b ChkTgHit__12dCcD_GObjInfFv
/* 80BFB868  28 03 00 00 */	cmplwi r3, 0
/* 80BFB86C  41 82 00 9C */	beq lbl_80BFB908
/* 80BFB870  38 7D 09 88 */	addi r3, r29, 0x988
/* 80BFB874  4B 48 8C 84 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 80BFB878  90 7D 0A C0 */	stw r3, 0xac0(r29)
/* 80BFB87C  38 7D 0A C0 */	addi r3, r29, 0xac0
/* 80BFB880  4B 48 C1 D8 */	b at_power_check__FP11dCcU_AtInfo
/* 80BFB884  88 1D 05 70 */	lbz r0, 0x570(r29)
/* 80BFB888  28 00 00 05 */	cmplwi r0, 5
/* 80BFB88C  40 82 00 20 */	bne lbl_80BFB8AC
/* 80BFB890  80 7D 0A C0 */	lwz r3, 0xac0(r29)
/* 80BFB894  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80BFB898  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 80BFB89C  41 82 00 6C */	beq lbl_80BFB908
/* 80BFB8A0  38 00 00 01 */	li r0, 1
/* 80BFB8A4  98 1D 05 67 */	stb r0, 0x567(r29)
/* 80BFB8A8  48 00 01 54 */	b lbl_80BFB9FC
lbl_80BFB8AC:
/* 80BFB8AC  80 7D 0A C0 */	lwz r3, 0xac0(r29)
/* 80BFB8B0  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80BFB8B4  54 60 06 31 */	rlwinm. r0, r3, 0, 0x18, 0x18
/* 80BFB8B8  40 82 00 0C */	bne lbl_80BFB8C4
/* 80BFB8BC  54 60 04 63 */	rlwinm. r0, r3, 0, 0x11, 0x11
/* 80BFB8C0  41 82 00 0C */	beq lbl_80BFB8CC
lbl_80BFB8C4:
/* 80BFB8C4  38 00 00 01 */	li r0, 1
/* 80BFB8C8  B0 1D 0A DC */	sth r0, 0xadc(r29)
lbl_80BFB8CC:
/* 80BFB8CC  A0 1D 0A DC */	lhz r0, 0xadc(r29)
/* 80BFB8D0  28 00 00 00 */	cmplwi r0, 0
/* 80BFB8D4  41 82 00 1C */	beq lbl_80BFB8F0
/* 80BFB8D8  88 1D 05 70 */	lbz r0, 0x570(r29)
/* 80BFB8DC  28 00 00 01 */	cmplwi r0, 1
/* 80BFB8E0  41 81 00 10 */	bgt lbl_80BFB8F0
/* 80BFB8E4  38 00 00 01 */	li r0, 1
/* 80BFB8E8  98 1D 07 2C */	stb r0, 0x72c(r29)
/* 80BFB8EC  48 00 00 1C */	b lbl_80BFB908
lbl_80BFB8F0:
/* 80BFB8F0  38 00 00 0F */	li r0, 0xf
/* 80BFB8F4  B0 1D 09 48 */	sth r0, 0x948(r29)
/* 80BFB8F8  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80BFB8FC  D0 1D 06 30 */	stfs f0, 0x630(r29)
/* 80BFB900  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 80BFB904  D0 1D 06 48 */	stfs f0, 0x648(r29)
lbl_80BFB908:
/* 80BFB908  88 7D 0A E4 */	lbz r3, 0xae4(r29)
/* 80BFB90C  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 80BFB910  41 82 00 1C */	beq lbl_80BFB92C
/* 80BFB914  54 60 07 B8 */	rlwinm r0, r3, 0, 0x1e, 0x1c
/* 80BFB918  98 1D 0A E4 */	stb r0, 0xae4(r29)
/* 80BFB91C  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80BFB920  D0 1D 06 30 */	stfs f0, 0x630(r29)
/* 80BFB924  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 80BFB928  D0 1D 06 48 */	stfs f0, 0x648(r29)
lbl_80BFB92C:
/* 80BFB92C  80 1D 09 88 */	lwz r0, 0x988(r29)
/* 80BFB930  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80BFB934  90 1D 09 88 */	stw r0, 0x988(r29)
/* 80BFB938  A8 1D 06 0C */	lha r0, 0x60c(r29)
/* 80BFB93C  2C 00 00 00 */	cmpwi r0, 0
/* 80BFB940  40 82 00 3C */	bne lbl_80BFB97C
/* 80BFB944  38 00 00 01 */	li r0, 1
/* 80BFB948  B0 1D 06 0C */	sth r0, 0x60c(r29)
/* 80BFB94C  C0 1D 06 54 */	lfs f0, 0x654(r29)
/* 80BFB950  D0 1D 06 6C */	stfs f0, 0x66c(r29)
/* 80BFB954  C0 1D 06 58 */	lfs f0, 0x658(r29)
/* 80BFB958  D0 1D 06 70 */	stfs f0, 0x670(r29)
/* 80BFB95C  C0 1D 06 5C */	lfs f0, 0x65c(r29)
/* 80BFB960  D0 1D 06 74 */	stfs f0, 0x674(r29)
/* 80BFB964  C0 1D 06 60 */	lfs f0, 0x660(r29)
/* 80BFB968  D0 1D 06 78 */	stfs f0, 0x678(r29)
/* 80BFB96C  C0 1D 06 64 */	lfs f0, 0x664(r29)
/* 80BFB970  D0 1D 06 7C */	stfs f0, 0x67c(r29)
/* 80BFB974  C0 1D 06 68 */	lfs f0, 0x668(r29)
/* 80BFB978  D0 1D 06 80 */	stfs f0, 0x680(r29)
lbl_80BFB97C:
/* 80BFB97C  88 7D 0A E4 */	lbz r3, 0xae4(r29)
/* 80BFB980  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 80BFB984  41 82 00 1C */	beq lbl_80BFB9A0
/* 80BFB988  54 60 00 3C */	rlwinm r0, r3, 0, 0, 0x1e
/* 80BFB98C  98 1D 0A E4 */	stb r0, 0xae4(r29)
/* 80BFB990  38 00 00 01 */	li r0, 1
/* 80BFB994  B0 1D 06 0A */	sth r0, 0x60a(r29)
/* 80BFB998  38 00 00 00 */	li r0, 0
/* 80BFB99C  B0 1D 06 0C */	sth r0, 0x60c(r29)
lbl_80BFB9A0:
/* 80BFB9A0  88 7D 0A E4 */	lbz r3, 0xae4(r29)
/* 80BFB9A4  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 80BFB9A8  41 82 00 54 */	beq lbl_80BFB9FC
/* 80BFB9AC  88 1D 05 70 */	lbz r0, 0x570(r29)
/* 80BFB9B0  28 00 00 05 */	cmplwi r0, 5
/* 80BFB9B4  41 80 00 10 */	blt lbl_80BFB9C4
/* 80BFB9B8  7F A3 EB 78 */	mr r3, r29
/* 80BFB9BC  4B 41 E2 C0 */	b fopAcM_delete__FP10fopAc_ac_c
/* 80BFB9C0  48 00 00 3C */	b lbl_80BFB9FC
lbl_80BFB9C4:
/* 80BFB9C4  54 60 07 FA */	rlwinm r0, r3, 0, 0x1f, 0x1d
/* 80BFB9C8  98 1D 0A E4 */	stb r0, 0xae4(r29)
/* 80BFB9CC  38 00 00 02 */	li r0, 2
/* 80BFB9D0  B0 1D 06 0A */	sth r0, 0x60a(r29)
/* 80BFB9D4  38 00 00 00 */	li r0, 0
/* 80BFB9D8  B0 1D 06 0C */	sth r0, 0x60c(r29)
/* 80BFB9DC  88 1D 05 70 */	lbz r0, 0x570(r29)
/* 80BFB9E0  28 00 00 00 */	cmplwi r0, 0
/* 80BFB9E4  41 82 00 10 */	beq lbl_80BFB9F4
/* 80BFB9E8  80 1D 09 88 */	lwz r0, 0x988(r29)
/* 80BFB9EC  60 00 00 01 */	ori r0, r0, 1
/* 80BFB9F0  90 1D 09 88 */	stw r0, 0x988(r29)
lbl_80BFB9F4:
/* 80BFB9F4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80BFB9F8  D0 1D 07 28 */	stfs f0, 0x728(r29)
lbl_80BFB9FC:
/* 80BFB9FC  39 61 00 30 */	addi r11, r1, 0x30
/* 80BFBA00  4B 76 68 24 */	b _restgpr_28
/* 80BFBA04  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BFBA08  7C 08 03 A6 */	mtlr r0
/* 80BFBA0C  38 21 00 30 */	addi r1, r1, 0x30
/* 80BFBA10  4E 80 00 20 */	blr 
