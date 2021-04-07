lbl_80875C2C:
/* 80875C2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80875C30  7C 08 02 A6 */	mflr r0
/* 80875C34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80875C38  7C 65 1B 78 */	mr r5, r3
/* 80875C3C  3C 60 80 8E */	lis r3, daMP_DecodedTextureSetQueue@ha /* 0x808E04D8@ha */
/* 80875C40  38 63 04 D8 */	addi r3, r3, daMP_DecodedTextureSetQueue@l /* 0x808E04D8@l */
/* 80875C44  38 81 00 08 */	addi r4, r1, 8
/* 80875C48  4B AC 8E 75 */	bl OSReceiveMessage
/* 80875C4C  2C 03 00 01 */	cmpwi r3, 1
/* 80875C50  40 82 00 0C */	bne lbl_80875C5C
/* 80875C54  80 61 00 08 */	lwz r3, 8(r1)
/* 80875C58  48 00 00 08 */	b lbl_80875C60
lbl_80875C5C:
/* 80875C5C  38 60 00 00 */	li r3, 0
lbl_80875C60:
/* 80875C60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80875C64  7C 08 03 A6 */	mtlr r0
/* 80875C68  38 21 00 10 */	addi r1, r1, 0x10
/* 80875C6C  4E 80 00 20 */	blr 
