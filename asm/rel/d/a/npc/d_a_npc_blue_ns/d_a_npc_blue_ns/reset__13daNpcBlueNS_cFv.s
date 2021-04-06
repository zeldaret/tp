lbl_8096A358:
/* 8096A358  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8096A35C  7C 08 02 A6 */	mflr r0
/* 8096A360  90 01 00 24 */	stw r0, 0x24(r1)
/* 8096A364  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8096A368  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8096A36C  7C 7E 1B 78 */	mr r30, r3
/* 8096A370  3C 60 80 97 */	lis r3, l_cyl_src@ha /* 0x8096C920@ha */
/* 8096A374  3B E3 C9 20 */	addi r31, r3, l_cyl_src@l /* 0x8096C920@l */
/* 8096A378  88 9E 0E 11 */	lbz r4, 0xe11(r30)
/* 8096A37C  38 60 00 03 */	li r3, 3
/* 8096A380  7C 04 1B D6 */	divw r0, r4, r3
/* 8096A384  7C 00 19 D6 */	mullw r0, r0, r3
/* 8096A388  7C A0 20 50 */	subf r5, r0, r4
/* 8096A38C  7C 04 1B D7 */	divw. r0, r4, r3
/* 8096A390  41 82 00 08 */	beq lbl_8096A398
/* 8096A394  38 A0 00 02 */	li r5, 2
lbl_8096A398:
/* 8096A398  54 A4 10 3A */	slwi r4, r5, 2
/* 8096A39C  38 7F 01 30 */	addi r3, r31, 0x130
/* 8096A3A0  7C 03 20 2E */	lwzx r0, r3, r4
/* 8096A3A4  90 1E 0E 04 */	stw r0, 0xe04(r30)
/* 8096A3A8  38 7F 01 3C */	addi r3, r31, 0x13c
/* 8096A3AC  7C 03 20 2E */	lwzx r0, r3, r4
/* 8096A3B0  90 1E 0E 08 */	stw r0, 0xe08(r30)
/* 8096A3B4  38 7F 01 48 */	addi r3, r31, 0x148
/* 8096A3B8  7C 03 20 2E */	lwzx r0, r3, r4
/* 8096A3BC  90 1E 0E 0C */	stw r0, 0xe0c(r30)
/* 8096A3C0  7F C3 F3 78 */	mr r3, r30
/* 8096A3C4  4B 7E 85 05 */	bl initialize__8daNpcF_cFv
/* 8096A3C8  38 7E 0B DC */	addi r3, r30, 0xbdc
/* 8096A3CC  4B 7E 6C 6D */	bl initialize__15daNpcF_Lookat_cFv
/* 8096A3D0  38 7E 0C 78 */	addi r3, r30, 0xc78
/* 8096A3D4  4B 7E 62 DD */	bl initialize__18daNpcF_ActorMngr_cFv
/* 8096A3D8  38 A0 00 00 */	li r5, 0
/* 8096A3DC  90 BE 0D DC */	stw r5, 0xddc(r30)
/* 8096A3E0  90 BE 0D E0 */	stw r5, 0xde0(r30)
/* 8096A3E4  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 8096A3E8  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 8096A3EC  80 64 00 00 */	lwz r3, 0(r4)
/* 8096A3F0  80 04 00 04 */	lwz r0, 4(r4)
/* 8096A3F4  90 7E 0D C4 */	stw r3, 0xdc4(r30)
/* 8096A3F8  90 1E 0D C8 */	stw r0, 0xdc8(r30)
/* 8096A3FC  80 04 00 08 */	lwz r0, 8(r4)
/* 8096A400  90 1E 0D CC */	stw r0, 0xdcc(r30)
/* 8096A404  38 60 FF FF */	li r3, -1
/* 8096A408  B0 7E 0D E8 */	sth r3, 0xde8(r30)
/* 8096A40C  B0 BE 0D C0 */	sth r5, 0xdc0(r30)
/* 8096A410  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 8096A414  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 8096A418  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 8096A41C  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 8096A420  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 8096A424  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 8096A428  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8096A42C  D0 1E 04 BC */	stfs f0, 0x4bc(r30)
/* 8096A430  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8096A434  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 8096A438  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8096A43C  D0 1E 04 C4 */	stfs f0, 0x4c4(r30)
/* 8096A440  A8 1E 04 B6 */	lha r0, 0x4b6(r30)
/* 8096A444  B0 BE 04 DC */	sth r5, 0x4dc(r30)
/* 8096A448  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 8096A44C  B0 BE 04 E0 */	sth r5, 0x4e0(r30)
/* 8096A450  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 8096A454  B0 1E 04 C8 */	sth r0, 0x4c8(r30)
/* 8096A458  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 8096A45C  B0 1E 04 CA */	sth r0, 0x4ca(r30)
/* 8096A460  A8 1E 04 E0 */	lha r0, 0x4e0(r30)
/* 8096A464  B0 1E 04 CC */	sth r0, 0x4cc(r30)
/* 8096A468  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 8096A46C  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 8096A470  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 8096A474  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 8096A478  A8 1E 04 E0 */	lha r0, 0x4e0(r30)
/* 8096A47C  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 8096A480  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 8096A484  B0 1E 08 F0 */	sth r0, 0x8f0(r30)
/* 8096A488  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 8096A48C  B0 1E 08 F2 */	sth r0, 0x8f2(r30)
/* 8096A490  A8 1E 04 E0 */	lha r0, 0x4e0(r30)
/* 8096A494  B0 1E 08 F4 */	sth r0, 0x8f4(r30)
/* 8096A498  A8 1E 08 F0 */	lha r0, 0x8f0(r30)
/* 8096A49C  B0 1E 08 F6 */	sth r0, 0x8f6(r30)
/* 8096A4A0  A8 1E 08 F2 */	lha r0, 0x8f2(r30)
/* 8096A4A4  B0 1E 08 F8 */	sth r0, 0x8f8(r30)
/* 8096A4A8  A8 1E 08 F4 */	lha r0, 0x8f4(r30)
/* 8096A4AC  B0 1E 08 FA */	sth r0, 0x8fa(r30)
/* 8096A4B0  C0 1F 00 D4 */	lfs f0, 0xd4(r31)
/* 8096A4B4  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8096A4B8  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 8096A4BC  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8096A4C0  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 8096A4C4  90 7E 0D D8 */	stw r3, 0xdd8(r30)
/* 8096A4C8  B0 BE 09 E6 */	sth r5, 0x9e6(r30)
/* 8096A4CC  3C 60 80 97 */	lis r3, lit_4884@ha /* 0x8096CD04@ha */
/* 8096A4D0  38 83 CD 04 */	addi r4, r3, lit_4884@l /* 0x8096CD04@l */
/* 8096A4D4  80 64 00 00 */	lwz r3, 0(r4)
/* 8096A4D8  80 04 00 04 */	lwz r0, 4(r4)
/* 8096A4DC  90 61 00 08 */	stw r3, 8(r1)
/* 8096A4E0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8096A4E4  80 04 00 08 */	lwz r0, 8(r4)
/* 8096A4E8  90 01 00 10 */	stw r0, 0x10(r1)
/* 8096A4EC  7F C3 F3 78 */	mr r3, r30
/* 8096A4F0  38 81 00 08 */	addi r4, r1, 8
/* 8096A4F4  48 00 02 5D */	bl setAction__13daNpcBlueNS_cFM13daNpcBlueNS_cFPCvPvi_i
/* 8096A4F8  C0 1F 00 D4 */	lfs f0, 0xd4(r31)
/* 8096A4FC  D0 1E 09 7C */	stfs f0, 0x97c(r30)
/* 8096A500  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8096A504  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8096A508  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8096A50C  7C 08 03 A6 */	mtlr r0
/* 8096A510  38 21 00 20 */	addi r1, r1, 0x20
/* 8096A514  4E 80 00 20 */	blr 
