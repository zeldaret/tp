lbl_80A272A4:
/* 80A272A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A272A8  7C 08 02 A6 */	mflr r0
/* 80A272AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A272B0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A272B4  7C 7F 1B 78 */	mr r31, r3
/* 80A272B8  4B 72 B6 11 */	bl initialize__8daNpcF_cFv
/* 80A272BC  38 7F 0B F0 */	addi r3, r31, 0xbf0
/* 80A272C0  4B 72 9D 79 */	bl initialize__15daNpcF_Lookat_cFv
/* 80A272C4  38 7F 0C 8C */	addi r3, r31, 0xc8c
/* 80A272C8  4B 72 93 E9 */	bl initialize__18daNpcF_ActorMngr_cFv
/* 80A272CC  38 7F 0C 94 */	addi r3, r31, 0xc94
/* 80A272D0  4B 72 96 31 */	bl initialize__13daNpcF_Path_cFv
/* 80A272D4  88 7F 14 64 */	lbz r3, 0x1464(r31)
/* 80A272D8  7C 60 07 75 */	extsb. r0, r3
/* 80A272DC  40 82 00 2C */	bne lbl_80A27308
/* 80A272E0  38 7F 0C 94 */	addi r3, r31, 0xc94
/* 80A272E4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80A272E8  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80A272EC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80A272F0  7C 05 07 74 */	extsb r5, r0
/* 80A272F4  38 C0 00 00 */	li r6, 0
/* 80A272F8  4B 72 96 65 */	bl setPathInfo__13daNpcF_Path_cFUcScUc
/* 80A272FC  38 00 00 06 */	li r0, 6
/* 80A27300  B0 1F 0C 94 */	sth r0, 0xc94(r31)
/* 80A27304  48 00 00 1C */	b lbl_80A27320
lbl_80A27308:
/* 80A27308  7C 60 07 74 */	extsb r0, r3
/* 80A2730C  2C 00 00 01 */	cmpwi r0, 1
/* 80A27310  40 82 00 10 */	bne lbl_80A27320
/* 80A27314  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 80A27318  60 00 40 00 */	ori r0, r0, 0x4000
/* 80A2731C  90 1F 04 9C */	stw r0, 0x49c(r31)
lbl_80A27320:
/* 80A27320  38 A0 00 00 */	li r5, 0
/* 80A27324  90 BF 14 30 */	stw r5, 0x1430(r31)
/* 80A27328  90 BF 14 34 */	stw r5, 0x1434(r31)
/* 80A2732C  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 80A27330  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 80A27334  80 64 00 00 */	lwz r3, 0(r4)
/* 80A27338  80 04 00 04 */	lwz r0, 4(r4)
/* 80A2733C  90 7F 14 08 */	stw r3, 0x1408(r31)
/* 80A27340  90 1F 14 0C */	stw r0, 0x140c(r31)
/* 80A27344  80 04 00 08 */	lwz r0, 8(r4)
/* 80A27348  90 1F 14 10 */	stw r0, 0x1410(r31)
/* 80A2734C  38 80 FF FF */	li r4, -1
/* 80A27350  B0 9F 14 3C */	sth r4, 0x143c(r31)
/* 80A27354  B0 BF 14 04 */	sth r5, 0x1404(r31)
/* 80A27358  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 80A2735C  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80A27360  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 80A27364  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80A27368  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 80A2736C  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80A27370  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80A27374  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 80A27378  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80A2737C  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 80A27380  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80A27384  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 80A27388  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 80A2738C  B0 BF 04 DC */	sth r5, 0x4dc(r31)
/* 80A27390  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80A27394  B0 BF 04 E0 */	sth r5, 0x4e0(r31)
/* 80A27398  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80A2739C  B0 1F 04 C8 */	sth r0, 0x4c8(r31)
/* 80A273A0  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80A273A4  B0 1F 04 CA */	sth r0, 0x4ca(r31)
/* 80A273A8  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 80A273AC  B0 1F 04 CC */	sth r0, 0x4cc(r31)
/* 80A273B0  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80A273B4  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80A273B8  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80A273BC  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80A273C0  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 80A273C4  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 80A273C8  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80A273CC  B0 1F 08 F0 */	sth r0, 0x8f0(r31)
/* 80A273D0  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80A273D4  B0 1F 08 F2 */	sth r0, 0x8f2(r31)
/* 80A273D8  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 80A273DC  B0 1F 08 F4 */	sth r0, 0x8f4(r31)
/* 80A273E0  A8 1F 08 F0 */	lha r0, 0x8f0(r31)
/* 80A273E4  B0 1F 08 F6 */	sth r0, 0x8f6(r31)
/* 80A273E8  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 80A273EC  B0 1F 08 F8 */	sth r0, 0x8f8(r31)
/* 80A273F0  A8 1F 08 F4 */	lha r0, 0x8f4(r31)
/* 80A273F4  B0 1F 08 FA */	sth r0, 0x8fa(r31)
/* 80A273F8  3C 60 80 A3 */	lis r3, lit_4449@ha /* 0x80A2A0F0@ha */
/* 80A273FC  C0 03 A0 F0 */	lfs f0, lit_4449@l(r3)  /* 0x80A2A0F0@l */
/* 80A27400  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80A27404  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80A27408  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80A2740C  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80A27410  90 9F 14 2C */	stw r4, 0x142c(r31)
/* 80A27414  B0 BF 09 E6 */	sth r5, 0x9e6(r31)
/* 80A27418  7F E3 FB 78 */	mr r3, r31
/* 80A2741C  3C 80 80 A3 */	lis r4, l_arcNames@ha /* 0x80A2A3A0@ha */
/* 80A27420  38 84 A3 A0 */	addi r4, r4, l_arcNames@l /* 0x80A2A3A0@l */
/* 80A27424  80 84 00 00 */	lwz r4, 0(r4)
/* 80A27428  38 A0 00 07 */	li r5, 7
/* 80A2742C  4B 72 B7 3D */	bl getTexPtrnAnmP__8daNpcF_cFPci
/* 80A27430  7C 64 1B 78 */	mr r4, r3
/* 80A27434  80 7F 09 9C */	lwz r3, 0x99c(r31)
/* 80A27438  38 00 F5 7F */	li r0, -2689
/* 80A2743C  7C 60 00 38 */	and r0, r3, r0
/* 80A27440  90 1F 09 9C */	stw r0, 0x99c(r31)
/* 80A27444  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80A27448  80 63 00 04 */	lwz r3, 4(r3)
/* 80A2744C  80 A3 00 04 */	lwz r5, 4(r3)
/* 80A27450  7F E3 FB 78 */	mr r3, r31
/* 80A27454  3C C0 80 A3 */	lis r6, lit_4247@ha /* 0x80A2A0D0@ha */
/* 80A27458  C0 26 A0 D0 */	lfs f1, lit_4247@l(r6)  /* 0x80A2A0D0@l */
/* 80A2745C  38 C0 00 02 */	li r6, 2
/* 80A27460  4B 72 B8 65 */	bl setBtpAnm__8daNpcF_cFP16J3DAnmTexPatternP12J3DModelDatafi
/* 80A27464  2C 03 00 00 */	cmpwi r3, 0
/* 80A27468  41 82 00 10 */	beq lbl_80A27478
/* 80A2746C  80 1F 09 9C */	lwz r0, 0x99c(r31)
/* 80A27470  60 00 0A 80 */	ori r0, r0, 0xa80
/* 80A27474  90 1F 09 9C */	stw r0, 0x99c(r31)
lbl_80A27478:
/* 80A27478  38 00 00 00 */	li r0, 0
/* 80A2747C  98 1F 14 66 */	stb r0, 0x1466(r31)
/* 80A27480  98 1F 14 67 */	stb r0, 0x1467(r31)
/* 80A27484  98 1F 14 68 */	stb r0, 0x1468(r31)
/* 80A27488  98 1F 14 65 */	stb r0, 0x1465(r31)
/* 80A2748C  3C 60 80 A3 */	lis r3, lit_4488@ha /* 0x80A2A594@ha */
/* 80A27490  38 83 A5 94 */	addi r4, r3, lit_4488@l /* 0x80A2A594@l */
/* 80A27494  80 64 00 00 */	lwz r3, 0(r4)
/* 80A27498  80 04 00 04 */	lwz r0, 4(r4)
/* 80A2749C  90 61 00 08 */	stw r3, 8(r1)
/* 80A274A0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A274A4  80 04 00 08 */	lwz r0, 8(r4)
/* 80A274A8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A274AC  7F E3 FB 78 */	mr r3, r31
/* 80A274B0  38 81 00 08 */	addi r4, r1, 8
/* 80A274B4  48 00 05 D1 */	bl setAction__15daNpcKasiMich_cFM15daNpcKasiMich_cFPCvPvi_i
/* 80A274B8  3C 60 80 A3 */	lis r3, lit_4449@ha /* 0x80A2A0F0@ha */
/* 80A274BC  C0 03 A0 F0 */	lfs f0, lit_4449@l(r3)  /* 0x80A2A0F0@l */
/* 80A274C0  D0 1F 09 7C */	stfs f0, 0x97c(r31)
/* 80A274C4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A274C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A274CC  7C 08 03 A6 */	mtlr r0
/* 80A274D0  38 21 00 20 */	addi r1, r1, 0x20
/* 80A274D4  4E 80 00 20 */	blr 
