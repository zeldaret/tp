lbl_80875C70:
/* 80875C70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80875C74  7C 08 02 A6 */	mflr r0
/* 80875C78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80875C7C  7C 64 1B 78 */	mr r4, r3
/* 80875C80  3C 60 80 8E */	lis r3, daMP_DecodedTextureSetQueue@ha /* 0x808E04D8@ha */
/* 80875C84  38 63 04 D8 */	addi r3, r3, daMP_DecodedTextureSetQueue@l /* 0x808E04D8@l */
/* 80875C88  38 A0 00 01 */	li r5, 1
/* 80875C8C  4B AC 8D 69 */	bl OSSendMessage
/* 80875C90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80875C94  7C 08 03 A6 */	mtlr r0
/* 80875C98  38 21 00 10 */	addi r1, r1, 0x10
/* 80875C9C  4E 80 00 20 */	blr 
