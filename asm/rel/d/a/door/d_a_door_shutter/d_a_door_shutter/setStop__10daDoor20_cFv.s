lbl_80465E8C:
/* 80465E8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80465E90  7C 08 02 A6 */	mflr r0
/* 80465E94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80465E98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80465E9C  7C 7F 1B 78 */	mr r31, r3
/* 80465EA0  4B FF FC 21 */	bl chkMakeStop__10daDoor20_cFv
/* 80465EA4  2C 03 00 00 */	cmpwi r3, 0
/* 80465EA8  41 82 00 64 */	beq lbl_80465F0C
/* 80465EAC  80 1F 06 D0 */	lwz r0, 0x6d0(r31)
/* 80465EB0  28 00 00 00 */	cmplwi r0, 0
/* 80465EB4  41 82 00 58 */	beq lbl_80465F0C
/* 80465EB8  88 1F 06 8C */	lbz r0, 0x68c(r31)
/* 80465EBC  98 1F 06 D9 */	stb r0, 0x6d9(r31)
/* 80465EC0  88 1F 06 8C */	lbz r0, 0x68c(r31)
/* 80465EC4  28 00 00 00 */	cmplwi r0, 0
/* 80465EC8  40 82 00 20 */	bne lbl_80465EE8
/* 80465ECC  7F E3 FB 78 */	mr r3, r31
/* 80465ED0  4B FF FC 65 */	bl chkStopF__10daDoor20_cFv
/* 80465ED4  98 7F 06 D8 */	stb r3, 0x6d8(r31)
/* 80465ED8  7F E3 FB 78 */	mr r3, r31
/* 80465EDC  4B FF FD 29 */	bl chkStopB__10daDoor20_cFv
/* 80465EE0  98 7F 06 DA */	stb r3, 0x6da(r31)
/* 80465EE4  48 00 00 1C */	b lbl_80465F00
lbl_80465EE8:
/* 80465EE8  7F E3 FB 78 */	mr r3, r31
/* 80465EEC  4B FF FD 19 */	bl chkStopB__10daDoor20_cFv
/* 80465EF0  98 7F 06 D8 */	stb r3, 0x6d8(r31)
/* 80465EF4  7F E3 FB 78 */	mr r3, r31
/* 80465EF8  4B FF FC 3D */	bl chkStopF__10daDoor20_cFv
/* 80465EFC  98 7F 06 DA */	stb r3, 0x6da(r31)
lbl_80465F00:
/* 80465F00  3C 60 80 46 */	lis r3, lit_4256@ha
/* 80465F04  C0 03 68 2C */	lfs f0, lit_4256@l(r3)
/* 80465F08  D0 1F 06 D4 */	stfs f0, 0x6d4(r31)
lbl_80465F0C:
/* 80465F0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80465F10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80465F14  7C 08 03 A6 */	mtlr r0
/* 80465F18  38 21 00 10 */	addi r1, r1, 0x10
/* 80465F1C  4E 80 00 20 */	blr 
