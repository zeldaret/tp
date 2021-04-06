lbl_80350598:
/* 80350598  7C 08 02 A6 */	mflr r0
/* 8035059C  90 01 00 04 */	stw r0, 4(r1)
/* 803505A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803505A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803505A8  4B FE D1 4D */	bl OSDisableInterrupts
/* 803505AC  3C 80 CC 00 */	lis r4, 0xCC00 /* 0xCC00500A@ha */
/* 803505B0  A0 04 50 0A */	lhz r0, 0x500A(r4)  /* 0xCC00500A@l */
/* 803505B4  54 1F 05 AC */	rlwinm r31, r0, 0, 0x16, 0x16
/* 803505B8  4B FE D1 65 */	bl OSRestoreInterrupts
/* 803505BC  7F E3 FB 78 */	mr r3, r31
/* 803505C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803505C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803505C8  38 21 00 10 */	addi r1, r1, 0x10
/* 803505CC  7C 08 03 A6 */	mtlr r0
/* 803505D0  4E 80 00 20 */	blr 
