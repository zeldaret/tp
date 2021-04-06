lbl_80AC133C:
/* 80AC133C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AC1340  7C 08 02 A6 */	mflr r0
/* 80AC1344  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AC1348  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80AC134C  7C 7F 1B 78 */	mr r31, r3
/* 80AC1350  38 A0 00 00 */	li r5, 0
/* 80AC1354  88 03 0A 89 */	lbz r0, 0xa89(r3)
/* 80AC1358  28 00 00 00 */	cmplwi r0, 0
/* 80AC135C  40 82 00 14 */	bne lbl_80AC1370
/* 80AC1360  38 9F 0E 4C */	addi r4, r31, 0xe4c
/* 80AC1364  38 A0 FF FF */	li r5, -1
/* 80AC1368  4B 68 96 D9 */	bl hitChk__8daNpcT_cFP12dCcD_GObjInfUl
/* 80AC136C  7C 65 1B 78 */	mr r5, r3
lbl_80AC1370:
/* 80AC1370  28 05 00 00 */	cmplwi r5, 0
/* 80AC1374  41 82 00 98 */	beq lbl_80AC140C
/* 80AC1378  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 80AC137C  7F E4 FB 78 */	mr r4, r31
/* 80AC1380  A8 DF 0D 7A */	lha r6, 0xd7a(r31)
/* 80AC1384  4B 68 6A 49 */	bl setParam__19daNpcT_DmgStagger_cFP10fopAc_ac_cP10fopAc_ac_cs
/* 80AC1388  7F E3 FB 78 */	mr r3, r31
/* 80AC138C  38 80 00 00 */	li r4, 0
/* 80AC1390  38 A0 00 00 */	li r5, 0
/* 80AC1394  38 C0 00 04 */	li r6, 4
/* 80AC1398  4B 68 97 39 */	bl setDamage__8daNpcT_cFiii
/* 80AC139C  38 80 00 00 */	li r4, 0
/* 80AC13A0  3C 60 80 AC */	lis r3, lit_4231@ha /* 0x80AC45AC@ha */
/* 80AC13A4  C0 03 45 AC */	lfs f0, lit_4231@l(r3)  /* 0x80AC45AC@l */
/* 80AC13A8  38 00 00 02 */	li r0, 2
/* 80AC13AC  7C 09 03 A6 */	mtctr r0
lbl_80AC13B0:
/* 80AC13B0  38 04 0D 14 */	addi r0, r4, 0xd14
/* 80AC13B4  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80AC13B8  38 84 00 04 */	addi r4, r4, 4
/* 80AC13BC  42 00 FF F4 */	bdnz lbl_80AC13B0
/* 80AC13C0  38 00 00 00 */	li r0, 0
/* 80AC13C4  90 1F 0D B8 */	stw r0, 0xdb8(r31)
/* 80AC13C8  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80AC13CC  2C 00 00 00 */	cmpwi r0, 0
/* 80AC13D0  41 82 00 28 */	beq lbl_80AC13F8
/* 80AC13D4  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80AC13D8  4B 68 43 25 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80AC13DC  38 00 00 00 */	li r0, 0
/* 80AC13E0  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80AC13E4  3C 60 80 AC */	lis r3, lit_4231@ha /* 0x80AC45AC@ha */
/* 80AC13E8  C0 03 45 AC */	lfs f0, lit_4231@l(r3)  /* 0x80AC45AC@l */
/* 80AC13EC  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80AC13F0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AC13F4  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80AC13F8:
/* 80AC13F8  38 00 00 00 */	li r0, 0
/* 80AC13FC  B0 1F 0C D4 */	sth r0, 0xcd4(r31)
/* 80AC1400  B0 1F 0C D6 */	sth r0, 0xcd6(r31)
/* 80AC1404  38 00 00 01 */	li r0, 1
/* 80AC1408  98 1F 0C FF */	stb r0, 0xcff(r31)
lbl_80AC140C:
/* 80AC140C  88 1F 0D 20 */	lbz r0, 0xd20(r31)
/* 80AC1410  2C 00 00 00 */	cmpwi r0, 0
/* 80AC1414  41 82 00 5C */	beq lbl_80AC1470
/* 80AC1418  38 C0 00 00 */	li r6, 0
/* 80AC141C  38 60 00 00 */	li r3, 0
/* 80AC1420  38 80 00 00 */	li r4, 0
/* 80AC1424  3C A0 80 AC */	lis r5, lit_4231@ha /* 0x80AC45AC@ha */
/* 80AC1428  C0 05 45 AC */	lfs f0, lit_4231@l(r5)  /* 0x80AC45AC@l */
/* 80AC142C  38 00 00 02 */	li r0, 2
/* 80AC1430  7C 09 03 A6 */	mtctr r0
lbl_80AC1434:
/* 80AC1434  7C BF 22 14 */	add r5, r31, r4
/* 80AC1438  B0 C5 0D 08 */	sth r6, 0xd08(r5)
/* 80AC143C  B0 C5 0D 0A */	sth r6, 0xd0a(r5)
/* 80AC1440  B0 C5 0D 0C */	sth r6, 0xd0c(r5)
/* 80AC1444  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80AC1448  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80AC144C  38 63 00 04 */	addi r3, r3, 4
/* 80AC1450  38 84 00 06 */	addi r4, r4, 6
/* 80AC1454  42 00 FF E0 */	bdnz lbl_80AC1434
/* 80AC1458  38 00 00 00 */	li r0, 0
/* 80AC145C  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80AC1460  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80AC1464  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80AC1468  38 00 00 01 */	li r0, 1
/* 80AC146C  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80AC1470:
/* 80AC1470  38 7F 0F BC */	addi r3, r31, 0xfbc
/* 80AC1474  4B 8A 0B A5 */	bl __ptmf_test
/* 80AC1478  2C 03 00 00 */	cmpwi r3, 0
/* 80AC147C  41 82 00 54 */	beq lbl_80AC14D0
/* 80AC1480  38 7F 0F C8 */	addi r3, r31, 0xfc8
/* 80AC1484  38 9F 0F BC */	addi r4, r31, 0xfbc
/* 80AC1488  4B 8A 0B C1 */	bl __ptmf_cmpr
/* 80AC148C  2C 03 00 00 */	cmpwi r3, 0
/* 80AC1490  40 82 00 1C */	bne lbl_80AC14AC
/* 80AC1494  7F E3 FB 78 */	mr r3, r31
/* 80AC1498  38 80 00 00 */	li r4, 0
/* 80AC149C  39 9F 0F C8 */	addi r12, r31, 0xfc8
/* 80AC14A0  4B 8A 0B E5 */	bl __ptmf_scall
/* 80AC14A4  60 00 00 00 */	nop 
/* 80AC14A8  48 00 00 28 */	b lbl_80AC14D0
lbl_80AC14AC:
/* 80AC14AC  80 7F 0F BC */	lwz r3, 0xfbc(r31)
/* 80AC14B0  80 1F 0F C0 */	lwz r0, 0xfc0(r31)
/* 80AC14B4  90 61 00 08 */	stw r3, 8(r1)
/* 80AC14B8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AC14BC  80 1F 0F C4 */	lwz r0, 0xfc4(r31)
/* 80AC14C0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AC14C4  7F E3 FB 78 */	mr r3, r31
/* 80AC14C8  38 81 00 08 */	addi r4, r1, 8
/* 80AC14CC  48 00 06 D9 */	bl setAction__12daNpc_Saru_cFM12daNpc_Saru_cFPCvPvPv_i
lbl_80AC14D0:
/* 80AC14D0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80AC14D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AC14D8  7C 08 03 A6 */	mtlr r0
/* 80AC14DC  38 21 00 20 */	addi r1, r1, 0x20
/* 80AC14E0  4E 80 00 20 */	blr 
