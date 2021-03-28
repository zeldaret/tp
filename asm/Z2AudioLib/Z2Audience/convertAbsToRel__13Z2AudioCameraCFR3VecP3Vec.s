lbl_802BCC7C:
/* 802BCC7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BCC80  7C 08 02 A6 */	mflr r0
/* 802BCC84  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BCC88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802BCC8C  93 C1 00 08 */	stw r30, 8(r1)
/* 802BCC90  7C 7E 1B 78 */	mr r30, r3
/* 802BCC94  7C BF 2B 78 */	mr r31, r5
/* 802BCC98  48 08 A0 D5 */	bl PSMTXMultVec
/* 802BCC9C  7F C3 F3 78 */	mr r3, r30
/* 802BCCA0  7F E4 FB 78 */	mr r4, r31
/* 802BCCA4  48 00 00 1D */	bl isInSight__13Z2AudioCameraCFR3Vec
/* 802BCCA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802BCCAC  83 C1 00 08 */	lwz r30, 8(r1)
/* 802BCCB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BCCB4  7C 08 03 A6 */	mtlr r0
/* 802BCCB8  38 21 00 10 */	addi r1, r1, 0x10
/* 802BCCBC  4E 80 00 20 */	blr 
