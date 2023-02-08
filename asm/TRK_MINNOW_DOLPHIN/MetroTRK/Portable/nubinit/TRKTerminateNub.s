lbl_8036CE68:
/* 8036CE68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8036CE6C  7C 08 02 A6 */	mflr r0
/* 8036CE70  90 01 00 14 */	stw r0, 0x14(r1)
/* 8036CE74  48 00 09 E5 */	bl TRKTerminateSerialHandler
/* 8036CE78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8036CE7C  38 60 00 00 */	li r3, 0
/* 8036CE80  7C 08 03 A6 */	mtlr r0
/* 8036CE84  38 21 00 10 */	addi r1, r1, 0x10
/* 8036CE88  4E 80 00 20 */	blr 
