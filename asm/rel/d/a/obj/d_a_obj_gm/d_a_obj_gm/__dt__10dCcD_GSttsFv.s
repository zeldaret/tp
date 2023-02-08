lbl_80BFD0FC:
/* 80BFD0FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BFD100  7C 08 02 A6 */	mflr r0
/* 80BFD104  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BFD108  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BFD10C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BFD110  41 82 00 30 */	beq lbl_80BFD140
/* 80BFD114  3C 60 80 C0 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80BFD53C@ha */
/* 80BFD118  38 03 D5 3C */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80BFD53C@l */
/* 80BFD11C  90 1F 00 00 */	stw r0, 0(r31)
/* 80BFD120  41 82 00 10 */	beq lbl_80BFD130
/* 80BFD124  3C 60 80 C0 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80BFD530@ha */
/* 80BFD128  38 03 D5 30 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80BFD530@l */
/* 80BFD12C  90 1F 00 00 */	stw r0, 0(r31)
lbl_80BFD130:
/* 80BFD130  7C 80 07 35 */	extsh. r0, r4
/* 80BFD134  40 81 00 0C */	ble lbl_80BFD140
/* 80BFD138  7F E3 FB 78 */	mr r3, r31
/* 80BFD13C  4B 6D 1C 01 */	bl __dl__FPv
lbl_80BFD140:
/* 80BFD140  7F E3 FB 78 */	mr r3, r31
/* 80BFD144  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BFD148  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BFD14C  7C 08 03 A6 */	mtlr r0
/* 80BFD150  38 21 00 10 */	addi r1, r1, 0x10
/* 80BFD154  4E 80 00 20 */	blr 
