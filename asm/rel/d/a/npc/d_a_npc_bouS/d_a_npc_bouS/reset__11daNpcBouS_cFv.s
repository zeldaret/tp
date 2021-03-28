lbl_80974730:
/* 80974730  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80974734  7C 08 02 A6 */	mflr r0
/* 80974738  90 01 00 34 */	stw r0, 0x34(r1)
/* 8097473C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80974740  7C 7F 1B 78 */	mr r31, r3
/* 80974744  4B 7D E1 84 */	b initialize__8daNpcF_cFv
/* 80974748  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 8097474C  4B 7D BF EC */	b initialize__15daNpcF_MatAnm_cFv
/* 80974750  38 7F 0B DC */	addi r3, r31, 0xbdc
/* 80974754  4B 7D C8 E4 */	b initialize__15daNpcF_Lookat_cFv
/* 80974758  38 7F 0C 78 */	addi r3, r31, 0xc78
/* 8097475C  4B 7D BF 54 */	b initialize__18daNpcF_ActorMngr_cFv
/* 80974760  38 A0 00 00 */	li r5, 0
/* 80974764  90 BF 0D E8 */	stw r5, 0xde8(r31)
/* 80974768  90 BF 0D EC */	stw r5, 0xdec(r31)
/* 8097476C  3C 60 80 3A */	lis r3, __ptmf_null@ha
/* 80974770  38 83 21 80 */	addi r4, r3, __ptmf_null@l
/* 80974774  80 64 00 00 */	lwz r3, 0(r4)
/* 80974778  80 04 00 04 */	lwz r0, 4(r4)
/* 8097477C  90 7F 0D C0 */	stw r3, 0xdc0(r31)
/* 80974780  90 1F 0D C4 */	stw r0, 0xdc4(r31)
/* 80974784  80 04 00 08 */	lwz r0, 8(r4)
/* 80974788  90 1F 0D C8 */	stw r0, 0xdc8(r31)
/* 8097478C  38 80 FF FF */	li r4, -1
/* 80974790  B0 9F 0D F8 */	sth r4, 0xdf8(r31)
/* 80974794  B0 BF 0D FC */	sth r5, 0xdfc(r31)
/* 80974798  38 00 00 01 */	li r0, 1
/* 8097479C  98 1F 0D FF */	stb r0, 0xdff(r31)
/* 809747A0  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 809747A4  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 809747A8  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 809747AC  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 809747B0  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 809747B4  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 809747B8  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 809747BC  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 809747C0  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 809747C4  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 809747C8  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 809747CC  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 809747D0  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 809747D4  B0 BF 04 DC */	sth r5, 0x4dc(r31)
/* 809747D8  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 809747DC  B0 BF 04 E0 */	sth r5, 0x4e0(r31)
/* 809747E0  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 809747E4  B0 1F 04 C8 */	sth r0, 0x4c8(r31)
/* 809747E8  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 809747EC  B0 1F 04 CA */	sth r0, 0x4ca(r31)
/* 809747F0  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 809747F4  B0 1F 04 CC */	sth r0, 0x4cc(r31)
/* 809747F8  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 809747FC  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80974800  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80974804  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80974808  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 8097480C  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 80974810  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80974814  B0 1F 08 F0 */	sth r0, 0x8f0(r31)
/* 80974818  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 8097481C  B0 1F 08 F2 */	sth r0, 0x8f2(r31)
/* 80974820  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 80974824  B0 1F 08 F4 */	sth r0, 0x8f4(r31)
/* 80974828  A8 1F 08 F0 */	lha r0, 0x8f0(r31)
/* 8097482C  B0 1F 08 F6 */	sth r0, 0x8f6(r31)
/* 80974830  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 80974834  B0 1F 08 F8 */	sth r0, 0x8f8(r31)
/* 80974838  A8 1F 08 F4 */	lha r0, 0x8f4(r31)
/* 8097483C  B0 1F 08 FA */	sth r0, 0x8fa(r31)
/* 80974840  3C 60 80 98 */	lis r3, lit_4447@ha
/* 80974844  C0 03 84 B0 */	lfs f0, lit_4447@l(r3)
/* 80974848  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 8097484C  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80974850  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80974854  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80974858  90 9F 0D E4 */	stw r4, 0xde4(r31)
/* 8097485C  B0 BF 09 E6 */	sth r5, 0x9e6(r31)
/* 80974860  7F E3 FB 78 */	mr r3, r31
/* 80974864  48 00 16 75 */	bl checkIntroDemoStart__11daNpcBouS_cFv
/* 80974868  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8097486C  41 82 00 34 */	beq lbl_809748A0
/* 80974870  3C 60 80 98 */	lis r3, lit_4702@ha
/* 80974874  38 83 89 AC */	addi r4, r3, lit_4702@l
/* 80974878  80 64 00 00 */	lwz r3, 0(r4)
/* 8097487C  80 04 00 04 */	lwz r0, 4(r4)
/* 80974880  90 61 00 14 */	stw r3, 0x14(r1)
/* 80974884  90 01 00 18 */	stw r0, 0x18(r1)
/* 80974888  80 04 00 08 */	lwz r0, 8(r4)
/* 8097488C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80974890  7F E3 FB 78 */	mr r3, r31
/* 80974894  38 81 00 14 */	addi r4, r1, 0x14
/* 80974898  48 00 00 59 */	bl setAction__11daNpcBouS_cFM11daNpcBouS_cFPCvPvPv_b
/* 8097489C  48 00 00 30 */	b lbl_809748CC
lbl_809748A0:
/* 809748A0  3C 60 80 98 */	lis r3, lit_4705@ha
/* 809748A4  38 83 89 B8 */	addi r4, r3, lit_4705@l
/* 809748A8  80 64 00 00 */	lwz r3, 0(r4)
/* 809748AC  80 04 00 04 */	lwz r0, 4(r4)
/* 809748B0  90 61 00 08 */	stw r3, 8(r1)
/* 809748B4  90 01 00 0C */	stw r0, 0xc(r1)
/* 809748B8  80 04 00 08 */	lwz r0, 8(r4)
/* 809748BC  90 01 00 10 */	stw r0, 0x10(r1)
/* 809748C0  7F E3 FB 78 */	mr r3, r31
/* 809748C4  38 81 00 08 */	addi r4, r1, 8
/* 809748C8  48 00 00 29 */	bl setAction__11daNpcBouS_cFM11daNpcBouS_cFPCvPvPv_b
lbl_809748CC:
/* 809748CC  3C 60 80 98 */	lis r3, lit_4447@ha
/* 809748D0  C0 03 84 B0 */	lfs f0, lit_4447@l(r3)
/* 809748D4  D0 1F 09 74 */	stfs f0, 0x974(r31)
/* 809748D8  D0 1F 09 7C */	stfs f0, 0x97c(r31)
/* 809748DC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 809748E0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809748E4  7C 08 03 A6 */	mtlr r0
/* 809748E8  38 21 00 30 */	addi r1, r1, 0x30
/* 809748EC  4E 80 00 20 */	blr 
