lbl_80349A20:
/* 80349A20  7C 08 02 A6 */	mflr r0
/* 80349A24  3C 60 80 35 */	lis r3, cbForStateCheckID3@ha
/* 80349A28  90 01 00 04 */	stw r0, 4(r1)
/* 80349A2C  38 A3 9C FC */	addi r5, r3, cbForStateCheckID3@l
/* 80349A30  94 21 FF F8 */	stwu r1, -8(r1)
/* 80349A34  80 8D 91 FC */	lwz r4, IDShouldBe(r13)
/* 80349A38  88 64 00 08 */	lbz r3, 8(r4)
/* 80349A3C  38 80 00 0A */	li r4, 0xa
/* 80349A40  4B FF E8 AD */	bl DVDLowAudioBufferConfig
/* 80349A44  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80349A48  38 21 00 08 */	addi r1, r1, 8
/* 80349A4C  7C 08 03 A6 */	mtlr r0
/* 80349A50  4E 80 00 20 */	blr 
