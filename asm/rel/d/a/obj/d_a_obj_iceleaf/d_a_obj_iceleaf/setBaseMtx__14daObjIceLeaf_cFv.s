lbl_80C24774:
/* 80C24774  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80C24778  7C 08 02 A6 */	mflr r0
/* 80C2477C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80C24780  39 61 00 50 */	addi r11, r1, 0x50
/* 80C24784  4B 73 DA 59 */	bl _savegpr_29
/* 80C24788  7C 7F 1B 78 */	mr r31, r3
/* 80C2478C  88 03 09 60 */	lbz r0, 0x960(r3)
/* 80C24790  28 00 00 00 */	cmplwi r0, 0
/* 80C24794  41 82 01 24 */	beq lbl_80C248B8
/* 80C24798  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C2479C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C247A0  83 C3 5D B4 */	lwz r30, 0x5db4(r3)
/* 80C247A4  3B A0 00 00 */	li r29, 0
/* 80C247A8  80 1E 05 84 */	lwz r0, 0x584(r30)
/* 80C247AC  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 80C247B0  40 82 00 64 */	bne lbl_80C24814
/* 80C247B4  7F C3 F3 78 */	mr r3, r30
/* 80C247B8  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80C247BC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80C247C0  7D 89 03 A6 */	mtctr r12
/* 80C247C4  4E 80 04 21 */	bctrl 
/* 80C247C8  38 9E 05 EC */	addi r4, r30, 0x5ec
/* 80C247CC  38 A1 00 28 */	addi r5, r1, 0x28
/* 80C247D0  4B 72 25 9D */	bl PSMTXMultVec
/* 80C247D4  7F C3 F3 78 */	mr r3, r30
/* 80C247D8  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80C247DC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80C247E0  7D 89 03 A6 */	mtctr r12
/* 80C247E4  4E 80 04 21 */	bctrl 
/* 80C247E8  38 9E 05 E0 */	addi r4, r30, 0x5e0
/* 80C247EC  38 A1 00 34 */	addi r5, r1, 0x34
/* 80C247F0  4B 72 25 7D */	bl PSMTXMultVec
/* 80C247F4  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 80C247F8  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80C247FC  EC 21 00 28 */	fsubs f1, f1, f0
/* 80C24800  C0 41 00 30 */	lfs f2, 0x30(r1)
/* 80C24804  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80C24808  EC 42 00 28 */	fsubs f2, f2, f0
/* 80C2480C  4B 64 2E 69 */	bl cM_atan2s__Fff
/* 80C24810  7C 7D 1B 78 */	mr r29, r3
lbl_80C24814:
/* 80C24814  3C 60 80 C2 */	lis r3, lit_3703@ha /* 0x80C25D64@ha */
/* 80C24818  C0 23 5D 64 */	lfs f1, lit_3703@l(r3)  /* 0x80C25D64@l */
/* 80C2481C  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80C24820  3C 60 80 C2 */	lis r3, lit_3704@ha /* 0x80C25D68@ha */
/* 80C24824  C0 03 5D 68 */	lfs f0, lit_3704@l(r3)  /* 0x80C25D68@l */
/* 80C24828  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80C2482C  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80C24830  7F C3 F3 78 */	mr r3, r30
/* 80C24834  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80C24838  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80C2483C  7D 89 03 A6 */	mtctr r12
/* 80C24840  4E 80 04 21 */	bctrl 
/* 80C24844  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C24848  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C2484C  4B 72 1C 65 */	bl PSMTXCopy
/* 80C24850  7F C3 F3 78 */	mr r3, r30
/* 80C24854  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80C24858  81 8C 01 BC */	lwz r12, 0x1bc(r12)
/* 80C2485C  7D 89 03 A6 */	mtctr r12
/* 80C24860  4E 80 04 21 */	bctrl 
/* 80C24864  7C 65 1B 78 */	mr r5, r3
/* 80C24868  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C2486C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C24870  7F A4 EB 78 */	mr r4, r29
/* 80C24874  38 C0 00 00 */	li r6, 0
/* 80C24878  4B 3E 7A 29 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 80C2487C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C24880  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C24884  38 80 40 00 */	li r4, 0x4000
/* 80C24888  4B 3E 7B AD */	bl mDoMtx_YrotM__FPA4_fs
/* 80C2488C  38 61 00 1C */	addi r3, r1, 0x1c
/* 80C24890  4B 3E 85 45 */	bl transM__14mDoMtx_stack_cFRC4cXyz
/* 80C24894  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C24898  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C2489C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80C248A0  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 80C248A4  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80C248A8  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 80C248AC  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80C248B0  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 80C248B4  48 00 00 14 */	b lbl_80C248C8
lbl_80C248B8:
/* 80C248B8  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80C248BC  4B 3E 84 A9 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80C248C0  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80C248C4  4B 3E 86 81 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
lbl_80C248C8:
/* 80C248C8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C248CC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C248D0  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80C248D4  38 84 00 24 */	addi r4, r4, 0x24
/* 80C248D8  4B 72 1B D9 */	bl PSMTXCopy
/* 80C248DC  80 1F 09 04 */	lwz r0, 0x904(r31)
/* 80C248E0  28 00 00 00 */	cmplwi r0, 0
/* 80C248E4  40 82 00 18 */	bne lbl_80C248FC
/* 80C248E8  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80C248EC  4B 3E 84 79 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80C248F0  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80C248F4  4B 3E 86 51 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80C248F8  48 00 00 C4 */	b lbl_80C249BC
lbl_80C248FC:
/* 80C248FC  3C 60 80 C2 */	lis r3, l_arcName@ha /* 0x80C25DD0@ha */
/* 80C24900  38 63 5D D0 */	addi r3, r3, l_arcName@l /* 0x80C25DD0@l */
/* 80C24904  80 63 00 00 */	lwz r3, 0(r3)
/* 80C24908  38 80 00 04 */	li r4, 4
/* 80C2490C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C24910  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C24914  3C A5 00 02 */	addis r5, r5, 2
/* 80C24918  38 C0 00 80 */	li r6, 0x80
/* 80C2491C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C24920  4B 41 79 CD */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C24924  38 80 00 00 */	li r4, 0
/* 80C24928  38 BF 09 08 */	addi r5, r31, 0x908
/* 80C2492C  81 83 00 00 */	lwz r12, 0(r3)
/* 80C24930  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80C24934  7D 89 03 A6 */	mtctr r12
/* 80C24938  4E 80 04 21 */	bctrl 
/* 80C2493C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C24940  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C24944  C0 3F 09 1C */	lfs f1, 0x91c(r31)
/* 80C24948  C0 5F 09 20 */	lfs f2, 0x920(r31)
/* 80C2494C  C0 7F 09 24 */	lfs f3, 0x924(r31)
/* 80C24950  4B 72 1F 99 */	bl PSMTXTrans
/* 80C24954  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80C24958  4B 3E 84 7D */	bl transM__14mDoMtx_stack_cFRC4cXyz
/* 80C2495C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C24960  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C24964  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80C24968  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C2496C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80C24970  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C24974  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80C24978  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C2497C  A8 7F 04 E4 */	lha r3, 0x4e4(r31)
/* 80C24980  A8 1F 09 14 */	lha r0, 0x914(r31)
/* 80C24984  7C 03 02 14 */	add r0, r3, r0
/* 80C24988  B0 01 00 08 */	sth r0, 8(r1)
/* 80C2498C  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 80C24990  A8 1F 09 16 */	lha r0, 0x916(r31)
/* 80C24994  7C 03 02 14 */	add r0, r3, r0
/* 80C24998  B0 01 00 0A */	sth r0, 0xa(r1)
/* 80C2499C  A8 7F 04 E8 */	lha r3, 0x4e8(r31)
/* 80C249A0  A8 1F 09 18 */	lha r0, 0x918(r31)
/* 80C249A4  7C 03 02 14 */	add r0, r3, r0
/* 80C249A8  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80C249AC  38 61 00 10 */	addi r3, r1, 0x10
/* 80C249B0  4B 3E 83 B5 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80C249B4  38 61 00 08 */	addi r3, r1, 8
/* 80C249B8  4B 3E 85 8D */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
lbl_80C249BC:
/* 80C249BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C249C0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C249C4  38 9F 09 30 */	addi r4, r31, 0x930
/* 80C249C8  4B 72 1A E9 */	bl PSMTXCopy
/* 80C249CC  39 61 00 50 */	addi r11, r1, 0x50
/* 80C249D0  4B 73 D8 59 */	bl _restgpr_29
/* 80C249D4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80C249D8  7C 08 03 A6 */	mtlr r0
/* 80C249DC  38 21 00 50 */	addi r1, r1, 0x50
/* 80C249E0  4E 80 00 20 */	blr 
