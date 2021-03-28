lbl_80B95244:
/* 80B95244  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B95248  7C 08 02 A6 */	mflr r0
/* 80B9524C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B95250  39 61 00 30 */	addi r11, r1, 0x30
/* 80B95254  4B 7C CF 84 */	b _savegpr_28
/* 80B95258  7C 7F 1B 78 */	mr r31, r3
/* 80B9525C  80 83 14 00 */	lwz r4, 0x1400(r3)
/* 80B95260  80 03 14 04 */	lwz r0, 0x1404(r3)
/* 80B95264  90 81 00 0C */	stw r4, 0xc(r1)
/* 80B95268  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B9526C  80 03 14 08 */	lwz r0, 0x1408(r3)
/* 80B95270  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B95274  3B A0 00 0A */	li r29, 0xa
/* 80B95278  48 00 15 9D */	bl selectAction__11daNpc_zrZ_cFv
/* 80B9527C  88 1F 09 F4 */	lbz r0, 0x9f4(r31)
/* 80B95280  28 00 00 00 */	cmplwi r0, 0
/* 80B95284  40 82 00 20 */	bne lbl_80B952A4
/* 80B95288  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B9528C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B95290  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80B95294  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80B95298  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80B9529C  41 82 00 08 */	beq lbl_80B952A4
/* 80B952A0  3B A0 00 00 */	li r29, 0
lbl_80B952A4:
/* 80B952A4  38 7F 14 00 */	addi r3, r31, 0x1400
/* 80B952A8  38 81 00 0C */	addi r4, r1, 0xc
/* 80B952AC  4B 7C CD 9C */	b __ptmf_cmpr
/* 80B952B0  2C 03 00 00 */	cmpwi r3, 0
/* 80B952B4  41 82 00 2C */	beq lbl_80B952E0
/* 80B952B8  3B 80 00 02 */	li r28, 2
/* 80B952BC  3B C0 00 10 */	li r30, 0x10
/* 80B952C0  48 00 00 18 */	b lbl_80B952D8
lbl_80B952C4:
/* 80B952C4  38 7E 0C 80 */	addi r3, r30, 0xc80
/* 80B952C8  7C 7F 1A 14 */	add r3, r31, r3
/* 80B952CC  4B 5B B3 E4 */	b initialize__18daNpcF_ActorMngr_cFv
/* 80B952D0  3B 9C 00 01 */	addi r28, r28, 1
/* 80B952D4  3B DE 00 08 */	addi r30, r30, 8
lbl_80B952D8:
/* 80B952D8  2C 1C 00 02 */	cmpwi r28, 2
/* 80B952DC  41 80 FF E8 */	blt lbl_80B952C4
lbl_80B952E0:
/* 80B952E0  38 00 00 00 */	li r0, 0
/* 80B952E4  90 1F 14 34 */	stw r0, 0x1434(r31)
/* 80B952E8  90 1F 14 38 */	stw r0, 0x1438(r31)
/* 80B952EC  7F E3 FB 78 */	mr r3, r31
/* 80B952F0  38 80 00 05 */	li r4, 5
/* 80B952F4  38 A0 00 06 */	li r5, 6
/* 80B952F8  4B 5B EF 80 */	b getDistTableIdx__8daNpcF_cFii
/* 80B952FC  98 7F 05 44 */	stb r3, 0x544(r31)
/* 80B95300  88 1F 05 44 */	lbz r0, 0x544(r31)
/* 80B95304  98 1F 05 45 */	stb r0, 0x545(r31)
/* 80B95308  7F E3 FB 78 */	mr r3, r31
/* 80B9530C  38 80 00 03 */	li r4, 3
/* 80B95310  38 A0 00 06 */	li r5, 6
/* 80B95314  4B 5B EF 64 */	b getDistTableIdx__8daNpcF_cFii
/* 80B95318  98 7F 05 47 */	stb r3, 0x547(r31)
/* 80B9531C  93 BF 05 5C */	stw r29, 0x55c(r31)
/* 80B95320  3C 60 80 BA */	lis r3, m__17daNpc_zrZ_Param_c@ha
/* 80B95324  38 83 AF EC */	addi r4, r3, m__17daNpc_zrZ_Param_c@l
/* 80B95328  C0 04 00 08 */	lfs f0, 8(r4)
/* 80B9532C  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 80B95330  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 80B95334  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
/* 80B95338  38 7F 07 E4 */	addi r3, r31, 0x7e4
/* 80B9533C  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 80B95340  4B 4E 0C 00 */	b SetWallR__12dBgS_AcchCirFf
/* 80B95344  3C 60 80 BA */	lis r3, m__17daNpc_zrZ_Param_c@ha
/* 80B95348  38 63 AF EC */	addi r3, r3, m__17daNpc_zrZ_Param_c@l
/* 80B9534C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80B95350  D0 1F 08 14 */	stfs f0, 0x814(r31)
/* 80B95354  C0 03 00 04 */	lfs f0, 4(r3)
/* 80B95358  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80B9535C  A8 1F 04 6A */	lha r0, 0x46a(r31)
/* 80B95360  1C 60 00 64 */	mulli r3, r0, 0x64
/* 80B95364  38 00 00 FF */	li r0, 0xff
/* 80B95368  7C 03 03 D6 */	divw r0, r3, r0
/* 80B9536C  28 00 00 01 */	cmplwi r0, 1
/* 80B95370  40 80 00 0C */	bge lbl_80B9537C
/* 80B95374  38 A0 00 01 */	li r5, 1
/* 80B95378  48 00 00 14 */	b lbl_80B9538C
lbl_80B9537C:
/* 80B9537C  28 00 00 64 */	cmplwi r0, 0x64
/* 80B95380  38 A0 00 64 */	li r5, 0x64
/* 80B95384  41 81 00 08 */	bgt lbl_80B9538C
/* 80B95388  7C 05 03 78 */	mr r5, r0
lbl_80B9538C:
/* 80B9538C  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060098@ha */
/* 80B95390  38 03 00 98 */	addi r0, r3, 0x0098 /* 0x00060098@l */
/* 80B95394  90 01 00 08 */	stw r0, 8(r1)
/* 80B95398  38 7F 0B 48 */	addi r3, r31, 0xb48
/* 80B9539C  38 81 00 08 */	addi r4, r1, 8
/* 80B953A0  38 C0 FF FF */	li r6, -1
/* 80B953A4  81 9F 0B 48 */	lwz r12, 0xb48(r31)
/* 80B953A8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80B953AC  7D 89 03 A6 */	mtctr r12
/* 80B953B0  4E 80 04 21 */	bctrl 
/* 80B953B4  39 61 00 30 */	addi r11, r1, 0x30
/* 80B953B8  4B 7C CE 6C */	b _restgpr_28
/* 80B953BC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B953C0  7C 08 03 A6 */	mtlr r0
/* 80B953C4  38 21 00 30 */	addi r1, r1, 0x30
/* 80B953C8  4E 80 00 20 */	blr 
