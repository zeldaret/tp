lbl_80D29ACC:
/* 80D29ACC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D29AD0  7C 08 02 A6 */	mflr r0
/* 80D29AD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D29AD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D29ADC  7C 7F 1B 78 */	mr r31, r3
/* 80D29AE0  4B FF FE D9 */	bl initBaseMtx__15daObjWarpOBrg_cFv
/* 80D29AE4  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80D29AE8  80 83 00 04 */	lwz r4, 4(r3)
/* 80D29AEC  7F E3 FB 78 */	mr r3, r31
/* 80D29AF0  4B 2F 0A 88 */	b fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80D29AF4  38 00 00 36 */	li r0, 0x36
/* 80D29AF8  98 1F 05 47 */	stb r0, 0x547(r31)
/* 80D29AFC  98 1F 05 45 */	stb r0, 0x545(r31)
/* 80D29B00  3C 60 80 D3 */	lis r3, l_arcName@ha
/* 80D29B04  80 03 B9 34 */	lwz r0, l_arcName@l(r3)
/* 80D29B08  90 1F 01 00 */	stw r0, 0x100(r31)
/* 80D29B0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D29B10  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D29B14  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80D29B18  7F E4 FB 78 */	mr r4, r31
/* 80D29B1C  88 1F 04 99 */	lbz r0, 0x499(r31)
/* 80D29B20  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 80D29B24  3C A0 80 D3 */	lis r5, l_portal_warp_name@ha
/* 80D29B28  38 A5 B9 38 */	addi r5, r5, l_portal_warp_name@l
/* 80D29B2C  7C A5 00 2E */	lwzx r5, r5, r0
/* 80D29B30  38 C0 00 FF */	li r6, 0xff
/* 80D29B34  4B 31 DC 24 */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80D29B38  B0 7F 06 34 */	sth r3, 0x634(r31)
/* 80D29B3C  7F E3 FB 78 */	mr r3, r31
/* 80D29B40  48 00 19 F5 */	bl calcMidnaWaitPos__15daObjWarpOBrg_cFv
/* 80D29B44  88 1F 04 99 */	lbz r0, 0x499(r31)
/* 80D29B48  28 00 00 00 */	cmplwi r0, 0
/* 80D29B4C  40 82 00 10 */	bne lbl_80D29B5C
/* 80D29B50  38 00 00 00 */	li r0, 0
/* 80D29B54  98 1F 06 3B */	stb r0, 0x63b(r31)
/* 80D29B58  48 00 00 3C */	b lbl_80D29B94
lbl_80D29B5C:
/* 80D29B5C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D29B60  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D29B64  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D29B68  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80D29B6C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D29B70  7C 05 07 74 */	extsb r5, r0
/* 80D29B74  4B 30 B7 EC */	b isSwitch__10dSv_info_cCFii
/* 80D29B78  2C 03 00 00 */	cmpwi r3, 0
/* 80D29B7C  41 82 00 10 */	beq lbl_80D29B8C
/* 80D29B80  38 00 00 04 */	li r0, 4
/* 80D29B84  98 1F 06 3B */	stb r0, 0x63b(r31)
/* 80D29B88  48 00 00 0C */	b lbl_80D29B94
lbl_80D29B8C:
/* 80D29B8C  38 00 00 05 */	li r0, 5
/* 80D29B90  98 1F 06 3B */	stb r0, 0x63b(r31)
lbl_80D29B94:
/* 80D29B94  7F E3 FB 78 */	mr r3, r31
/* 80D29B98  4B 34 ED B8 */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80D29B9C  38 60 00 01 */	li r3, 1
/* 80D29BA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D29BA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D29BA8  7C 08 03 A6 */	mtlr r0
/* 80D29BAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D29BB0  4E 80 00 20 */	blr 
