lbl_8068A96C:
/* 8068A96C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8068A970  7C 08 02 A6 */	mflr r0
/* 8068A974  90 01 00 24 */	stw r0, 0x24(r1)
/* 8068A978  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8068A97C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8068A980  7C 7F 1B 78 */	mr r31, r3
/* 8068A984  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8068A988  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8068A98C  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 8068A990  A8 1F 06 92 */	lha r0, 0x692(r31)
/* 8068A994  2C 00 00 00 */	cmpwi r0, 0
/* 8068A998  40 82 02 28 */	bne lbl_8068ABC0
/* 8068A99C  38 7F 06 D0 */	addi r3, r31, 0x6d0
/* 8068A9A0  4B 9F 8E 90 */	b Move__10dCcD_GSttsFv
/* 8068A9A4  80 1F 08 88 */	lwz r0, 0x888(r31)
/* 8068A9A8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8068A9AC  41 82 00 3C */	beq lbl_8068A9E8
/* 8068A9B0  38 00 00 05 */	li r0, 5
/* 8068A9B4  B0 1F 06 6E */	sth r0, 0x66e(r31)
/* 8068A9B8  38 00 00 00 */	li r0, 0
/* 8068A9BC  B0 1F 06 70 */	sth r0, 0x670(r31)
/* 8068A9C0  38 00 00 3C */	li r0, 0x3c
/* 8068A9C4  B0 1F 06 92 */	sth r0, 0x692(r31)
/* 8068A9C8  3C 60 80 69 */	lis r3, lit_3904@ha
/* 8068A9CC  C0 03 D7 F0 */	lfs f0, lit_3904@l(r3)
/* 8068A9D0  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 8068A9D4  A8 7F 06 84 */	lha r3, 0x684(r31)
/* 8068A9D8  3C 63 00 01 */	addis r3, r3, 1
/* 8068A9DC  38 03 80 00 */	addi r0, r3, -32768
/* 8068A9E0  B0 1F 06 A6 */	sth r0, 0x6a6(r31)
/* 8068A9E4  48 00 01 DC */	b lbl_8068ABC0
lbl_8068A9E8:
/* 8068A9E8  38 7F 06 F0 */	addi r3, r31, 0x6f0
/* 8068A9EC  4B 9F 9A 74 */	b ChkTgHit__12dCcD_GObjInfFv
/* 8068A9F0  28 03 00 00 */	cmplwi r3, 0
/* 8068A9F4  41 82 01 CC */	beq lbl_8068ABC0
/* 8068A9F8  38 7F 06 F0 */	addi r3, r31, 0x6f0
/* 8068A9FC  4B 9F 9A FC */	b GetTgHitObj__12dCcD_GObjInfFv
/* 8068AA00  90 7F 09 64 */	stw r3, 0x964(r31)
/* 8068AA04  38 7F 09 64 */	addi r3, r31, 0x964
/* 8068AA08  4B 9F D0 50 */	b at_power_check__FP11dCcU_AtInfo
/* 8068AA0C  7F E3 FB 78 */	mr r3, r31
/* 8068AA10  38 9F 09 64 */	addi r4, r31, 0x964
/* 8068AA14  4B 9F D1 F0 */	b cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 8068AA18  80 7F 09 64 */	lwz r3, 0x964(r31)
/* 8068AA1C  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8068AA20  54 60 04 63 */	rlwinm. r0, r3, 0, 0x11, 0x11
/* 8068AA24  41 82 00 80 */	beq lbl_8068AAA4
/* 8068AA28  38 00 00 00 */	li r0, 0
/* 8068AA2C  90 01 00 08 */	stw r0, 8(r1)
/* 8068AA30  38 60 02 21 */	li r3, 0x221
/* 8068AA34  38 80 00 0D */	li r4, 0xd
/* 8068AA38  38 BF 05 38 */	addi r5, r31, 0x538
/* 8068AA3C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8068AA40  7C 06 07 74 */	extsb r6, r0
/* 8068AA44  38 FF 04 DC */	addi r7, r31, 0x4dc
/* 8068AA48  39 00 00 00 */	li r8, 0
/* 8068AA4C  39 20 FF FF */	li r9, -1
/* 8068AA50  39 40 00 00 */	li r10, 0
/* 8068AA54  4B 98 F3 B0 */	b fopAcM_fastCreate__FsUlPC4cXyziPC5csXyzPC4cXyzScPFPv_iPv
/* 8068AA58  7C 7E 1B 79 */	or. r30, r3, r3
/* 8068AA5C  41 82 01 64 */	beq lbl_8068ABC0
/* 8068AA60  80 1F 0B A4 */	lwz r0, 0xba4(r31)
/* 8068AA64  90 01 00 14 */	stw r0, 0x14(r1)
/* 8068AA68  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 8068AA6C  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 8068AA70  38 81 00 14 */	addi r4, r1, 0x14
/* 8068AA74  4B 98 ED 84 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 8068AA78  28 03 00 00 */	cmplwi r3, 0
/* 8068AA7C  41 82 00 1C */	beq lbl_8068AA98
/* 8068AA80  28 1E 00 00 */	cmplwi r30, 0
/* 8068AA84  41 82 00 0C */	beq lbl_8068AA90
/* 8068AA88  80 1E 00 04 */	lwz r0, 4(r30)
/* 8068AA8C  48 00 00 08 */	b lbl_8068AA94
lbl_8068AA90:
/* 8068AA90  38 00 FF FF */	li r0, -1
lbl_8068AA94:
/* 8068AA94  90 03 04 A4 */	stw r0, 0x4a4(r3)
lbl_8068AA98:
/* 8068AA98  38 00 00 01 */	li r0, 1
/* 8068AA9C  98 1F 06 B0 */	stb r0, 0x6b0(r31)
/* 8068AAA0  48 00 01 20 */	b lbl_8068ABC0
lbl_8068AAA4:
/* 8068AAA4  54 60 03 DF */	rlwinm. r0, r3, 0, 0xf, 0xf
/* 8068AAA8  41 82 00 80 */	beq lbl_8068AB28
/* 8068AAAC  38 00 00 00 */	li r0, 0
/* 8068AAB0  90 01 00 08 */	stw r0, 8(r1)
/* 8068AAB4  38 60 02 21 */	li r3, 0x221
/* 8068AAB8  38 80 00 0C */	li r4, 0xc
/* 8068AABC  38 BF 05 38 */	addi r5, r31, 0x538
/* 8068AAC0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8068AAC4  7C 06 07 74 */	extsb r6, r0
/* 8068AAC8  38 FF 04 DC */	addi r7, r31, 0x4dc
/* 8068AACC  39 00 00 00 */	li r8, 0
/* 8068AAD0  39 20 FF FF */	li r9, -1
/* 8068AAD4  39 40 00 00 */	li r10, 0
/* 8068AAD8  4B 98 F3 2C */	b fopAcM_fastCreate__FsUlPC4cXyziPC5csXyzPC4cXyzScPFPv_iPv
/* 8068AADC  7C 7E 1B 79 */	or. r30, r3, r3
/* 8068AAE0  41 82 00 E0 */	beq lbl_8068ABC0
/* 8068AAE4  80 1F 0B A4 */	lwz r0, 0xba4(r31)
/* 8068AAE8  90 01 00 10 */	stw r0, 0x10(r1)
/* 8068AAEC  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 8068AAF0  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 8068AAF4  38 81 00 10 */	addi r4, r1, 0x10
/* 8068AAF8  4B 98 ED 00 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 8068AAFC  28 03 00 00 */	cmplwi r3, 0
/* 8068AB00  41 82 00 1C */	beq lbl_8068AB1C
/* 8068AB04  28 1E 00 00 */	cmplwi r30, 0
/* 8068AB08  41 82 00 0C */	beq lbl_8068AB14
/* 8068AB0C  80 1E 00 04 */	lwz r0, 4(r30)
/* 8068AB10  48 00 00 08 */	b lbl_8068AB18
lbl_8068AB14:
/* 8068AB14  38 00 FF FF */	li r0, -1
lbl_8068AB18:
/* 8068AB18  90 03 04 A4 */	stw r0, 0x4a4(r3)
lbl_8068AB1C:
/* 8068AB1C  38 00 00 01 */	li r0, 1
/* 8068AB20  98 1F 06 B0 */	stb r0, 0x6b0(r31)
/* 8068AB24  48 00 00 9C */	b lbl_8068ABC0
lbl_8068AB28:
/* 8068AB28  A8 1F 06 94 */	lha r0, 0x694(r31)
/* 8068AB2C  2C 00 00 00 */	cmpwi r0, 0
/* 8068AB30  40 82 00 0C */	bne lbl_8068AB3C
/* 8068AB34  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 8068AB38  41 82 00 3C */	beq lbl_8068AB74
lbl_8068AB3C:
/* 8068AB3C  38 00 00 00 */	li r0, 0
/* 8068AB40  90 01 00 08 */	stw r0, 8(r1)
/* 8068AB44  38 60 02 21 */	li r3, 0x221
/* 8068AB48  38 80 00 00 */	li r4, 0
/* 8068AB4C  38 BF 05 38 */	addi r5, r31, 0x538
/* 8068AB50  38 C0 FF FF */	li r6, -1
/* 8068AB54  38 E0 00 00 */	li r7, 0
/* 8068AB58  39 00 00 00 */	li r8, 0
/* 8068AB5C  39 20 FF FF */	li r9, -1
/* 8068AB60  39 40 00 00 */	li r10, 0
/* 8068AB64  4B 98 F2 A0 */	b fopAcM_fastCreate__FsUlPC4cXyziPC5csXyzPC4cXyzScPFPv_iPv
/* 8068AB68  38 00 00 01 */	li r0, 1
/* 8068AB6C  98 1F 06 B0 */	stb r0, 0x6b0(r31)
/* 8068AB70  48 00 00 50 */	b lbl_8068ABC0
lbl_8068AB74:
/* 8068AB74  38 00 00 05 */	li r0, 5
/* 8068AB78  B0 1F 06 6E */	sth r0, 0x66e(r31)
/* 8068AB7C  38 00 00 00 */	li r0, 0
/* 8068AB80  B0 1F 06 70 */	sth r0, 0x670(r31)
/* 8068AB84  38 00 00 3C */	li r0, 0x3c
/* 8068AB88  B0 1F 06 92 */	sth r0, 0x692(r31)
/* 8068AB8C  3C 60 80 69 */	lis r3, lit_3904@ha
/* 8068AB90  C0 03 D7 F0 */	lfs f0, lit_3904@l(r3)
/* 8068AB94  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 8068AB98  88 1F 09 84 */	lbz r0, 0x984(r31)
/* 8068AB9C  28 00 00 10 */	cmplwi r0, 0x10
/* 8068ABA0  40 82 00 10 */	bne lbl_8068ABB0
/* 8068ABA4  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8068ABA8  B0 1F 06 A6 */	sth r0, 0x6a6(r31)
/* 8068ABAC  48 00 00 14 */	b lbl_8068ABC0
lbl_8068ABB0:
/* 8068ABB0  A8 7F 06 84 */	lha r3, 0x684(r31)
/* 8068ABB4  3C 63 00 01 */	addis r3, r3, 1
/* 8068ABB8  38 03 80 00 */	addi r0, r3, -32768
/* 8068ABBC  B0 1F 06 A6 */	sth r0, 0x6a6(r31)
lbl_8068ABC0:
/* 8068ABC0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8068ABC4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8068ABC8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8068ABCC  7C 08 03 A6 */	mtlr r0
/* 8068ABD0  38 21 00 20 */	addi r1, r1, 0x20
/* 8068ABD4  4E 80 00 20 */	blr 
