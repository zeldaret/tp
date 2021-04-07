lbl_80349A54:
/* 80349A54  7C 08 02 A6 */	mflr r0
/* 80349A58  3C 60 80 35 */	lis r3, cbForStateCheckID2a@ha /* 0x80349A88@ha */
/* 80349A5C  90 01 00 04 */	stw r0, 4(r1)
/* 80349A60  38 A3 9A 88 */	addi r5, r3, cbForStateCheckID2a@l /* 0x80349A88@l */
/* 80349A64  94 21 FF F8 */	stwu r1, -8(r1)
/* 80349A68  80 8D 91 FC */	lwz r4, IDShouldBe(r13)
/* 80349A6C  88 64 00 08 */	lbz r3, 8(r4)
/* 80349A70  38 80 00 0A */	li r4, 0xa
/* 80349A74  4B FF E8 79 */	bl DVDLowAudioBufferConfig
/* 80349A78  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80349A7C  38 21 00 08 */	addi r1, r1, 8
/* 80349A80  7C 08 03 A6 */	mtlr r0
/* 80349A84  4E 80 00 20 */	blr 
