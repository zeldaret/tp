lbl_807FC120:
/* 807FC120  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807FC124  7C 08 02 A6 */	mflr r0
/* 807FC128  90 01 00 14 */	stw r0, 0x14(r1)
/* 807FC12C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807FC130  7C 7F 1B 79 */	or. r31, r3, r3
/* 807FC134  41 82 00 1C */	beq lbl_807FC150
/* 807FC138  3C A0 80 80 */	lis r5, __vt__10cCcD_GStts@ha
/* 807FC13C  38 05 CF A4 */	addi r0, r5, __vt__10cCcD_GStts@l
/* 807FC140  90 1F 00 00 */	stw r0, 0(r31)
/* 807FC144  7C 80 07 35 */	extsh. r0, r4
/* 807FC148  40 81 00 08 */	ble lbl_807FC150
/* 807FC14C  4B AD 2B F0 */	b __dl__FPv
lbl_807FC150:
/* 807FC150  7F E3 FB 78 */	mr r3, r31
/* 807FC154  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807FC158  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807FC15C  7C 08 03 A6 */	mtlr r0
/* 807FC160  38 21 00 10 */	addi r1, r1, 0x10
/* 807FC164  4E 80 00 20 */	blr 
