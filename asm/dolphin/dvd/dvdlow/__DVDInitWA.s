lbl_80347674:
/* 80347674  7C 08 02 A6 */	mflr r0
/* 80347678  3C 60 80 45 */	lis r3, CommandList@ha /* 0x8044C830@ha */
/* 8034767C  90 01 00 04 */	stw r0, 4(r1)
/* 80347680  38 00 00 00 */	li r0, 0
/* 80347684  38 80 00 00 */	li r4, 0
/* 80347688  94 21 FF F8 */	stwu r1, -8(r1)
/* 8034768C  90 0D 91 D4 */	stw r0, NextCommandNumber(r13)
/* 80347690  38 00 FF FF */	li r0, -1
/* 80347694  90 03 C8 30 */	stw r0, CommandList@l(r3)  /* 0x8044C830@l */
/* 80347698  38 60 00 00 */	li r3, 0
/* 8034769C  48 00 0D D9 */	bl __DVDLowSetWAType
/* 803476A0  4B FF 32 01 */	bl OSInitAlarm
/* 803476A4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803476A8  38 21 00 08 */	addi r1, r1, 8
/* 803476AC  7C 08 03 A6 */	mtlr r0
/* 803476B0  4E 80 00 20 */	blr 
