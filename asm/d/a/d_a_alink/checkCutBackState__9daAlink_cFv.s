lbl_800D2890:
/* 800D2890  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800D2894  7C 08 02 A6 */	mflr r0
/* 800D2898  90 01 00 14 */	stw r0, 0x14(r1)
/* 800D289C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800D28A0  93 C1 00 08 */	stw r30, 8(r1)
/* 800D28A4  7C 7E 1B 78 */	mr r30, r3
/* 800D28A8  3B E0 00 01 */	li r31, 1
/* 800D28AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800D28B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800D28B4  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 800D28B8  38 80 29 02 */	li r4, 0x2902
/* 800D28BC  4B F6 21 01 */	bl isEventBit__11dSv_event_cCFUs
/* 800D28C0  2C 03 00 00 */	cmpwi r3, 0
/* 800D28C4  40 82 00 14 */	bne lbl_800D28D8
/* 800D28C8  80 1E 05 7C */	lwz r0, 0x57c(r30)
/* 800D28CC  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800D28D0  40 82 00 08 */	bne lbl_800D28D8
/* 800D28D4  3B E0 00 00 */	li r31, 0
lbl_800D28D8:
/* 800D28D8  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 800D28DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800D28E0  83 C1 00 08 */	lwz r30, 8(r1)
/* 800D28E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800D28E8  7C 08 03 A6 */	mtlr r0
/* 800D28EC  38 21 00 10 */	addi r1, r1, 0x10
/* 800D28F0  4E 80 00 20 */	blr 
