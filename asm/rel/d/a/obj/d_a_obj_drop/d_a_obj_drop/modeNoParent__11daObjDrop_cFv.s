lbl_80BE0994:
/* 80BE0994  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE0998  7C 08 02 A6 */	mflr r0
/* 80BE099C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE09A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BE09A4  7C 7F 1B 78 */	mr r31, r3
/* 80BE09A8  3C 60 80 BE */	lis r3, searchParentSub__FPvPv@ha
/* 80BE09AC  38 63 FC D8 */	addi r3, r3, searchParentSub__FPvPv@l
/* 80BE09B0  7F E4 FB 78 */	mr r4, r31
/* 80BE09B4  4B 44 09 84 */	b fpcEx_Search__FPFPvPv_PvPv
/* 80BE09B8  28 03 00 00 */	cmplwi r3, 0
/* 80BE09BC  41 82 00 20 */	beq lbl_80BE09DC
/* 80BE09C0  41 82 00 0C */	beq lbl_80BE09CC
/* 80BE09C4  80 03 00 04 */	lwz r0, 4(r3)
/* 80BE09C8  48 00 00 08 */	b lbl_80BE09D0
lbl_80BE09CC:
/* 80BE09CC  38 00 FF FF */	li r0, -1
lbl_80BE09D0:
/* 80BE09D0  90 1F 04 A4 */	stw r0, 0x4a4(r31)
/* 80BE09D4  38 00 00 01 */	li r0, 1
/* 80BE09D8  98 1F 06 B0 */	stb r0, 0x6b0(r31)
lbl_80BE09DC:
/* 80BE09DC  38 60 00 01 */	li r3, 1
/* 80BE09E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BE09E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE09E8  7C 08 03 A6 */	mtlr r0
/* 80BE09EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE09F0  4E 80 00 20 */	blr 
