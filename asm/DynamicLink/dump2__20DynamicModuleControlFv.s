lbl_80262C0C:
/* 80262C0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80262C10  7C 08 02 A6 */	mflr r0
/* 80262C14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80262C18  80 83 00 10 */	lwz r4, 0x10(r3)
/* 80262C1C  28 04 00 00 */	cmplwi r4, 0
/* 80262C20  41 82 00 2C */	beq lbl_80262C4C
/* 80262C24  80 C4 00 10 */	lwz r6, 0x10(r4)
/* 80262C28  80 06 00 08 */	lwz r0, 8(r6)
/* 80262C2C  54 05 00 3C */	rlwinm r5, r0, 0, 0, 0x1e
/* 80262C30  3C 60 80 3A */	lis r3, DynamicLink__stringBase0@ha
/* 80262C34  38 63 A4 A0 */	addi r3, r3, DynamicLink__stringBase0@l
/* 80262C38  38 63 02 2E */	addi r3, r3, 0x22e
/* 80262C3C  80 06 00 0C */	lwz r0, 0xc(r6)
/* 80262C40  7C C5 02 14 */	add r6, r5, r0
/* 80262C44  4C C6 31 82 */	crclr 6
/* 80262C48  4B DA 3E 75 */	bl OSReport
lbl_80262C4C:
/* 80262C4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80262C50  7C 08 03 A6 */	mtlr r0
/* 80262C54  38 21 00 10 */	addi r1, r1, 0x10
/* 80262C58  4E 80 00 20 */	blr 
