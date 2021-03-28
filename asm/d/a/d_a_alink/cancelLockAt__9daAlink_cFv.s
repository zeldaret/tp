lbl_800ABB28:
/* 800ABB28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800ABB2C  7C 08 02 A6 */	mflr r0
/* 800ABB30  90 01 00 14 */	stw r0, 0x14(r1)
/* 800ABB34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800ABB38  7C 7F 1B 78 */	mr r31, r3
/* 800ABB3C  80 03 12 2C */	lwz r0, 0x122c(r3)
/* 800ABB40  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 800ABB44  90 03 12 2C */	stw r0, 0x122c(r3)
/* 800ABB48  80 03 12 84 */	lwz r0, 0x1284(r3)
/* 800ABB4C  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 800ABB50  90 03 12 84 */	stw r0, 0x1284(r3)
/* 800ABB54  80 03 12 84 */	lwz r0, 0x1284(r3)
/* 800ABB58  60 00 00 01 */	ori r0, r0, 1
/* 800ABB5C  90 03 12 84 */	stw r0, 0x1284(r3)
/* 800ABB60  38 7F 12 2C */	addi r3, r31, 0x122c
/* 800ABB64  4B FD 87 B5 */	bl ResetAtHit__12dCcD_GObjInfFv
/* 800ABB68  38 00 FF FF */	li r0, -1
/* 800ABB6C  90 1F 08 3C */	stw r0, 0x83c(r31)
/* 800ABB70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800ABB74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800ABB78  7C 08 03 A6 */	mtlr r0
/* 800ABB7C  38 21 00 10 */	addi r1, r1, 0x10
/* 800ABB80  4E 80 00 20 */	blr 
