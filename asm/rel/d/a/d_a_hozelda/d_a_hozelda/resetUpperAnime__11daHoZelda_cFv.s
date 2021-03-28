lbl_80847234:
/* 80847234  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80847238  7C 08 02 A6 */	mflr r0
/* 8084723C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80847240  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80847244  7C 7F 1B 78 */	mr r31, r3
/* 80847248  A0 03 06 E8 */	lhz r0, 0x6e8(r3)
/* 8084724C  28 00 FF FF */	cmplwi r0, 0xffff
/* 80847250  41 82 00 5C */	beq lbl_808472AC
/* 80847254  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FFFF@ha */
/* 80847258  38 04 FF FF */	addi r0, r4, 0xFFFF /* 0x0000FFFF@l */
/* 8084725C  B0 1F 06 E8 */	sth r0, 0x6e8(r31)
/* 80847260  3C 80 80 85 */	lis r4, lit_3697@ha
/* 80847264  C0 04 8E 54 */	lfs f0, lit_3697@l(r4)
/* 80847268  D0 1F 05 BC */	stfs f0, 0x5bc(r31)
/* 8084726C  38 00 00 00 */	li r0, 0
/* 80847270  90 1F 05 C0 */	stw r0, 0x5c0(r31)
/* 80847274  88 1F 06 DA */	lbz r0, 0x6da(r31)
/* 80847278  28 00 00 00 */	cmplwi r0, 0
/* 8084727C  41 82 00 10 */	beq lbl_8084728C
/* 80847280  48 00 03 F1 */	bl setNormalFace__11daHoZelda_cFv
/* 80847284  38 00 00 00 */	li r0, 0
/* 80847288  98 1F 06 DA */	stb r0, 0x6da(r31)
lbl_8084728C:
/* 8084728C  38 00 00 00 */	li r0, 0
/* 80847290  98 1F 06 D8 */	stb r0, 0x6d8(r31)
/* 80847294  80 7F 05 C4 */	lwz r3, 0x5c4(r31)
/* 80847298  3C 80 80 85 */	lis r4, lit_4209@ha
/* 8084729C  C0 24 8E 68 */	lfs f1, lit_4209@l(r4)
/* 808472A0  38 80 00 01 */	li r4, 1
/* 808472A4  38 A0 00 17 */	li r5, 0x17
/* 808472A8  4B 7C 85 A0 */	b initOldFrameMorf__22mDoExt_MtxCalcOldFrameFfUsUs
lbl_808472AC:
/* 808472AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 808472B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 808472B4  7C 08 03 A6 */	mtlr r0
/* 808472B8  38 21 00 10 */	addi r1, r1, 0x10
/* 808472BC  4E 80 00 20 */	blr 
