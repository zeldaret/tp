lbl_8036EC5C:
/* 8036EC5C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8036EC60  7C 08 02 A6 */	mflr r0
/* 8036EC64  3C 60 80 45 */	lis r3, IsTRKConnected@ha
/* 8036EC68  38 A0 00 40 */	li r5, 0x40
/* 8036EC6C  90 01 00 54 */	stw r0, 0x54(r1)
/* 8036EC70  38 83 F2 88 */	addi r4, r3, IsTRKConnected@l
/* 8036EC74  38 00 00 01 */	li r0, 1
/* 8036EC78  38 61 00 08 */	addi r3, r1, 8
/* 8036EC7C  90 04 00 00 */	stw r0, 0(r4)
/* 8036EC80  38 80 00 00 */	li r4, 0
/* 8036EC84  4B C9 47 D5 */	bl memset
/* 8036EC88  38 60 00 80 */	li r3, 0x80
/* 8036EC8C  38 A0 00 40 */	li r5, 0x40
/* 8036EC90  38 00 00 00 */	li r0, 0
/* 8036EC94  98 61 00 0C */	stb r3, 0xc(r1)
/* 8036EC98  38 61 00 08 */	addi r3, r1, 8
/* 8036EC9C  38 80 00 40 */	li r4, 0x40
/* 8036ECA0  90 A1 00 08 */	stw r5, 8(r1)
/* 8036ECA4  98 01 00 10 */	stb r0, 0x10(r1)
/* 8036ECA8  48 00 30 C1 */	bl TRKWriteUARTN
/* 8036ECAC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8036ECB0  38 60 00 00 */	li r3, 0
/* 8036ECB4  7C 08 03 A6 */	mtlr r0
/* 8036ECB8  38 21 00 50 */	addi r1, r1, 0x50
/* 8036ECBC  4E 80 00 20 */	blr 
