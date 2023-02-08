lbl_80ABAB88:
/* 80ABAB88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80ABAB8C  7C 08 02 A6 */	mflr r0
/* 80ABAB90  90 01 00 24 */	stw r0, 0x24(r1)
/* 80ABAB94  39 61 00 20 */	addi r11, r1, 0x20
/* 80ABAB98  4B 8A 76 45 */	bl _savegpr_29
/* 80ABAB9C  7C 7F 1B 78 */	mr r31, r3
/* 80ABABA0  4B 69 7D 29 */	bl initialize__8daNpcF_cFv
/* 80ABABA4  80 7F 0B DC */	lwz r3, 0xbdc(r31)
/* 80ABABA8  4B 69 5B 91 */	bl initialize__15daNpcF_MatAnm_cFv
/* 80ABABAC  38 7F 0B E0 */	addi r3, r31, 0xbe0
/* 80ABABB0  4B 69 64 89 */	bl initialize__15daNpcF_Lookat_cFv
/* 80ABABB4  3B A0 00 00 */	li r29, 0
/* 80ABABB8  3B C0 00 00 */	li r30, 0
lbl_80ABABBC:
/* 80ABABBC  38 7E 0C 7C */	addi r3, r30, 0xc7c
/* 80ABABC0  7C 7F 1A 14 */	add r3, r31, r3
/* 80ABABC4  4B 69 5A ED */	bl initialize__18daNpcF_ActorMngr_cFv
/* 80ABABC8  3B BD 00 01 */	addi r29, r29, 1
/* 80ABABCC  2C 1D 00 04 */	cmpwi r29, 4
/* 80ABABD0  3B DE 00 08 */	addi r30, r30, 8
/* 80ABABD4  41 80 FF E8 */	blt lbl_80ABABBC
/* 80ABABD8  38 A0 00 00 */	li r5, 0
/* 80ABABDC  90 BF 0E 04 */	stw r5, 0xe04(r31)
/* 80ABABE0  90 BF 0E 08 */	stw r5, 0xe08(r31)
/* 80ABABE4  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 80ABABE8  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 80ABABEC  80 64 00 00 */	lwz r3, 0(r4)
/* 80ABABF0  80 04 00 04 */	lwz r0, 4(r4)
/* 80ABABF4  90 7F 0D E0 */	stw r3, 0xde0(r31)
/* 80ABABF8  90 1F 0D E4 */	stw r0, 0xde4(r31)
/* 80ABABFC  80 04 00 08 */	lwz r0, 8(r4)
/* 80ABAC00  90 1F 0D E8 */	stw r0, 0xde8(r31)
/* 80ABAC04  38 80 FF FF */	li r4, -1
/* 80ABAC08  B0 9F 0E 0E */	sth r4, 0xe0e(r31)
/* 80ABAC0C  B0 BF 0E 10 */	sth r5, 0xe10(r31)
/* 80ABAC10  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 80ABAC14  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80ABAC18  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 80ABAC1C  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80ABAC20  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 80ABAC24  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80ABAC28  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80ABAC2C  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 80ABAC30  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80ABAC34  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 80ABAC38  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80ABAC3C  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 80ABAC40  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 80ABAC44  B0 BF 04 DC */	sth r5, 0x4dc(r31)
/* 80ABAC48  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80ABAC4C  B0 BF 04 E0 */	sth r5, 0x4e0(r31)
/* 80ABAC50  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80ABAC54  B0 1F 04 C8 */	sth r0, 0x4c8(r31)
/* 80ABAC58  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80ABAC5C  B0 1F 04 CA */	sth r0, 0x4ca(r31)
/* 80ABAC60  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 80ABAC64  B0 1F 04 CC */	sth r0, 0x4cc(r31)
/* 80ABAC68  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80ABAC6C  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80ABAC70  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80ABAC74  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80ABAC78  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 80ABAC7C  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 80ABAC80  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80ABAC84  B0 1F 08 F0 */	sth r0, 0x8f0(r31)
/* 80ABAC88  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80ABAC8C  B0 1F 08 F2 */	sth r0, 0x8f2(r31)
/* 80ABAC90  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 80ABAC94  B0 1F 08 F4 */	sth r0, 0x8f4(r31)
/* 80ABAC98  A8 1F 08 F0 */	lha r0, 0x8f0(r31)
/* 80ABAC9C  B0 1F 08 F6 */	sth r0, 0x8f6(r31)
/* 80ABACA0  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 80ABACA4  B0 1F 08 F8 */	sth r0, 0x8f8(r31)
/* 80ABACA8  A8 1F 08 F4 */	lha r0, 0x8f4(r31)
/* 80ABACAC  B0 1F 08 FA */	sth r0, 0x8fa(r31)
/* 80ABACB0  3C 60 80 AC */	lis r3, lit_4321@ha /* 0x80ABFA68@ha */
/* 80ABACB4  C0 03 FA 68 */	lfs f0, lit_4321@l(r3)  /* 0x80ABFA68@l */
/* 80ABACB8  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80ABACBC  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80ABACC0  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80ABACC4  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80ABACC8  90 9F 0E 00 */	stw r4, 0xe00(r31)
/* 80ABACCC  B0 BF 09 E6 */	sth r5, 0x9e6(r31)
/* 80ABACD0  D0 1F 09 74 */	stfs f0, 0x974(r31)
/* 80ABACD4  D0 1F 09 7C */	stfs f0, 0x97c(r31)
/* 80ABACD8  38 60 01 30 */	li r3, 0x130
/* 80ABACDC  4B 69 A9 59 */	bl daNpcF_chkEvtBit__FUl
/* 80ABACE0  30 03 FF FF */	addic r0, r3, -1
/* 80ABACE4  7C 00 19 10 */	subfe r0, r0, r3
/* 80ABACE8  98 1F 0E 15 */	stb r0, 0xe15(r31)
/* 80ABACEC  38 00 00 00 */	li r0, 0
/* 80ABACF0  98 1F 0E 14 */	stb r0, 0xe14(r31)
/* 80ABACF4  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80ABACF8  80 63 00 04 */	lwz r3, 4(r3)
/* 80ABACFC  80 83 00 04 */	lwz r4, 4(r3)
/* 80ABAD00  88 1F 0E 17 */	lbz r0, 0xe17(r31)
/* 80ABAD04  28 00 00 01 */	cmplwi r0, 1
/* 80ABAD08  40 82 00 50 */	bne lbl_80ABAD58
/* 80ABAD0C  80 64 00 60 */	lwz r3, 0x60(r4)
/* 80ABAD10  80 63 00 14 */	lwz r3, 0x14(r3)
/* 80ABAD14  80 63 00 08 */	lwz r3, 8(r3)
/* 80ABAD18  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80ABAD1C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80ABAD20  90 03 00 0C */	stw r0, 0xc(r3)
/* 80ABAD24  80 64 00 60 */	lwz r3, 0x60(r4)
/* 80ABAD28  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80ABAD2C  80 63 00 08 */	lwz r3, 8(r3)
/* 80ABAD30  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80ABAD34  60 00 00 01 */	ori r0, r0, 1
/* 80ABAD38  90 03 00 0C */	stw r0, 0xc(r3)
/* 80ABAD3C  80 64 00 60 */	lwz r3, 0x60(r4)
/* 80ABAD40  80 63 00 18 */	lwz r3, 0x18(r3)
/* 80ABAD44  80 63 00 08 */	lwz r3, 8(r3)
/* 80ABAD48  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80ABAD4C  60 00 00 01 */	ori r0, r0, 1
/* 80ABAD50  90 03 00 0C */	stw r0, 0xc(r3)
/* 80ABAD54  48 00 00 34 */	b lbl_80ABAD88
lbl_80ABAD58:
/* 80ABAD58  80 64 00 60 */	lwz r3, 0x60(r4)
/* 80ABAD5C  80 63 00 14 */	lwz r3, 0x14(r3)
/* 80ABAD60  80 63 00 08 */	lwz r3, 8(r3)
/* 80ABAD64  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80ABAD68  60 00 00 01 */	ori r0, r0, 1
/* 80ABAD6C  90 03 00 0C */	stw r0, 0xc(r3)
/* 80ABAD70  80 64 00 60 */	lwz r3, 0x60(r4)
/* 80ABAD74  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80ABAD78  80 63 00 08 */	lwz r3, 8(r3)
/* 80ABAD7C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80ABAD80  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80ABAD84  90 03 00 0C */	stw r0, 0xc(r3)
lbl_80ABAD88:
/* 80ABAD88  7F E3 FB 78 */	mr r3, r31
/* 80ABAD8C  48 00 02 31 */	bl isSneaking__13daNpcRafrel_cFv
/* 80ABAD90  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80ABAD94  41 82 00 10 */	beq lbl_80ABADA4
/* 80ABAD98  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 80ABAD9C  60 00 40 00 */	ori r0, r0, 0x4000
/* 80ABADA0  90 1F 04 9C */	stw r0, 0x49c(r31)
lbl_80ABADA4:
/* 80ABADA4  7F E3 FB 78 */	mr r3, r31
/* 80ABADA8  48 00 00 1D */	bl setWaitAction__13daNpcRafrel_cFv
/* 80ABADAC  39 61 00 20 */	addi r11, r1, 0x20
/* 80ABADB0  4B 8A 74 79 */	bl _restgpr_29
/* 80ABADB4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80ABADB8  7C 08 03 A6 */	mtlr r0
/* 80ABADBC  38 21 00 20 */	addi r1, r1, 0x20
/* 80ABADC0  4E 80 00 20 */	blr 
