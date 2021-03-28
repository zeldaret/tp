lbl_80666BF8:
/* 80666BF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80666BFC  7C 08 02 A6 */	mflr r0
/* 80666C00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80666C04  3C 80 80 66 */	lis r4, lit_4286@ha
/* 80666C08  C0 04 77 38 */	lfs f0, lit_4286@l(r4)
/* 80666C0C  D0 03 05 8C */	stfs f0, 0x58c(r3)
/* 80666C10  88 03 0A DD */	lbz r0, 0xadd(r3)
/* 80666C14  54 00 08 3C */	slwi r0, r0, 1
/* 80666C18  3C 80 80 66 */	lis r4, brkIdx_6108@ha
/* 80666C1C  38 84 79 94 */	addi r4, r4, brkIdx_6108@l
/* 80666C20  7C 84 02 2E */	lhzx r4, r4, r0
/* 80666C24  4B FF FF 5D */	bl initBrk__11daCstatue_cFUs
/* 80666C28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80666C2C  7C 08 03 A6 */	mtlr r0
/* 80666C30  38 21 00 10 */	addi r1, r1, 0x10
/* 80666C34  4E 80 00 20 */	blr 
