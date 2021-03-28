lbl_807B02A0:
/* 807B02A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807B02A4  7C 08 02 A6 */	mflr r0
/* 807B02A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 807B02AC  3C 60 80 7B */	lis r3, data_807B4488@ha
/* 807B02B0  38 63 44 88 */	addi r3, r3, data_807B4488@l
/* 807B02B4  4B AB 2E 98 */	b ModuleConstructorsX
/* 807B02B8  4B AB 2D D0 */	b ModuleProlog
/* 807B02BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807B02C0  7C 08 03 A6 */	mtlr r0
/* 807B02C4  38 21 00 10 */	addi r1, r1, 0x10
/* 807B02C8  4E 80 00 20 */	blr 
