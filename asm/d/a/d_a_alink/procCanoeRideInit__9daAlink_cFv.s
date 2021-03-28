lbl_800F4A50:
/* 800F4A50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F4A54  7C 08 02 A6 */	mflr r0
/* 800F4A58  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F4A5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F4A60  93 C1 00 08 */	stw r30, 8(r1)
/* 800F4A64  7C 7E 1B 78 */	mr r30, r3
/* 800F4A68  38 80 00 8C */	li r4, 0x8c
/* 800F4A6C  4B FC D5 01 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800F4A70  7F C3 F3 78 */	mr r3, r30
/* 800F4A74  38 80 00 00 */	li r4, 0
/* 800F4A78  4B FE DB 09 */	bl setHeavyBoots__9daAlink_cFi
/* 800F4A7C  38 7E 28 14 */	addi r3, r30, 0x2814
/* 800F4A80  80 9E 27 F4 */	lwz r4, 0x27f4(r30)
/* 800F4A84  48 06 A2 35 */	bl setData__16daPy_actorKeep_cFP10fopAc_ac_c
/* 800F4A88  7F C3 F3 78 */	mr r3, r30
/* 800F4A8C  38 80 00 00 */	li r4, 0
/* 800F4A90  38 A0 00 00 */	li r5, 0
/* 800F4A94  4B FC C8 49 */	bl deleteEquipItem__9daAlink_cFii
/* 800F4A98  83 FE 27 F4 */	lwz r31, 0x27f4(r30)
/* 800F4A9C  7F C3 F3 78 */	mr r3, r30
/* 800F4AA0  38 80 00 94 */	li r4, 0x94
/* 800F4AA4  3C A0 80 39 */	lis r5, m__23daAlinkHIO_wallCatch_c0@ha
/* 800F4AA8  38 C5 E1 64 */	addi r6, r5, m__23daAlinkHIO_wallCatch_c0@l
/* 800F4AAC  C0 26 00 2C */	lfs f1, 0x2c(r6)
/* 800F4AB0  C0 46 00 50 */	lfs f2, 0x50(r6)
/* 800F4AB4  A8 A6 00 28 */	lha r5, 0x28(r6)
/* 800F4AB8  C0 66 00 34 */	lfs f3, 0x34(r6)
/* 800F4ABC  4B FB 85 51 */	bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsf
/* 800F4AC0  7F C3 F3 78 */	mr r3, r30
/* 800F4AC4  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800F4AC8  C0 5E 05 34 */	lfs f2, 0x534(r30)
/* 800F4ACC  38 80 00 00 */	li r4, 0
/* 800F4AD0  4B FC 6C A1 */	bl setSpecialGravity__9daAlink_cFffi
/* 800F4AD4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800F4AD8  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 800F4ADC  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 800F4AE0  7F C3 F3 78 */	mr r3, r30
/* 800F4AE4  7F E4 FB 78 */	mr r4, r31
/* 800F4AE8  4B FF FA 7D */	bl setRideCanoeBasePos__9daAlink_cFP10fopAc_ac_c
/* 800F4AEC  7F E3 FB 78 */	mr r3, r31
/* 800F4AF0  7F C4 F3 78 */	mr r4, r30
/* 800F4AF4  4B F2 5C 1D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 800F4AF8  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 800F4AFC  7C 04 18 50 */	subf r0, r4, r3
/* 800F4B00  7C 00 07 35 */	extsh. r0, r0
/* 800F4B04  40 81 00 20 */	ble lbl_800F4B24
/* 800F4B08  38 04 C0 00 */	addi r0, r4, -16384
/* 800F4B0C  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 800F4B10  38 00 00 00 */	li r0, 0
/* 800F4B14  B0 1E 30 08 */	sth r0, 0x3008(r30)
/* 800F4B18  C0 02 95 1C */	lfs f0, lit_20991(r2)
/* 800F4B1C  D0 1E 37 C8 */	stfs f0, 0x37c8(r30)
/* 800F4B20  48 00 00 1C */	b lbl_800F4B3C
lbl_800F4B24:
/* 800F4B24  38 04 40 00 */	addi r0, r4, 0x4000
/* 800F4B28  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 800F4B2C  38 00 00 01 */	li r0, 1
/* 800F4B30  B0 1E 30 08 */	sth r0, 0x3008(r30)
/* 800F4B34  C0 02 95 20 */	lfs f0, lit_20992(r2)
/* 800F4B38  D0 1E 37 C8 */	stfs f0, 0x37c8(r30)
lbl_800F4B3C:
/* 800F4B3C  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 800F4B40  38 63 00 24 */	addi r3, r3, 0x24
/* 800F4B44  38 9E 37 C8 */	addi r4, r30, 0x37c8
/* 800F4B48  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 800F4B4C  48 25 22 21 */	bl PSMTXMultVec
/* 800F4B50  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 800F4B54  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 800F4B58  7F C3 F3 78 */	mr r3, r30
/* 800F4B5C  4B FF F4 69 */	bl initCanoeRide__9daAlink_cFv
/* 800F4B60  38 00 00 80 */	li r0, 0x80
/* 800F4B64  B0 1E 30 0E */	sth r0, 0x300e(r30)
/* 800F4B68  7F C3 F3 78 */	mr r3, r30
/* 800F4B6C  38 80 00 01 */	li r4, 1
/* 800F4B70  48 00 E7 59 */	bl swimOutAfter__9daAlink_cFi
/* 800F4B74  38 60 00 01 */	li r3, 1
/* 800F4B78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F4B7C  83 C1 00 08 */	lwz r30, 8(r1)
/* 800F4B80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F4B84  7C 08 03 A6 */	mtlr r0
/* 800F4B88  38 21 00 10 */	addi r1, r1, 0x10
/* 800F4B8C  4E 80 00 20 */	blr 
