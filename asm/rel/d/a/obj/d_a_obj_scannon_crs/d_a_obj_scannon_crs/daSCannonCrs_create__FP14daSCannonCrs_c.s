lbl_80CCAF20:
/* 80CCAF20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CCAF24  7C 08 02 A6 */	mflr r0
/* 80CCAF28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CCAF2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CCAF30  7C 7F 1B 78 */	mr r31, r3
/* 80CCAF34  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80CCAF38  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80CCAF3C  40 82 00 1C */	bne lbl_80CCAF58
/* 80CCAF40  28 1F 00 00 */	cmplwi r31, 0
/* 80CCAF44  41 82 00 08 */	beq lbl_80CCAF4C
/* 80CCAF48  4B FF E7 F5 */	bl __ct__14daSCannonCrs_cFv
lbl_80CCAF4C:
/* 80CCAF4C  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80CCAF50  60 00 00 08 */	ori r0, r0, 8
/* 80CCAF54  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80CCAF58:
/* 80CCAF58  7F E3 FB 78 */	mr r3, r31
/* 80CCAF5C  4B FF E9 B5 */	bl create__14daSCannonCrs_cFv
/* 80CCAF60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CCAF64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CCAF68  7C 08 03 A6 */	mtlr r0
/* 80CCAF6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CCAF70  4E 80 00 20 */	blr 
