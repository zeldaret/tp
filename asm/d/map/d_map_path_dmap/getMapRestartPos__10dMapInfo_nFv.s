lbl_8003F02C:
/* 8003F02C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003F030  7C 08 02 A6 */	mflr r0
/* 8003F034  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003F038  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8003F03C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8003F040  7C 7E 1B 78 */	mr r30, r3
/* 8003F044  4B FF FF 2D */	bl getConstRestartIconPointer__10dMapInfo_nFv
/* 8003F048  28 03 00 00 */	cmplwi r3, 0
/* 8003F04C  41 82 00 20 */	beq lbl_8003F06C
/* 8003F050  C0 03 00 04 */	lfs f0, 4(r3)
/* 8003F054  D0 01 00 08 */	stfs f0, 8(r1)
/* 8003F058  C0 03 00 08 */	lfs f0, 8(r3)
/* 8003F05C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8003F060  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8003F064  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8003F068  48 00 00 24 */	b lbl_8003F08C
lbl_8003F06C:
/* 8003F06C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8003F070  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8003F074  C0 03 0D BC */	lfs f0, 0xdbc(r3)
/* 8003F078  D0 01 00 08 */	stfs f0, 8(r1)
/* 8003F07C  C0 03 0D C0 */	lfs f0, 0xdc0(r3)
/* 8003F080  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8003F084  C0 03 0D C4 */	lfs f0, 0xdc4(r3)
/* 8003F088  D0 01 00 10 */	stfs f0, 0x10(r1)
lbl_8003F08C:
/* 8003F08C  3C 60 80 3F */	lis r3, mStatus__20dStage_roomControl_c@ha
/* 8003F090  38 83 60 94 */	addi r4, r3, mStatus__20dStage_roomControl_c@l
/* 8003F094  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8003F098  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8003F09C  88 03 0D B4 */	lbz r0, 0xdb4(r3)
/* 8003F0A0  7C 00 07 74 */	extsb r0, r0
/* 8003F0A4  1C 00 04 04 */	mulli r0, r0, 0x404
/* 8003F0A8  7C 64 02 14 */	add r3, r4, r0
/* 8003F0AC  83 E3 00 20 */	lwz r31, 0x20(r3)
/* 8003F0B0  7F E3 FB 78 */	mr r3, r31
/* 8003F0B4  38 81 00 08 */	addi r4, r1, 8
/* 8003F0B8  4B FF FD 35 */	bl rotAngle__10dMapInfo_nFPC21dStage_FileList2_dt_cP3Vec
/* 8003F0BC  7F E3 FB 78 */	mr r3, r31
/* 8003F0C0  38 81 00 08 */	addi r4, r1, 8
/* 8003F0C4  4B FF FC FD */	bl offsetPlus__10dMapInfo_nFPC21dStage_FileList2_dt_cP3Vec
/* 8003F0C8  80 61 00 08 */	lwz r3, 8(r1)
/* 8003F0CC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8003F0D0  90 7E 00 00 */	stw r3, 0(r30)
/* 8003F0D4  90 1E 00 04 */	stw r0, 4(r30)
/* 8003F0D8  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8003F0DC  90 1E 00 08 */	stw r0, 8(r30)
/* 8003F0E0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8003F0E4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8003F0E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003F0EC  7C 08 03 A6 */	mtlr r0
/* 8003F0F0  38 21 00 20 */	addi r1, r1, 0x20
/* 8003F0F4  4E 80 00 20 */	blr 
