lbl_8015BE60:
/* 8015BE60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015BE64  7C 08 02 A6 */	mflr r0
/* 8015BE68  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015BE6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015BE70  7C 7F 1B 78 */	mr r31, r3
/* 8015BE74  80 03 05 B8 */	lwz r0, 0x5b8(r3)
/* 8015BE78  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 8015BE7C  90 03 05 B8 */	stw r0, 0x5b8(r3)
/* 8015BE80  38 7F 05 8C */	addi r3, r31, 0x58c
/* 8015BE84  4B F1 B5 21 */	bl ClrMoveBGOnly__9dBgS_AcchFv
/* 8015BE88  38 00 00 00 */	li r0, 0
/* 8015BE8C  98 1F 09 4A */	stb r0, 0x94a(r31)
/* 8015BE90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015BE94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015BE98  7C 08 03 A6 */	mtlr r0
/* 8015BE9C  38 21 00 10 */	addi r1, r1, 0x10
/* 8015BEA0  4E 80 00 20 */	blr 
