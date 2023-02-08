lbl_80BF7C54:
/* 80BF7C54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF7C58  7C 08 02 A6 */	mflr r0
/* 80BF7C5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF7C60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BF7C64  7C 7F 1B 78 */	mr r31, r3
/* 80BF7C68  48 00 0E 71 */	bl setEmitterClm00__13daObjGeyser_cFv
/* 80BF7C6C  7F E3 FB 78 */	mr r3, r31
/* 80BF7C70  48 00 0F 01 */	bl setEmitterSmk01__13daObjGeyser_cFv
/* 80BF7C74  7F E3 FB 78 */	mr r3, r31
/* 80BF7C78  48 00 0F 91 */	bl setEmitterSmk02__13daObjGeyser_cFv
/* 80BF7C7C  7F E3 FB 78 */	mr r3, r31
/* 80BF7C80  48 00 09 05 */	bl setPntWind__13daObjGeyser_cFv
/* 80BF7C84  38 00 00 02 */	li r0, 2
/* 80BF7C88  98 1F 07 62 */	stb r0, 0x762(r31)
/* 80BF7C8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BF7C90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF7C94  7C 08 03 A6 */	mtlr r0
/* 80BF7C98  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF7C9C  4E 80 00 20 */	blr 
