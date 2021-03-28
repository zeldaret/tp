lbl_80055A14:
/* 80055A14  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80055A18  7C 08 02 A6 */	mflr r0
/* 80055A1C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80055A20  39 61 00 30 */	addi r11, r1, 0x30
/* 80055A24  48 30 C7 B1 */	bl _savegpr_27
/* 80055A28  7C 7E 1B 78 */	mr r30, r3
/* 80055A2C  7C 9B 23 78 */	mr r27, r4
/* 80055A30  3C 60 80 3B */	lis r3, cNullVec__6Z2Calc@ha
/* 80055A34  3B E3 87 A0 */	addi r31, r3, cNullVec__6Z2Calc@l
/* 80055A38  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80055A3C  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 80055A40  48 2B AC FD */	bl reinitGX__6J3DSysFv
/* 80055A44  38 60 00 00 */	li r3, 0
/* 80055A48  48 30 96 8D */	bl GXSetNumIndStages
/* 80055A4C  48 15 2B E1 */	bl dKy_GxFog_set__Fv
/* 80055A50  38 60 00 02 */	li r3, 2
/* 80055A54  38 80 00 00 */	li r4, 0
/* 80055A58  38 A0 00 00 */	li r5, 0
/* 80055A5C  38 C0 00 00 */	li r6, 0
/* 80055A60  38 E0 00 00 */	li r7, 0
/* 80055A64  39 00 00 00 */	li r8, 0
/* 80055A68  39 20 00 02 */	li r9, 2
/* 80055A6C  48 30 81 01 */	bl GXSetChanCtrl
/* 80055A70  38 60 00 09 */	li r3, 9
/* 80055A74  38 9F 00 8C */	addi r4, r31, 0x8c
/* 80055A78  38 A0 00 0C */	li r5, 0xc
/* 80055A7C  48 30 60 AD */	bl GXSetArray
/* 80055A80  38 60 00 00 */	li r3, 0
/* 80055A84  38 80 00 00 */	li r4, 0
/* 80055A88  38 A0 00 00 */	li r5, 0
/* 80055A8C  38 C0 00 1E */	li r6, 0x1e
/* 80055A90  38 E0 00 00 */	li r7, 0
/* 80055A94  39 00 00 7D */	li r8, 0x7d
/* 80055A98  48 30 60 E5 */	bl GXSetTexCoordGen2
/* 80055A9C  38 60 00 01 */	li r3, 1
/* 80055AA0  48 30 9D F1 */	bl GXSetNumTevStages
/* 80055AA4  38 60 00 00 */	li r3, 0
/* 80055AA8  38 80 00 09 */	li r4, 9
/* 80055AAC  38 A0 00 01 */	li r5, 1
/* 80055AB0  38 C0 00 04 */	li r6, 4
/* 80055AB4  38 E0 00 00 */	li r7, 0
/* 80055AB8  48 30 5B 0D */	bl GXSetVtxAttrFmt
/* 80055ABC  7F 63 DB 78 */	mr r3, r27
/* 80055AC0  38 80 00 00 */	li r4, 0
/* 80055AC4  48 30 A7 89 */	bl GXLoadPosMtxImm
/* 80055AC8  80 02 86 B4 */	lwz r0, lit_5433(r2)
/* 80055ACC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80055AD0  38 60 00 02 */	li r3, 2
/* 80055AD4  38 81 00 10 */	addi r4, r1, 0x10
/* 80055AD8  48 30 7F 71 */	bl GXSetChanMatColor
/* 80055ADC  38 6D 80 10 */	la r3, mBackColor__13mDoGph_gInf_c(r13) /* 80450590-_SDA_BASE_ */
/* 80055AE0  88 03 00 03 */	lbz r0, 3(r3)
/* 80055AE4  38 6D 80 D8 */	la r3, clearColor(r13) /* 80450658-_SDA_BASE_ */
/* 80055AE8  98 03 00 03 */	stb r0, 3(r3)
/* 80055AEC  80 0D 80 D8 */	lwz r0, clearColor(r13)
/* 80055AF0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80055AF4  38 60 00 02 */	li r3, 2
/* 80055AF8  38 81 00 0C */	addi r4, r1, 0xc
/* 80055AFC  48 30 98 81 */	bl GXSetTevColor
/* 80055B00  80 0D 80 88 */	lwz r0, g_whiteColor(r13)
/* 80055B04  90 01 00 08 */	stw r0, 8(r1)
/* 80055B08  38 60 00 03 */	li r3, 3
/* 80055B0C  38 81 00 08 */	addi r4, r1, 8
/* 80055B10  48 30 98 6D */	bl GXSetTevColor
/* 80055B14  83 9E 00 04 */	lwz r28, 4(r30)
/* 80055B18  3B 60 00 00 */	li r27, 0
/* 80055B1C  3B A0 00 00 */	li r29, 0
/* 80055B20  48 00 00 74 */	b lbl_80055B94
lbl_80055B24:
/* 80055B24  88 1C 00 00 */	lbz r0, 0(r28)
/* 80055B28  28 00 00 01 */	cmplwi r0, 1
/* 80055B2C  40 82 00 64 */	bne lbl_80055B90
/* 80055B30  2C 1B 00 00 */	cmpwi r27, 0
/* 80055B34  40 82 00 1C */	bne lbl_80055B50
/* 80055B38  3C 7D 00 01 */	addis r3, r29, 1
/* 80055B3C  38 63 5E B0 */	addi r3, r3, 0x5eb0
/* 80055B40  7C 7E 1A 14 */	add r3, r30, r3
/* 80055B44  38 80 00 00 */	li r4, 0
/* 80055B48  3B BD 00 20 */	addi r29, r29, 0x20
/* 80055B4C  48 30 88 C9 */	bl GXLoadTexObj
lbl_80055B50:
/* 80055B50  38 60 00 00 */	li r3, 0
/* 80055B54  38 80 00 00 */	li r4, 0
/* 80055B58  38 A0 00 01 */	li r5, 1
/* 80055B5C  38 C0 00 02 */	li r6, 2
/* 80055B60  57 60 10 3A */	slwi r0, r27, 2
/* 80055B64  38 FF 05 EC */	addi r7, r31, 0x5ec
/* 80055B68  7C E7 00 2E */	lwzx r7, r7, r0
/* 80055B6C  48 30 9A 39 */	bl GXSetTevSwapModeTable
/* 80055B70  7F 83 E3 78 */	mr r3, r28
/* 80055B74  4B FF EA 61 */	bl draw__18dDlst_shadowReal_cFv
/* 80055B78  38 7B 00 01 */	addi r3, r27, 1
/* 80055B7C  54 60 F0 02 */	slwi r0, r3, 0x1e
/* 80055B80  54 63 0F FE */	srwi r3, r3, 0x1f
/* 80055B84  7C 03 00 50 */	subf r0, r3, r0
/* 80055B88  54 00 10 3E */	rotlwi r0, r0, 2
/* 80055B8C  7F 60 1A 14 */	add r27, r0, r3
lbl_80055B90:
/* 80055B90  83 9C 25 50 */	lwz r28, 0x2550(r28)
lbl_80055B94:
/* 80055B94  28 1C 00 00 */	cmplwi r28, 0
/* 80055B98  40 82 FF 8C */	bne lbl_80055B24
/* 80055B9C  38 60 00 00 */	li r3, 0
/* 80055BA0  38 80 00 00 */	li r4, 0
/* 80055BA4  38 A0 00 01 */	li r5, 1
/* 80055BA8  38 C0 00 02 */	li r6, 2
/* 80055BAC  38 E0 00 03 */	li r7, 3
/* 80055BB0  48 30 99 F5 */	bl GXSetTevSwapModeTable
/* 80055BB4  38 60 00 00 */	li r3, 0
/* 80055BB8  38 80 00 0D */	li r4, 0xd
/* 80055BBC  38 A0 00 01 */	li r5, 1
/* 80055BC0  38 C0 00 01 */	li r6, 1
/* 80055BC4  38 E0 00 00 */	li r7, 0
/* 80055BC8  48 30 59 FD */	bl GXSetVtxAttrFmt
/* 80055BCC  38 60 00 09 */	li r3, 9
/* 80055BD0  38 9F 02 FC */	addi r4, r31, 0x2fc
/* 80055BD4  38 A0 00 0C */	li r5, 0xc
/* 80055BD8  48 30 5F 51 */	bl GXSetArray
/* 80055BDC  38 60 00 00 */	li r3, 0
/* 80055BE0  38 80 00 01 */	li r4, 1
/* 80055BE4  38 A0 00 04 */	li r5, 4
/* 80055BE8  38 C0 00 3C */	li r6, 0x3c
/* 80055BEC  38 E0 00 00 */	li r7, 0
/* 80055BF0  39 00 00 7D */	li r8, 0x7d
/* 80055BF4  48 30 5F 89 */	bl GXSetTexCoordGen2
/* 80055BF8  38 60 00 00 */	li r3, 0
/* 80055BFC  38 80 00 00 */	li r4, 0
/* 80055C00  38 A0 00 00 */	li r5, 0
/* 80055C04  38 C0 00 FF */	li r6, 0xff
/* 80055C08  48 30 9A ED */	bl GXSetTevOrder
/* 80055C0C  38 60 00 07 */	li r3, 7
/* 80055C10  38 80 00 00 */	li r4, 0
/* 80055C14  38 A0 00 01 */	li r5, 1
/* 80055C18  38 C0 00 07 */	li r6, 7
/* 80055C1C  38 E0 00 00 */	li r7, 0
/* 80055C20  48 30 9A 05 */	bl GXSetAlphaCompare
/* 80055C24  3B 7E 00 0C */	addi r27, r30, 0xc
/* 80055C28  3B 80 00 00 */	li r28, 0
/* 80055C2C  48 00 00 14 */	b lbl_80055C40
lbl_80055C30:
/* 80055C30  7F 63 DB 78 */	mr r3, r27
/* 80055C34  4B FF F5 D9 */	bl draw__20dDlst_shadowSimple_cFv
/* 80055C38  3B 7B 00 68 */	addi r27, r27, 0x68
/* 80055C3C  3B 9C 00 01 */	addi r28, r28, 1
lbl_80055C40:
/* 80055C40  88 1E 00 02 */	lbz r0, 2(r30)
/* 80055C44  7C 1C 00 00 */	cmpw r28, r0
/* 80055C48  41 80 FF E8 */	blt lbl_80055C30
/* 80055C4C  38 60 00 01 */	li r3, 1
/* 80055C50  48 30 9F F5 */	bl GXSetColorUpdate
/* 80055C54  38 60 00 00 */	li r3, 0
/* 80055C58  48 30 A0 19 */	bl GXSetAlphaUpdate
/* 80055C5C  39 61 00 30 */	addi r11, r1, 0x30
/* 80055C60  48 30 C5 C1 */	bl _restgpr_27
/* 80055C64  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80055C68  7C 08 03 A6 */	mtlr r0
/* 80055C6C  38 21 00 30 */	addi r1, r1, 0x30
/* 80055C70  4E 80 00 20 */	blr 
