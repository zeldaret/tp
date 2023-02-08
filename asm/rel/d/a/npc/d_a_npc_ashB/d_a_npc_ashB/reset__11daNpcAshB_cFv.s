lbl_8095F0A4:
/* 8095F0A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8095F0A8  7C 08 02 A6 */	mflr r0
/* 8095F0AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8095F0B0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8095F0B4  7C 7F 1B 78 */	mr r31, r3
/* 8095F0B8  4B 7F 38 11 */	bl initialize__8daNpcF_cFv
/* 8095F0BC  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 8095F0C0  4B 7F 16 79 */	bl initialize__15daNpcF_MatAnm_cFv
/* 8095F0C4  38 7F 0B E0 */	addi r3, r31, 0xbe0
/* 8095F0C8  4B 7F 1F 71 */	bl initialize__15daNpcF_Lookat_cFv
/* 8095F0CC  38 7F 0C 7C */	addi r3, r31, 0xc7c
/* 8095F0D0  4B 7F 15 E1 */	bl initialize__18daNpcF_ActorMngr_cFv
/* 8095F0D4  38 A0 00 00 */	li r5, 0
/* 8095F0D8  90 BF 0D DC */	stw r5, 0xddc(r31)
/* 8095F0DC  90 BF 0D E0 */	stw r5, 0xde0(r31)
/* 8095F0E0  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 8095F0E4  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 8095F0E8  80 64 00 00 */	lwz r3, 0(r4)
/* 8095F0EC  80 04 00 04 */	lwz r0, 4(r4)
/* 8095F0F0  90 7F 0D C4 */	stw r3, 0xdc4(r31)
/* 8095F0F4  90 1F 0D C8 */	stw r0, 0xdc8(r31)
/* 8095F0F8  80 04 00 08 */	lwz r0, 8(r4)
/* 8095F0FC  90 1F 0D CC */	stw r0, 0xdcc(r31)
/* 8095F100  38 80 FF FF */	li r4, -1
/* 8095F104  B0 9F 0D E6 */	sth r4, 0xde6(r31)
/* 8095F108  B0 BF 0D E8 */	sth r5, 0xde8(r31)
/* 8095F10C  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 8095F110  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 8095F114  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 8095F118  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 8095F11C  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 8095F120  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 8095F124  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8095F128  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 8095F12C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8095F130  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 8095F134  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8095F138  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 8095F13C  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 8095F140  B0 BF 04 DC */	sth r5, 0x4dc(r31)
/* 8095F144  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 8095F148  B0 BF 04 E0 */	sth r5, 0x4e0(r31)
/* 8095F14C  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 8095F150  B0 1F 04 C8 */	sth r0, 0x4c8(r31)
/* 8095F154  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 8095F158  B0 1F 04 CA */	sth r0, 0x4ca(r31)
/* 8095F15C  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 8095F160  B0 1F 04 CC */	sth r0, 0x4cc(r31)
/* 8095F164  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 8095F168  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 8095F16C  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 8095F170  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 8095F174  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 8095F178  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 8095F17C  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 8095F180  B0 1F 08 F0 */	sth r0, 0x8f0(r31)
/* 8095F184  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 8095F188  B0 1F 08 F2 */	sth r0, 0x8f2(r31)
/* 8095F18C  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 8095F190  B0 1F 08 F4 */	sth r0, 0x8f4(r31)
/* 8095F194  A8 1F 08 F0 */	lha r0, 0x8f0(r31)
/* 8095F198  B0 1F 08 F6 */	sth r0, 0x8f6(r31)
/* 8095F19C  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 8095F1A0  B0 1F 08 F8 */	sth r0, 0x8f8(r31)
/* 8095F1A4  A8 1F 08 F4 */	lha r0, 0x8f4(r31)
/* 8095F1A8  B0 1F 08 FA */	sth r0, 0x8fa(r31)
/* 8095F1AC  3C 60 80 96 */	lis r3, lit_4238@ha /* 0x80962168@ha */
/* 8095F1B0  C0 03 21 68 */	lfs f0, lit_4238@l(r3)  /* 0x80962168@l */
/* 8095F1B4  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 8095F1B8  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 8095F1BC  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 8095F1C0  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 8095F1C4  90 9F 0D D8 */	stw r4, 0xdd8(r31)
/* 8095F1C8  B0 BF 09 E6 */	sth r5, 0x9e6(r31)
/* 8095F1CC  D0 1F 09 74 */	stfs f0, 0x974(r31)
/* 8095F1D0  D0 1F 09 7C */	stfs f0, 0x97c(r31)
/* 8095F1D4  98 BF 0D ED */	stb r5, 0xded(r31)
/* 8095F1D8  98 BF 0D EE */	stb r5, 0xdee(r31)
/* 8095F1DC  3C 60 80 96 */	lis r3, lit_4500@ha /* 0x809625E4@ha */
/* 8095F1E0  38 83 25 E4 */	addi r4, r3, lit_4500@l /* 0x809625E4@l */
/* 8095F1E4  80 64 00 00 */	lwz r3, 0(r4)
/* 8095F1E8  80 04 00 04 */	lwz r0, 4(r4)
/* 8095F1EC  90 61 00 08 */	stw r3, 8(r1)
/* 8095F1F0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8095F1F4  80 04 00 08 */	lwz r0, 8(r4)
/* 8095F1F8  90 01 00 10 */	stw r0, 0x10(r1)
/* 8095F1FC  7F E3 FB 78 */	mr r3, r31
/* 8095F200  38 81 00 08 */	addi r4, r1, 8
/* 8095F204  48 00 00 19 */	bl setAction__11daNpcAshB_cFM11daNpcAshB_cFPCvPvPv_b
/* 8095F208  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8095F20C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8095F210  7C 08 03 A6 */	mtlr r0
/* 8095F214  38 21 00 20 */	addi r1, r1, 0x20
/* 8095F218  4E 80 00 20 */	blr 
