lbl_80CBAC38:
/* 80CBAC38  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 80CBAC3C  7C 08 02 A6 */	mflr r0
/* 80CBAC40  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80CBAC44  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80CBAC48  4B 6A 75 8D */	bl _savegpr_27
/* 80CBAC4C  7C 7D 1B 78 */	mr r29, r3
/* 80CBAC50  3C 60 80 CC */	lis r3, l_cull_box@ha /* 0x80CBC368@ha */
/* 80CBAC54  3B E3 C3 68 */	addi r31, r3, l_cull_box@l /* 0x80CBC368@l */
/* 80CBAC58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CBAC5C  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CBAC60  83 DB 5D AC */	lwz r30, 0x5dac(r27)
/* 80CBAC64  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80CBAC68  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80CBAC6C  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80CBAC70  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 80CBAC74  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80CBAC78  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 80CBAC7C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80CBAC80  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80CBAC84  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80CBAC88  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80CBAC8C  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80CBAC90  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80CBAC94  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80CBAC98  3C 60 80 CC */	lis r3, search_coach__FPvPv@ha /* 0x80CB9C98@ha */
/* 80CBAC9C  38 63 9C 98 */	addi r3, r3, search_coach__FPvPv@l /* 0x80CB9C98@l */
/* 80CBACA0  7F A4 EB 78 */	mr r4, r29
/* 80CBACA4  4B 35 EB 55 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80CBACA8  7C 7C 1B 79 */	or. r28, r3, r3
/* 80CBACAC  41 82 00 C8 */	beq lbl_80CBAD74
/* 80CBACB0  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80CBACB4  4B 35 20 B1 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80CBACB8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CBACBC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CBACC0  A8 9C 04 E6 */	lha r4, 0x4e6(r28)
/* 80CBACC4  4B 35 17 71 */	bl mDoMtx_YrotM__FPA4_fs
/* 80CBACC8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CBACCC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CBACD0  38 81 00 2C */	addi r4, r1, 0x2c
/* 80CBACD4  7C 85 23 78 */	mr r5, r4
/* 80CBACD8  4B 68 C0 95 */	bl PSMTXMultVec
/* 80CBACDC  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80CBACE0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80CBACE4  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80CBACE8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80CBACEC  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80CBACF0  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80CBACF4  38 7D 0C 00 */	addi r3, r29, 0xc00
/* 80CBACF8  38 81 00 74 */	addi r4, r1, 0x74
/* 80CBACFC  4B 68 B8 B5 */	bl PSMTXInverse
/* 80CBAD00  38 61 00 74 */	addi r3, r1, 0x74
/* 80CBAD04  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CBAD08  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CBAD0C  4B 68 B7 A5 */	bl PSMTXCopy
/* 80CBAD10  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CBAD14  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CBAD18  38 81 00 38 */	addi r4, r1, 0x38
/* 80CBAD1C  7C 85 23 78 */	mr r5, r4
/* 80CBAD20  4B 68 C0 4D */	bl PSMTXMultVec
/* 80CBAD24  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80CBAD28  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 80CBAD2C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80CBAD30  4C 40 13 82 */	cror 2, 0, 2
/* 80CBAD34  40 82 00 40 */	bne lbl_80CBAD74
/* 80CBAD38  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80CBAD3C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CBAD40  4C 40 13 82 */	cror 2, 0, 2
/* 80CBAD44  40 82 00 30 */	bne lbl_80CBAD74
/* 80CBAD48  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80CBAD4C  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 80CBAD50  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80CBAD54  4C 40 13 82 */	cror 2, 0, 2
/* 80CBAD58  40 82 00 1C */	bne lbl_80CBAD74
/* 80CBAD5C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80CBAD60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CBAD64  4C 40 13 82 */	cror 2, 0, 2
/* 80CBAD68  40 82 00 0C */	bne lbl_80CBAD74
/* 80CBAD6C  38 60 00 02 */	li r3, 2
/* 80CBAD70  48 00 02 3C */	b lbl_80CBAFAC
lbl_80CBAD74:
/* 80CBAD74  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 80CBAD78  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80CBAD7C  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 80CBAD80  7D 89 03 A6 */	mtctr r12
/* 80CBAD84  4E 80 04 21 */	bctrl 
/* 80CBAD88  28 03 00 00 */	cmplwi r3, 0
/* 80CBAD8C  41 82 00 F0 */	beq lbl_80CBAE7C
/* 80CBAD90  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80CBAD94  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80CBAD98  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80CBAD9C  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 80CBADA0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80CBADA4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CBADA8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CBADAC  83 63 5D B8 */	lwz r27, 0x5db8(r3)
/* 80CBADB0  28 1B 00 00 */	cmplwi r27, 0
/* 80CBADB4  41 82 00 C8 */	beq lbl_80CBAE7C
/* 80CBADB8  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 80CBADBC  4B 35 1F A9 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80CBADC0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CBADC4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CBADC8  A8 9B 04 E6 */	lha r4, 0x4e6(r27)
/* 80CBADCC  4B 35 16 69 */	bl mDoMtx_YrotM__FPA4_fs
/* 80CBADD0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CBADD4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CBADD8  38 81 00 2C */	addi r4, r1, 0x2c
/* 80CBADDC  7C 85 23 78 */	mr r5, r4
/* 80CBADE0  4B 68 BF 8D */	bl PSMTXMultVec
/* 80CBADE4  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80CBADE8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80CBADEC  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80CBADF0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80CBADF4  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80CBADF8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80CBADFC  38 7D 0C 00 */	addi r3, r29, 0xc00
/* 80CBAE00  38 81 00 74 */	addi r4, r1, 0x74
/* 80CBAE04  4B 68 B7 AD */	bl PSMTXInverse
/* 80CBAE08  38 61 00 74 */	addi r3, r1, 0x74
/* 80CBAE0C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CBAE10  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CBAE14  4B 68 B6 9D */	bl PSMTXCopy
/* 80CBAE18  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CBAE1C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CBAE20  38 81 00 38 */	addi r4, r1, 0x38
/* 80CBAE24  7C 85 23 78 */	mr r5, r4
/* 80CBAE28  4B 68 BF 45 */	bl PSMTXMultVec
/* 80CBAE2C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80CBAE30  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 80CBAE34  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80CBAE38  4C 40 13 82 */	cror 2, 0, 2
/* 80CBAE3C  40 82 00 40 */	bne lbl_80CBAE7C
/* 80CBAE40  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80CBAE44  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CBAE48  4C 40 13 82 */	cror 2, 0, 2
/* 80CBAE4C  40 82 00 30 */	bne lbl_80CBAE7C
/* 80CBAE50  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80CBAE54  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 80CBAE58  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80CBAE5C  4C 40 13 82 */	cror 2, 0, 2
/* 80CBAE60  40 82 00 1C */	bne lbl_80CBAE7C
/* 80CBAE64  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80CBAE68  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CBAE6C  4C 40 13 82 */	cror 2, 0, 2
/* 80CBAE70  40 82 00 0C */	bne lbl_80CBAE7C
/* 80CBAE74  38 60 00 03 */	li r3, 3
/* 80CBAE78  48 00 01 34 */	b lbl_80CBAFAC
lbl_80CBAE7C:
/* 80CBAE7C  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80CBAE80  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80CBAE84  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80CBAE88  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 80CBAE8C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80CBAE90  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 80CBAE94  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80CBAE98  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80CBAE9C  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80CBAEA0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80CBAEA4  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80CBAEA8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80CBAEAC  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80CBAEB0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80CBAEB4  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80CBAEB8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80CBAEBC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CBAEC0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CBAEC4  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80CBAEC8  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80CBAECC  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80CBAED0  41 82 00 18 */	beq lbl_80CBAEE8
/* 80CBAED4  D0 21 00 08 */	stfs f1, 8(r1)
/* 80CBAED8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80CBAEDC  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80CBAEE0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CBAEE4  48 00 00 10 */	b lbl_80CBAEF4
lbl_80CBAEE8:
/* 80CBAEE8  D0 21 00 08 */	stfs f1, 8(r1)
/* 80CBAEEC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80CBAEF0  D0 21 00 10 */	stfs f1, 0x10(r1)
lbl_80CBAEF4:
/* 80CBAEF4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CBAEF8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CBAEFC  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80CBAF00  4B 35 14 DD */	bl mDoMtx_YrotS__FPA4_fs
/* 80CBAF04  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CBAF08  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CBAF0C  38 81 00 08 */	addi r4, r1, 8
/* 80CBAF10  7C 85 23 78 */	mr r5, r4
/* 80CBAF14  4B 68 BE 59 */	bl PSMTXMultVec
/* 80CBAF18  38 61 00 38 */	addi r3, r1, 0x38
/* 80CBAF1C  38 81 00 08 */	addi r4, r1, 8
/* 80CBAF20  7C 65 1B 78 */	mr r5, r3
/* 80CBAF24  4B 68 C1 6D */	bl PSVECAdd
/* 80CBAF28  38 7D 0C 00 */	addi r3, r29, 0xc00
/* 80CBAF2C  38 81 00 44 */	addi r4, r1, 0x44
/* 80CBAF30  4B 68 B6 81 */	bl PSMTXInverse
/* 80CBAF34  38 61 00 44 */	addi r3, r1, 0x44
/* 80CBAF38  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CBAF3C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CBAF40  4B 68 B5 71 */	bl PSMTXCopy
/* 80CBAF44  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CBAF48  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CBAF4C  38 81 00 38 */	addi r4, r1, 0x38
/* 80CBAF50  7C 85 23 78 */	mr r5, r4
/* 80CBAF54  4B 68 BE 19 */	bl PSMTXMultVec
/* 80CBAF58  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80CBAF5C  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 80CBAF60  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80CBAF64  4C 40 13 82 */	cror 2, 0, 2
/* 80CBAF68  40 82 00 40 */	bne lbl_80CBAFA8
/* 80CBAF6C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80CBAF70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CBAF74  4C 40 13 82 */	cror 2, 0, 2
/* 80CBAF78  40 82 00 30 */	bne lbl_80CBAFA8
/* 80CBAF7C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80CBAF80  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 80CBAF84  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80CBAF88  4C 40 13 82 */	cror 2, 0, 2
/* 80CBAF8C  40 82 00 1C */	bne lbl_80CBAFA8
/* 80CBAF90  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80CBAF94  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CBAF98  4C 40 13 82 */	cror 2, 0, 2
/* 80CBAF9C  40 82 00 0C */	bne lbl_80CBAFA8
/* 80CBAFA0  38 60 00 01 */	li r3, 1
/* 80CBAFA4  48 00 00 08 */	b lbl_80CBAFAC
lbl_80CBAFA8:
/* 80CBAFA8  38 60 00 00 */	li r3, 0
lbl_80CBAFAC:
/* 80CBAFAC  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80CBAFB0  4B 6A 72 71 */	bl _restgpr_27
/* 80CBAFB4  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80CBAFB8  7C 08 03 A6 */	mtlr r0
/* 80CBAFBC  38 21 00 C0 */	addi r1, r1, 0xc0
/* 80CBAFC0  4E 80 00 20 */	blr 
