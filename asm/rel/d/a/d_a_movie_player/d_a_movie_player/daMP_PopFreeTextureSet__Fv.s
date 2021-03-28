lbl_80875BC8:
/* 80875BC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80875BCC  7C 08 02 A6 */	mflr r0
/* 80875BD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80875BD4  3C 60 80 8E */	lis r3, daMP_FreeTextureSetQueue@ha
/* 80875BD8  38 63 04 B8 */	addi r3, r3, daMP_FreeTextureSetQueue@l
/* 80875BDC  38 81 00 08 */	addi r4, r1, 8
/* 80875BE0  38 A0 00 01 */	li r5, 1
/* 80875BE4  4B AC 8E D8 */	b OSReceiveMessage
/* 80875BE8  80 61 00 08 */	lwz r3, 8(r1)
/* 80875BEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80875BF0  7C 08 03 A6 */	mtlr r0
/* 80875BF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80875BF8  4E 80 00 20 */	blr 
