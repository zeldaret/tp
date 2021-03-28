lbl_80CBA8A8:
/* 80CBA8A8  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80CBA8AC  7C 08 02 A6 */	mflr r0
/* 80CBA8B0  90 01 00 84 */	stw r0, 0x84(r1)
/* 80CBA8B4  39 61 00 80 */	addi r11, r1, 0x80
/* 80CBA8B8  4B 6A 79 1C */	b _savegpr_27
/* 80CBA8BC  7C 7D 1B 78 */	mr r29, r3
/* 80CBA8C0  3C 60 80 CC */	lis r3, l_cull_box@ha
/* 80CBA8C4  3B E3 C3 68 */	addi r31, r3, l_cull_box@l
/* 80CBA8C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CBA8CC  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l
/* 80CBA8D0  83 DB 5D AC */	lwz r30, 0x5dac(r27)
/* 80CBA8D4  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80CBA8D8  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80CBA8DC  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80CBA8E0  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 80CBA8E4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80CBA8E8  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 80CBA8EC  D0 01 00 08 */	stfs f0, 8(r1)
/* 80CBA8F0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80CBA8F4  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 80CBA8F8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CBA8FC  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80CBA900  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80CBA904  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80CBA908  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80CBA90C  3C 60 80 CC */	lis r3, search_coach__FPvPv@ha
/* 80CBA910  38 63 9C 98 */	addi r3, r3, search_coach__FPvPv@l
/* 80CBA914  7F A4 EB 78 */	mr r4, r29
/* 80CBA918  4B 35 EE E0 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80CBA91C  7C 7C 1B 79 */	or. r28, r3, r3
/* 80CBA920  41 82 00 C8 */	beq lbl_80CBA9E8
/* 80CBA924  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80CBA928  4B 35 24 3C */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80CBA92C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CBA930  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CBA934  A8 9C 04 E6 */	lha r4, 0x4e6(r28)
/* 80CBA938  4B 35 1A FC */	b mDoMtx_YrotM__FPA4_fs
/* 80CBA93C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CBA940  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CBA944  38 81 00 20 */	addi r4, r1, 0x20
/* 80CBA948  7C 85 23 78 */	mr r5, r4
/* 80CBA94C  4B 68 C4 20 */	b PSMTXMultVec
/* 80CBA950  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80CBA954  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80CBA958  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80CBA95C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80CBA960  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80CBA964  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80CBA968  38 7D 0C 30 */	addi r3, r29, 0xc30
/* 80CBA96C  38 81 00 38 */	addi r4, r1, 0x38
/* 80CBA970  4B 68 BC 40 */	b PSMTXInverse
/* 80CBA974  38 61 00 38 */	addi r3, r1, 0x38
/* 80CBA978  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80CBA97C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80CBA980  4B 68 BB 30 */	b PSMTXCopy
/* 80CBA984  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CBA988  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CBA98C  38 81 00 2C */	addi r4, r1, 0x2c
/* 80CBA990  7C 85 23 78 */	mr r5, r4
/* 80CBA994  4B 68 C3 D8 */	b PSMTXMultVec
/* 80CBA998  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80CBA99C  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 80CBA9A0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80CBA9A4  4C 40 13 82 */	cror 2, 0, 2
/* 80CBA9A8  40 82 00 40 */	bne lbl_80CBA9E8
/* 80CBA9AC  C0 01 00 08 */	lfs f0, 8(r1)
/* 80CBA9B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CBA9B4  4C 40 13 82 */	cror 2, 0, 2
/* 80CBA9B8  40 82 00 30 */	bne lbl_80CBA9E8
/* 80CBA9BC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80CBA9C0  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 80CBA9C4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80CBA9C8  4C 40 13 82 */	cror 2, 0, 2
/* 80CBA9CC  40 82 00 1C */	bne lbl_80CBA9E8
/* 80CBA9D0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80CBA9D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CBA9D8  4C 40 13 82 */	cror 2, 0, 2
/* 80CBA9DC  40 82 00 0C */	bne lbl_80CBA9E8
/* 80CBA9E0  38 60 00 02 */	li r3, 2
/* 80CBA9E4  48 00 02 3C */	b lbl_80CBAC20
lbl_80CBA9E8:
/* 80CBA9E8  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 80CBA9EC  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80CBA9F0  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 80CBA9F4  7D 89 03 A6 */	mtctr r12
/* 80CBA9F8  4E 80 04 21 */	bctrl 
/* 80CBA9FC  28 03 00 00 */	cmplwi r3, 0
/* 80CBAA00  41 82 00 F0 */	beq lbl_80CBAAF0
/* 80CBAA04  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80CBAA08  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80CBAA0C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80CBAA10  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 80CBAA14  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80CBAA18  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CBAA1C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CBAA20  83 63 5D B8 */	lwz r27, 0x5db8(r3)
/* 80CBAA24  28 1B 00 00 */	cmplwi r27, 0
/* 80CBAA28  41 82 00 C8 */	beq lbl_80CBAAF0
/* 80CBAA2C  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 80CBAA30  4B 35 23 34 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80CBAA34  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CBAA38  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CBAA3C  A8 9B 04 E6 */	lha r4, 0x4e6(r27)
/* 80CBAA40  4B 35 19 F4 */	b mDoMtx_YrotM__FPA4_fs
/* 80CBAA44  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CBAA48  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CBAA4C  38 81 00 20 */	addi r4, r1, 0x20
/* 80CBAA50  7C 85 23 78 */	mr r5, r4
/* 80CBAA54  4B 68 C3 18 */	b PSMTXMultVec
/* 80CBAA58  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80CBAA5C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80CBAA60  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80CBAA64  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80CBAA68  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80CBAA6C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80CBAA70  38 7D 0C 30 */	addi r3, r29, 0xc30
/* 80CBAA74  38 81 00 38 */	addi r4, r1, 0x38
/* 80CBAA78  4B 68 BB 38 */	b PSMTXInverse
/* 80CBAA7C  38 61 00 38 */	addi r3, r1, 0x38
/* 80CBAA80  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80CBAA84  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80CBAA88  4B 68 BA 28 */	b PSMTXCopy
/* 80CBAA8C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CBAA90  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CBAA94  38 81 00 2C */	addi r4, r1, 0x2c
/* 80CBAA98  7C 85 23 78 */	mr r5, r4
/* 80CBAA9C  4B 68 C2 D0 */	b PSMTXMultVec
/* 80CBAAA0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80CBAAA4  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 80CBAAA8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80CBAAAC  4C 40 13 82 */	cror 2, 0, 2
/* 80CBAAB0  40 82 00 40 */	bne lbl_80CBAAF0
/* 80CBAAB4  C0 01 00 08 */	lfs f0, 8(r1)
/* 80CBAAB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CBAABC  4C 40 13 82 */	cror 2, 0, 2
/* 80CBAAC0  40 82 00 30 */	bne lbl_80CBAAF0
/* 80CBAAC4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80CBAAC8  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 80CBAACC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80CBAAD0  4C 40 13 82 */	cror 2, 0, 2
/* 80CBAAD4  40 82 00 1C */	bne lbl_80CBAAF0
/* 80CBAAD8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80CBAADC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CBAAE0  4C 40 13 82 */	cror 2, 0, 2
/* 80CBAAE4  40 82 00 0C */	bne lbl_80CBAAF0
/* 80CBAAE8  38 60 00 03 */	li r3, 3
/* 80CBAAEC  48 00 01 34 */	b lbl_80CBAC20
lbl_80CBAAF0:
/* 80CBAAF0  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80CBAAF4  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80CBAAF8  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80CBAAFC  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 80CBAB00  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80CBAB04  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 80CBAB08  D0 01 00 08 */	stfs f0, 8(r1)
/* 80CBAB0C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80CBAB10  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80CBAB14  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CBAB18  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80CBAB1C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80CBAB20  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80CBAB24  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80CBAB28  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80CBAB2C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80CBAB30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CBAB34  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CBAB38  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80CBAB3C  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80CBAB40  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80CBAB44  41 82 00 18 */	beq lbl_80CBAB5C
/* 80CBAB48  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80CBAB4C  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80CBAB50  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80CBAB54  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80CBAB58  48 00 00 10 */	b lbl_80CBAB68
lbl_80CBAB5C:
/* 80CBAB5C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80CBAB60  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80CBAB64  D0 21 00 28 */	stfs f1, 0x28(r1)
lbl_80CBAB68:
/* 80CBAB68  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CBAB6C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CBAB70  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80CBAB74  4B 35 18 68 */	b mDoMtx_YrotS__FPA4_fs
/* 80CBAB78  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CBAB7C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CBAB80  38 81 00 20 */	addi r4, r1, 0x20
/* 80CBAB84  7C 85 23 78 */	mr r5, r4
/* 80CBAB88  4B 68 C1 E4 */	b PSMTXMultVec
/* 80CBAB8C  38 61 00 2C */	addi r3, r1, 0x2c
/* 80CBAB90  38 81 00 20 */	addi r4, r1, 0x20
/* 80CBAB94  7C 65 1B 78 */	mr r5, r3
/* 80CBAB98  4B 68 C4 F8 */	b PSVECAdd
/* 80CBAB9C  38 7D 0C 30 */	addi r3, r29, 0xc30
/* 80CBABA0  38 81 00 38 */	addi r4, r1, 0x38
/* 80CBABA4  4B 68 BA 0C */	b PSMTXInverse
/* 80CBABA8  38 61 00 38 */	addi r3, r1, 0x38
/* 80CBABAC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80CBABB0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80CBABB4  4B 68 B8 FC */	b PSMTXCopy
/* 80CBABB8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CBABBC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CBABC0  38 81 00 2C */	addi r4, r1, 0x2c
/* 80CBABC4  7C 85 23 78 */	mr r5, r4
/* 80CBABC8  4B 68 C1 A4 */	b PSMTXMultVec
/* 80CBABCC  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80CBABD0  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 80CBABD4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80CBABD8  4C 40 13 82 */	cror 2, 0, 2
/* 80CBABDC  40 82 00 40 */	bne lbl_80CBAC1C
/* 80CBABE0  C0 01 00 08 */	lfs f0, 8(r1)
/* 80CBABE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CBABE8  4C 40 13 82 */	cror 2, 0, 2
/* 80CBABEC  40 82 00 30 */	bne lbl_80CBAC1C
/* 80CBABF0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80CBABF4  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 80CBABF8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80CBABFC  4C 40 13 82 */	cror 2, 0, 2
/* 80CBAC00  40 82 00 1C */	bne lbl_80CBAC1C
/* 80CBAC04  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80CBAC08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CBAC0C  4C 40 13 82 */	cror 2, 0, 2
/* 80CBAC10  40 82 00 0C */	bne lbl_80CBAC1C
/* 80CBAC14  38 60 00 01 */	li r3, 1
/* 80CBAC18  48 00 00 08 */	b lbl_80CBAC20
lbl_80CBAC1C:
/* 80CBAC1C  38 60 00 00 */	li r3, 0
lbl_80CBAC20:
/* 80CBAC20  39 61 00 80 */	addi r11, r1, 0x80
/* 80CBAC24  4B 6A 75 FC */	b _restgpr_27
/* 80CBAC28  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80CBAC2C  7C 08 03 A6 */	mtlr r0
/* 80CBAC30  38 21 00 80 */	addi r1, r1, 0x80
/* 80CBAC34  4E 80 00 20 */	blr 
