lbl_80037CB0:
/* 80037CB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80037CB4  7C 08 02 A6 */	mflr r0
/* 80037CB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80037CBC  38 00 00 65 */	li r0, 0x65
/* 80037CC0  B0 03 06 90 */	sth r0, 0x690(r3)
/* 80037CC4  38 00 00 00 */	li r0, 0
/* 80037CC8  B0 03 05 B4 */	sth r0, 0x5b4(r3)
/* 80037CCC  A0 03 06 BE */	lhz r0, 0x6be(r3)
/* 80037CD0  60 00 00 03 */	ori r0, r0, 3
/* 80037CD4  B0 03 06 BE */	sth r0, 0x6be(r3)
/* 80037CD8  38 80 00 01 */	li r4, 1
/* 80037CDC  38 63 05 EC */	addi r3, r3, 0x5ec
/* 80037CE0  48 28 D5 4D */	bl setLinkRiding__14Z2CreatureRideFb
/* 80037CE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80037CE8  7C 08 03 A6 */	mtlr r0
/* 80037CEC  38 21 00 10 */	addi r1, r1, 0x10
/* 80037CF0  4E 80 00 20 */	blr 
