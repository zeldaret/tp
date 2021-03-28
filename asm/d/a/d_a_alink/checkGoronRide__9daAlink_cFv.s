lbl_800A2280:
/* 800A2280  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800A2284  7C 08 02 A6 */	mflr r0
/* 800A2288  90 01 00 14 */	stw r0, 0x14(r1)
/* 800A228C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800A2290  7C 7F 1B 78 */	mr r31, r3
/* 800A2294  80 03 19 9C */	lwz r0, 0x199c(r3)
/* 800A2298  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800A229C  41 82 00 34 */	beq lbl_800A22D0
/* 800A22A0  38 7F 1A 60 */	addi r3, r31, 0x1a60
/* 800A22A4  38 80 00 00 */	li r4, 0
/* 800A22A8  4B FF FF 39 */	bl getMoveBGActorName__9daAlink_cFR13cBgS_PolyInfoi
/* 800A22AC  7C 60 07 34 */	extsh r0, r3
/* 800A22B0  2C 00 00 21 */	cmpwi r0, 0x21
/* 800A22B4  40 82 00 1C */	bne lbl_800A22D0
/* 800A22B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800A22BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800A22C0  38 63 0F 38 */	addi r3, r3, 0xf38
/* 800A22C4  A0 9F 1A 62 */	lhz r4, 0x1a62(r31)
/* 800A22C8  4B FD 23 51 */	bl GetActorPointer__4cBgSCFi
/* 800A22CC  48 00 00 08 */	b lbl_800A22D4
lbl_800A22D0:
/* 800A22D0  38 60 00 00 */	li r3, 0
lbl_800A22D4:
/* 800A22D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800A22D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800A22DC  7C 08 03 A6 */	mtlr r0
/* 800A22E0  38 21 00 10 */	addi r1, r1, 0x10
/* 800A22E4  4E 80 00 20 */	blr 
