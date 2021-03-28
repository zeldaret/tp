lbl_807CE264:
/* 807CE264  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807CE268  7C 08 02 A6 */	mflr r0
/* 807CE26C  90 01 00 14 */	stw r0, 0x14(r1)
/* 807CE270  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807CE274  7C 7F 1B 79 */	or. r31, r3, r3
/* 807CE278  41 82 00 1C */	beq lbl_807CE294
/* 807CE27C  3C A0 80 7D */	lis r5, __vt__10cCcD_GStts@ha
/* 807CE280  38 05 F3 E0 */	addi r0, r5, __vt__10cCcD_GStts@l
/* 807CE284  90 1F 00 00 */	stw r0, 0(r31)
/* 807CE288  7C 80 07 35 */	extsh. r0, r4
/* 807CE28C  40 81 00 08 */	ble lbl_807CE294
/* 807CE290  4B B0 0A AC */	b __dl__FPv
lbl_807CE294:
/* 807CE294  7F E3 FB 78 */	mr r3, r31
/* 807CE298  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807CE29C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807CE2A0  7C 08 03 A6 */	mtlr r0
/* 807CE2A4  38 21 00 10 */	addi r1, r1, 0x10
/* 807CE2A8  4E 80 00 20 */	blr 
