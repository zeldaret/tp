lbl_800ABAE0:
/* 800ABAE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800ABAE4  7C 08 02 A6 */	mflr r0
/* 800ABAE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800ABAEC  80 03 12 2C */	lwz r0, 0x122c(r3)
/* 800ABAF0  60 00 00 20 */	ori r0, r0, 0x20
/* 800ABAF4  90 03 12 2C */	stw r0, 0x122c(r3)
/* 800ABAF8  80 03 12 84 */	lwz r0, 0x1284(r3)
/* 800ABAFC  60 00 00 02 */	ori r0, r0, 2
/* 800ABB00  90 03 12 84 */	stw r0, 0x1284(r3)
/* 800ABB04  80 03 12 84 */	lwz r0, 0x1284(r3)
/* 800ABB08  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 800ABB0C  90 03 12 84 */	stw r0, 0x1284(r3)
/* 800ABB10  38 63 12 2C */	addi r3, r3, 0x122c
/* 800ABB14  4B FD 88 05 */	bl ResetAtHit__12dCcD_GObjInfFv
/* 800ABB18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800ABB1C  7C 08 03 A6 */	mtlr r0
/* 800ABB20  38 21 00 10 */	addi r1, r1, 0x10
/* 800ABB24  4E 80 00 20 */	blr 
