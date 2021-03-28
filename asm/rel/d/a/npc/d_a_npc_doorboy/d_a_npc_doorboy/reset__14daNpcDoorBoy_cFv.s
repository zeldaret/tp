lbl_809AB7B8:
/* 809AB7B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809AB7BC  7C 08 02 A6 */	mflr r0
/* 809AB7C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 809AB7C4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 809AB7C8  7C 7F 1B 78 */	mr r31, r3
/* 809AB7CC  4B 7A 70 FC */	b initialize__8daNpcF_cFv
/* 809AB7D0  38 7F 0B F0 */	addi r3, r31, 0xbf0
/* 809AB7D4  4B 7A 58 64 */	b initialize__15daNpcF_Lookat_cFv
/* 809AB7D8  38 7F 0C 8C */	addi r3, r31, 0xc8c
/* 809AB7DC  4B 7A 4E D4 */	b initialize__18daNpcF_ActorMngr_cFv
/* 809AB7E0  38 A0 00 00 */	li r5, 0
/* 809AB7E4  90 BF 0D F4 */	stw r5, 0xdf4(r31)
/* 809AB7E8  90 BF 0D F8 */	stw r5, 0xdf8(r31)
/* 809AB7EC  3C 60 80 3A */	lis r3, __ptmf_null@ha
/* 809AB7F0  38 83 21 80 */	addi r4, r3, __ptmf_null@l
/* 809AB7F4  80 64 00 00 */	lwz r3, 0(r4)
/* 809AB7F8  80 04 00 04 */	lwz r0, 4(r4)
/* 809AB7FC  90 7F 0D D4 */	stw r3, 0xdd4(r31)
/* 809AB800  90 1F 0D D8 */	stw r0, 0xdd8(r31)
/* 809AB804  80 04 00 08 */	lwz r0, 8(r4)
/* 809AB808  90 1F 0D DC */	stw r0, 0xddc(r31)
/* 809AB80C  38 80 FF FF */	li r4, -1
/* 809AB810  B0 9F 0E 00 */	sth r4, 0xe00(r31)
/* 809AB814  B0 BF 0E 04 */	sth r5, 0xe04(r31)
/* 809AB818  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 809AB81C  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 809AB820  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 809AB824  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 809AB828  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 809AB82C  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 809AB830  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 809AB834  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 809AB838  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 809AB83C  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 809AB840  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 809AB844  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 809AB848  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 809AB84C  B0 BF 04 DC */	sth r5, 0x4dc(r31)
/* 809AB850  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 809AB854  B0 BF 04 E0 */	sth r5, 0x4e0(r31)
/* 809AB858  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 809AB85C  B0 1F 04 C8 */	sth r0, 0x4c8(r31)
/* 809AB860  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 809AB864  B0 1F 04 CA */	sth r0, 0x4ca(r31)
/* 809AB868  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 809AB86C  B0 1F 04 CC */	sth r0, 0x4cc(r31)
/* 809AB870  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 809AB874  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 809AB878  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 809AB87C  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 809AB880  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 809AB884  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 809AB888  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 809AB88C  B0 1F 08 F0 */	sth r0, 0x8f0(r31)
/* 809AB890  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 809AB894  B0 1F 08 F2 */	sth r0, 0x8f2(r31)
/* 809AB898  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 809AB89C  B0 1F 08 F4 */	sth r0, 0x8f4(r31)
/* 809AB8A0  A8 1F 08 F0 */	lha r0, 0x8f0(r31)
/* 809AB8A4  B0 1F 08 F6 */	sth r0, 0x8f6(r31)
/* 809AB8A8  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 809AB8AC  B0 1F 08 F8 */	sth r0, 0x8f8(r31)
/* 809AB8B0  A8 1F 08 F4 */	lha r0, 0x8f4(r31)
/* 809AB8B4  B0 1F 08 FA */	sth r0, 0x8fa(r31)
/* 809AB8B8  3C 60 80 9B */	lis r3, lit_4477@ha
/* 809AB8BC  C0 03 DA 3C */	lfs f0, lit_4477@l(r3)
/* 809AB8C0  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 809AB8C4  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 809AB8C8  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 809AB8CC  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 809AB8D0  90 9F 0D F0 */	stw r4, 0xdf0(r31)
/* 809AB8D4  B0 BF 09 E6 */	sth r5, 0x9e6(r31)
/* 809AB8D8  7F E3 FB 78 */	mr r3, r31
/* 809AB8DC  3C 80 80 9B */	lis r4, l_arcNames@ha
/* 809AB8E0  38 84 DB 9C */	addi r4, r4, l_arcNames@l
/* 809AB8E4  80 84 00 00 */	lwz r4, 0(r4)
/* 809AB8E8  38 A0 00 07 */	li r5, 7
/* 809AB8EC  4B 7A 72 7C */	b getTexPtrnAnmP__8daNpcF_cFPci
/* 809AB8F0  7C 64 1B 78 */	mr r4, r3
/* 809AB8F4  80 7F 09 9C */	lwz r3, 0x99c(r31)
/* 809AB8F8  38 00 F5 7F */	li r0, -2689
/* 809AB8FC  7C 60 00 38 */	and r0, r3, r0
/* 809AB900  90 1F 09 9C */	stw r0, 0x99c(r31)
/* 809AB904  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809AB908  80 63 00 04 */	lwz r3, 4(r3)
/* 809AB90C  80 A3 00 04 */	lwz r5, 4(r3)
/* 809AB910  7F E3 FB 78 */	mr r3, r31
/* 809AB914  3C C0 80 9B */	lis r6, lit_4319@ha
/* 809AB918  C0 26 DA 24 */	lfs f1, lit_4319@l(r6)
/* 809AB91C  38 C0 00 02 */	li r6, 2
/* 809AB920  4B 7A 73 A4 */	b setBtpAnm__8daNpcF_cFP16J3DAnmTexPatternP12J3DModelDatafi
/* 809AB924  2C 03 00 00 */	cmpwi r3, 0
/* 809AB928  41 82 00 10 */	beq lbl_809AB938
/* 809AB92C  80 1F 09 9C */	lwz r0, 0x99c(r31)
/* 809AB930  60 00 0A 80 */	ori r0, r0, 0xa80
/* 809AB934  90 1F 09 9C */	stw r0, 0x99c(r31)
lbl_809AB938:
/* 809AB938  3C 60 80 9B */	lis r3, lit_4449@ha
/* 809AB93C  38 83 DB B8 */	addi r4, r3, lit_4449@l
/* 809AB940  80 64 00 00 */	lwz r3, 0(r4)
/* 809AB944  80 04 00 04 */	lwz r0, 4(r4)
/* 809AB948  90 61 00 08 */	stw r3, 8(r1)
/* 809AB94C  90 01 00 0C */	stw r0, 0xc(r1)
/* 809AB950  80 04 00 08 */	lwz r0, 8(r4)
/* 809AB954  90 01 00 10 */	stw r0, 0x10(r1)
/* 809AB958  7F E3 FB 78 */	mr r3, r31
/* 809AB95C  38 81 00 08 */	addi r4, r1, 8
/* 809AB960  48 00 00 25 */	bl setAction__14daNpcDoorBoy_cFM14daNpcDoorBoy_cFPCvPvPv_b
/* 809AB964  3C 60 80 9B */	lis r3, lit_4477@ha
/* 809AB968  C0 03 DA 3C */	lfs f0, lit_4477@l(r3)
/* 809AB96C  D0 1F 09 7C */	stfs f0, 0x97c(r31)
/* 809AB970  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 809AB974  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809AB978  7C 08 03 A6 */	mtlr r0
/* 809AB97C  38 21 00 20 */	addi r1, r1, 0x20
/* 809AB980  4E 80 00 20 */	blr 
