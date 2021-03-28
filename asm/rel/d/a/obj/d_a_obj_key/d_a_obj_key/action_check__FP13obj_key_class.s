lbl_80C3F6B4:
/* 80C3F6B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C3F6B8  7C 08 02 A6 */	mflr r0
/* 80C3F6BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C3F6C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C3F6C4  7C 7F 1B 78 */	mr r31, r3
/* 80C3F6C8  3C 60 80 C4 */	lis r3, s_master_sub__FPvPv@ha
/* 80C3F6CC  38 63 F5 40 */	addi r3, r3, s_master_sub__FPvPv@l
/* 80C3F6D0  7F E4 FB 78 */	mr r4, r31
/* 80C3F6D4  4B 3E 1C 64 */	b fpcEx_Search__FPFPvPv_PvPv
/* 80C3F6D8  28 03 00 00 */	cmplwi r3, 0
/* 80C3F6DC  41 82 00 24 */	beq lbl_80C3F700
/* 80C3F6E0  38 00 00 03 */	li r0, 3
/* 80C3F6E4  B0 1F 06 0A */	sth r0, 0x60a(r31)
/* 80C3F6E8  41 82 00 0C */	beq lbl_80C3F6F4
/* 80C3F6EC  80 03 00 04 */	lwz r0, 4(r3)
/* 80C3F6F0  48 00 00 08 */	b lbl_80C3F6F8
lbl_80C3F6F4:
/* 80C3F6F4  38 00 FF FF */	li r0, -1
lbl_80C3F6F8:
/* 80C3F6F8  90 1F 04 A4 */	stw r0, 0x4a4(r31)
/* 80C3F6FC  48 00 00 18 */	b lbl_80C3F714
lbl_80C3F700:
/* 80C3F700  A8 1F 06 0E */	lha r0, 0x60e(r31)
/* 80C3F704  2C 00 00 00 */	cmpwi r0, 0
/* 80C3F708  40 82 00 0C */	bne lbl_80C3F714
/* 80C3F70C  38 00 00 02 */	li r0, 2
/* 80C3F710  B0 1F 06 0A */	sth r0, 0x60a(r31)
lbl_80C3F714:
/* 80C3F714  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C3F718  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C3F71C  7C 08 03 A6 */	mtlr r0
/* 80C3F720  38 21 00 10 */	addi r1, r1, 0x10
/* 80C3F724  4E 80 00 20 */	blr 
