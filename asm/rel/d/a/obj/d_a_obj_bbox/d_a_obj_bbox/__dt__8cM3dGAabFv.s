lbl_80BAD078:
/* 80BAD078  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BAD07C  7C 08 02 A6 */	mflr r0
/* 80BAD080  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BAD084  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BAD088  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BAD08C  41 82 00 1C */	beq lbl_80BAD0A8
/* 80BAD090  3C A0 80 BB */	lis r5, __vt__8cM3dGAab@ha
/* 80BAD094  38 05 D5 34 */	addi r0, r5, __vt__8cM3dGAab@l
/* 80BAD098  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80BAD09C  7C 80 07 35 */	extsh. r0, r4
/* 80BAD0A0  40 81 00 08 */	ble lbl_80BAD0A8
/* 80BAD0A4  4B 72 1C 98 */	b __dl__FPv
lbl_80BAD0A8:
/* 80BAD0A8  7F E3 FB 78 */	mr r3, r31
/* 80BAD0AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BAD0B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BAD0B4  7C 08 03 A6 */	mtlr r0
/* 80BAD0B8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BAD0BC  4E 80 00 20 */	blr 
