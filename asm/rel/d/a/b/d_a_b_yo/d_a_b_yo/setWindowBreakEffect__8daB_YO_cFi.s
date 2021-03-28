lbl_80630330:
/* 80630330  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80630334  7C 08 02 A6 */	mflr r0
/* 80630338  90 01 00 54 */	stw r0, 0x54(r1)
/* 8063033C  39 61 00 50 */	addi r11, r1, 0x50
/* 80630340  4B D3 1E 90 */	b _savegpr_26
/* 80630344  7C 7F 1B 78 */	mr r31, r3
/* 80630348  7C 80 23 78 */	mr r0, r4
/* 8063034C  38 61 00 20 */	addi r3, r1, 0x20
/* 80630350  38 80 00 00 */	li r4, 0
/* 80630354  54 00 08 3C */	slwi r0, r0, 1
/* 80630358  3C A0 80 64 */	lis r5, yo_window_angle@ha
/* 8063035C  38 A5 9C 44 */	addi r5, r5, yo_window_angle@l
/* 80630360  7C A5 02 AE */	lhax r5, r5, r0
/* 80630364  38 C0 00 00 */	li r6, 0
/* 80630368  4B C3 70 8C */	b __ct__5csXyzFsss
/* 8063036C  3C 60 80 64 */	lis r3, lit_3800@ha
/* 80630370  C0 03 98 24 */	lfs f0, lit_3800@l(r3)
/* 80630374  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80630378  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8063037C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80630380  3B 40 00 00 */	li r26, 0
/* 80630384  3B C0 00 00 */	li r30, 0
/* 80630388  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8063038C  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l
/* 80630390  3C 60 80 64 */	lis r3, madoware_effect_id@ha
/* 80630394  3B 83 9C 50 */	addi r28, r3, madoware_effect_id@l
/* 80630398  3C 60 80 64 */	lis r3, lit_3795@ha
/* 8063039C  3B A3 98 10 */	addi r29, r3, lit_3795@l
lbl_806303A0:
/* 806303A0  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 806303A4  38 80 00 00 */	li r4, 0
/* 806303A8  90 81 00 08 */	stw r4, 8(r1)
/* 806303AC  38 00 FF FF */	li r0, -1
/* 806303B0  90 01 00 0C */	stw r0, 0xc(r1)
/* 806303B4  90 81 00 10 */	stw r4, 0x10(r1)
/* 806303B8  90 81 00 14 */	stw r4, 0x14(r1)
/* 806303BC  90 81 00 18 */	stw r4, 0x18(r1)
/* 806303C0  38 80 00 00 */	li r4, 0
/* 806303C4  7C BC F2 2E */	lhzx r5, r28, r30
/* 806303C8  38 C1 00 28 */	addi r6, r1, 0x28
/* 806303CC  38 FF 01 0C */	addi r7, r31, 0x10c
/* 806303D0  39 01 00 20 */	addi r8, r1, 0x20
/* 806303D4  39 20 00 00 */	li r9, 0
/* 806303D8  39 40 00 FF */	li r10, 0xff
/* 806303DC  C0 3D 00 00 */	lfs f1, 0(r29)
/* 806303E0  4B A1 C6 B0 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806303E4  3B 5A 00 01 */	addi r26, r26, 1
/* 806303E8  2C 1A 00 04 */	cmpwi r26, 4
/* 806303EC  3B DE 00 02 */	addi r30, r30, 2
/* 806303F0  41 80 FF B0 */	blt lbl_806303A0
/* 806303F4  39 61 00 50 */	addi r11, r1, 0x50
/* 806303F8  4B D3 1E 24 */	b _restgpr_26
/* 806303FC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80630400  7C 08 03 A6 */	mtlr r0
/* 80630404  38 21 00 50 */	addi r1, r1, 0x50
/* 80630408  4E 80 00 20 */	blr 
