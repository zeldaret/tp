lbl_800F1188:
/* 800F1188  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F118C  7C 08 02 A6 */	mflr r0
/* 800F1190  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F1194  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F1198  7C 7F 1B 78 */	mr r31, r3
/* 800F119C  38 80 00 3F */	li r4, 0x3f
/* 800F11A0  4B FD 0D CD */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800F11A4  7F E3 FB 78 */	mr r3, r31
/* 800F11A8  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800F11AC  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 800F11B0  7D 89 03 A6 */	mtctr r12
/* 800F11B4  4E 80 04 21 */	bctrl 
/* 800F11B8  28 03 00 00 */	cmplwi r3, 0
/* 800F11BC  41 82 00 14 */	beq lbl_800F11D0
/* 800F11C0  7F E3 FB 78 */	mr r3, r31
/* 800F11C4  38 80 00 02 */	li r4, 2
/* 800F11C8  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 800F11CC  4B FB C9 21 */	bl resetUnderAnime__9daAlink_cFQ29daAlink_c13daAlink_UNDERf
lbl_800F11D0:
/* 800F11D0  7F E3 FB 78 */	mr r3, r31
/* 800F11D4  4B FF C8 51 */	bl setSyncRidePos__9daAlink_cFv
/* 800F11D8  38 00 00 00 */	li r0, 0
/* 800F11DC  B0 1F 30 04 */	sth r0, 0x3004(r31)
/* 800F11E0  B0 1F 30 02 */	sth r0, 0x3002(r31)
/* 800F11E4  7F E3 FB 78 */	mr r3, r31
/* 800F11E8  4B FF C8 91 */	bl setHorseTurnAnime__9daAlink_cFv
/* 800F11EC  38 60 00 01 */	li r3, 1
/* 800F11F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F11F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F11F8  7C 08 03 A6 */	mtlr r0
/* 800F11FC  38 21 00 10 */	addi r1, r1, 0x10
/* 800F1200  4E 80 00 20 */	blr 
