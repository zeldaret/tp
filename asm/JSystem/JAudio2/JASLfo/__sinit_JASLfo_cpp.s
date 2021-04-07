lbl_8029BE6C:
/* 8029BE6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029BE70  7C 08 02 A6 */	mflr r0
/* 8029BE74  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029BE78  3C 60 80 43 */	lis r3, sFreeRunLfo__6JASLfo@ha /* 0x80431C40@ha */
/* 8029BE7C  38 63 1C 40 */	addi r3, r3, sFreeRunLfo__6JASLfo@l /* 0x80431C40@l */
/* 8029BE80  4B FF FE 95 */	bl __ct__6JASLfoFv
/* 8029BE84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029BE88  7C 08 03 A6 */	mtlr r0
/* 8029BE8C  38 21 00 10 */	addi r1, r1, 0x10
/* 8029BE90  4E 80 00 20 */	blr 
