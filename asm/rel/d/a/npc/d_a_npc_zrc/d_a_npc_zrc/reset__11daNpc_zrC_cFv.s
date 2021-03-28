lbl_80B8FD10:
/* 80B8FD10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B8FD14  7C 08 02 A6 */	mflr r0
/* 80B8FD18  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B8FD1C  39 61 00 20 */	addi r11, r1, 0x20
/* 80B8FD20  4B 7D 24 BC */	b _savegpr_29
/* 80B8FD24  7C 7F 1B 78 */	mr r31, r3
/* 80B8FD28  4B 5C 2B A0 */	b initialize__8daNpcF_cFv
/* 80B8FD2C  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 80B8FD30  4B 5C 0A 08 */	b initialize__15daNpcF_MatAnm_cFv
/* 80B8FD34  38 7F 0B DC */	addi r3, r31, 0xbdc
/* 80B8FD38  4B 5C 13 00 */	b initialize__15daNpcF_Lookat_cFv
/* 80B8FD3C  3B A0 00 00 */	li r29, 0
/* 80B8FD40  3B C0 00 00 */	li r30, 0
lbl_80B8FD44:
/* 80B8FD44  38 7E 0C 78 */	addi r3, r30, 0xc78
/* 80B8FD48  7C 7F 1A 14 */	add r3, r31, r3
/* 80B8FD4C  4B 5C 09 64 */	b initialize__18daNpcF_ActorMngr_cFv
/* 80B8FD50  3B BD 00 01 */	addi r29, r29, 1
/* 80B8FD54  2C 1D 00 03 */	cmpwi r29, 3
/* 80B8FD58  3B DE 00 08 */	addi r30, r30, 8
/* 80B8FD5C  41 80 FF E8 */	blt lbl_80B8FD44
/* 80B8FD60  3C 60 80 3A */	lis r3, __ptmf_null@ha
/* 80B8FD64  38 83 21 80 */	addi r4, r3, __ptmf_null@l
/* 80B8FD68  80 64 00 00 */	lwz r3, 0(r4)
/* 80B8FD6C  80 04 00 04 */	lwz r0, 4(r4)
/* 80B8FD70  90 7F 0D D0 */	stw r3, 0xdd0(r31)
/* 80B8FD74  90 1F 0D D4 */	stw r0, 0xdd4(r31)
/* 80B8FD78  80 04 00 08 */	lwz r0, 8(r4)
/* 80B8FD7C  90 1F 0D D8 */	stw r0, 0xdd8(r31)
/* 80B8FD80  80 64 00 00 */	lwz r3, 0(r4)
/* 80B8FD84  80 04 00 04 */	lwz r0, 4(r4)
/* 80B8FD88  90 7F 0D DC */	stw r3, 0xddc(r31)
/* 80B8FD8C  90 1F 0D E0 */	stw r0, 0xde0(r31)
/* 80B8FD90  80 04 00 08 */	lwz r0, 8(r4)
/* 80B8FD94  90 1F 0D E4 */	stw r0, 0xde4(r31)
/* 80B8FD98  38 60 00 00 */	li r3, 0
/* 80B8FD9C  90 7F 0E 10 */	stw r3, 0xe10(r31)
/* 80B8FDA0  90 7F 0E 14 */	stw r3, 0xe14(r31)
/* 80B8FDA4  90 7F 0E 18 */	stw r3, 0xe18(r31)
/* 80B8FDA8  90 7F 0E 1C */	stw r3, 0xe1c(r31)
/* 80B8FDAC  38 00 FF FF */	li r0, -1
/* 80B8FDB0  B0 1F 0E 24 */	sth r0, 0xe24(r31)
/* 80B8FDB4  B0 7F 0E 26 */	sth r3, 0xe26(r31)
/* 80B8FDB8  90 1F 0E 34 */	stw r0, 0xe34(r31)
/* 80B8FDBC  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 80B8FDC0  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80B8FDC4  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 80B8FDC8  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80B8FDCC  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 80B8FDD0  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80B8FDD4  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80B8FDD8  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 80B8FDDC  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80B8FDE0  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 80B8FDE4  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80B8FDE8  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 80B8FDEC  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 80B8FDF0  B0 7F 04 DC */	sth r3, 0x4dc(r31)
/* 80B8FDF4  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80B8FDF8  B0 7F 04 E0 */	sth r3, 0x4e0(r31)
/* 80B8FDFC  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80B8FE00  B0 1F 04 C8 */	sth r0, 0x4c8(r31)
/* 80B8FE04  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80B8FE08  B0 1F 04 CA */	sth r0, 0x4ca(r31)
/* 80B8FE0C  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 80B8FE10  B0 1F 04 CC */	sth r0, 0x4cc(r31)
/* 80B8FE14  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80B8FE18  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80B8FE1C  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80B8FE20  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80B8FE24  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 80B8FE28  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 80B8FE2C  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80B8FE30  B0 1F 08 F0 */	sth r0, 0x8f0(r31)
/* 80B8FE34  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80B8FE38  B0 1F 08 F2 */	sth r0, 0x8f2(r31)
/* 80B8FE3C  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 80B8FE40  B0 1F 08 F4 */	sth r0, 0x8f4(r31)
/* 80B8FE44  A8 1F 08 F0 */	lha r0, 0x8f0(r31)
/* 80B8FE48  B0 1F 08 F6 */	sth r0, 0x8f6(r31)
/* 80B8FE4C  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 80B8FE50  B0 1F 08 F8 */	sth r0, 0x8f8(r31)
/* 80B8FE54  A8 1F 08 F4 */	lha r0, 0x8f4(r31)
/* 80B8FE58  B0 1F 08 FA */	sth r0, 0x8fa(r31)
/* 80B8FE5C  3C 60 80 B9 */	lis r3, lit_4484@ha
/* 80B8FE60  C0 03 32 98 */	lfs f0, lit_4484@l(r3)
/* 80B8FE64  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80B8FE68  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80B8FE6C  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80B8FE70  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80B8FE74  7F E3 FB 78 */	mr r3, r31
/* 80B8FE78  38 80 00 00 */	li r4, 0
/* 80B8FE7C  48 00 12 C1 */	bl setLookMode__11daNpc_zrC_cFi
/* 80B8FE80  88 1F 0E 28 */	lbz r0, 0xe28(r31)
/* 80B8FE84  28 00 00 01 */	cmplwi r0, 1
/* 80B8FE88  40 82 00 14 */	bne lbl_80B8FE9C
/* 80B8FE8C  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 80B8FE90  54 00 06 2C */	rlwinm r0, r0, 0, 0x18, 0x16
/* 80B8FE94  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 80B8FE98  48 00 00 50 */	b lbl_80B8FEE8
lbl_80B8FE9C:
/* 80B8FE9C  28 00 00 02 */	cmplwi r0, 2
/* 80B8FEA0  40 82 00 48 */	bne lbl_80B8FEE8
/* 80B8FEA4  7F E3 FB 78 */	mr r3, r31
/* 80B8FEA8  38 80 00 02 */	li r4, 2
/* 80B8FEAC  3C A0 80 B9 */	lis r5, lit_4767@ha
/* 80B8FEB0  C0 25 32 A8 */	lfs f1, lit_4767@l(r5)
/* 80B8FEB4  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B8FEB8  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B8FEBC  7D 89 03 A6 */	mtctr r12
/* 80B8FEC0  4E 80 04 21 */	bctrl 
/* 80B8FEC4  7F E3 FB 78 */	mr r3, r31
/* 80B8FEC8  38 80 00 02 */	li r4, 2
/* 80B8FECC  3C A0 80 B9 */	lis r5, lit_4767@ha
/* 80B8FED0  C0 25 32 A8 */	lfs f1, lit_4767@l(r5)
/* 80B8FED4  38 A0 00 00 */	li r5, 0
/* 80B8FED8  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B8FEDC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B8FEE0  7D 89 03 A6 */	mtctr r12
/* 80B8FEE4  4E 80 04 21 */	bctrl 
lbl_80B8FEE8:
/* 80B8FEE8  38 00 00 00 */	li r0, 0
/* 80B8FEEC  98 1F 0E 30 */	stb r0, 0xe30(r31)
/* 80B8FEF0  98 1F 0E 38 */	stb r0, 0xe38(r31)
/* 80B8FEF4  38 00 00 01 */	li r0, 1
/* 80B8FEF8  98 1F 09 EE */	stb r0, 0x9ee(r31)
/* 80B8FEFC  39 61 00 20 */	addi r11, r1, 0x20
/* 80B8FF00  4B 7D 23 28 */	b _restgpr_29
/* 80B8FF04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B8FF08  7C 08 03 A6 */	mtlr r0
/* 80B8FF0C  38 21 00 20 */	addi r1, r1, 0x20
/* 80B8FF10  4E 80 00 20 */	blr 
