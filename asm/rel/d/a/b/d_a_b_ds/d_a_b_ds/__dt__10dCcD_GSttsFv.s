lbl_805DC6F4:
/* 805DC6F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805DC6F8  7C 08 02 A6 */	mflr r0
/* 805DC6FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805DC700  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805DC704  7C 7F 1B 79 */	or. r31, r3, r3
/* 805DC708  41 82 00 30 */	beq lbl_805DC738
/* 805DC70C  3C 60 80 5E */	lis r3, __vt__10dCcD_GStts@ha
/* 805DC710  38 03 D9 FC */	addi r0, r3, __vt__10dCcD_GStts@l
/* 805DC714  90 1F 00 00 */	stw r0, 0(r31)
/* 805DC718  41 82 00 10 */	beq lbl_805DC728
/* 805DC71C  3C 60 80 5E */	lis r3, __vt__10cCcD_GStts@ha
/* 805DC720  38 03 D9 F0 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 805DC724  90 1F 00 00 */	stw r0, 0(r31)
lbl_805DC728:
/* 805DC728  7C 80 07 35 */	extsh. r0, r4
/* 805DC72C  40 81 00 0C */	ble lbl_805DC738
/* 805DC730  7F E3 FB 78 */	mr r3, r31
/* 805DC734  4B CF 26 08 */	b __dl__FPv
lbl_805DC738:
/* 805DC738  7F E3 FB 78 */	mr r3, r31
/* 805DC73C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805DC740  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805DC744  7C 08 03 A6 */	mtlr r0
/* 805DC748  38 21 00 10 */	addi r1, r1, 0x10
/* 805DC74C  4E 80 00 20 */	blr 
