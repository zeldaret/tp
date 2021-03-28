lbl_8029F250:
/* 8029F250  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029F254  7C 08 02 A6 */	mflr r0
/* 8029F258  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029F25C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8029F260  93 C1 00 08 */	stw r30, 8(r1)
/* 8029F264  7C 7E 1B 78 */	mr r30, r3
/* 8029F268  7C 9F 23 78 */	mr r31, r4
/* 8029F26C  88 03 02 DD */	lbz r0, 0x2dd(r3)
/* 8029F270  28 00 00 02 */	cmplwi r0, 2
/* 8029F274  40 82 00 0C */	bne lbl_8029F280
/* 8029F278  38 7E 00 C8 */	addi r3, r30, 0xc8
/* 8029F27C  4B FF 23 59 */	bl init__8JASTrackFv
lbl_8029F280:
/* 8029F280  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 8029F284  28 00 00 00 */	cmplwi r0, 0
/* 8029F288  41 82 00 14 */	beq lbl_8029F29C
/* 8029F28C  38 7E 00 10 */	addi r3, r30, 0x10
/* 8029F290  38 9E 00 C8 */	addi r4, r30, 0xc8
/* 8029F294  48 00 37 49 */	bl initTrack_JAISound___8JAISoundFP8JASTrack
/* 8029F298  48 00 00 34 */	b lbl_8029F2CC
lbl_8029F29C:
/* 8029F29C  38 7E 00 4C */	addi r3, r30, 0x4c
/* 8029F2A0  7F E4 FB 78 */	mr r4, r31
/* 8029F2A4  38 BE 00 B4 */	addi r5, r30, 0xb4
/* 8029F2A8  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 8029F2AC  48 00 2F D5 */	bl mixOutAll__14JAISoundParamsFRC14JASSoundParamsP14JASSoundParamsf
/* 8029F2B0  38 7E 00 C8 */	addi r3, r30, 0xc8
/* 8029F2B4  38 80 00 01 */	li r4, 1
/* 8029F2B8  4B FF 21 8D */	bl setChannelMgrCount__8JASTrackFUl
/* 8029F2BC  38 7E 00 C8 */	addi r3, r30, 0xc8
/* 8029F2C0  38 80 00 00 */	li r4, 0
/* 8029F2C4  38 BE 00 B4 */	addi r5, r30, 0xb4
/* 8029F2C8  4B FF 27 2D */	bl assignExtBuffer__8JASTrackFUlP14JASSoundParams
lbl_8029F2CC:
/* 8029F2CC  38 00 00 01 */	li r0, 1
/* 8029F2D0  98 1E 03 18 */	stb r0, 0x318(r30)
/* 8029F2D4  38 7E 00 C8 */	addi r3, r30, 0xc8
/* 8029F2D8  80 9E 03 10 */	lwz r4, 0x310(r30)
/* 8029F2DC  80 BE 03 14 */	lwz r5, 0x314(r30)
/* 8029F2E0  4B FF 27 29 */	bl setSeqData__8JASTrackFPvUl
/* 8029F2E4  38 7E 00 C8 */	addi r3, r30, 0xc8
/* 8029F2E8  4B FF 27 41 */	bl startSeq__8JASTrackFv
/* 8029F2EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8029F2F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8029F2F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029F2F8  7C 08 03 A6 */	mtlr r0
/* 8029F2FC  38 21 00 10 */	addi r1, r1, 0x10
/* 8029F300  4E 80 00 20 */	blr 
