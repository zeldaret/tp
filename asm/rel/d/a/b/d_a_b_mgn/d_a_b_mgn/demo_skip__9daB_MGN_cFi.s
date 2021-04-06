lbl_8060BE6C:
/* 8060BE6C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8060BE70  7C 08 02 A6 */	mflr r0
/* 8060BE74  90 01 00 44 */	stw r0, 0x44(r1)
/* 8060BE78  39 61 00 40 */	addi r11, r1, 0x40
/* 8060BE7C  4B D5 63 59 */	bl _savegpr_27
/* 8060BE80  7C 7F 1B 78 */	mr r31, r3
/* 8060BE84  3C 60 80 61 */	lis r3, lit_3928@ha /* 0x8060FDE0@ha */
/* 8060BE88  3B A3 FD E0 */	addi r29, r3, lit_3928@l /* 0x8060FDE0@l */
/* 8060BE8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8060BE90  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8060BE94  88 1E 5D B0 */	lbz r0, 0x5db0(r30)
/* 8060BE98  7C 00 07 74 */	extsb r0, r0
/* 8060BE9C  1C 00 00 38 */	mulli r0, r0, 0x38
/* 8060BEA0  7C 7E 02 14 */	add r3, r30, r0
/* 8060BEA4  83 83 5D 74 */	lwz r28, 0x5d74(r3)
/* 8060BEA8  C0 1D 00 04 */	lfs f0, 4(r29)
/* 8060BEAC  D0 1F 0A F0 */	stfs f0, 0xaf0(r31)
/* 8060BEB0  38 7E 5B D4 */	addi r3, r30, 0x5bd4
/* 8060BEB4  38 80 00 1F */	li r4, 0x1f
/* 8060BEB8  4B A6 3E DD */	bl StopQuake__12dVibration_cFi
/* 8060BEBC  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8060BEC0  80 63 00 04 */	lwz r3, 4(r3)
/* 8060BEC4  83 63 00 04 */	lwz r27, 4(r3)
/* 8060BEC8  38 7B 00 58 */	addi r3, r27, 0x58
/* 8060BECC  80 9F 05 C0 */	lwz r4, 0x5c0(r31)
/* 8060BED0  80 84 00 14 */	lwz r4, 0x14(r4)
/* 8060BED4  4B D2 39 AD */	bl removeTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey
/* 8060BED8  3C 60 80 61 */	lis r3, d_a_b_mgn__stringBase0@ha /* 0x80610084@ha */
/* 8060BEDC  38 63 00 84 */	addi r3, r3, d_a_b_mgn__stringBase0@l /* 0x80610084@l */
/* 8060BEE0  38 63 00 07 */	addi r3, r3, 7
/* 8060BEE4  38 80 00 33 */	li r4, 0x33
/* 8060BEE8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8060BEEC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8060BEF0  3C A5 00 02 */	addis r5, r5, 2
/* 8060BEF4  38 C0 00 80 */	li r6, 0x80
/* 8060BEF8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8060BEFC  4B A3 03 F1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8060BF00  7C 65 1B 78 */	mr r5, r3
/* 8060BF04  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 8060BF08  38 9B 00 58 */	addi r4, r27, 0x58
/* 8060BF0C  38 C0 00 01 */	li r6, 1
/* 8060BF10  38 E0 00 02 */	li r7, 2
/* 8060BF14  C0 3D 00 08 */	lfs f1, 8(r29)
/* 8060BF18  39 00 00 00 */	li r8, 0
/* 8060BF1C  39 20 FF FF */	li r9, -1
/* 8060BF20  4B A0 17 ED */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 8060BF24  C0 3D 00 04 */	lfs f1, 4(r29)
/* 8060BF28  D0 3F 04 D0 */	stfs f1, 0x4d0(r31)
/* 8060BF2C  D0 3F 04 D4 */	stfs f1, 0x4d4(r31)
/* 8060BF30  C0 1D 01 6C */	lfs f0, 0x16c(r29)
/* 8060BF34  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 8060BF38  D0 3F 0A C8 */	stfs f1, 0xac8(r31)
/* 8060BF3C  C0 1D 01 70 */	lfs f0, 0x170(r29)
/* 8060BF40  D0 1F 0A CC */	stfs f0, 0xacc(r31)
/* 8060BF44  C0 1D 01 74 */	lfs f0, 0x174(r29)
/* 8060BF48  D0 1F 0A D0 */	stfs f0, 0xad0(r31)
/* 8060BF4C  C0 1D 01 78 */	lfs f0, 0x178(r29)
/* 8060BF50  D0 1F 0A BC */	stfs f0, 0xabc(r31)
/* 8060BF54  C0 1D 00 CC */	lfs f0, 0xcc(r29)
/* 8060BF58  D0 1F 0A C0 */	stfs f0, 0xac0(r31)
/* 8060BF5C  C0 1D 01 7C */	lfs f0, 0x17c(r29)
/* 8060BF60  D0 1F 0A C4 */	stfs f0, 0xac4(r31)
/* 8060BF64  C0 1F 0A C8 */	lfs f0, 0xac8(r31)
/* 8060BF68  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8060BF6C  C0 1F 0A CC */	lfs f0, 0xacc(r31)
/* 8060BF70  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8060BF74  C0 1F 0A D0 */	lfs f0, 0xad0(r31)
/* 8060BF78  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8060BF7C  C0 1F 0A BC */	lfs f0, 0xabc(r31)
/* 8060BF80  D0 01 00 08 */	stfs f0, 8(r1)
/* 8060BF84  C0 1F 0A C0 */	lfs f0, 0xac0(r31)
/* 8060BF88  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8060BF8C  C0 1F 0A C4 */	lfs f0, 0xac4(r31)
/* 8060BF90  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8060BF94  38 7C 02 48 */	addi r3, r28, 0x248
/* 8060BF98  38 81 00 14 */	addi r4, r1, 0x14
/* 8060BF9C  38 A1 00 08 */	addi r5, r1, 8
/* 8060BFA0  4B B7 4C 79 */	bl Reset__9dCamera_cF4cXyz4cXyz
/* 8060BFA4  38 7C 02 48 */	addi r3, r28, 0x248
/* 8060BFA8  4B B5 55 05 */	bl Start__9dCamera_cFv
/* 8060BFAC  38 7C 02 48 */	addi r3, r28, 0x248
/* 8060BFB0  38 80 00 00 */	li r4, 0
/* 8060BFB4  4B B5 70 59 */	bl SetTrimSize__9dCamera_cFl
/* 8060BFB8  38 7E 4E C8 */	addi r3, r30, 0x4ec8
/* 8060BFBC  4B A3 64 AD */	bl reset__14dEvt_control_cFv
/* 8060BFC0  38 00 00 01 */	li r0, 1
/* 8060BFC4  98 1F 0A F8 */	stb r0, 0xaf8(r31)
/* 8060BFC8  C0 1D 00 08 */	lfs f0, 8(r29)
/* 8060BFCC  D0 1F 0A F4 */	stfs f0, 0xaf4(r31)
/* 8060BFD0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8060BFD4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8060BFD8  80 63 00 00 */	lwz r3, 0(r3)
/* 8060BFDC  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 8060BFE0  38 80 00 1E */	li r4, 0x1e
/* 8060BFE4  4B CA 3E F9 */	bl bgmStreamStop__8Z2SeqMgrFUl
/* 8060BFE8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8060BFEC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8060BFF0  80 63 00 00 */	lwz r3, 0(r3)
/* 8060BFF4  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 8060BFF8  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000087@ha */
/* 8060BFFC  38 84 00 87 */	addi r4, r4, 0x0087 /* 0x01000087@l */
/* 8060C000  38 A0 00 00 */	li r5, 0
/* 8060C004  38 C0 00 00 */	li r6, 0
/* 8060C008  4B CA 30 09 */	bl bgmStart__8Z2SeqMgrFUlUll
/* 8060C00C  7F E3 FB 78 */	mr r3, r31
/* 8060C010  38 80 00 02 */	li r4, 2
/* 8060C014  38 A0 00 00 */	li r5, 0
/* 8060C018  4B FF BA 15 */	bl setActionMode__9daB_MGN_cFii
/* 8060C01C  39 61 00 40 */	addi r11, r1, 0x40
/* 8060C020  4B D5 62 01 */	bl _restgpr_27
/* 8060C024  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8060C028  7C 08 03 A6 */	mtlr r0
/* 8060C02C  38 21 00 40 */	addi r1, r1, 0x40
/* 8060C030  4E 80 00 20 */	blr 
