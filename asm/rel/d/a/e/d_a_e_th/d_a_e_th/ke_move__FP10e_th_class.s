lbl_807B0A6C:
/* 807B0A6C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 807B0A70  7C 08 02 A6 */	mflr r0
/* 807B0A74  90 01 00 54 */	stw r0, 0x54(r1)
/* 807B0A78  39 61 00 50 */	addi r11, r1, 0x50
/* 807B0A7C  4B BB 17 59 */	bl _savegpr_27
/* 807B0A80  7C 7F 1B 78 */	mr r31, r3
/* 807B0A84  3C 60 80 7B */	lis r3, lit_3906@ha /* 0x807B449C@ha */
/* 807B0A88  3B C3 44 9C */	addi r30, r3, lit_3906@l /* 0x807B449C@l */
/* 807B0A8C  38 60 00 0C */	li r3, 0xc
/* 807B0A90  38 80 00 7B */	li r4, 0x7b
/* 807B0A94  38 A0 00 46 */	li r5, 0x46
/* 807B0A98  4B AB 6F 3D */	bl cM_initRnd2__Fiii
/* 807B0A9C  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 807B0AA0  80 63 00 04 */	lwz r3, 4(r3)
/* 807B0AA4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 807B0AA8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807B0AAC  38 63 00 C0 */	addi r3, r3, 0xc0
/* 807B0AB0  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 807B0AB4  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 807B0AB8  80 84 00 00 */	lwz r4, 0(r4)
/* 807B0ABC  4B B9 59 F5 */	bl PSMTXCopy
/* 807B0AC0  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807B0AC4  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 807B0AC8  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 807B0ACC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807B0AD0  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 807B0AD4  38 61 00 20 */	addi r3, r1, 0x20
/* 807B0AD8  38 81 00 14 */	addi r4, r1, 0x14
/* 807B0ADC  4B AC 04 11 */	bl MtxPosition__FP4cXyzP4cXyz
/* 807B0AE0  38 61 00 08 */	addi r3, r1, 8
/* 807B0AE4  38 9F 0D 9C */	addi r4, r31, 0xd9c
/* 807B0AE8  38 A1 00 14 */	addi r5, r1, 0x14
/* 807B0AEC  4B AB 60 49 */	bl __mi__4cXyzCFRC3Vec
/* 807B0AF0  C0 21 00 08 */	lfs f1, 8(r1)
/* 807B0AF4  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 807B0AF8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 807B0AFC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807B0B00  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 807B0B04  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 807B0B08  4B AB 6B 6D */	bl cM_atan2s__Fff
/* 807B0B0C  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 807B0B10  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807B0B14  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 807B0B18  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807B0B1C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807B0B20  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807B0B24  3B 60 00 00 */	li r27, 0
/* 807B0B28  3B C0 00 00 */	li r30, 0
/* 807B0B2C  7C 7D 07 34 */	extsh r29, r3
lbl_807B0B30:
/* 807B0B30  38 61 00 20 */	addi r3, r1, 0x20
/* 807B0B34  7F 9F F2 14 */	add r28, r31, r30
/* 807B0B38  38 9C 0D 9C */	addi r4, r28, 0xd9c
/* 807B0B3C  4B AC 03 B1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 807B0B40  A8 1F 06 E8 */	lha r0, 0x6e8(r31)
/* 807B0B44  7C 00 00 D0 */	neg r0, r0
/* 807B0B48  B0 1C 0F 04 */	sth r0, 0xf04(r28)
/* 807B0B4C  38 1B FF FF */	addi r0, r27, -1
/* 807B0B50  54 00 58 28 */	slwi r0, r0, 0xb
/* 807B0B54  7C 1D 02 14 */	add r0, r29, r0
/* 807B0B58  B0 1C 0F 06 */	sth r0, 0xf06(r28)
/* 807B0B5C  2C 1B 00 01 */	cmpwi r27, 1
/* 807B0B60  40 82 00 10 */	bne lbl_807B0B70
/* 807B0B64  A8 7C 0F 04 */	lha r3, 0xf04(r28)
/* 807B0B68  38 03 05 00 */	addi r0, r3, 0x500
/* 807B0B6C  B0 1C 0F 04 */	sth r0, 0xf04(r28)
lbl_807B0B70:
/* 807B0B70  3B 7B 00 01 */	addi r27, r27, 1
/* 807B0B74  2C 1B 00 03 */	cmpwi r27, 3
/* 807B0B78  3B DE 01 7C */	addi r30, r30, 0x17c
/* 807B0B7C  41 80 FF B4 */	blt lbl_807B0B30
/* 807B0B80  3B 7F 0D 9C */	addi r27, r31, 0xd9c
/* 807B0B84  3B 80 00 00 */	li r28, 0
lbl_807B0B88:
/* 807B0B88  7F E3 FB 78 */	mr r3, r31
/* 807B0B8C  7F 64 DB 78 */	mr r4, r27
/* 807B0B90  7F 85 E3 78 */	mr r5, r28
/* 807B0B94  4B FF FA 9D */	bl ke_control__FP10e_th_classP7th_ke_si
/* 807B0B98  7F E3 FB 78 */	mr r3, r31
/* 807B0B9C  7F 64 DB 78 */	mr r4, r27
/* 807B0BA0  7F 85 E3 78 */	mr r5, r28
/* 807B0BA4  4B FF FE 01 */	bl ke_pos_set__FP10e_th_classP7th_ke_si
/* 807B0BA8  3B 9C 00 01 */	addi r28, r28, 1
/* 807B0BAC  2C 1C 00 03 */	cmpwi r28, 3
/* 807B0BB0  3B 7B 01 7C */	addi r27, r27, 0x17c
/* 807B0BB4  41 80 FF D4 */	blt lbl_807B0B88
/* 807B0BB8  39 61 00 50 */	addi r11, r1, 0x50
/* 807B0BBC  4B BB 16 65 */	bl _restgpr_27
/* 807B0BC0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 807B0BC4  7C 08 03 A6 */	mtlr r0
/* 807B0BC8  38 21 00 50 */	addi r1, r1, 0x50
/* 807B0BCC  4E 80 00 20 */	blr 
