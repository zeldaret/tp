lbl_80C5E0A4:
/* 80C5E0A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5E0A8  7C 08 02 A6 */	mflr r0
/* 80C5E0AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5E0B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C5E0B4  93 C1 00 08 */	stw r30, 8(r1)
/* 80C5E0B8  7C 7E 1B 78 */	mr r30, r3
/* 80C5E0BC  7C 9F 23 78 */	mr r31, r4
/* 80C5E0C0  48 00 00 35 */	bl move__16daLv4EdShutter_cFv
/* 80C5E0C4  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 80C5E0C8  38 03 00 24 */	addi r0, r3, 0x24
/* 80C5E0CC  90 1F 00 00 */	stw r0, 0(r31)
/* 80C5E0D0  7F C3 F3 78 */	mr r3, r30
/* 80C5E0D4  4B FF FD 65 */	bl setBaseMtx__16daLv4EdShutter_cFv
/* 80C5E0D8  38 60 00 01 */	li r3, 1
/* 80C5E0DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C5E0E0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C5E0E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5E0E8  7C 08 03 A6 */	mtlr r0
/* 80C5E0EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5E0F0  4E 80 00 20 */	blr 
