lbl_800E1060:
/* 800E1060  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E1064  7C 08 02 A6 */	mflr r0
/* 800E1068  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E106C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800E1070  7C 7F 1B 78 */	mr r31, r3
/* 800E1074  38 80 00 61 */	li r4, 0x61
/* 800E1078  4B FE 1D 2D */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800E107C  2C 03 00 00 */	cmpwi r3, 0
/* 800E1080  40 82 00 0C */	bne lbl_800E108C
/* 800E1084  38 60 00 00 */	li r3, 0
/* 800E1088  48 00 00 58 */	b lbl_800E10E0
lbl_800E108C:
/* 800E108C  7F E3 FB 78 */	mr r3, r31
/* 800E1090  4B FD 28 75 */	bl checkZeroSpeedF__9daAlink_cCFv
/* 800E1094  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E1098  41 82 00 10 */	beq lbl_800E10A8
/* 800E109C  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800E10A0  60 00 00 01 */	ori r0, r0, 1
/* 800E10A4  90 1F 31 A0 */	stw r0, 0x31a0(r31)
lbl_800E10A8:
/* 800E10A8  7F E3 FB 78 */	mr r3, r31
/* 800E10AC  38 80 00 00 */	li r4, 0
/* 800E10B0  4B FF F3 21 */	bl initBoomerangUpperAnimeSpeed__9daAlink_cFi
/* 800E10B4  7F E3 FB 78 */	mr r3, r31
/* 800E10B8  3C 80 80 39 */	lis r4, m__18daAlinkHIO_boom_c0@ha
/* 800E10BC  38 84 E6 C8 */	addi r4, r4, m__18daAlinkHIO_boom_c0@l
/* 800E10C0  C0 24 00 30 */	lfs f1, 0x30(r4)
/* 800E10C4  4B FC D9 AD */	bl setBlendAtnMoveAnime__9daAlink_cFf
/* 800E10C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800E10CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800E10D0  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 800E10D4  64 00 00 08 */	oris r0, r0, 8
/* 800E10D8  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 800E10DC  38 60 00 01 */	li r3, 1
lbl_800E10E0:
/* 800E10E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800E10E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E10E8  7C 08 03 A6 */	mtlr r0
/* 800E10EC  38 21 00 10 */	addi r1, r1, 0x10
/* 800E10F0  4E 80 00 20 */	blr 
