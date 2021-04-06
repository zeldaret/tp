lbl_80D0C068:
/* 80D0C068  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0C06C  7C 08 02 A6 */	mflr r0
/* 80D0C070  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0C074  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D0C078  7C 7F 1B 78 */	mr r31, r3
/* 80D0C07C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D0C080  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D0C084  40 82 00 28 */	bne lbl_80D0C0AC
/* 80D0C088  28 1F 00 00 */	cmplwi r31, 0
/* 80D0C08C  41 82 00 14 */	beq lbl_80D0C0A0
/* 80D0C090  4B 36 C5 95 */	bl __ct__16dBgS_MoveBgActorFv
/* 80D0C094  3C 60 80 D1 */	lis r3, __vt__11daObjGake_c@ha /* 0x80D0C198@ha */
/* 80D0C098  38 03 C1 98 */	addi r0, r3, __vt__11daObjGake_c@l /* 0x80D0C198@l */
/* 80D0C09C  90 1F 05 9C */	stw r0, 0x59c(r31)
lbl_80D0C0A0:
/* 80D0C0A0  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80D0C0A4  60 00 00 08 */	ori r0, r0, 8
/* 80D0C0A8  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80D0C0AC:
/* 80D0C0AC  7F E3 FB 78 */	mr r3, r31
/* 80D0C0B0  4B FF FC F1 */	bl create1st__11daObjGake_cFv
/* 80D0C0B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D0C0B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0C0BC  7C 08 03 A6 */	mtlr r0
/* 80D0C0C0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0C0C4  4E 80 00 20 */	blr 
