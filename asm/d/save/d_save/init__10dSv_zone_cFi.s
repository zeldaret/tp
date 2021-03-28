lbl_80034F44:
/* 80034F44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80034F48  7C 08 02 A6 */	mflr r0
/* 80034F4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80034F50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80034F54  7C 7F 1B 78 */	mr r31, r3
/* 80034F58  98 83 00 00 */	stb r4, 0(r3)
/* 80034F5C  38 7F 00 02 */	addi r3, r31, 2
/* 80034F60  4B FF FD 41 */	bl init__13dSv_zoneBit_cFv
/* 80034F64  38 7F 00 10 */	addi r3, r31, 0x10
/* 80034F68  4B FF FF 4D */	bl init__15dSv_zoneActor_cFv
/* 80034F6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80034F70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80034F74  7C 08 03 A6 */	mtlr r0
/* 80034F78  38 21 00 10 */	addi r1, r1, 0x10
/* 80034F7C  4E 80 00 20 */	blr 
