lbl_800ECA3C:
/* 800ECA3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800ECA40  7C 08 02 A6 */	mflr r0
/* 800ECA44  90 01 00 14 */	stw r0, 0x14(r1)
/* 800ECA48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800ECA4C  7C 7F 1B 78 */	mr r31, r3
/* 800ECA50  38 80 00 00 */	li r4, 0
/* 800ECA54  4B FF 5B 2D */	bl setHeavyBoots__9daAlink_cFi
/* 800ECA58  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800ECA5C  60 00 04 00 */	ori r0, r0, 0x400
/* 800ECA60  90 1F 31 A0 */	stw r0, 0x31a0(r31)
/* 800ECA64  38 60 00 00 */	li r3, 0
/* 800ECA68  98 7F 2F C0 */	stb r3, 0x2fc0(r31)
/* 800ECA6C  38 00 00 13 */	li r0, 0x13
/* 800ECA70  98 1F 2F AB */	stb r0, 0x2fab(r31)
/* 800ECA74  B0 7F 30 02 */	sth r3, 0x3002(r31)
/* 800ECA78  B0 7F 30 04 */	sth r3, 0x3004(r31)
/* 800ECA7C  B0 7F 30 A6 */	sth r3, 0x30a6(r31)
/* 800ECA80  7F E3 FB 78 */	mr r3, r31
/* 800ECA84  4B FC 6D C1 */	bl initServiceWaitTime__9daAlink_cFv
/* 800ECA88  38 00 00 46 */	li r0, 0x46
/* 800ECA8C  B0 1F 05 4E */	sth r0, 0x54e(r31)
/* 800ECA90  38 00 00 01 */	li r0, 1
/* 800ECA94  B0 1F 1F E4 */	sth r0, 0x1fe4(r31)
/* 800ECA98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800ECA9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800ECAA0  7C 08 03 A6 */	mtlr r0
/* 800ECAA4  38 21 00 10 */	addi r1, r1, 0x10
/* 800ECAA8  4E 80 00 20 */	blr 
