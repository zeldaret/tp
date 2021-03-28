lbl_800CFFF4:
/* 800CFFF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800CFFF8  7C 08 02 A6 */	mflr r0
/* 800CFFFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800D0000  7C 65 1B 78 */	mr r5, r3
/* 800D0004  7C 83 23 78 */	mr r3, r4
/* 800D0008  38 85 00 24 */	addi r4, r5, 0x24
/* 800D000C  48 27 64 A5 */	bl PSMTXCopy
/* 800D0010  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800D0014  7C 08 03 A6 */	mtlr r0
/* 800D0018  38 21 00 10 */	addi r1, r1, 0x10
/* 800D001C  4E 80 00 20 */	blr 
