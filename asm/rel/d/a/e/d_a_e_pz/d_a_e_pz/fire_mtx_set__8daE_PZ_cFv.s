lbl_8075F578:
/* 8075F578  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8075F57C  7C 08 02 A6 */	mflr r0
/* 8075F580  90 01 00 54 */	stw r0, 0x54(r1)
/* 8075F584  39 61 00 50 */	addi r11, r1, 0x50
/* 8075F588  4B C0 2C 40 */	b _savegpr_24
/* 8075F58C  7C 7E 1B 78 */	mr r30, r3
/* 8075F590  3C 60 80 76 */	lis r3, lit_3906@ha
/* 8075F594  3B E3 14 FC */	addi r31, r3, lit_3906@l
/* 8075F598  88 1E 07 D4 */	lbz r0, 0x7d4(r30)
/* 8075F59C  28 00 00 14 */	cmplwi r0, 0x14
/* 8075F5A0  41 80 01 44 */	blt lbl_8075F6E4
/* 8075F5A4  28 00 00 17 */	cmplwi r0, 0x17
/* 8075F5A8  41 81 01 3C */	bgt lbl_8075F6E4
/* 8075F5AC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8075F5B0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8075F5B4  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 8075F5B8  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 8075F5BC  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 8075F5C0  4B BE 73 28 */	b PSMTXTrans
/* 8075F5C4  C0 3E 07 C8 */	lfs f1, 0x7c8(r30)
/* 8075F5C8  FC 40 08 90 */	fmr f2, f1
/* 8075F5CC  FC 60 08 90 */	fmr f3, f1
/* 8075F5D0  4B 8A D8 68 */	b scaleM__14mDoMtx_stack_cFfff
/* 8075F5D4  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 8075F5D8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8075F5DC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8075F5E0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8075F5E4  88 1E 08 42 */	lbz r0, 0x842(r30)
/* 8075F5E8  28 00 00 00 */	cmplwi r0, 0
/* 8075F5EC  41 82 00 BC */	beq lbl_8075F6A8
/* 8075F5F0  3B 00 00 00 */	li r24, 0
/* 8075F5F4  3B A0 00 00 */	li r29, 0
/* 8075F5F8  3B 80 00 00 */	li r28, 0
/* 8075F5FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8075F600  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l
/* 8075F604  3C 60 80 76 */	lis r3, eff_darkHoll_id@ha
/* 8075F608  3B 63 1C D4 */	addi r27, r3, eff_darkHoll_id@l
lbl_8075F60C:
/* 8075F60C  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 8075F610  38 00 00 FF */	li r0, 0xff
/* 8075F614  90 01 00 08 */	stw r0, 8(r1)
/* 8075F618  38 80 00 00 */	li r4, 0
/* 8075F61C  90 81 00 0C */	stw r4, 0xc(r1)
/* 8075F620  38 00 FF FF */	li r0, -1
/* 8075F624  90 01 00 10 */	stw r0, 0x10(r1)
/* 8075F628  90 81 00 14 */	stw r4, 0x14(r1)
/* 8075F62C  90 81 00 18 */	stw r4, 0x18(r1)
/* 8075F630  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8075F634  3B 3C 0A 74 */	addi r25, r28, 0xa74
/* 8075F638  7C 9E C8 2E */	lwzx r4, r30, r25
/* 8075F63C  38 A0 00 00 */	li r5, 0
/* 8075F640  7C DB EA 2E */	lhzx r6, r27, r29
/* 8075F644  38 FE 04 D0 */	addi r7, r30, 0x4d0
/* 8075F648  39 00 00 00 */	li r8, 0
/* 8075F64C  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 8075F650  39 41 00 20 */	addi r10, r1, 0x20
/* 8075F654  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8075F658  4B 8E DE 74 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8075F65C  7C 7E C9 2E */	stwx r3, r30, r25
/* 8075F660  3B 18 00 01 */	addi r24, r24, 1
/* 8075F664  2C 18 00 02 */	cmpwi r24, 2
/* 8075F668  3B BD 00 02 */	addi r29, r29, 2
/* 8075F66C  3B 9C 00 04 */	addi r28, r28, 4
/* 8075F670  41 80 FF 9C */	blt lbl_8075F60C
/* 8075F674  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8075F678  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8075F67C  80 9E 05 BC */	lwz r4, 0x5bc(r30)
/* 8075F680  38 84 00 24 */	addi r4, r4, 0x24
/* 8075F684  4B BE 6E 2C */	b PSMTXCopy
/* 8075F688  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 8075F68C  4B 8A DD 9C */	b play__14mDoExt_baseAnmFv
/* 8075F690  80 1E 05 D8 */	lwz r0, 0x5d8(r30)
/* 8075F694  54 00 10 3A */	slwi r0, r0, 2
/* 8075F698  7C 7E 02 14 */	add r3, r30, r0
/* 8075F69C  80 63 05 C4 */	lwz r3, 0x5c4(r3)
/* 8075F6A0  4B 8A DD 88 */	b play__14mDoExt_baseAnmFv
/* 8075F6A4  48 00 00 40 */	b lbl_8075F6E4
lbl_8075F6A8:
/* 8075F6A8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8075F6AC  7C 03 07 74 */	extsb r3, r0
/* 8075F6B0  4B 8C D9 BC */	b dComIfGp_getReverb__Fi
/* 8075F6B4  7C 65 1B 78 */	mr r5, r3
/* 8075F6B8  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 8075F6BC  38 80 00 00 */	li r4, 0
/* 8075F6C0  4B 8B 19 F0 */	b play__16mDoExt_McaMorfSOFUlSc
/* 8075F6C4  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 8075F6C8  80 83 00 04 */	lwz r4, 4(r3)
/* 8075F6CC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8075F6D0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8075F6D4  38 84 00 24 */	addi r4, r4, 0x24
/* 8075F6D8  4B BE 6D D8 */	b PSMTXCopy
/* 8075F6DC  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 8075F6E0  4B 8B 1B 0C */	b modelCalc__16mDoExt_McaMorfSOFv
lbl_8075F6E4:
/* 8075F6E4  80 1E 06 80 */	lwz r0, 0x680(r30)
/* 8075F6E8  2C 00 00 07 */	cmpwi r0, 7
/* 8075F6EC  40 82 00 30 */	bne lbl_8075F71C
/* 8075F6F0  38 7E 0E AC */	addi r3, r30, 0xeac
/* 8075F6F4  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8075F6F8  4B B0 FF 50 */	b SetC__8cM3dGSphFRC4cXyz
/* 8075F6FC  38 7E 0E AC */	addi r3, r30, 0xeac
/* 8075F700  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 8075F704  4B B1 00 04 */	b SetR__8cM3dGSphFf
/* 8075F708  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8075F70C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8075F710  38 63 23 3C */	addi r3, r3, 0x233c
/* 8075F714  38 9E 0D 88 */	addi r4, r30, 0xd88
/* 8075F718  4B B0 54 90 */	b Set__4cCcSFP8cCcD_Obj
lbl_8075F71C:
/* 8075F71C  39 61 00 50 */	addi r11, r1, 0x50
/* 8075F720  4B C0 2A F4 */	b _restgpr_24
/* 8075F724  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8075F728  7C 08 03 A6 */	mtlr r0
/* 8075F72C  38 21 00 50 */	addi r1, r1, 0x50
/* 8075F730  4E 80 00 20 */	blr 
