lbl_80A22AA4:
/* 80A22AA4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A22AA8  7C 08 02 A6 */	mflr r0
/* 80A22AAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A22AB0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A22AB4  7C 7F 1B 78 */	mr r31, r3
/* 80A22AB8  4B 72 FE 11 */	bl initialize__8daNpcF_cFv
/* 80A22ABC  38 7F 0B F0 */	addi r3, r31, 0xbf0
/* 80A22AC0  4B 72 E5 79 */	bl initialize__15daNpcF_Lookat_cFv
/* 80A22AC4  38 7F 0C 8C */	addi r3, r31, 0xc8c
/* 80A22AC8  4B 72 DB E9 */	bl initialize__18daNpcF_ActorMngr_cFv
/* 80A22ACC  38 7F 0C 94 */	addi r3, r31, 0xc94
/* 80A22AD0  4B 72 DE 31 */	bl initialize__13daNpcF_Path_cFv
/* 80A22AD4  88 7F 14 64 */	lbz r3, 0x1464(r31)
/* 80A22AD8  7C 60 07 75 */	extsb. r0, r3
/* 80A22ADC  40 82 00 2C */	bne lbl_80A22B08
/* 80A22AE0  38 7F 0C 94 */	addi r3, r31, 0xc94
/* 80A22AE4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80A22AE8  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80A22AEC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80A22AF0  7C 05 07 74 */	extsb r5, r0
/* 80A22AF4  38 C0 00 00 */	li r6, 0
/* 80A22AF8  4B 72 DE 65 */	bl setPathInfo__13daNpcF_Path_cFUcScUc
/* 80A22AFC  38 00 00 06 */	li r0, 6
/* 80A22B00  B0 1F 0C 94 */	sth r0, 0xc94(r31)
/* 80A22B04  48 00 00 1C */	b lbl_80A22B20
lbl_80A22B08:
/* 80A22B08  7C 60 07 74 */	extsb r0, r3
/* 80A22B0C  2C 00 00 01 */	cmpwi r0, 1
/* 80A22B10  40 82 00 10 */	bne lbl_80A22B20
/* 80A22B14  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 80A22B18  60 00 40 00 */	ori r0, r0, 0x4000
/* 80A22B1C  90 1F 04 9C */	stw r0, 0x49c(r31)
lbl_80A22B20:
/* 80A22B20  38 A0 00 00 */	li r5, 0
/* 80A22B24  90 BF 14 30 */	stw r5, 0x1430(r31)
/* 80A22B28  90 BF 14 34 */	stw r5, 0x1434(r31)
/* 80A22B2C  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 80A22B30  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 80A22B34  80 64 00 00 */	lwz r3, 0(r4)
/* 80A22B38  80 04 00 04 */	lwz r0, 4(r4)
/* 80A22B3C  90 7F 14 08 */	stw r3, 0x1408(r31)
/* 80A22B40  90 1F 14 0C */	stw r0, 0x140c(r31)
/* 80A22B44  80 04 00 08 */	lwz r0, 8(r4)
/* 80A22B48  90 1F 14 10 */	stw r0, 0x1410(r31)
/* 80A22B4C  38 80 FF FF */	li r4, -1
/* 80A22B50  B0 9F 14 3C */	sth r4, 0x143c(r31)
/* 80A22B54  B0 BF 14 04 */	sth r5, 0x1404(r31)
/* 80A22B58  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 80A22B5C  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80A22B60  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 80A22B64  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80A22B68  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 80A22B6C  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80A22B70  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80A22B74  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 80A22B78  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80A22B7C  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 80A22B80  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80A22B84  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 80A22B88  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 80A22B8C  B0 BF 04 DC */	sth r5, 0x4dc(r31)
/* 80A22B90  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80A22B94  B0 BF 04 E0 */	sth r5, 0x4e0(r31)
/* 80A22B98  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80A22B9C  B0 1F 04 C8 */	sth r0, 0x4c8(r31)
/* 80A22BA0  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80A22BA4  B0 1F 04 CA */	sth r0, 0x4ca(r31)
/* 80A22BA8  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 80A22BAC  B0 1F 04 CC */	sth r0, 0x4cc(r31)
/* 80A22BB0  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80A22BB4  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80A22BB8  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80A22BBC  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80A22BC0  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 80A22BC4  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 80A22BC8  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80A22BCC  B0 1F 08 F0 */	sth r0, 0x8f0(r31)
/* 80A22BD0  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80A22BD4  B0 1F 08 F2 */	sth r0, 0x8f2(r31)
/* 80A22BD8  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 80A22BDC  B0 1F 08 F4 */	sth r0, 0x8f4(r31)
/* 80A22BE0  A8 1F 08 F0 */	lha r0, 0x8f0(r31)
/* 80A22BE4  B0 1F 08 F6 */	sth r0, 0x8f6(r31)
/* 80A22BE8  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 80A22BEC  B0 1F 08 F8 */	sth r0, 0x8f8(r31)
/* 80A22BF0  A8 1F 08 F4 */	lha r0, 0x8f4(r31)
/* 80A22BF4  B0 1F 08 FA */	sth r0, 0x8fa(r31)
/* 80A22BF8  3C 60 80 A2 */	lis r3, lit_4449@ha /* 0x80A2595C@ha */
/* 80A22BFC  C0 03 59 5C */	lfs f0, lit_4449@l(r3)  /* 0x80A2595C@l */
/* 80A22C00  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80A22C04  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80A22C08  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80A22C0C  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80A22C10  90 9F 14 2C */	stw r4, 0x142c(r31)
/* 80A22C14  B0 BF 09 E6 */	sth r5, 0x9e6(r31)
/* 80A22C18  7F E3 FB 78 */	mr r3, r31
/* 80A22C1C  3C 80 80 A2 */	lis r4, l_arcNames@ha /* 0x80A25C10@ha */
/* 80A22C20  38 84 5C 10 */	addi r4, r4, l_arcNames@l /* 0x80A25C10@l */
/* 80A22C24  80 84 00 00 */	lwz r4, 0(r4)
/* 80A22C28  38 A0 00 07 */	li r5, 7
/* 80A22C2C  4B 72 FF 3D */	bl getTexPtrnAnmP__8daNpcF_cFPci
/* 80A22C30  7C 64 1B 78 */	mr r4, r3
/* 80A22C34  80 7F 09 9C */	lwz r3, 0x99c(r31)
/* 80A22C38  38 00 F5 7F */	li r0, -2689
/* 80A22C3C  7C 60 00 38 */	and r0, r3, r0
/* 80A22C40  90 1F 09 9C */	stw r0, 0x99c(r31)
/* 80A22C44  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80A22C48  80 63 00 04 */	lwz r3, 4(r3)
/* 80A22C4C  80 A3 00 04 */	lwz r5, 4(r3)
/* 80A22C50  7F E3 FB 78 */	mr r3, r31
/* 80A22C54  3C C0 80 A2 */	lis r6, lit_4247@ha /* 0x80A2593C@ha */
/* 80A22C58  C0 26 59 3C */	lfs f1, lit_4247@l(r6)  /* 0x80A2593C@l */
/* 80A22C5C  38 C0 00 02 */	li r6, 2
/* 80A22C60  4B 73 00 65 */	bl setBtpAnm__8daNpcF_cFP16J3DAnmTexPatternP12J3DModelDatafi
/* 80A22C64  2C 03 00 00 */	cmpwi r3, 0
/* 80A22C68  41 82 00 10 */	beq lbl_80A22C78
/* 80A22C6C  80 1F 09 9C */	lwz r0, 0x99c(r31)
/* 80A22C70  60 00 0A 80 */	ori r0, r0, 0xa80
/* 80A22C74  90 1F 09 9C */	stw r0, 0x99c(r31)
lbl_80A22C78:
/* 80A22C78  38 00 00 00 */	li r0, 0
/* 80A22C7C  98 1F 14 66 */	stb r0, 0x1466(r31)
/* 80A22C80  98 1F 14 67 */	stb r0, 0x1467(r31)
/* 80A22C84  98 1F 14 65 */	stb r0, 0x1465(r31)
/* 80A22C88  98 1F 14 68 */	stb r0, 0x1468(r31)
/* 80A22C8C  3C 60 80 A2 */	lis r3, lit_4488@ha /* 0x80A25E04@ha */
/* 80A22C90  38 83 5E 04 */	addi r4, r3, lit_4488@l /* 0x80A25E04@l */
/* 80A22C94  80 64 00 00 */	lwz r3, 0(r4)
/* 80A22C98  80 04 00 04 */	lwz r0, 4(r4)
/* 80A22C9C  90 61 00 08 */	stw r3, 8(r1)
/* 80A22CA0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A22CA4  80 04 00 08 */	lwz r0, 8(r4)
/* 80A22CA8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A22CAC  7F E3 FB 78 */	mr r3, r31
/* 80A22CB0  38 81 00 08 */	addi r4, r1, 8
/* 80A22CB4  48 00 05 D1 */	bl setAction__14daNpcKasiKyu_cFM14daNpcKasiKyu_cFPCvPvi_i
/* 80A22CB8  3C 60 80 A2 */	lis r3, lit_4449@ha /* 0x80A2595C@ha */
/* 80A22CBC  C0 03 59 5C */	lfs f0, lit_4449@l(r3)  /* 0x80A2595C@l */
/* 80A22CC0  D0 1F 09 7C */	stfs f0, 0x97c(r31)
/* 80A22CC4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A22CC8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A22CCC  7C 08 03 A6 */	mtlr r0
/* 80A22CD0  38 21 00 20 */	addi r1, r1, 0x20
/* 80A22CD4  4E 80 00 20 */	blr 
