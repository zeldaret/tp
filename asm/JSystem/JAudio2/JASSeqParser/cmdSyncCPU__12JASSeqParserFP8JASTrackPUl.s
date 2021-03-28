lbl_80294A3C:
/* 80294A3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80294A40  7C 08 02 A6 */	mflr r0
/* 80294A44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80294A48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80294A4C  7C 9F 23 78 */	mr r31, r4
/* 80294A50  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 80294A54  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0x0000FFFF@l */
/* 80294A58  81 8D 8C C0 */	lwz r12, sCallBackFunc__12JASSeqParser(r13)
/* 80294A5C  28 0C 00 00 */	cmplwi r12, 0
/* 80294A60  41 82 00 1C */	beq lbl_80294A7C
/* 80294A64  7F E3 FB 78 */	mr r3, r31
/* 80294A68  80 05 00 00 */	lwz r0, 0(r5)
/* 80294A6C  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 80294A70  7D 89 03 A6 */	mtctr r12
/* 80294A74  4E 80 04 21 */	bctrl 
/* 80294A78  7C 60 1B 78 */	mr r0, r3
lbl_80294A7C:
/* 80294A7C  38 7F 00 80 */	addi r3, r31, 0x80
/* 80294A80  38 80 00 03 */	li r4, 3
/* 80294A84  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 80294A88  4B FF EB FD */	bl write__16JASRegisterParamFQ216JASRegisterParam5RegIDUl
/* 80294A8C  38 60 00 00 */	li r3, 0
/* 80294A90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80294A94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80294A98  7C 08 03 A6 */	mtlr r0
/* 80294A9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80294AA0  4E 80 00 20 */	blr 
