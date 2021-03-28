lbl_80875BFC:
/* 80875BFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80875C00  7C 08 02 A6 */	mflr r0
/* 80875C04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80875C08  7C 64 1B 78 */	mr r4, r3
/* 80875C0C  3C 60 80 8E */	lis r3, daMP_FreeTextureSetQueue@ha
/* 80875C10  38 63 04 B8 */	addi r3, r3, daMP_FreeTextureSetQueue@l
/* 80875C14  38 A0 00 00 */	li r5, 0
/* 80875C18  4B AC 8D DC */	b OSSendMessage
/* 80875C1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80875C20  7C 08 03 A6 */	mtlr r0
/* 80875C24  38 21 00 10 */	addi r1, r1, 0x10
/* 80875C28  4E 80 00 20 */	blr 
