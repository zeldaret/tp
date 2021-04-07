lbl_8097C844:
/* 8097C844  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8097C848  7C 08 02 A6 */	mflr r0
/* 8097C84C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8097C850  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8097C854  7C 7F 1B 78 */	mr r31, r3
/* 8097C858  88 03 0B 94 */	lbz r0, 0xb94(r3)
/* 8097C85C  28 00 00 00 */	cmplwi r0, 0
/* 8097C860  41 82 00 48 */	beq lbl_8097C8A8
/* 8097C864  38 80 00 35 */	li r4, 0x35
/* 8097C868  80 BF 0B 58 */	lwz r5, 0xb58(r31)
/* 8097C86C  4B 7D B8 85 */	bl getAnmP__10daNpcCd2_cFii
/* 8097C870  7C 64 1B 78 */	mr r4, r3
/* 8097C874  7F E3 FB 78 */	mr r3, r31
/* 8097C878  3C A0 80 98 */	lis r5, lit_4091@ha /* 0x8097F544@ha */
/* 8097C87C  C0 25 F5 44 */	lfs f1, lit_4091@l(r5)  /* 0x8097F544@l */
/* 8097C880  3C A0 80 98 */	lis r5, lit_4092@ha /* 0x8097F548@ha */
/* 8097C884  C0 45 F5 48 */	lfs f2, lit_4092@l(r5)  /* 0x8097F548@l */
/* 8097C888  38 A0 00 02 */	li r5, 2
/* 8097C88C  38 C0 00 00 */	li r6, 0
/* 8097C890  38 E0 FF FF */	li r7, -1
/* 8097C894  4B 7D C6 6D */	bl setAnm__10daNpcCd2_cFP18J3DAnmTransformKeyffiii
/* 8097C898  38 00 00 01 */	li r0, 1
/* 8097C89C  90 1F 0A A0 */	stw r0, 0xaa0(r31)
/* 8097C8A0  38 00 00 00 */	li r0, 0
/* 8097C8A4  98 1F 0B 94 */	stb r0, 0xb94(r31)
lbl_8097C8A8:
/* 8097C8A8  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060011@ha */
/* 8097C8AC  38 03 00 11 */	addi r0, r3, 0x0011 /* 0x00060011@l */
/* 8097C8B0  90 01 00 08 */	stw r0, 8(r1)
/* 8097C8B4  38 7F 05 94 */	addi r3, r31, 0x594
/* 8097C8B8  38 81 00 08 */	addi r4, r1, 8
/* 8097C8BC  38 A0 FF FF */	li r5, -1
/* 8097C8C0  81 9F 05 94 */	lwz r12, 0x594(r31)
/* 8097C8C4  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8097C8C8  7D 89 03 A6 */	mtctr r12
/* 8097C8CC  4E 80 04 21 */	bctrl 
/* 8097C8D0  80 1F 0A A0 */	lwz r0, 0xaa0(r31)
/* 8097C8D4  7C 00 00 34 */	cntlzw r0, r0
/* 8097C8D8  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 8097C8DC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8097C8E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8097C8E4  7C 08 03 A6 */	mtlr r0
/* 8097C8E8  38 21 00 20 */	addi r1, r1, 0x20
/* 8097C8EC  4E 80 00 20 */	blr 
