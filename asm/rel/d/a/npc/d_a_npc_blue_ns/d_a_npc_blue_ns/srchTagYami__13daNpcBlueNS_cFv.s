lbl_80969CF8:
/* 80969CF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80969CFC  7C 08 02 A6 */	mflr r0
/* 80969D00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80969D04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80969D08  7C 7F 1B 78 */	mr r31, r3
/* 80969D0C  80 03 0D F8 */	lwz r0, 0xdf8(r3)
/* 80969D10  28 00 00 00 */	cmplwi r0, 0
/* 80969D14  40 82 00 38 */	bne lbl_80969D4C
/* 80969D18  3C 60 80 97 */	lis r3, _search_Tag__13daNpcBlueNS_cFPvPv@ha /* 0x80969D60@ha */
/* 80969D1C  38 63 9D 60 */	addi r3, r3, _search_Tag__13daNpcBlueNS_cFPvPv@l /* 0x80969D60@l */
/* 80969D20  7F E4 FB 78 */	mr r4, r31
/* 80969D24  4B 6B 76 15 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 80969D28  90 7F 0D F8 */	stw r3, 0xdf8(r31)
/* 80969D2C  80 7F 0D F8 */	lwz r3, 0xdf8(r31)
/* 80969D30  28 03 00 00 */	cmplwi r3, 0
/* 80969D34  41 82 00 18 */	beq lbl_80969D4C
/* 80969D38  80 03 05 94 */	lwz r0, 0x594(r3)
/* 80969D3C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80969D40  90 03 05 94 */	stw r0, 0x594(r3)
/* 80969D44  38 00 00 00 */	li r0, 0
/* 80969D48  98 03 06 E0 */	stb r0, 0x6e0(r3)
lbl_80969D4C:
/* 80969D4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80969D50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80969D54  7C 08 03 A6 */	mtlr r0
/* 80969D58  38 21 00 10 */	addi r1, r1, 0x10
/* 80969D5C  4E 80 00 20 */	blr 
