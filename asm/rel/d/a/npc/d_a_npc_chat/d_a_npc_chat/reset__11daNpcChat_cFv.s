lbl_809837EC:
/* 809837EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809837F0  7C 08 02 A6 */	mflr r0
/* 809837F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 809837F8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 809837FC  7C 7F 1B 78 */	mr r31, r3
/* 80983800  4B 7C F0 C9 */	bl initialize__8daNpcF_cFv
/* 80983804  38 7F 0B F4 */	addi r3, r31, 0xbf4
/* 80983808  4B 7C D8 31 */	bl initialize__15daNpcF_Lookat_cFv
/* 8098380C  38 7F 0C 90 */	addi r3, r31, 0xc90
/* 80983810  4B 7C CE A1 */	bl initialize__18daNpcF_ActorMngr_cFv
/* 80983814  38 A0 00 00 */	li r5, 0
/* 80983818  90 BF 0E 08 */	stw r5, 0xe08(r31)
/* 8098381C  90 BF 0E 0C */	stw r5, 0xe0c(r31)
/* 80983820  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 80983824  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 80983828  80 64 00 00 */	lwz r3, 0(r4)
/* 8098382C  80 04 00 04 */	lwz r0, 4(r4)
/* 80983830  90 7F 0D D8 */	stw r3, 0xdd8(r31)
/* 80983834  90 1F 0D DC */	stw r0, 0xddc(r31)
/* 80983838  80 04 00 08 */	lwz r0, 8(r4)
/* 8098383C  90 1F 0D E0 */	stw r0, 0xde0(r31)
/* 80983840  38 80 FF FF */	li r4, -1
/* 80983844  B0 9F 0E 1C */	sth r4, 0xe1c(r31)
/* 80983848  B0 BF 0E 1E */	sth r5, 0xe1e(r31)
/* 8098384C  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 80983850  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80983854  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 80983858  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 8098385C  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 80983860  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80983864  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80983868  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 8098386C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80983870  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 80983874  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80983878  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 8098387C  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 80983880  B0 BF 04 DC */	sth r5, 0x4dc(r31)
/* 80983884  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80983888  B0 BF 04 E0 */	sth r5, 0x4e0(r31)
/* 8098388C  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80983890  B0 1F 04 C8 */	sth r0, 0x4c8(r31)
/* 80983894  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80983898  B0 1F 04 CA */	sth r0, 0x4ca(r31)
/* 8098389C  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 809838A0  B0 1F 04 CC */	sth r0, 0x4cc(r31)
/* 809838A4  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 809838A8  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 809838AC  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 809838B0  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 809838B4  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 809838B8  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 809838BC  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 809838C0  B0 1F 08 F0 */	sth r0, 0x8f0(r31)
/* 809838C4  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 809838C8  B0 1F 08 F2 */	sth r0, 0x8f2(r31)
/* 809838CC  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 809838D0  B0 1F 08 F4 */	sth r0, 0x8f4(r31)
/* 809838D4  A8 1F 08 F0 */	lha r0, 0x8f0(r31)
/* 809838D8  B0 1F 08 F6 */	sth r0, 0x8f6(r31)
/* 809838DC  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 809838E0  B0 1F 08 F8 */	sth r0, 0x8f8(r31)
/* 809838E4  A8 1F 08 F4 */	lha r0, 0x8f4(r31)
/* 809838E8  B0 1F 08 FA */	sth r0, 0x8fa(r31)
/* 809838EC  3C 60 80 98 */	lis r3, lit_4248@ha /* 0x80986F14@ha */
/* 809838F0  C0 03 6F 14 */	lfs f0, lit_4248@l(r3)  /* 0x80986F14@l */
/* 809838F4  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 809838F8  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 809838FC  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80983900  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80983904  90 9F 0E 04 */	stw r4, 0xe04(r31)
/* 80983908  B0 BF 09 E6 */	sth r5, 0x9e6(r31)
/* 8098390C  98 BF 0E 38 */	stb r5, 0xe38(r31)
/* 80983910  38 60 00 00 */	li r3, 0
/* 80983914  38 00 00 05 */	li r0, 5
/* 80983918  7C 09 03 A6 */	mtctr r0
lbl_8098391C:
/* 8098391C  38 03 0E 24 */	addi r0, r3, 0xe24
/* 80983920  7C BF 01 2E */	stwx r5, r31, r0
/* 80983924  38 63 00 04 */	addi r3, r3, 4
/* 80983928  42 00 FF F4 */	bdnz lbl_8098391C
/* 8098392C  88 1F 0E 20 */	lbz r0, 0xe20(r31)
/* 80983930  54 00 10 3A */	slwi r0, r0, 2
/* 80983934  7C 7F 02 14 */	add r3, r31, r0
/* 80983938  93 E3 0E 24 */	stw r31, 0xe24(r3)
/* 8098393C  38 60 00 00 */	li r3, 0
/* 80983940  98 7F 0E 48 */	stb r3, 0xe48(r31)
/* 80983944  98 7F 0E 4D */	stb r3, 0xe4d(r31)
/* 80983948  80 1F 0B F0 */	lwz r0, 0xbf0(r31)
/* 8098394C  28 00 00 00 */	cmplwi r0, 0
/* 80983950  41 82 00 10 */	beq lbl_80983960
/* 80983954  38 00 00 01 */	li r0, 1
/* 80983958  98 1F 0E 4F */	stb r0, 0xe4f(r31)
/* 8098395C  48 00 00 08 */	b lbl_80983964
lbl_80983960:
/* 80983960  98 7F 0E 4F */	stb r3, 0xe4f(r31)
lbl_80983964:
/* 80983964  7F E3 FB 78 */	mr r3, r31
/* 80983968  4B FF F2 A9 */	bl appearTimeCheck__11daNpcChat_cFv
/* 8098396C  2C 03 00 00 */	cmpwi r3, 0
/* 80983970  41 82 00 10 */	beq lbl_80983980
/* 80983974  38 00 00 00 */	li r0, 0
/* 80983978  98 1F 09 F2 */	stb r0, 0x9f2(r31)
/* 8098397C  48 00 00 18 */	b lbl_80983994
lbl_80983980:
/* 80983980  38 00 00 01 */	li r0, 1
/* 80983984  98 1F 09 F2 */	stb r0, 0x9f2(r31)
/* 80983988  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 8098398C  64 00 08 00 */	oris r0, r0, 0x800
/* 80983990  90 1F 04 9C */	stw r0, 0x49c(r31)
lbl_80983994:
/* 80983994  3C 60 80 99 */	lis r3, lit_5660@ha /* 0x8098B8F8@ha */
/* 80983998  38 83 B8 F8 */	addi r4, r3, lit_5660@l /* 0x8098B8F8@l */
/* 8098399C  80 64 00 00 */	lwz r3, 0(r4)
/* 809839A0  80 04 00 04 */	lwz r0, 4(r4)
/* 809839A4  90 61 00 08 */	stw r3, 8(r1)
/* 809839A8  90 01 00 0C */	stw r0, 0xc(r1)
/* 809839AC  80 04 00 08 */	lwz r0, 8(r4)
/* 809839B0  90 01 00 10 */	stw r0, 0x10(r1)
/* 809839B4  7F E3 FB 78 */	mr r3, r31
/* 809839B8  38 81 00 08 */	addi r4, r1, 8
/* 809839BC  48 00 15 79 */	bl setAction__11daNpcChat_cFM11daNpcChat_cFPCvPvPv_b
/* 809839C0  3C 60 80 98 */	lis r3, lit_4248@ha /* 0x80986F14@ha */
/* 809839C4  C0 03 6F 14 */	lfs f0, lit_4248@l(r3)  /* 0x80986F14@l */
/* 809839C8  D0 1F 09 7C */	stfs f0, 0x97c(r31)
/* 809839CC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 809839D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809839D4  7C 08 03 A6 */	mtlr r0
/* 809839D8  38 21 00 20 */	addi r1, r1, 0x20
/* 809839DC  4E 80 00 20 */	blr 
