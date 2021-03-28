lbl_80C67398:
/* 80C67398  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6739C  7C 08 02 A6 */	mflr r0
/* 80C673A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C673A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C673A8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C673AC  41 82 00 30 */	beq lbl_80C673DC
/* 80C673B0  3C 60 80 C6 */	lis r3, __vt__10dCcD_GStts@ha
/* 80C673B4  38 03 76 C0 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80C673B8  90 1F 00 00 */	stw r0, 0(r31)
/* 80C673BC  41 82 00 10 */	beq lbl_80C673CC
/* 80C673C0  3C 60 80 C6 */	lis r3, __vt__10cCcD_GStts@ha
/* 80C673C4  38 03 76 B4 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80C673C8  90 1F 00 00 */	stw r0, 0(r31)
lbl_80C673CC:
/* 80C673CC  7C 80 07 35 */	extsh. r0, r4
/* 80C673D0  40 81 00 0C */	ble lbl_80C673DC
/* 80C673D4  7F E3 FB 78 */	mr r3, r31
/* 80C673D8  4B 66 79 64 */	b __dl__FPv
lbl_80C673DC:
/* 80C673DC  7F E3 FB 78 */	mr r3, r31
/* 80C673E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C673E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C673E8  7C 08 03 A6 */	mtlr r0
/* 80C673EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C673F0  4E 80 00 20 */	blr 
