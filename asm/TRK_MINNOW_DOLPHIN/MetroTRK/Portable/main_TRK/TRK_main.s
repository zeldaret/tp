lbl_80371B9C:
/* 80371B9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80371BA0  7C 08 02 A6 */	mflr r0
/* 80371BA4  3C 80 80 3A */	lis r4, lit_80@ha /* 0x803A2BF8@ha */
/* 80371BA8  38 60 00 01 */	li r3, 1
/* 80371BAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80371BB0  38 84 2B F8 */	addi r4, r4, lit_80@l /* 0x803A2BF8@l */
/* 80371BB4  4C C6 31 82 */	crclr 6
/* 80371BB8  48 00 10 9D */	bl MWTRACE
/* 80371BBC  4B FF B2 D1 */	bl TRKInitializeNub
/* 80371BC0  3C 80 80 45 */	lis r4, TRK_mainError@ha /* 0x8044F818@ha */
/* 80371BC4  2C 03 00 00 */	cmpwi r3, 0
/* 80371BC8  90 64 F8 18 */	stw r3, TRK_mainError@l(r4)  /* 0x8044F818@l */
/* 80371BCC  40 82 00 0C */	bne lbl_80371BD8
/* 80371BD0  4B FF B2 71 */	bl TRKNubWelcome
/* 80371BD4  4B FF AF 4D */	bl TRKNubMainLoop
lbl_80371BD8:
/* 80371BD8  4B FF B2 91 */	bl TRKTerminateNub
/* 80371BDC  3C 80 80 45 */	lis r4, TRK_mainError@ha /* 0x8044F818@ha */
/* 80371BE0  90 64 F8 18 */	stw r3, TRK_mainError@l(r4)  /* 0x8044F818@l */
/* 80371BE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80371BE8  7C 08 03 A6 */	mtlr r0
/* 80371BEC  38 21 00 10 */	addi r1, r1, 0x10
/* 80371BF0  4E 80 00 20 */	blr 
