lbl_80029A8C:
/* 80029A8C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80029A90  7C 08 02 A6 */	mflr r0
/* 80029A94  90 01 00 74 */	stw r0, 0x74(r1)
/* 80029A98  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80029A9C  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80029AA0  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 80029AA4  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 80029AA8  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 80029AAC  F3 A1 00 48 */	psq_st f29, 72(r1), 0, 0 /* qr0 */
/* 80029AB0  DB 81 00 30 */	stfd f28, 0x30(r1)
/* 80029AB4  F3 81 00 38 */	psq_st f28, 56(r1), 0, 0 /* qr0 */
/* 80029AB8  39 61 00 30 */	addi r11, r1, 0x30
/* 80029ABC  48 33 87 19 */	bl _savegpr_27
/* 80029AC0  7C 7B 1B 78 */	mr r27, r3
/* 80029AC4  7C BC 2B 78 */	mr r28, r5
/* 80029AC8  7C DD 33 78 */	mr r29, r6
/* 80029ACC  7C FE 3B 78 */	mr r30, r7
/* 80029AD0  7D 1F 43 78 */	mr r31, r8
/* 80029AD4  C0 02 82 E4 */	lfs f0, lit_4321(r2)
/* 80029AD8  FC 20 00 90 */	fmr f1, f0
/* 80029ADC  FC 40 00 90 */	fmr f2, f0
/* 80029AE0  FC 60 00 90 */	fmr f3, f0
/* 80029AE4  2C 04 00 00 */	cmpwi r4, 0
/* 80029AE8  41 80 00 C0 */	blt lbl_80029BA8
/* 80029AEC  C3 ED 88 E8 */	lfs f31, mMinX__8dMpath_c(r13)
/* 80029AF0  C3 CD 88 F0 */	lfs f30, mMinZ__8dMpath_c(r13)
/* 80029AF4  C3 AD 88 EC */	lfs f29, mMaxX__8dMpath_c(r13)
/* 80029AF8  C3 8D 88 F4 */	lfs f28, mMaxZ__8dMpath_c(r13)
/* 80029AFC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80029B00  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80029B04  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80029B08  D0 01 00 08 */	stfs f0, 8(r1)
/* 80029B0C  3C 60 80 3F */	lis r3, mStatus__20dStage_roomControl_c@ha /* 0x803F6094@ha */
/* 80029B10  38 63 60 94 */	addi r3, r3, mStatus__20dStage_roomControl_c@l /* 0x803F6094@l */
/* 80029B14  1C 04 04 04 */	mulli r0, r4, 0x404
/* 80029B18  7C 63 02 14 */	add r3, r3, r0
/* 80029B1C  80 03 00 20 */	lwz r0, 0x20(r3)
/* 80029B20  28 00 00 00 */	cmplwi r0, 0
/* 80029B24  41 82 00 1C */	beq lbl_80029B40
/* 80029B28  7C 83 23 78 */	mr r3, r4
/* 80029B2C  38 81 00 14 */	addi r4, r1, 0x14
/* 80029B30  38 A1 00 10 */	addi r5, r1, 0x10
/* 80029B34  38 C1 00 0C */	addi r6, r1, 0xc
/* 80029B38  38 E1 00 08 */	addi r7, r1, 8
/* 80029B3C  48 01 56 B9 */	bl getRoomMinMaxXZ__10dMapInfo_nFiPfPfPfPf
lbl_80029B40:
/* 80029B40  7F 63 DB 78 */	mr r3, r27
/* 80029B44  48 00 06 79 */	bl getDispType__6dMap_cCFv
/* 80029B48  2C 03 00 04 */	cmpwi r3, 4
/* 80029B4C  41 82 00 24 */	beq lbl_80029B70
/* 80029B50  40 80 00 14 */	bge lbl_80029B64
/* 80029B54  2C 03 00 01 */	cmpwi r3, 1
/* 80029B58  41 82 00 2C */	beq lbl_80029B84
/* 80029B5C  40 80 00 3C */	bge lbl_80029B98
/* 80029B60  48 00 00 10 */	b lbl_80029B70
lbl_80029B64:
/* 80029B64  2C 03 00 06 */	cmpwi r3, 6
/* 80029B68  40 80 00 08 */	bge lbl_80029B70
/* 80029B6C  48 00 00 2C */	b lbl_80029B98
lbl_80029B70:
/* 80029B70  FC 00 F8 90 */	fmr f0, f31
/* 80029B74  FC 20 F0 90 */	fmr f1, f30
/* 80029B78  FC 40 E8 90 */	fmr f2, f29
/* 80029B7C  FC 60 E0 90 */	fmr f3, f28
/* 80029B80  48 00 00 28 */	b lbl_80029BA8
lbl_80029B84:
/* 80029B84  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80029B88  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 80029B8C  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 80029B90  C0 61 00 08 */	lfs f3, 8(r1)
/* 80029B94  48 00 00 14 */	b lbl_80029BA8
lbl_80029B98:
/* 80029B98  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80029B9C  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 80029BA0  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 80029BA4  C0 61 00 08 */	lfs f3, 8(r1)
lbl_80029BA8:
/* 80029BA8  28 1C 00 00 */	cmplwi r28, 0
/* 80029BAC  41 82 00 08 */	beq lbl_80029BB4
/* 80029BB0  D0 1C 00 00 */	stfs f0, 0(r28)
lbl_80029BB4:
/* 80029BB4  28 1D 00 00 */	cmplwi r29, 0
/* 80029BB8  41 82 00 08 */	beq lbl_80029BC0
/* 80029BBC  D0 3D 00 00 */	stfs f1, 0(r29)
lbl_80029BC0:
/* 80029BC0  28 1E 00 00 */	cmplwi r30, 0
/* 80029BC4  41 82 00 08 */	beq lbl_80029BCC
/* 80029BC8  D0 5E 00 00 */	stfs f2, 0(r30)
lbl_80029BCC:
/* 80029BCC  28 1F 00 00 */	cmplwi r31, 0
/* 80029BD0  41 82 00 08 */	beq lbl_80029BD8
/* 80029BD4  D0 7F 00 00 */	stfs f3, 0(r31)
lbl_80029BD8:
/* 80029BD8  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80029BDC  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80029BE0  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 80029BE4  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 80029BE8  E3 A1 00 48 */	psq_l f29, 72(r1), 0, 0 /* qr0 */
/* 80029BEC  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 80029BF0  E3 81 00 38 */	psq_l f28, 56(r1), 0, 0 /* qr0 */
/* 80029BF4  CB 81 00 30 */	lfd f28, 0x30(r1)
/* 80029BF8  39 61 00 30 */	addi r11, r1, 0x30
/* 80029BFC  48 33 86 25 */	bl _restgpr_27
/* 80029C00  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80029C04  7C 08 03 A6 */	mtlr r0
/* 80029C08  38 21 00 70 */	addi r1, r1, 0x70
/* 80029C0C  4E 80 00 20 */	blr 
