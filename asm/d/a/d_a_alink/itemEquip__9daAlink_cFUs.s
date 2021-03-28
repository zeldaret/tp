lbl_800B9640:
/* 800B9640  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B9644  7C 08 02 A6 */	mflr r0
/* 800B9648  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B964C  80 03 28 38 */	lwz r0, 0x2838(r3)
/* 800B9650  28 00 00 00 */	cmplwi r0, 0
/* 800B9654  41 82 00 10 */	beq lbl_800B9664
/* 800B9658  54 80 04 3E */	clrlwi r0, r4, 0x10
/* 800B965C  28 00 00 40 */	cmplwi r0, 0x40
/* 800B9660  41 82 00 34 */	beq lbl_800B9694
lbl_800B9664:
/* 800B9664  B0 83 2F DE */	sth r4, 0x2fde(r3)
/* 800B9668  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 800B966C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 800B9670  80 04 5F 18 */	lwz r0, 0x5f18(r4)
/* 800B9674  54 00 02 90 */	rlwinm r0, r0, 0, 0xa, 8
/* 800B9678  90 04 5F 18 */	stw r0, 0x5f18(r4)
/* 800B967C  80 03 05 7C */	lwz r0, 0x57c(r3)
/* 800B9680  54 00 03 98 */	rlwinm r0, r0, 0, 0xe, 0xc
/* 800B9684  90 03 05 7C */	stw r0, 0x57c(r3)
/* 800B9688  A0 83 2F DE */	lhz r4, 0x2fde(r3)
/* 800B968C  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 800B9690  48 00 00 15 */	bl itemUnequip__9daAlink_cFUsf
lbl_800B9694:
/* 800B9694  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B9698  7C 08 03 A6 */	mtlr r0
/* 800B969C  38 21 00 10 */	addi r1, r1, 0x10
/* 800B96A0  4E 80 00 20 */	blr 
