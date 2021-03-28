lbl_80025744:
/* 80025744  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80025748  7C 08 02 A6 */	mflr r0
/* 8002574C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80025750  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80025754  93 C1 00 08 */	stw r30, 8(r1)
/* 80025758  7C 7E 1B 78 */	mr r30, r3
/* 8002575C  80 84 00 08 */	lwz r4, 8(r4)
/* 80025760  81 83 00 00 */	lwz r12, 0(r3)
/* 80025764  81 8C 00 B8 */	lwz r12, 0xb8(r12)
/* 80025768  7D 89 03 A6 */	mtctr r12
/* 8002576C  4E 80 04 21 */	bctrl 
/* 80025770  7F C3 F3 78 */	mr r3, r30
/* 80025774  4B FF E7 8D */	bl dStage_isBossStage__FP11dStage_dt_c
/* 80025778  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8002577C  40 82 00 40 */	bne lbl_800257BC
/* 80025780  3C 60 80 38 */	lis r3, d_d_stage__stringBase0@ha
/* 80025784  38 63 8A 50 */	addi r3, r3, d_d_stage__stringBase0@l
/* 80025788  38 63 00 E3 */	addi r3, r3, 0xe3
/* 8002578C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80025790  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80025794  3C 84 00 02 */	addis r4, r4, 2
/* 80025798  38 84 D4 F8 */	addi r4, r4, -11016
/* 8002579C  38 A0 00 40 */	li r5, 0x40
/* 800257A0  48 01 69 F5 */	bl deleteRes__14dRes_control_cFPCcP11dRes_info_ci
/* 800257A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800257A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800257AC  85 83 4E 20 */	lwzu r12, 0x4e20(r3)
/* 800257B0  81 8C 01 34 */	lwz r12, 0x134(r12)
/* 800257B4  7D 89 03 A6 */	mtctr r12
/* 800257B8  4E 80 04 21 */	bctrl 
lbl_800257BC:
/* 800257BC  7F C3 F3 78 */	mr r3, r30
/* 800257C0  81 9E 00 00 */	lwz r12, 0(r30)
/* 800257C4  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 800257C8  7D 89 03 A6 */	mtctr r12
/* 800257CC  4E 80 04 21 */	bctrl 
/* 800257D0  88 03 00 09 */	lbz r0, 9(r3)
/* 800257D4  54 1F FE FE */	rlwinm r31, r0, 0x1f, 0x1b, 0x1f
/* 800257D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800257DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800257E0  7F E4 FB 78 */	mr r4, r31
/* 800257E4  48 00 F8 D9 */	bl getSave__10dSv_info_cFi
/* 800257E8  3C 60 80 43 */	lis r3, g_save_bit_HIO@ha
/* 800257EC  38 63 07 EC */	addi r3, r3, g_save_bit_HIO@l
/* 800257F0  48 23 6A 09 */	bl init__12dSvBit_HIO_cFv
/* 800257F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800257F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800257FC  38 63 09 78 */	addi r3, r3, 0x978
/* 80025800  7F E4 07 74 */	extsb r4, r31
/* 80025804  48 00 F3 11 */	bl init__12dSv_danBit_cFSc
/* 80025808  7F C3 F3 78 */	mr r3, r30
/* 8002580C  4B FF E7 45 */	bl dStage_KeepDoorInfoInit__FP11dStage_dt_c
/* 80025810  38 60 00 01 */	li r3, 1
/* 80025814  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80025818  83 C1 00 08 */	lwz r30, 8(r1)
/* 8002581C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80025820  7C 08 03 A6 */	mtlr r0
/* 80025824  38 21 00 10 */	addi r1, r1, 0x10
/* 80025828  4E 80 00 20 */	blr 
