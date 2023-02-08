lbl_80AD6808:
/* 80AD6808  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80AD680C  7C 08 02 A6 */	mflr r0
/* 80AD6810  90 01 00 64 */	stw r0, 0x64(r1)
/* 80AD6814  39 61 00 60 */	addi r11, r1, 0x60
/* 80AD6818  4B 88 B9 B1 */	bl _savegpr_24
/* 80AD681C  7C 7B 1B 78 */	mr r27, r3
/* 80AD6820  3C 60 80 AD */	lis r3, m__20daNpc_Seirei_Param_c@ha /* 0x80AD7CA8@ha */
/* 80AD6824  3B A3 7C A8 */	addi r29, r3, m__20daNpc_Seirei_Param_c@l /* 0x80AD7CA8@l */
/* 80AD6828  C0 1D 00 A4 */	lfs f0, 0xa4(r29)
/* 80AD682C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80AD6830  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80AD6834  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80AD6838  3B 80 00 00 */	li r28, 0
/* 80AD683C  3B 40 00 00 */	li r26, 0
/* 80AD6840  3B 20 00 00 */	li r25, 0
/* 80AD6844  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AD6848  3B C3 D4 70 */	addi r30, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AD684C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AD6850  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
lbl_80AD6854:
/* 80AD6854  88 1B 0E 45 */	lbz r0, 0xe45(r27)
/* 80AD6858  28 00 00 00 */	cmplwi r0, 0
/* 80AD685C  41 82 00 98 */	beq lbl_80AD68F4
/* 80AD6860  80 7B 05 78 */	lwz r3, 0x578(r27)
/* 80AD6864  80 63 00 04 */	lwz r3, 4(r3)
/* 80AD6868  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80AD686C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80AD6870  38 63 02 A0 */	addi r3, r3, 0x2a0
/* 80AD6874  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AD6878  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AD687C  4B 86 FC 35 */	bl PSMTXCopy
/* 80AD6880  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80AD6884  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80AD6888  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80AD688C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80AD6890  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 80AD6894  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80AD6898  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80AD689C  38 00 00 FF */	li r0, 0xff
/* 80AD68A0  90 01 00 08 */	stw r0, 8(r1)
/* 80AD68A4  38 80 00 00 */	li r4, 0
/* 80AD68A8  90 81 00 0C */	stw r4, 0xc(r1)
/* 80AD68AC  38 00 FF FF */	li r0, -1
/* 80AD68B0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AD68B4  90 81 00 14 */	stw r4, 0x14(r1)
/* 80AD68B8  90 81 00 18 */	stw r4, 0x18(r1)
/* 80AD68BC  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80AD68C0  3B 19 0E 64 */	addi r24, r25, 0xe64
/* 80AD68C4  7C 9B C0 2E */	lwzx r4, r27, r24
/* 80AD68C8  38 A0 00 00 */	li r5, 0
/* 80AD68CC  38 DD 00 C0 */	addi r6, r29, 0xc0
/* 80AD68D0  7C C6 D2 2E */	lhzx r6, r6, r26
/* 80AD68D4  38 E1 00 30 */	addi r7, r1, 0x30
/* 80AD68D8  39 00 00 00 */	li r8, 0
/* 80AD68DC  39 20 00 00 */	li r9, 0
/* 80AD68E0  39 41 00 24 */	addi r10, r1, 0x24
/* 80AD68E4  C0 3D 00 A4 */	lfs f1, 0xa4(r29)
/* 80AD68E8  4B 57 6B E5 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80AD68EC  7C 7B C1 2E */	stwx r3, r27, r24
/* 80AD68F0  48 00 00 E8 */	b lbl_80AD69D8
lbl_80AD68F4:
/* 80AD68F4  80 1B 00 B0 */	lwz r0, 0xb0(r27)
/* 80AD68F8  54 04 A6 3E */	rlwinm r4, r0, 0x14, 0x18, 0x1f
/* 80AD68FC  28 04 00 FF */	cmplwi r4, 0xff
/* 80AD6900  41 82 00 D8 */	beq lbl_80AD69D8
/* 80AD6904  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AD6908  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AD690C  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 80AD6910  7C 05 07 74 */	extsb r5, r0
/* 80AD6914  4B 55 EA 4D */	bl isSwitch__10dSv_info_cCFii
/* 80AD6918  2C 03 00 00 */	cmpwi r3, 0
/* 80AD691C  41 82 00 BC */	beq lbl_80AD69D8
/* 80AD6920  38 7D 00 D0 */	addi r3, r29, 0xd0
/* 80AD6924  7C C3 D2 2E */	lhzx r6, r3, r26
/* 80AD6928  28 06 FF FF */	cmplwi r6, 0xffff
/* 80AD692C  41 82 00 AC */	beq lbl_80AD69D8
/* 80AD6930  C0 1B 05 50 */	lfs f0, 0x550(r27)
/* 80AD6934  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80AD6938  C0 1B 05 54 */	lfs f0, 0x554(r27)
/* 80AD693C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80AD6940  C0 1B 05 58 */	lfs f0, 0x558(r27)
/* 80AD6944  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80AD6948  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80AD694C  38 00 00 FF */	li r0, 0xff
/* 80AD6950  90 01 00 08 */	stw r0, 8(r1)
/* 80AD6954  38 80 00 00 */	li r4, 0
/* 80AD6958  90 81 00 0C */	stw r4, 0xc(r1)
/* 80AD695C  38 00 FF FF */	li r0, -1
/* 80AD6960  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AD6964  90 81 00 14 */	stw r4, 0x14(r1)
/* 80AD6968  90 81 00 18 */	stw r4, 0x18(r1)
/* 80AD696C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80AD6970  3B 19 0E 64 */	addi r24, r25, 0xe64
/* 80AD6974  7C 9B C0 2E */	lwzx r4, r27, r24
/* 80AD6978  38 A0 00 00 */	li r5, 0
/* 80AD697C  38 E1 00 30 */	addi r7, r1, 0x30
/* 80AD6980  39 00 00 00 */	li r8, 0
/* 80AD6984  39 3B 0D 78 */	addi r9, r27, 0xd78
/* 80AD6988  39 41 00 24 */	addi r10, r1, 0x24
/* 80AD698C  C0 3D 00 A4 */	lfs f1, 0xa4(r29)
/* 80AD6990  4B 57 6B 3D */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80AD6994  7C 7B C1 2E */	stwx r3, r27, r24
/* 80AD6998  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600BE@ha */
/* 80AD699C  38 03 00 BE */	addi r0, r3, 0x00BE /* 0x000600BE@l */
/* 80AD69A0  90 01 00 20 */	stw r0, 0x20(r1)
/* 80AD69A4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80AD69A8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80AD69AC  80 63 00 00 */	lwz r3, 0(r3)
/* 80AD69B0  38 81 00 20 */	addi r4, r1, 0x20
/* 80AD69B4  38 A1 00 30 */	addi r5, r1, 0x30
/* 80AD69B8  38 C0 00 00 */	li r6, 0
/* 80AD69BC  38 E0 00 00 */	li r7, 0
/* 80AD69C0  C0 3D 00 A4 */	lfs f1, 0xa4(r29)
/* 80AD69C4  FC 40 08 90 */	fmr f2, f1
/* 80AD69C8  C0 7D 00 AC */	lfs f3, 0xac(r29)
/* 80AD69CC  FC 80 18 90 */	fmr f4, f3
/* 80AD69D0  39 00 00 00 */	li r8, 0
/* 80AD69D4  4B 7D 5B 39 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80AD69D8:
/* 80AD69D8  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80AD69DC  38 63 02 10 */	addi r3, r3, 0x210
/* 80AD69E0  38 19 0E 64 */	addi r0, r25, 0xe64
/* 80AD69E4  7C 9B 00 2E */	lwzx r4, r27, r0
/* 80AD69E8  4B 57 4F 31 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 80AD69EC  28 03 00 00 */	cmplwi r3, 0
/* 80AD69F0  41 82 00 1C */	beq lbl_80AD6A0C
/* 80AD69F4  C0 41 00 38 */	lfs f2, 0x38(r1)
/* 80AD69F8  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 80AD69FC  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80AD6A00  D0 03 00 A4 */	stfs f0, 0xa4(r3)
/* 80AD6A04  D0 23 00 A8 */	stfs f1, 0xa8(r3)
/* 80AD6A08  D0 43 00 AC */	stfs f2, 0xac(r3)
lbl_80AD6A0C:
/* 80AD6A0C  3B 9C 00 01 */	addi r28, r28, 1
/* 80AD6A10  2C 1C 00 07 */	cmpwi r28, 7
/* 80AD6A14  3B 5A 00 02 */	addi r26, r26, 2
/* 80AD6A18  3B 39 00 04 */	addi r25, r25, 4
/* 80AD6A1C  41 80 FE 38 */	blt lbl_80AD6854
/* 80AD6A20  39 61 00 60 */	addi r11, r1, 0x60
/* 80AD6A24  4B 88 B7 F1 */	bl _restgpr_24
/* 80AD6A28  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80AD6A2C  7C 08 03 A6 */	mtlr r0
/* 80AD6A30  38 21 00 60 */	addi r1, r1, 0x60
/* 80AD6A34  4E 80 00 20 */	blr 
