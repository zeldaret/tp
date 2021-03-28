lbl_80164C10:
/* 80164C10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80164C14  7C 08 02 A6 */	mflr r0
/* 80164C18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80164C1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80164C20  7C 9F 23 78 */	mr r31, r4
/* 80164C24  A0 04 00 16 */	lhz r0, 0x16(r4)
/* 80164C28  28 00 FF FF */	cmplwi r0, 0xffff
/* 80164C2C  41 82 00 0C */	beq lbl_80164C38
/* 80164C30  7C 03 03 78 */	mr r3, r0
/* 80164C34  48 00 00 1C */	b lbl_80164C50
lbl_80164C38:
/* 80164C38  4B FF FF 2D */	bl GetCameraTypeFromCameraName__9dCamera_cFPCc
/* 80164C3C  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FFFF@ha */
/* 80164C40  38 04 FF FF */	addi r0, r4, 0xFFFF /* 0x0000FFFF@l */
/* 80164C44  7C 03 00 00 */	cmpw r3, r0
/* 80164C48  40 80 00 08 */	bge lbl_80164C50
/* 80164C4C  B0 7F 00 16 */	sth r3, 0x16(r31)
lbl_80164C50:
/* 80164C50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80164C54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80164C58  7C 08 03 A6 */	mtlr r0
/* 80164C5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80164C60  4E 80 00 20 */	blr 
