lbl_800F1294:
/* 800F1294  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F1298  7C 08 02 A6 */	mflr r0
/* 800F129C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F12A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F12A4  7C 7F 1B 78 */	mr r31, r3
/* 800F12A8  38 80 00 40 */	li r4, 0x40
/* 800F12AC  4B FD 0C C1 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800F12B0  A0 1F 1F 80 */	lhz r0, 0x1f80(r31)
/* 800F12B4  28 00 00 19 */	cmplwi r0, 0x19
/* 800F12B8  40 82 00 14 */	bne lbl_800F12CC
/* 800F12BC  7F E3 FB 78 */	mr r3, r31
/* 800F12C0  38 80 00 02 */	li r4, 2
/* 800F12C4  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 800F12C8  4B FB C8 25 */	bl resetUnderAnime__9daAlink_cFQ29daAlink_c13daAlink_UNDERf
lbl_800F12CC:
/* 800F12CC  7F E3 FB 78 */	mr r3, r31
/* 800F12D0  38 80 00 00 */	li r4, 0
/* 800F12D4  4B FF D6 45 */	bl setSyncRide__9daAlink_cFi
/* 800F12D8  7F E3 FB 78 */	mr r3, r31
/* 800F12DC  4B FD D8 19 */	bl setSubjectMode__9daAlink_cFv
/* 800F12E0  38 60 00 01 */	li r3, 1
/* 800F12E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F12E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F12EC  7C 08 03 A6 */	mtlr r0
/* 800F12F0  38 21 00 10 */	addi r1, r1, 0x10
/* 800F12F4  4E 80 00 20 */	blr 
