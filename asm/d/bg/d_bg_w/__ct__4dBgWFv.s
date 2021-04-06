lbl_8007B970:
/* 8007B970  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007B974  7C 08 02 A6 */	mflr r0
/* 8007B978  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007B97C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8007B980  7C 7F 1B 78 */	mr r31, r3
/* 8007B984  4B FF D9 11 */	bl __ct__4cBgWFv
/* 8007B988  3C 60 80 3B */	lis r3, __vt__4dBgW@ha /* 0x803ABA80@ha */
/* 8007B98C  38 03 BA 80 */	addi r0, r3, __vt__4dBgW@l /* 0x803ABA80@l */
/* 8007B990  90 1F 00 04 */	stw r0, 4(r31)
/* 8007B994  38 00 00 00 */	li r0, 0
/* 8007B998  90 1F 00 B0 */	stw r0, 0xb0(r31)
/* 8007B99C  90 1F 00 B4 */	stw r0, 0xb4(r31)
/* 8007B9A0  90 1F 00 B8 */	stw r0, 0xb8(r31)
/* 8007B9A4  98 1F 00 BC */	stb r0, 0xbc(r31)
/* 8007B9A8  7F E3 FB 78 */	mr r3, r31
/* 8007B9AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8007B9B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007B9B4  7C 08 03 A6 */	mtlr r0
/* 8007B9B8  38 21 00 10 */	addi r1, r1, 0x10
/* 8007B9BC  4E 80 00 20 */	blr 
