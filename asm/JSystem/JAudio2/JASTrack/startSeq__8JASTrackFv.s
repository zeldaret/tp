lbl_80291A28:
/* 80291A28  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80291A2C  7C 08 02 A6 */	mflr r0
/* 80291A30  90 01 00 24 */	stw r0, 0x24(r1)
/* 80291A34  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80291A38  7C 7F 1B 78 */	mr r31, r3
/* 80291A3C  48 0A BC B9 */	bl OSDisableInterrupts
/* 80291A40  90 61 00 08 */	stw r3, 8(r1)
/* 80291A44  3C 60 80 43 */	lis r3, sTrackList__8JASTrack@ha /* 0x80431ACC@ha */
/* 80291A48  38 63 1A CC */	addi r3, r3, sTrackList__8JASTrack@l /* 0x80431ACC@l */
/* 80291A4C  7F E4 FB 78 */	mr r4, r31
/* 80291A50  48 00 15 41 */	bl append__Q28JASTrack5TListFP8JASTrack
/* 80291A54  38 00 00 01 */	li r0, 1
/* 80291A58  98 1F 02 15 */	stb r0, 0x215(r31)
/* 80291A5C  80 61 00 08 */	lwz r3, 8(r1)
/* 80291A60  48 0A BC BD */	bl OSRestoreInterrupts
/* 80291A64  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80291A68  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80291A6C  7C 08 03 A6 */	mtlr r0
/* 80291A70  38 21 00 20 */	addi r1, r1, 0x20
/* 80291A74  4E 80 00 20 */	blr 
