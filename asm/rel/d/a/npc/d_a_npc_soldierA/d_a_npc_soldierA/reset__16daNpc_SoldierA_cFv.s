lbl_80AF0BB0:
/* 80AF0BB0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AF0BB4  7C 08 02 A6 */	mflr r0
/* 80AF0BB8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AF0BBC  39 61 00 20 */	addi r11, r1, 0x20
/* 80AF0BC0  4B 87 16 1D */	bl _savegpr_29
/* 80AF0BC4  7C 7F 1B 78 */	mr r31, r3
/* 80AF0BC8  4B 66 1D 01 */	bl initialize__8daNpcF_cFv
/* 80AF0BCC  38 7F 0B DC */	addi r3, r31, 0xbdc
/* 80AF0BD0  4B 66 04 69 */	bl initialize__15daNpcF_Lookat_cFv
/* 80AF0BD4  3B A0 00 00 */	li r29, 0
/* 80AF0BD8  3B C0 00 00 */	li r30, 0
lbl_80AF0BDC:
/* 80AF0BDC  38 7E 0C 78 */	addi r3, r30, 0xc78
/* 80AF0BE0  7C 7F 1A 14 */	add r3, r31, r3
/* 80AF0BE4  4B 65 FA CD */	bl initialize__18daNpcF_ActorMngr_cFv
/* 80AF0BE8  3B BD 00 01 */	addi r29, r29, 1
/* 80AF0BEC  2C 1D 00 03 */	cmpwi r29, 3
/* 80AF0BF0  3B DE 00 08 */	addi r30, r30, 8
/* 80AF0BF4  41 80 FF E8 */	blt lbl_80AF0BDC
/* 80AF0BF8  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 80AF0BFC  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 80AF0C00  80 64 00 00 */	lwz r3, 0(r4)
/* 80AF0C04  80 04 00 04 */	lwz r0, 4(r4)
/* 80AF0C08  90 7F 0D D0 */	stw r3, 0xdd0(r31)
/* 80AF0C0C  90 1F 0D D4 */	stw r0, 0xdd4(r31)
/* 80AF0C10  80 04 00 08 */	lwz r0, 8(r4)
/* 80AF0C14  90 1F 0D D8 */	stw r0, 0xdd8(r31)
/* 80AF0C18  80 64 00 00 */	lwz r3, 0(r4)
/* 80AF0C1C  80 04 00 04 */	lwz r0, 4(r4)
/* 80AF0C20  90 7F 0D DC */	stw r3, 0xddc(r31)
/* 80AF0C24  90 1F 0D E0 */	stw r0, 0xde0(r31)
/* 80AF0C28  80 04 00 08 */	lwz r0, 8(r4)
/* 80AF0C2C  90 1F 0D E4 */	stw r0, 0xde4(r31)
/* 80AF0C30  38 60 00 00 */	li r3, 0
/* 80AF0C34  90 7F 0E 00 */	stw r3, 0xe00(r31)
/* 80AF0C38  90 7F 0E 04 */	stw r3, 0xe04(r31)
/* 80AF0C3C  90 7F 0E 08 */	stw r3, 0xe08(r31)
/* 80AF0C40  90 7F 0E 0C */	stw r3, 0xe0c(r31)
/* 80AF0C44  38 00 FF FF */	li r0, -1
/* 80AF0C48  B0 1F 0E 14 */	sth r0, 0xe14(r31)
/* 80AF0C4C  B0 7F 0E 16 */	sth r3, 0xe16(r31)
/* 80AF0C50  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 80AF0C54  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80AF0C58  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 80AF0C5C  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80AF0C60  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 80AF0C64  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80AF0C68  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80AF0C6C  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 80AF0C70  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80AF0C74  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 80AF0C78  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80AF0C7C  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 80AF0C80  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 80AF0C84  B0 7F 04 DC */	sth r3, 0x4dc(r31)
/* 80AF0C88  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80AF0C8C  B0 7F 04 E0 */	sth r3, 0x4e0(r31)
/* 80AF0C90  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80AF0C94  B0 1F 04 C8 */	sth r0, 0x4c8(r31)
/* 80AF0C98  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80AF0C9C  B0 1F 04 CA */	sth r0, 0x4ca(r31)
/* 80AF0CA0  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 80AF0CA4  B0 1F 04 CC */	sth r0, 0x4cc(r31)
/* 80AF0CA8  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80AF0CAC  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80AF0CB0  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80AF0CB4  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80AF0CB8  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 80AF0CBC  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 80AF0CC0  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80AF0CC4  B0 1F 08 F0 */	sth r0, 0x8f0(r31)
/* 80AF0CC8  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80AF0CCC  B0 1F 08 F2 */	sth r0, 0x8f2(r31)
/* 80AF0CD0  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 80AF0CD4  B0 1F 08 F4 */	sth r0, 0x8f4(r31)
/* 80AF0CD8  A8 1F 08 F0 */	lha r0, 0x8f0(r31)
/* 80AF0CDC  B0 1F 08 F6 */	sth r0, 0x8f6(r31)
/* 80AF0CE0  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 80AF0CE4  B0 1F 08 F8 */	sth r0, 0x8f8(r31)
/* 80AF0CE8  A8 1F 08 F4 */	lha r0, 0x8f4(r31)
/* 80AF0CEC  B0 1F 08 FA */	sth r0, 0x8fa(r31)
/* 80AF0CF0  3C 60 80 AF */	lis r3, lit_4449@ha /* 0x80AF2768@ha */
/* 80AF0CF4  C0 03 27 68 */	lfs f0, lit_4449@l(r3)  /* 0x80AF2768@l */
/* 80AF0CF8  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80AF0CFC  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80AF0D00  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80AF0D04  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80AF0D08  88 7F 0E 18 */	lbz r3, 0xe18(r31)
/* 80AF0D0C  38 03 00 01 */	addi r0, r3, 1
/* 80AF0D10  98 1F 00 FF */	stb r0, 0xff(r31)
/* 80AF0D14  38 00 00 01 */	li r0, 1
/* 80AF0D18  98 1F 09 EE */	stb r0, 0x9ee(r31)
/* 80AF0D1C  39 61 00 20 */	addi r11, r1, 0x20
/* 80AF0D20  4B 87 15 09 */	bl _restgpr_29
/* 80AF0D24  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AF0D28  7C 08 03 A6 */	mtlr r0
/* 80AF0D2C  38 21 00 20 */	addi r1, r1, 0x20
/* 80AF0D30  4E 80 00 20 */	blr 
