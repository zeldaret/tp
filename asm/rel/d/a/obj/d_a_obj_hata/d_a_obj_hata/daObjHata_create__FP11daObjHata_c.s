lbl_80C193BC:
/* 80C193BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C193C0  7C 08 02 A6 */	mflr r0
/* 80C193C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C193C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C193CC  7C 7F 1B 78 */	mr r31, r3
/* 80C193D0  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C193D4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C193D8  40 82 00 1C */	bne lbl_80C193F4
/* 80C193DC  28 1F 00 00 */	cmplwi r31, 0
/* 80C193E0  41 82 00 08 */	beq lbl_80C193E8
/* 80C193E4  4B FF F9 25 */	bl __ct__11daObjHata_cFv
lbl_80C193E8:
/* 80C193E8  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80C193EC  60 00 00 08 */	ori r0, r0, 8
/* 80C193F0  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80C193F4:
/* 80C193F4  7F E3 FB 78 */	mr r3, r31
/* 80C193F8  4B FF FA 79 */	bl create__11daObjHata_cFv
/* 80C193FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C19400  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C19404  7C 08 03 A6 */	mtlr r0
/* 80C19408  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1940C  4E 80 00 20 */	blr 
