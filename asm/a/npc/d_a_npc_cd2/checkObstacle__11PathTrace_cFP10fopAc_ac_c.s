lbl_8015A370:
/* 8015A370  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015A374  7C 08 02 A6 */	mflr r0
/* 8015A378  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015A37C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015A380  7C 7F 1B 78 */	mr r31, r3
/* 8015A384  90 83 00 00 */	stw r4, 0(r3)
/* 8015A388  38 00 00 00 */	li r0, 0
/* 8015A38C  90 03 00 04 */	stw r0, 4(r3)
/* 8015A390  80 63 00 00 */	lwz r3, 0(r3)
/* 8015A394  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8015A398  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8015A39C  41 82 00 0C */	beq lbl_8015A3A8
/* 8015A3A0  38 60 00 00 */	li r3, 0
/* 8015A3A4  48 00 00 2C */	b lbl_8015A3D0
lbl_8015A3A8:
/* 8015A3A8  3C 60 80 16 */	lis r3, s_sub__FPvPv@ha /* 0x8015A2C4@ha */
/* 8015A3AC  38 63 A2 C4 */	addi r3, r3, s_sub__FPvPv@l /* 0x8015A2C4@l */
/* 8015A3B0  7F E4 FB 78 */	mr r4, r31
/* 8015A3B4  4B EC 6F 85 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 8015A3B8  80 1F 00 04 */	lwz r0, 4(r31)
/* 8015A3BC  28 00 00 00 */	cmplwi r0, 0
/* 8015A3C0  41 82 00 0C */	beq lbl_8015A3CC
/* 8015A3C4  7F E3 FB 78 */	mr r3, r31
/* 8015A3C8  4B FF FB 05 */	bl setAvoidPoint__11PathTrace_cFv
lbl_8015A3CC:
/* 8015A3CC  80 7F 00 04 */	lwz r3, 4(r31)
lbl_8015A3D0:
/* 8015A3D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015A3D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015A3D8  7C 08 03 A6 */	mtlr r0
/* 8015A3DC  38 21 00 10 */	addi r1, r1, 0x10
/* 8015A3E0  4E 80 00 20 */	blr 
