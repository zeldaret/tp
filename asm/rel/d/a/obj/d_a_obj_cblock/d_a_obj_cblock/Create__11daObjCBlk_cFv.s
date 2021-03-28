lbl_80BC5ABC:
/* 80BC5ABC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80BC5AC0  7C 08 02 A6 */	mflr r0
/* 80BC5AC4  90 01 00 54 */	stw r0, 0x54(r1)
/* 80BC5AC8  39 61 00 50 */	addi r11, r1, 0x50
/* 80BC5ACC  4B 79 C7 00 */	b _savegpr_25
/* 80BC5AD0  7C 7E 1B 78 */	mr r30, r3
/* 80BC5AD4  3C 60 80 BC */	lis r3, l_cull_box@ha
/* 80BC5AD8  3B E3 6A 38 */	addi r31, r3, l_cull_box@l
/* 80BC5ADC  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80BC5AE0  54 1B 46 3E */	srwi r27, r0, 0x18
/* 80BC5AE4  7F 63 DB 78 */	mr r3, r27
/* 80BC5AE8  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80BC5AEC  7C 04 07 74 */	extsb r4, r0
/* 80BC5AF0  4B 48 BC FC */	b dPath_GetRoomPath__Fii
/* 80BC5AF4  90 7E 0C 9C */	stw r3, 0xc9c(r30)
/* 80BC5AF8  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80BC5AFC  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 80BC5B00  98 1E 0C A0 */	stb r0, 0xca0(r30)
/* 80BC5B04  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80BC5B08  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 80BC5B0C  98 1E 0C A1 */	stb r0, 0xca1(r30)
/* 80BC5B10  28 1B 00 FF */	cmplwi r27, 0xff
/* 80BC5B14  41 82 00 48 */	beq lbl_80BC5B5C
/* 80BC5B18  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BC5B1C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BC5B20  88 9E 0C A0 */	lbz r4, 0xca0(r30)
/* 80BC5B24  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80BC5B28  7C 05 07 74 */	extsb r5, r0
/* 80BC5B2C  4B 46 F8 34 */	b isSwitch__10dSv_info_cCFii
/* 80BC5B30  30 03 FF FF */	addic r0, r3, -1
/* 80BC5B34  7C 00 19 10 */	subfe r0, r0, r3
/* 80BC5B38  80 7E 0C 9C */	lwz r3, 0xc9c(r30)
/* 80BC5B3C  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80BC5B40  4B 48 BC 70 */	b dPath_GetPnt__FPC5dPathi
/* 80BC5B44  C0 03 00 04 */	lfs f0, 4(r3)
/* 80BC5B48  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80BC5B4C  C0 03 00 08 */	lfs f0, 8(r3)
/* 80BC5B50  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80BC5B54  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80BC5B58  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
lbl_80BC5B5C:
/* 80BC5B5C  7F C3 F3 78 */	mr r3, r30
/* 80BC5B60  4B FF FE AD */	bl initBaseMtx__11daObjCBlk_cFv
/* 80BC5B64  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80BC5B68  38 03 00 24 */	addi r0, r3, 0x24
/* 80BC5B6C  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80BC5B70  38 7E 05 B0 */	addi r3, r30, 0x5b0
/* 80BC5B74  38 80 00 FF */	li r4, 0xff
/* 80BC5B78  38 A0 00 FF */	li r5, 0xff
/* 80BC5B7C  7F C6 F3 78 */	mr r6, r30
/* 80BC5B80  4B 4B DC E0 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80BC5B84  3B 20 00 00 */	li r25, 0
/* 80BC5B88  3B A0 00 00 */	li r29, 0
/* 80BC5B8C  3C 60 80 BC */	lis r3, l_cyl_src@ha
/* 80BC5B90  3B 63 6B 28 */	addi r27, r3, l_cyl_src@l
/* 80BC5B94  3B 9E 05 B0 */	addi r28, r30, 0x5b0
lbl_80BC5B98:
/* 80BC5B98  7F 5E EA 14 */	add r26, r30, r29
/* 80BC5B9C  38 7A 07 28 */	addi r3, r26, 0x728
/* 80BC5BA0  7F 64 DB 78 */	mr r4, r27
/* 80BC5BA4  4B 4B ED 10 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80BC5BA8  93 9A 07 6C */	stw r28, 0x76c(r26)
/* 80BC5BAC  3B 39 00 01 */	addi r25, r25, 1
/* 80BC5BB0  2C 19 00 04 */	cmpwi r25, 4
/* 80BC5BB4  3B BD 01 3C */	addi r29, r29, 0x13c
/* 80BC5BB8  41 80 FF E0 */	blt lbl_80BC5B98
/* 80BC5BBC  7F C3 F3 78 */	mr r3, r30
/* 80BC5BC0  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80BC5BC4  38 9F 00 00 */	addi r4, r31, 0
/* 80BC5BC8  C0 44 00 04 */	lfs f2, 4(r4)
/* 80BC5BCC  C0 64 00 08 */	lfs f3, 8(r4)
/* 80BC5BD0  C0 84 00 0C */	lfs f4, 0xc(r4)
/* 80BC5BD4  C0 A4 00 10 */	lfs f5, 0x10(r4)
/* 80BC5BD8  C0 C4 00 14 */	lfs f6, 0x14(r4)
/* 80BC5BDC  4B 45 49 6C */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80BC5BE0  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80BC5BE4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80BC5BE8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80BC5BEC  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80BC5BF0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80BC5BF4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BC5BF8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BC5BFC  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 80BC5C00  4B 44 67 DC */	b mDoMtx_YrotS__FPA4_fs
/* 80BC5C04  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BC5C08  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BC5C0C  38 81 00 20 */	addi r4, r1, 0x20
/* 80BC5C10  7C 85 23 78 */	mr r5, r4
/* 80BC5C14  4B 78 11 58 */	b PSMTXMultVec
/* 80BC5C18  83 3E 0C 18 */	lwz r25, 0xc18(r30)
/* 80BC5C1C  3B 5E 0C 24 */	addi r26, r30, 0xc24
/* 80BC5C20  7F C3 F3 78 */	mr r3, r30
/* 80BC5C24  38 99 00 04 */	addi r4, r25, 4
/* 80BC5C28  48 00 09 A5 */	bl getChainBasePos__11daObjCBlk_cFP4cXyz
/* 80BC5C2C  C0 19 00 04 */	lfs f0, 4(r25)
/* 80BC5C30  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80BC5C34  C0 19 00 08 */	lfs f0, 8(r25)
/* 80BC5C38  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80BC5C3C  C0 19 00 0C */	lfs f0, 0xc(r25)
/* 80BC5C40  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80BC5C44  3B 20 00 00 */	li r25, 0
lbl_80BC5C48:
/* 80BC5C48  38 61 00 08 */	addi r3, r1, 8
/* 80BC5C4C  38 81 00 14 */	addi r4, r1, 0x14
/* 80BC5C50  38 A1 00 20 */	addi r5, r1, 0x20
/* 80BC5C54  4B 6A 0E 90 */	b __pl__4cXyzCFRC3Vec
/* 80BC5C58  C0 01 00 08 */	lfs f0, 8(r1)
/* 80BC5C5C  D0 1A 00 00 */	stfs f0, 0(r26)
/* 80BC5C60  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80BC5C64  D0 1A 00 04 */	stfs f0, 4(r26)
/* 80BC5C68  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80BC5C6C  D0 1A 00 08 */	stfs f0, 8(r26)
/* 80BC5C70  C0 1A 00 00 */	lfs f0, 0(r26)
/* 80BC5C74  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80BC5C78  C0 1A 00 04 */	lfs f0, 4(r26)
/* 80BC5C7C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80BC5C80  C0 1A 00 08 */	lfs f0, 8(r26)
/* 80BC5C84  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80BC5C88  3B 39 00 01 */	addi r25, r25, 1
/* 80BC5C8C  2C 19 00 07 */	cmpwi r25, 7
/* 80BC5C90  3B 5A 00 0C */	addi r26, r26, 0xc
/* 80BC5C94  41 80 FF B4 */	blt lbl_80BC5C48
/* 80BC5C98  7F C3 F3 78 */	mr r3, r30
/* 80BC5C9C  48 00 05 D5 */	bl initWait__11daObjCBlk_cFv
/* 80BC5CA0  38 60 00 01 */	li r3, 1
/* 80BC5CA4  39 61 00 50 */	addi r11, r1, 0x50
/* 80BC5CA8  4B 79 C5 70 */	b _restgpr_25
/* 80BC5CAC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80BC5CB0  7C 08 03 A6 */	mtlr r0
/* 80BC5CB4  38 21 00 50 */	addi r1, r1, 0x50
/* 80BC5CB8  4E 80 00 20 */	blr 
