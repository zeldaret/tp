lbl_80AB8004:
/* 80AB8004  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB8008  7C 08 02 A6 */	mflr r0
/* 80AB800C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB8010  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AB8014  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AB8018  41 82 00 10 */	beq lbl_80AB8028
/* 80AB801C  7C 80 07 35 */	extsh. r0, r4
/* 80AB8020  40 81 00 08 */	ble lbl_80AB8028
/* 80AB8024  4B 81 6D 18 */	b __dl__FPv
lbl_80AB8028:
/* 80AB8028  7F E3 FB 78 */	mr r3, r31
/* 80AB802C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AB8030  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB8034  7C 08 03 A6 */	mtlr r0
/* 80AB8038  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB803C  4E 80 00 20 */	blr 
