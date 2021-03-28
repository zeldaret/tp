lbl_800F1060:
/* 800F1060  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F1064  7C 08 02 A6 */	mflr r0
/* 800F1068  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F106C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F1070  7C 7F 1B 78 */	mr r31, r3
/* 800F1074  38 80 00 3E */	li r4, 0x3e
/* 800F1078  4B FD 0E F5 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800F107C  7F E3 FB 78 */	mr r3, r31
/* 800F1080  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800F1084  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 800F1088  7D 89 03 A6 */	mtctr r12
/* 800F108C  4E 80 04 21 */	bctrl 
/* 800F1090  28 03 00 00 */	cmplwi r3, 0
/* 800F1094  41 82 00 14 */	beq lbl_800F10A8
/* 800F1098  7F E3 FB 78 */	mr r3, r31
/* 800F109C  38 80 00 02 */	li r4, 2
/* 800F10A0  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 800F10A4  4B FB CA 49 */	bl resetUnderAnime__9daAlink_cFQ29daAlink_c13daAlink_UNDERf
lbl_800F10A8:
/* 800F10A8  7F E3 FB 78 */	mr r3, r31
/* 800F10AC  4B FF C9 79 */	bl setSyncRidePos__9daAlink_cFv
/* 800F10B0  38 00 00 00 */	li r0, 0
/* 800F10B4  B0 1F 30 04 */	sth r0, 0x3004(r31)
/* 800F10B8  B0 1F 30 02 */	sth r0, 0x3002(r31)
/* 800F10BC  7F E3 FB 78 */	mr r3, r31
/* 800F10C0  4B FF C9 B9 */	bl setHorseTurnAnime__9daAlink_cFv
/* 800F10C4  7F E3 FB 78 */	mr r3, r31
/* 800F10C8  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010006@ha */
/* 800F10CC  38 84 00 06 */	addi r4, r4, 0x0006 /* 0x00010006@l */
/* 800F10D0  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800F10D4  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800F10D8  7D 89 03 A6 */	mtctr r12
/* 800F10DC  4E 80 04 21 */	bctrl 
/* 800F10E0  38 60 00 01 */	li r3, 1
/* 800F10E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F10E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F10EC  7C 08 03 A6 */	mtlr r0
/* 800F10F0  38 21 00 10 */	addi r1, r1, 0x10
/* 800F10F4  4E 80 00 20 */	blr 
