lbl_80685F04:
/* 80685F04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80685F08  7C 08 02 A6 */	mflr r0
/* 80685F0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80685F10  38 00 02 E4 */	li r0, 0x2e4
/* 80685F14  B0 01 00 08 */	sth r0, 8(r1)
/* 80685F18  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha
/* 80685F1C  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l
/* 80685F20  38 81 00 08 */	addi r4, r1, 8
/* 80685F24  4B 99 38 D4 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80685F28  28 03 00 00 */	cmplwi r3, 0
/* 80685F2C  41 82 00 48 */	beq lbl_80685F74
/* 80685F30  A8 03 0F 7C */	lha r0, 0xf7c(r3)
/* 80685F34  2C 00 00 01 */	cmpwi r0, 1
/* 80685F38  40 82 00 3C */	bne lbl_80685F74
/* 80685F3C  A8 03 0F 7E */	lha r0, 0xf7e(r3)
/* 80685F40  2C 00 00 05 */	cmpwi r0, 5
/* 80685F44  41 82 00 30 */	beq lbl_80685F74
/* 80685F48  88 03 10 0D */	lbz r0, 0x100d(r3)
/* 80685F4C  7C 00 07 75 */	extsb. r0, r0
/* 80685F50  41 82 00 24 */	beq lbl_80685F74
/* 80685F54  C0 43 04 D4 */	lfs f2, 0x4d4(r3)
/* 80685F58  C0 23 05 90 */	lfs f1, 0x590(r3)
/* 80685F5C  3C 80 80 69 */	lis r4, lit_4007@ha
/* 80685F60  C0 04 A2 70 */	lfs f0, lit_4007@l(r4)
/* 80685F64  EC 01 00 28 */	fsubs f0, f1, f0
/* 80685F68  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80685F6C  40 80 00 08 */	bge lbl_80685F74
/* 80685F70  48 00 00 08 */	b lbl_80685F78
lbl_80685F74:
/* 80685F74  38 60 00 00 */	li r3, 0
lbl_80685F78:
/* 80685F78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80685F7C  7C 08 03 A6 */	mtlr r0
/* 80685F80  38 21 00 10 */	addi r1, r1, 0x10
/* 80685F84  4E 80 00 20 */	blr 
