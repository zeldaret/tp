lbl_80CCC9B8:
/* 80CCC9B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CCC9BC  7C 08 02 A6 */	mflr r0
/* 80CCC9C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CCC9C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CCC9C8  7C 7F 1B 78 */	mr r31, r3
/* 80CCC9CC  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80CCC9D0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80CCC9D4  40 82 00 1C */	bne lbl_80CCC9F0
/* 80CCC9D8  28 1F 00 00 */	cmplwi r31, 0
/* 80CCC9DC  41 82 00 08 */	beq lbl_80CCC9E4
/* 80CCC9E0  4B FF E9 85 */	bl __ct__17daObjSCannonTen_cFv
lbl_80CCC9E4:
/* 80CCC9E4  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80CCC9E8  60 00 00 08 */	ori r0, r0, 8
/* 80CCC9EC  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80CCC9F0:
/* 80CCC9F0  7F E3 FB 78 */	mr r3, r31
/* 80CCC9F4  4B FF EC 79 */	bl create__17daObjSCannonTen_cFv
/* 80CCC9F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CCC9FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CCCA00  7C 08 03 A6 */	mtlr r0
/* 80CCCA04  38 21 00 10 */	addi r1, r1, 0x10
/* 80CCCA08  4E 80 00 20 */	blr 
