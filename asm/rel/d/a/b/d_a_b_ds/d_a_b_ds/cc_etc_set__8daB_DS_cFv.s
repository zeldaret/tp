lbl_805D9A40:
/* 805D9A40  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805D9A44  7C 08 02 A6 */	mflr r0
/* 805D9A48  90 01 00 54 */	stw r0, 0x54(r1)
/* 805D9A4C  39 61 00 50 */	addi r11, r1, 0x50
/* 805D9A50  4B D8 87 68 */	b _savegpr_20
/* 805D9A54  7C 7C 1B 78 */	mr r28, r3
/* 805D9A58  A8 03 05 62 */	lha r0, 0x562(r3)
/* 805D9A5C  2C 00 00 01 */	cmpwi r0, 1
/* 805D9A60  40 81 00 FC */	ble lbl_805D9B5C
/* 805D9A64  88 1C 08 52 */	lbz r0, 0x852(r28)
/* 805D9A68  28 00 00 64 */	cmplwi r0, 0x64
/* 805D9A6C  40 82 00 08 */	bne lbl_805D9A74
/* 805D9A70  48 00 00 EC */	b lbl_805D9B5C
lbl_805D9A74:
/* 805D9A74  3B C0 00 12 */	li r30, 0x12
/* 805D9A78  3B A0 00 00 */	li r29, 0
/* 805D9A7C  80 1C 06 80 */	lwz r0, 0x680(r28)
/* 805D9A80  2C 00 00 01 */	cmpwi r0, 1
/* 805D9A84  40 82 00 1C */	bne lbl_805D9AA0
/* 805D9A88  80 1C 06 84 */	lwz r0, 0x684(r28)
/* 805D9A8C  2C 00 00 03 */	cmpwi r0, 3
/* 805D9A90  40 82 00 CC */	bne lbl_805D9B5C
/* 805D9A94  3B C0 00 0C */	li r30, 0xc
/* 805D9A98  48 00 00 0C */	b lbl_805D9AA4
/* 805D9A9C  48 00 00 C0 */	b lbl_805D9B5C
lbl_805D9AA0:
/* 805D9AA0  3B A0 00 0C */	li r29, 0xc
lbl_805D9AA4:
/* 805D9AA4  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 805D9AA8  83 E3 00 04 */	lwz r31, 4(r3)
/* 805D9AAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805D9AB0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805D9AB4  3A E3 23 3C */	addi r23, r3, 0x233c
/* 805D9AB8  3C 60 80 5E */	lis r3, ETC_CC_DT@ha
/* 805D9ABC  3B 03 D0 70 */	addi r24, r3, ETC_CC_DT@l
/* 805D9AC0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805D9AC4  3B 23 D4 70 */	addi r25, r3, now__14mDoMtx_stack_c@l
/* 805D9AC8  1F 5D 00 14 */	mulli r26, r29, 0x14
/* 805D9ACC  1F 7D 01 38 */	mulli r27, r29, 0x138
/* 805D9AD0  48 00 00 84 */	b lbl_805D9B54
lbl_805D9AD4:
/* 805D9AD4  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 805D9AD8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805D9ADC  7E D8 D2 14 */	add r22, r24, r26
/* 805D9AE0  80 16 00 00 */	lwz r0, 0(r22)
/* 805D9AE4  1C 00 00 30 */	mulli r0, r0, 0x30
/* 805D9AE8  7C 63 02 14 */	add r3, r3, r0
/* 805D9AEC  7F 24 CB 78 */	mr r4, r25
/* 805D9AF0  4B D6 C9 C0 */	b PSMTXCopy
/* 805D9AF4  C0 16 00 04 */	lfs f0, 4(r22)
/* 805D9AF8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 805D9AFC  C0 16 00 08 */	lfs f0, 8(r22)
/* 805D9B00  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805D9B04  C0 16 00 0C */	lfs f0, 0xc(r22)
/* 805D9B08  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805D9B0C  7F 23 CB 78 */	mr r3, r25
/* 805D9B10  38 81 00 14 */	addi r4, r1, 0x14
/* 805D9B14  38 A1 00 08 */	addi r5, r1, 8
/* 805D9B18  4B D6 D2 54 */	b PSMTXMultVec
/* 805D9B1C  7E 9C DA 14 */	add r20, r28, r27
/* 805D9B20  3A B4 14 70 */	addi r21, r20, 0x1470
/* 805D9B24  7E A3 AB 78 */	mr r3, r21
/* 805D9B28  38 81 00 08 */	addi r4, r1, 8
/* 805D9B2C  4B C9 5B 1C */	b SetC__8cM3dGSphFRC4cXyz
/* 805D9B30  7E A3 AB 78 */	mr r3, r21
/* 805D9B34  C0 36 00 10 */	lfs f1, 0x10(r22)
/* 805D9B38  4B C9 5B D0 */	b SetR__8cM3dGSphFf
/* 805D9B3C  7E E3 BB 78 */	mr r3, r23
/* 805D9B40  38 94 13 4C */	addi r4, r20, 0x134c
/* 805D9B44  4B C8 B0 64 */	b Set__4cCcSFP8cCcD_Obj
/* 805D9B48  3B BD 00 01 */	addi r29, r29, 1
/* 805D9B4C  3B 7B 01 38 */	addi r27, r27, 0x138
/* 805D9B50  3B 5A 00 14 */	addi r26, r26, 0x14
lbl_805D9B54:
/* 805D9B54  7C 1D F0 00 */	cmpw r29, r30
/* 805D9B58  41 80 FF 7C */	blt lbl_805D9AD4
lbl_805D9B5C:
/* 805D9B5C  39 61 00 50 */	addi r11, r1, 0x50
/* 805D9B60  4B D8 86 A4 */	b _restgpr_20
/* 805D9B64  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805D9B68  7C 08 03 A6 */	mtlr r0
/* 805D9B6C  38 21 00 50 */	addi r1, r1, 0x50
/* 805D9B70  4E 80 00 20 */	blr 
