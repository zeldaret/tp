lbl_8097A9E4:
/* 8097A9E4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8097A9E8  7C 08 02 A6 */	mflr r0
/* 8097A9EC  90 01 00 44 */	stw r0, 0x44(r1)
/* 8097A9F0  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8097A9F4  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8097A9F8  7C 7F 1B 78 */	mr r31, r3
/* 8097A9FC  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 8097AA00  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8097AA04  2C 00 00 FF */	cmpwi r0, 0xff
/* 8097AA08  40 82 01 5C */	bne lbl_8097AB64
/* 8097AA0C  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 8097AA10  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8097AA14  41 82 01 50 */	beq lbl_8097AB64
/* 8097AA18  88 1F 0A C6 */	lbz r0, 0xac6(r31)
/* 8097AA1C  28 00 00 00 */	cmplwi r0, 0
/* 8097AA20  41 82 00 10 */	beq lbl_8097AA30
/* 8097AA24  4B 82 51 0C */	b dKy_getDarktime_minute__Fv
/* 8097AA28  7C 7E 1B 78 */	mr r30, r3
/* 8097AA2C  48 00 00 0C */	b lbl_8097AA38
lbl_8097AA30:
/* 8097AA30  4B 82 50 0C */	b dKy_getdaytime_minute__Fv
/* 8097AA34  7C 7E 1B 78 */	mr r30, r3
lbl_8097AA38:
/* 8097AA38  88 1F 0A C6 */	lbz r0, 0xac6(r31)
/* 8097AA3C  28 00 00 00 */	cmplwi r0, 0
/* 8097AA40  41 82 00 0C */	beq lbl_8097AA4C
/* 8097AA44  4B 82 50 B0 */	b dKy_getDarktime_hour__Fv
/* 8097AA48  48 00 00 08 */	b lbl_8097AA50
lbl_8097AA4C:
/* 8097AA4C  4B 82 4F C4 */	b dKy_getdaytime_hour__Fv
lbl_8097AA50:
/* 8097AA50  1C 03 00 3C */	mulli r0, r3, 0x3c
/* 8097AA54  7C 7E 02 14 */	add r3, r30, r0
/* 8097AA58  A0 1F 0B 90 */	lhz r0, 0xb90(r31)
/* 8097AA5C  7C 03 02 14 */	add r0, r3, r0
/* 8097AA60  B0 1F 0B 8C */	sth r0, 0xb8c(r31)
/* 8097AA64  80 7F 0A D8 */	lwz r3, 0xad8(r31)
/* 8097AA68  80 83 00 08 */	lwz r4, 8(r3)
/* 8097AA6C  80 64 00 04 */	lwz r3, 4(r4)
/* 8097AA70  80 04 00 08 */	lwz r0, 8(r4)
/* 8097AA74  90 61 00 20 */	stw r3, 0x20(r1)
/* 8097AA78  90 01 00 24 */	stw r0, 0x24(r1)
/* 8097AA7C  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8097AA80  90 01 00 28 */	stw r0, 0x28(r1)
/* 8097AA84  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8097AA88  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 8097AA8C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8097AA90  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 8097AA94  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8097AA98  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 8097AA9C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8097AAA0  D0 1F 04 A8 */	stfs f0, 0x4a8(r31)
/* 8097AAA4  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8097AAA8  D0 1F 04 AC */	stfs f0, 0x4ac(r31)
/* 8097AAAC  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8097AAB0  D0 1F 04 B0 */	stfs f0, 0x4b0(r31)
/* 8097AAB4  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8097AAB8  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 8097AABC  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8097AAC0  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 8097AAC4  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8097AAC8  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 8097AACC  80 7F 0A D8 */	lwz r3, 0xad8(r31)
/* 8097AAD0  80 83 00 08 */	lwz r4, 8(r3)
/* 8097AAD4  80 64 00 14 */	lwz r3, 0x14(r4)
/* 8097AAD8  80 04 00 18 */	lwz r0, 0x18(r4)
/* 8097AADC  90 61 00 08 */	stw r3, 8(r1)
/* 8097AAE0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8097AAE4  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 8097AAE8  90 01 00 10 */	stw r0, 0x10(r1)
/* 8097AAEC  80 64 00 04 */	lwz r3, 4(r4)
/* 8097AAF0  80 04 00 08 */	lwz r0, 8(r4)
/* 8097AAF4  90 61 00 14 */	stw r3, 0x14(r1)
/* 8097AAF8  90 01 00 18 */	stw r0, 0x18(r1)
/* 8097AAFC  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8097AB00  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8097AB04  38 61 00 14 */	addi r3, r1, 0x14
/* 8097AB08  38 81 00 08 */	addi r4, r1, 8
/* 8097AB0C  4B 8F 61 30 */	b cLib_targetAngleY__FRC3VecRC3Vec
/* 8097AB10  B0 7F 04 DE */	sth r3, 0x4de(r31)
/* 8097AB14  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 8097AB18  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 8097AB1C  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 8097AB20  B0 1F 04 B6 */	sth r0, 0x4b6(r31)
/* 8097AB24  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 8097AB28  B0 1F 04 CA */	sth r0, 0x4ca(r31)
/* 8097AB2C  38 7F 0A D0 */	addi r3, r31, 0xad0
/* 8097AB30  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8097AB34  54 04 46 3E */	srwi r4, r0, 0x18
/* 8097AB38  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8097AB3C  7C 05 07 74 */	extsb r5, r0
/* 8097AB40  38 C0 00 01 */	li r6, 1
/* 8097AB44  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 8097AB48  39 00 00 00 */	li r8, 0
/* 8097AB4C  4B 7D EE EC */	b setPath__11PathTrace_cFiiiP4cXyzb
/* 8097AB50  7F E3 FB 78 */	mr r3, r31
/* 8097AB54  38 80 00 01 */	li r4, 1
/* 8097AB58  4B FF E2 7D */	bl setAction__11daNpcCdn3_cFQ211daNpcCdn3_c6Mode_e
/* 8097AB5C  38 00 00 01 */	li r0, 1
/* 8097AB60  98 1F 0B 95 */	stb r0, 0xb95(r31)
lbl_8097AB64:
/* 8097AB64  7F E3 FB 78 */	mr r3, r31
/* 8097AB68  4B 7D EC B0 */	b checkFearSituation__10daNpcCd2_cFv
/* 8097AB6C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8097AB70  41 82 00 40 */	beq lbl_8097ABB0
/* 8097AB74  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 8097AB78  2C 00 00 02 */	cmpwi r0, 2
/* 8097AB7C  40 82 00 28 */	bne lbl_8097ABA4
/* 8097AB80  80 1F 0A 98 */	lwz r0, 0xa98(r31)
/* 8097AB84  2C 00 00 00 */	cmpwi r0, 0
/* 8097AB88  41 82 00 0C */	beq lbl_8097AB94
/* 8097AB8C  2C 00 00 01 */	cmpwi r0, 1
/* 8097AB90  40 82 00 14 */	bne lbl_8097ABA4
lbl_8097AB94:
/* 8097AB94  7F E3 FB 78 */	mr r3, r31
/* 8097AB98  38 80 00 06 */	li r4, 6
/* 8097AB9C  4B FF E2 39 */	bl setAction__11daNpcCdn3_cFQ211daNpcCdn3_c6Mode_e
/* 8097ABA0  48 00 00 10 */	b lbl_8097ABB0
lbl_8097ABA4:
/* 8097ABA4  7F E3 FB 78 */	mr r3, r31
/* 8097ABA8  38 80 00 04 */	li r4, 4
/* 8097ABAC  4B FF E2 29 */	bl setAction__11daNpcCdn3_cFQ211daNpcCdn3_c6Mode_e
lbl_8097ABB0:
/* 8097ABB0  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 8097ABB4  A8 9F 0B 92 */	lha r4, 0xb92(r31)
/* 8097ABB8  38 A0 00 03 */	li r5, 3
/* 8097ABBC  38 C0 06 00 */	li r6, 0x600
/* 8097ABC0  4B 8F 5A 48 */	b cLib_addCalcAngleS2__FPssss
/* 8097ABC4  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8097ABC8  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8097ABCC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8097ABD0  7C 08 03 A6 */	mtlr r0
/* 8097ABD4  38 21 00 40 */	addi r1, r1, 0x40
/* 8097ABD8  4E 80 00 20 */	blr 
