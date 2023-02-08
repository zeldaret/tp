lbl_800AFAA8:
/* 800AFAA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800AFAAC  7C 08 02 A6 */	mflr r0
/* 800AFAB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800AFAB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800AFAB8  93 C1 00 08 */	stw r30, 8(r1)
/* 800AFABC  7C 7E 1B 78 */	mr r30, r3
/* 800AFAC0  54 85 10 3A */	slwi r5, r4, 2
/* 800AFAC4  3C 80 80 39 */	lis r4, m_faceTexDataTable__9daAlink_c@ha /* 0x803914A8@ha */
/* 800AFAC8  38 04 14 A8 */	addi r0, r4, m_faceTexDataTable__9daAlink_c@l /* 0x803914A8@l */
/* 800AFACC  7F E0 2A 14 */	add r31, r0, r5
/* 800AFAD0  A0 9F 00 00 */	lhz r4, 0(r31)
/* 800AFAD4  38 A0 00 01 */	li r5, 1
/* 800AFAD8  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 800AFADC  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 800AFAE0  4B FF FB 3D */	bl setFaceBtp__9daAlink_cFUsiUs
/* 800AFAE4  7F C3 F3 78 */	mr r3, r30
/* 800AFAE8  A0 9F 00 02 */	lhz r4, 2(r31)
/* 800AFAEC  38 A0 00 01 */	li r5, 1
/* 800AFAF0  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 800AFAF4  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 800AFAF8  4B FF FC D9 */	bl setFaceBtk__9daAlink_cFUsiUs
/* 800AFAFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800AFB00  83 C1 00 08 */	lwz r30, 8(r1)
/* 800AFB04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800AFB08  7C 08 03 A6 */	mtlr r0
/* 800AFB0C  38 21 00 10 */	addi r1, r1, 0x10
/* 800AFB10  4E 80 00 20 */	blr 
