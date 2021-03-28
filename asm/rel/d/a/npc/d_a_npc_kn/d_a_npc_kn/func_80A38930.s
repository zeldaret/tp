lbl_80A38930:
/* 80A38930  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A38934  7C 08 02 A6 */	mflr r0
/* 80A38938  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A3893C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A38940  93 C1 00 08 */	stw r30, 8(r1)
/* 80A38944  7C 7E 1B 78 */	mr r30, r3
/* 80A38948  4B FF 33 E9 */	bl setParam__10daNpc_Kn_cFv
/* 80A3894C  7F C3 F3 78 */	mr r3, r30
/* 80A38950  81 9E 0E 40 */	lwz r12, 0xe40(r30)
/* 80A38954  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80A38958  7D 89 03 A6 */	mtctr r12
/* 80A3895C  4E 80 04 21 */	bctrl 
/* 80A38960  2C 03 00 00 */	cmpwi r3, 0
/* 80A38964  40 82 00 0C */	bne lbl_80A38970
/* 80A38968  7F C3 F3 78 */	mr r3, r30
/* 80A3896C  4B FF 3A 91 */	bl action__10daNpc_Kn_cFv
lbl_80A38970:
/* 80A38970  7F C3 F3 78 */	mr r3, r30
/* 80A38974  4B FF 3B 11 */	bl beforeMove__10daNpc_Kn_cFv
/* 80A38978  3C 60 80 A4 */	lis r3, lit_4204@ha
/* 80A3897C  C0 23 09 00 */	lfs f1, lit_4204@l(r3)
/* 80A38980  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 80A38984  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80A38988  41 82 00 14 */	beq lbl_80A3899C
/* 80A3898C  7F C3 F3 78 */	mr r3, r30
/* 80A38990  38 9E 08 A8 */	addi r4, r30, 0x8a8
/* 80A38994  4B 5E 1D 38 */	b fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 80A38998  48 00 00 10 */	b lbl_80A389A8
lbl_80A3899C:
/* 80A3899C  7F C3 F3 78 */	mr r3, r30
/* 80A389A0  38 9E 08 A8 */	addi r4, r30, 0x8a8
/* 80A389A4  4B 5E 1C BC */	b fopAcM_posMove__FP10fopAc_ac_cPC4cXyz
lbl_80A389A8:
/* 80A389A8  38 7E 06 D0 */	addi r3, r30, 0x6d0
/* 80A389AC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A389B0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80A389B4  3B E4 0F 38 */	addi r31, r4, 0xf38
/* 80A389B8  7F E4 FB 78 */	mr r4, r31
/* 80A389BC  4B 63 E0 F0 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80A389C0  80 1E 07 AC */	lwz r0, 0x7ac(r30)
/* 80A389C4  90 1E 09 64 */	stw r0, 0x964(r30)
/* 80A389C8  80 1E 07 B0 */	lwz r0, 0x7b0(r30)
/* 80A389CC  90 1E 09 68 */	stw r0, 0x968(r30)
/* 80A389D0  80 1E 07 B4 */	lwz r0, 0x7b4(r30)
/* 80A389D4  90 1E 09 6C */	stw r0, 0x96c(r30)
/* 80A389D8  88 1E 07 B8 */	lbz r0, 0x7b8(r30)
/* 80A389DC  98 1E 09 70 */	stb r0, 0x970(r30)
/* 80A389E0  A0 1E 07 C0 */	lhz r0, 0x7c0(r30)
/* 80A389E4  B0 1E 09 78 */	sth r0, 0x978(r30)
/* 80A389E8  A0 1E 07 C2 */	lhz r0, 0x7c2(r30)
/* 80A389EC  B0 1E 09 7A */	sth r0, 0x97a(r30)
/* 80A389F0  80 1E 07 C4 */	lwz r0, 0x7c4(r30)
/* 80A389F4  90 1E 09 7C */	stw r0, 0x97c(r30)
/* 80A389F8  80 1E 07 C8 */	lwz r0, 0x7c8(r30)
/* 80A389FC  90 1E 09 80 */	stw r0, 0x980(r30)
/* 80A38A00  C0 1E 07 D0 */	lfs f0, 0x7d0(r30)
/* 80A38A04  D0 1E 09 88 */	stfs f0, 0x988(r30)
/* 80A38A08  C0 1E 07 D4 */	lfs f0, 0x7d4(r30)
/* 80A38A0C  D0 1E 09 8C */	stfs f0, 0x98c(r30)
/* 80A38A10  C0 1E 07 D8 */	lfs f0, 0x7d8(r30)
/* 80A38A14  D0 1E 09 90 */	stfs f0, 0x990(r30)
/* 80A38A18  80 1E 07 DC */	lwz r0, 0x7dc(r30)
/* 80A38A1C  90 1E 09 94 */	stw r0, 0x994(r30)
/* 80A38A20  C0 1E 07 E0 */	lfs f0, 0x7e0(r30)
/* 80A38A24  D0 1E 09 98 */	stfs f0, 0x998(r30)
/* 80A38A28  80 1E 07 E4 */	lwz r0, 0x7e4(r30)
/* 80A38A2C  90 1E 09 9C */	stw r0, 0x99c(r30)
/* 80A38A30  38 7E 09 78 */	addi r3, r30, 0x978
/* 80A38A34  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 80A38A38  4B 5E 50 AC */	b fopAcM_getPolygonAngle__FRC13cBgS_PolyInfos
/* 80A38A3C  B0 7E 0D F0 */	sth r3, 0xdf0(r30)
/* 80A38A40  C0 1E 07 68 */	lfs f0, 0x768(r30)
/* 80A38A44  D0 1E 0E 14 */	stfs f0, 0xe14(r30)
/* 80A38A48  7F C3 F3 78 */	mr r3, r30
/* 80A38A4C  4B FF 3A B1 */	bl afterMoved__10daNpc_Kn_cFv
/* 80A38A50  3C 60 80 A4 */	lis r3, lit_4205@ha
/* 80A38A54  C0 23 09 04 */	lfs f1, lit_4205@l(r3)
/* 80A38A58  C0 1E 0E 14 */	lfs f0, 0xe14(r30)
/* 80A38A5C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80A38A60  41 82 00 14 */	beq lbl_80A38A74
/* 80A38A64  7F C3 F3 78 */	mr r3, r30
/* 80A38A68  48 00 05 45 */	bl setEnvTevColor__10daNpc_Kn_cFv
/* 80A38A6C  7F C3 F3 78 */	mr r3, r30
/* 80A38A70  48 00 05 99 */	bl setRoomNo__10daNpc_Kn_cFv
lbl_80A38A74:
/* 80A38A74  38 60 00 00 */	li r3, 0
/* 80A38A78  80 1E 0B 94 */	lwz r0, 0xb94(r30)
/* 80A38A7C  2C 00 00 00 */	cmpwi r0, 0
/* 80A38A80  40 82 00 14 */	bne lbl_80A38A94
/* 80A38A84  80 1E 0B 98 */	lwz r0, 0xb98(r30)
/* 80A38A88  2C 00 FF FF */	cmpwi r0, -1
/* 80A38A8C  40 82 00 08 */	bne lbl_80A38A94
/* 80A38A90  38 60 00 01 */	li r3, 1
lbl_80A38A94:
/* 80A38A94  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A38A98  41 82 00 0C */	beq lbl_80A38AA4
/* 80A38A9C  7F C3 F3 78 */	mr r3, r30
/* 80A38AA0  48 00 0B 3D */	bl ctrlFaceMotion__10daNpc_Kn_cFv
lbl_80A38AA4:
/* 80A38AA4  38 60 00 00 */	li r3, 0
/* 80A38AA8  80 1E 0B B8 */	lwz r0, 0xbb8(r30)
/* 80A38AAC  2C 00 00 00 */	cmpwi r0, 0
/* 80A38AB0  40 82 00 14 */	bne lbl_80A38AC4
/* 80A38AB4  80 1E 0B BC */	lwz r0, 0xbbc(r30)
/* 80A38AB8  2C 00 FF FF */	cmpwi r0, -1
/* 80A38ABC  40 82 00 08 */	bne lbl_80A38AC4
/* 80A38AC0  38 60 00 01 */	li r3, 1
lbl_80A38AC4:
/* 80A38AC4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A38AC8  41 82 00 0C */	beq lbl_80A38AD4
/* 80A38ACC  7F C3 F3 78 */	mr r3, r30
/* 80A38AD0  48 00 0B B5 */	bl ctrlMotion__10daNpc_Kn_cFv
lbl_80A38AD4:
/* 80A38AD4  7F C3 F3 78 */	mr r3, r30
/* 80A38AD8  48 00 06 A5 */	bl playAllAnm__10daNpc_Kn_cFv
/* 80A38ADC  7F C3 F3 78 */	mr r3, r30
/* 80A38AE0  48 00 0A FD */	bl ctrlFaceMotion__10daNpc_Kn_cFv
/* 80A38AE4  7F C3 F3 78 */	mr r3, r30
/* 80A38AE8  48 00 0B 9D */	bl ctrlMotion__10daNpc_Kn_cFv
/* 80A38AEC  7F C3 F3 78 */	mr r3, r30
/* 80A38AF0  4B FF 3A 7D */	bl setAttnPos__10daNpc_Kn_cFv
/* 80A38AF4  7F C3 F3 78 */	mr r3, r30
/* 80A38AF8  81 9E 0E 40 */	lwz r12, 0xe40(r30)
/* 80A38AFC  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 80A38B00  7D 89 03 A6 */	mtctr r12
/* 80A38B04  4E 80 04 21 */	bctrl 
/* 80A38B08  7F C3 F3 78 */	mr r3, r30
/* 80A38B0C  4B FF 3C 71 */	bl setCollision__10daNpc_Kn_cFv
/* 80A38B10  88 1E 0E 33 */	lbz r0, 0xe33(r30)
/* 80A38B14  28 00 00 00 */	cmplwi r0, 0
/* 80A38B18  40 82 00 5C */	bne lbl_80A38B74
/* 80A38B1C  88 1E 0E 39 */	lbz r0, 0xe39(r30)
/* 80A38B20  28 00 00 00 */	cmplwi r0, 0
/* 80A38B24  41 82 00 28 */	beq lbl_80A38B4C
/* 80A38B28  38 00 00 00 */	li r0, 0
/* 80A38B2C  88 7F 40 75 */	lbz r3, 0x4075(r31)
/* 80A38B30  28 03 00 00 */	cmplwi r3, 0
/* 80A38B34  41 82 00 0C */	beq lbl_80A38B40
/* 80A38B38  28 03 00 02 */	cmplwi r3, 2
/* 80A38B3C  40 82 00 08 */	bne lbl_80A38B44
lbl_80A38B40:
/* 80A38B40  38 00 00 01 */	li r0, 1
lbl_80A38B44:
/* 80A38B44  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80A38B48  40 82 00 18 */	bne lbl_80A38B60
lbl_80A38B4C:
/* 80A38B4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A38B50  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A38B54  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80A38B58  28 00 00 00 */	cmplwi r0, 0
/* 80A38B5C  40 82 00 18 */	bne lbl_80A38B74
lbl_80A38B60:
/* 80A38B60  7F C3 F3 78 */	mr r3, r30
/* 80A38B64  81 9E 0E 40 */	lwz r12, 0xe40(r30)
/* 80A38B68  81 8C 00 48 */	lwz r12, 0x48(r12)
/* 80A38B6C  7D 89 03 A6 */	mtctr r12
/* 80A38B70  4E 80 04 21 */	bctrl 
lbl_80A38B74:
/* 80A38B74  7F C3 F3 78 */	mr r3, r30
/* 80A38B78  81 9E 0E 40 */	lwz r12, 0xe40(r30)
/* 80A38B7C  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 80A38B80  7D 89 03 A6 */	mtctr r12
/* 80A38B84  4E 80 04 21 */	bctrl 
/* 80A38B88  7F C3 F3 78 */	mr r3, r30
/* 80A38B8C  81 9E 0E 40 */	lwz r12, 0xe40(r30)
/* 80A38B90  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 80A38B94  7D 89 03 A6 */	mtctr r12
/* 80A38B98  4E 80 04 21 */	bctrl 
/* 80A38B9C  38 60 00 01 */	li r3, 1
/* 80A38BA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A38BA4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A38BA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A38BAC  7C 08 03 A6 */	mtlr r0
/* 80A38BB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A38BB4  4E 80 00 20 */	blr 
