lbl_80323920:
/* 80323920  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80323924  7C 08 02 A6 */	mflr r0
/* 80323928  90 01 00 94 */	stw r0, 0x94(r1)
/* 8032392C  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 80323930  93 C1 00 88 */	stw r30, 0x88(r1)
/* 80323934  7C 7E 1B 78 */	mr r30, r3
/* 80323938  7C 9F 23 78 */	mr r31, r4
/* 8032393C  88 03 00 01 */	lbz r0, 1(r3)
/* 80323940  54 04 CF FE */	rlwinm r4, r0, 0x19, 0x1f, 0x1f
/* 80323944  54 00 06 BE */	clrlwi r0, r0, 0x1a
/* 80323948  28 00 00 0B */	cmplwi r0, 0xb
/* 8032394C  41 81 02 78 */	bgt lbl_80323BC4
/* 80323950  3C 60 80 3D */	lis r3, lit_1059@ha /* 0x803CEB28@ha */
/* 80323954  38 63 EB 28 */	addi r3, r3, lit_1059@l /* 0x803CEB28@l */
/* 80323958  54 00 10 3A */	slwi r0, r0, 2
/* 8032395C  7C 03 00 2E */	lwzx r0, r3, r0
/* 80323960  7C 09 03 A6 */	mtctr r0
/* 80323964  4E 80 04 20 */	bctr 
/* 80323968  28 04 00 00 */	cmplwi r4, 0
/* 8032396C  40 82 00 18 */	bne lbl_80323984
/* 80323970  38 7E 00 10 */	addi r3, r30, 0x10
/* 80323974  38 9E 00 04 */	addi r4, r30, 4
/* 80323978  38 A1 00 08 */	addi r5, r1, 8
/* 8032397C  4B FE E1 51 */	bl J3DGetTextureMtx__FRC17J3DTextureSRTInfoRC3VecPA4_f
/* 80323980  48 00 00 18 */	b lbl_80323998
lbl_80323984:
/* 80323984  28 04 00 01 */	cmplwi r4, 1
/* 80323988  40 82 00 10 */	bne lbl_80323998
/* 8032398C  38 7E 00 10 */	addi r3, r30, 0x10
/* 80323990  38 81 00 08 */	addi r4, r1, 8
/* 80323994  4B FE E2 A1 */	bl J3DGetTextureMtxMaya__FRC17J3DTextureSRTInfoPA4_f
lbl_80323998:
/* 80323998  38 61 00 08 */	addi r3, r1, 8
/* 8032399C  3C 80 80 3D */	lis r4, qMtx_1001@ha /* 0x803CEAC8@ha */
/* 803239A0  38 84 EA C8 */	addi r4, r4, qMtx_1001@l /* 0x803CEAC8@l */
/* 803239A4  7C 65 1B 78 */	mr r5, r3
/* 803239A8  48 02 2B 3D */	bl PSMTXConcat
/* 803239AC  38 61 00 08 */	addi r3, r1, 8
/* 803239B0  38 9E 00 24 */	addi r4, r30, 0x24
/* 803239B4  38 A1 00 48 */	addi r5, r1, 0x48
/* 803239B8  4B FE E4 95 */	bl J3DMtxProjConcat__FPA4_fPA4_fPA4_f
/* 803239BC  38 61 00 48 */	addi r3, r1, 0x48
/* 803239C0  7F E4 FB 78 */	mr r4, r31
/* 803239C4  38 BE 00 64 */	addi r5, r30, 0x64
/* 803239C8  48 02 2B 1D */	bl PSMTXConcat
/* 803239CC  48 00 02 28 */	b lbl_80323BF4
/* 803239D0  28 04 00 00 */	cmplwi r4, 0
/* 803239D4  40 82 00 18 */	bne lbl_803239EC
/* 803239D8  38 7E 00 10 */	addi r3, r30, 0x10
/* 803239DC  38 9E 00 04 */	addi r4, r30, 4
/* 803239E0  38 A1 00 48 */	addi r5, r1, 0x48
/* 803239E4  4B FE E0 E9 */	bl J3DGetTextureMtx__FRC17J3DTextureSRTInfoRC3VecPA4_f
/* 803239E8  48 00 00 18 */	b lbl_80323A00
lbl_803239EC:
/* 803239EC  28 04 00 01 */	cmplwi r4, 1
/* 803239F0  40 82 00 10 */	bne lbl_80323A00
/* 803239F4  38 7E 00 10 */	addi r3, r30, 0x10
/* 803239F8  38 81 00 48 */	addi r4, r1, 0x48
/* 803239FC  4B FE E2 39 */	bl J3DGetTextureMtxMaya__FRC17J3DTextureSRTInfoPA4_f
lbl_80323A00:
/* 80323A00  38 61 00 48 */	addi r3, r1, 0x48
/* 80323A04  3C 80 80 3D */	lis r4, qMtx_1001@ha /* 0x803CEAC8@ha */
/* 80323A08  38 84 EA C8 */	addi r4, r4, qMtx_1001@l /* 0x803CEAC8@l */
/* 80323A0C  7C 65 1B 78 */	mr r5, r3
/* 80323A10  48 02 2A D5 */	bl PSMTXConcat
/* 80323A14  38 61 00 48 */	addi r3, r1, 0x48
/* 80323A18  7F E4 FB 78 */	mr r4, r31
/* 80323A1C  38 BE 00 64 */	addi r5, r30, 0x64
/* 80323A20  48 02 2A C5 */	bl PSMTXConcat
/* 80323A24  48 00 01 D0 */	b lbl_80323BF4
/* 80323A28  28 04 00 00 */	cmplwi r4, 0
/* 80323A2C  40 82 00 18 */	bne lbl_80323A44
/* 80323A30  38 7E 00 10 */	addi r3, r30, 0x10
/* 80323A34  38 9E 00 04 */	addi r4, r30, 4
/* 80323A38  38 A1 00 08 */	addi r5, r1, 8
/* 80323A3C  4B FE E1 45 */	bl J3DGetTextureMtxOld__FRC17J3DTextureSRTInfoRC3VecPA4_f
/* 80323A40  48 00 00 18 */	b lbl_80323A58
lbl_80323A44:
/* 80323A44  28 04 00 01 */	cmplwi r4, 1
/* 80323A48  40 82 00 10 */	bne lbl_80323A58
/* 80323A4C  38 7E 00 10 */	addi r3, r30, 0x10
/* 80323A50  38 81 00 08 */	addi r4, r1, 8
/* 80323A54  4B FE E2 91 */	bl J3DGetTextureMtxMayaOld__FRC17J3DTextureSRTInfoPA4_f
lbl_80323A58:
/* 80323A58  38 61 00 08 */	addi r3, r1, 8
/* 80323A5C  3C 80 80 3D */	lis r4, qMtx2_1002@ha /* 0x803CEAF8@ha */
/* 80323A60  38 84 EA F8 */	addi r4, r4, qMtx2_1002@l /* 0x803CEAF8@l */
/* 80323A64  7C 65 1B 78 */	mr r5, r3
/* 80323A68  48 02 2A 7D */	bl PSMTXConcat
/* 80323A6C  38 61 00 08 */	addi r3, r1, 8
/* 80323A70  38 9E 00 24 */	addi r4, r30, 0x24
/* 80323A74  38 A1 00 48 */	addi r5, r1, 0x48
/* 80323A78  4B FE E3 D5 */	bl J3DMtxProjConcat__FPA4_fPA4_fPA4_f
/* 80323A7C  38 61 00 48 */	addi r3, r1, 0x48
/* 80323A80  7F E4 FB 78 */	mr r4, r31
/* 80323A84  38 BE 00 64 */	addi r5, r30, 0x64
/* 80323A88  48 02 2A 5D */	bl PSMTXConcat
/* 80323A8C  48 00 01 68 */	b lbl_80323BF4
/* 80323A90  28 04 00 00 */	cmplwi r4, 0
/* 80323A94  40 82 00 18 */	bne lbl_80323AAC
/* 80323A98  38 7E 00 10 */	addi r3, r30, 0x10
/* 80323A9C  38 9E 00 04 */	addi r4, r30, 4
/* 80323AA0  38 A1 00 48 */	addi r5, r1, 0x48
/* 80323AA4  4B FE E0 DD */	bl J3DGetTextureMtxOld__FRC17J3DTextureSRTInfoRC3VecPA4_f
/* 80323AA8  48 00 00 18 */	b lbl_80323AC0
lbl_80323AAC:
/* 80323AAC  28 04 00 01 */	cmplwi r4, 1
/* 80323AB0  40 82 00 10 */	bne lbl_80323AC0
/* 80323AB4  38 7E 00 10 */	addi r3, r30, 0x10
/* 80323AB8  38 81 00 48 */	addi r4, r1, 0x48
/* 80323ABC  4B FE E2 29 */	bl J3DGetTextureMtxMayaOld__FRC17J3DTextureSRTInfoPA4_f
lbl_80323AC0:
/* 80323AC0  38 61 00 48 */	addi r3, r1, 0x48
/* 80323AC4  3C 80 80 3D */	lis r4, qMtx2_1002@ha /* 0x803CEAF8@ha */
/* 80323AC8  38 84 EA F8 */	addi r4, r4, qMtx2_1002@l /* 0x803CEAF8@l */
/* 80323ACC  7C 65 1B 78 */	mr r5, r3
/* 80323AD0  48 02 2A 15 */	bl PSMTXConcat
/* 80323AD4  38 61 00 48 */	addi r3, r1, 0x48
/* 80323AD8  7F E4 FB 78 */	mr r4, r31
/* 80323ADC  38 BE 00 64 */	addi r5, r30, 0x64
/* 80323AE0  48 02 2A 05 */	bl PSMTXConcat
/* 80323AE4  48 00 01 10 */	b lbl_80323BF4
/* 80323AE8  28 04 00 00 */	cmplwi r4, 0
/* 80323AEC  40 82 00 18 */	bne lbl_80323B04
/* 80323AF0  38 7E 00 10 */	addi r3, r30, 0x10
/* 80323AF4  38 9E 00 04 */	addi r4, r30, 4
/* 80323AF8  38 A1 00 48 */	addi r5, r1, 0x48
/* 80323AFC  4B FE E0 85 */	bl J3DGetTextureMtxOld__FRC17J3DTextureSRTInfoRC3VecPA4_f
/* 80323B00  48 00 00 18 */	b lbl_80323B18
lbl_80323B04:
/* 80323B04  28 04 00 01 */	cmplwi r4, 1
/* 80323B08  40 82 00 10 */	bne lbl_80323B18
/* 80323B0C  38 7E 00 10 */	addi r3, r30, 0x10
/* 80323B10  38 81 00 48 */	addi r4, r1, 0x48
/* 80323B14  4B FE E1 D1 */	bl J3DGetTextureMtxMayaOld__FRC17J3DTextureSRTInfoPA4_f
lbl_80323B18:
/* 80323B18  38 61 00 48 */	addi r3, r1, 0x48
/* 80323B1C  7F E4 FB 78 */	mr r4, r31
/* 80323B20  38 BE 00 64 */	addi r5, r30, 0x64
/* 80323B24  48 02 29 C1 */	bl PSMTXConcat
/* 80323B28  48 00 00 CC */	b lbl_80323BF4
/* 80323B2C  28 04 00 00 */	cmplwi r4, 0
/* 80323B30  40 82 00 18 */	bne lbl_80323B48
/* 80323B34  38 7E 00 10 */	addi r3, r30, 0x10
/* 80323B38  38 9E 00 04 */	addi r4, r30, 4
/* 80323B3C  38 A1 00 08 */	addi r5, r1, 8
/* 80323B40  4B FE E0 41 */	bl J3DGetTextureMtxOld__FRC17J3DTextureSRTInfoRC3VecPA4_f
/* 80323B44  48 00 00 18 */	b lbl_80323B5C
lbl_80323B48:
/* 80323B48  28 04 00 01 */	cmplwi r4, 1
/* 80323B4C  40 82 00 10 */	bne lbl_80323B5C
/* 80323B50  38 7E 00 10 */	addi r3, r30, 0x10
/* 80323B54  38 81 00 08 */	addi r4, r1, 8
/* 80323B58  4B FE E1 8D */	bl J3DGetTextureMtxMayaOld__FRC17J3DTextureSRTInfoPA4_f
lbl_80323B5C:
/* 80323B5C  38 61 00 08 */	addi r3, r1, 8
/* 80323B60  38 9E 00 24 */	addi r4, r30, 0x24
/* 80323B64  38 A1 00 48 */	addi r5, r1, 0x48
/* 80323B68  4B FE E2 E5 */	bl J3DMtxProjConcat__FPA4_fPA4_fPA4_f
/* 80323B6C  38 61 00 48 */	addi r3, r1, 0x48
/* 80323B70  7F E4 FB 78 */	mr r4, r31
/* 80323B74  38 BE 00 64 */	addi r5, r30, 0x64
/* 80323B78  48 02 29 6D */	bl PSMTXConcat
/* 80323B7C  48 00 00 78 */	b lbl_80323BF4
/* 80323B80  28 04 00 00 */	cmplwi r4, 0
/* 80323B84  40 82 00 18 */	bne lbl_80323B9C
/* 80323B88  38 7E 00 10 */	addi r3, r30, 0x10
/* 80323B8C  38 9E 00 04 */	addi r4, r30, 4
/* 80323B90  38 A1 00 08 */	addi r5, r1, 8
/* 80323B94  4B FE DF ED */	bl J3DGetTextureMtxOld__FRC17J3DTextureSRTInfoRC3VecPA4_f
/* 80323B98  48 00 00 18 */	b lbl_80323BB0
lbl_80323B9C:
/* 80323B9C  28 04 00 01 */	cmplwi r4, 1
/* 80323BA0  40 82 00 10 */	bne lbl_80323BB0
/* 80323BA4  38 7E 00 10 */	addi r3, r30, 0x10
/* 80323BA8  38 81 00 08 */	addi r4, r1, 8
/* 80323BAC  4B FE E1 39 */	bl J3DGetTextureMtxMayaOld__FRC17J3DTextureSRTInfoPA4_f
lbl_80323BB0:
/* 80323BB0  38 61 00 08 */	addi r3, r1, 8
/* 80323BB4  38 9E 00 24 */	addi r4, r30, 0x24
/* 80323BB8  38 BE 00 64 */	addi r5, r30, 0x64
/* 80323BBC  4B FE E2 91 */	bl J3DMtxProjConcat__FPA4_fPA4_fPA4_f
/* 80323BC0  48 00 00 34 */	b lbl_80323BF4
lbl_80323BC4:
/* 80323BC4  28 04 00 00 */	cmplwi r4, 0
/* 80323BC8  40 82 00 18 */	bne lbl_80323BE0
/* 80323BCC  38 7E 00 10 */	addi r3, r30, 0x10
/* 80323BD0  38 9E 00 04 */	addi r4, r30, 4
/* 80323BD4  38 BE 00 64 */	addi r5, r30, 0x64
/* 80323BD8  4B FE DF A9 */	bl J3DGetTextureMtxOld__FRC17J3DTextureSRTInfoRC3VecPA4_f
/* 80323BDC  48 00 00 18 */	b lbl_80323BF4
lbl_80323BE0:
/* 80323BE0  28 04 00 01 */	cmplwi r4, 1
/* 80323BE4  40 82 00 10 */	bne lbl_80323BF4
/* 80323BE8  38 7E 00 10 */	addi r3, r30, 0x10
/* 80323BEC  38 9E 00 64 */	addi r4, r30, 0x64
/* 80323BF0  4B FE E0 F5 */	bl J3DGetTextureMtxMayaOld__FRC17J3DTextureSRTInfoPA4_f
lbl_80323BF4:
/* 80323BF4  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 80323BF8  83 C1 00 88 */	lwz r30, 0x88(r1)
/* 80323BFC  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80323C00  7C 08 03 A6 */	mtlr r0
/* 80323C04  38 21 00 90 */	addi r1, r1, 0x90
/* 80323C08  4E 80 00 20 */	blr 
