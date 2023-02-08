lbl_804706D4:
/* 804706D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804706D8  7C 08 02 A6 */	mflr r0
/* 804706DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804706E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804706E4  93 C1 00 08 */	stw r30, 8(r1)
/* 804706E8  7C 7E 1B 78 */	mr r30, r3
/* 804706EC  4B BC 16 25 */	bl chkSaveFlag__12daObjCarry_cFv
/* 804706F0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804706F4  41 82 00 A4 */	beq lbl_80470798
/* 804706F8  A0 1E 0D 16 */	lhz r0, 0xd16(r30)
/* 804706FC  54 1F 06 3E */	clrlwi r31, r0, 0x18
/* 80470700  7F E3 FB 78 */	mr r3, r31
/* 80470704  4B BC 16 21 */	bl getPos__12daObjCarry_cFi
/* 80470708  C0 03 00 00 */	lfs f0, 0(r3)
/* 8047070C  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80470710  C0 03 00 04 */	lfs f0, 4(r3)
/* 80470714  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80470718  C0 03 00 08 */	lfs f0, 8(r3)
/* 8047071C  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80470720  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80470724  D0 1E 04 BC */	stfs f0, 0x4bc(r30)
/* 80470728  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8047072C  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 80470730  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80470734  D0 1E 04 C4 */	stfs f0, 0x4c4(r30)
/* 80470738  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8047073C  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80470740  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80470744  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80470748  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8047074C  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 80470750  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80470754  D0 1E 05 38 */	stfs f0, 0x538(r30)
/* 80470758  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8047075C  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 80470760  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80470764  D0 1E 05 40 */	stfs f0, 0x540(r30)
/* 80470768  7F E3 FB 78 */	mr r3, r31
/* 8047076C  4B BC 16 4D */	bl getRoomNo__12daObjCarry_cFi
/* 80470770  98 7E 04 E2 */	stb r3, 0x4e2(r30)
/* 80470774  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80470778  98 1E 04 8C */	stb r0, 0x48c(r30)
/* 8047077C  7F E3 FB 78 */	mr r3, r31
/* 80470780  38 80 00 01 */	li r4, 1
/* 80470784  4B BC 16 09 */	bl chkSttsFlag__12daObjCarry_cFiUc
/* 80470788  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8047078C  41 82 00 0C */	beq lbl_80470798
/* 80470790  38 00 00 01 */	li r0, 1
/* 80470794  98 1E 0D B7 */	stb r0, 0xdb7(r30)
lbl_80470798:
/* 80470798  38 7E 05 88 */	addi r3, r30, 0x588
/* 8047079C  4B C0 86 FD */	bl SetLink__16dBgS_PolyPassChkFv
/* 804707A0  38 7E 05 88 */	addi r3, r30, 0x588
/* 804707A4  4B C0 86 D1 */	bl ClrObj__16dBgS_PolyPassChkFv
/* 804707A8  7F C3 F3 78 */	mr r3, r30
/* 804707AC  48 00 2C 3D */	bl mode_init_wait__12daObjCarry_cFv
/* 804707B0  80 1E 07 D8 */	lwz r0, 0x7d8(r30)
/* 804707B4  64 00 00 40 */	oris r0, r0, 0x40
/* 804707B8  90 1E 07 D8 */	stw r0, 0x7d8(r30)
/* 804707BC  38 00 00 06 */	li r0, 6
/* 804707C0  98 1E 08 3C */	stb r0, 0x83c(r30)
/* 804707C4  38 60 00 01 */	li r3, 1
/* 804707C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804707CC  83 C1 00 08 */	lwz r30, 8(r1)
/* 804707D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804707D4  7C 08 03 A6 */	mtlr r0
/* 804707D8  38 21 00 10 */	addi r1, r1, 0x10
/* 804707DC  4E 80 00 20 */	blr 
