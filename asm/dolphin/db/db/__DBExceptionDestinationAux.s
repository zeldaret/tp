lbl_803463C0:
/* 803463C0  7C 08 02 A6 */	mflr r0
/* 803463C4  3C 60 80 3D */	lis r3, lit_9@ha
/* 803463C8  90 01 00 04 */	stw r0, 4(r1)
/* 803463CC  38 63 13 68 */	addi r3, r3, lit_9@l
/* 803463D0  4C C6 31 82 */	crclr 6
/* 803463D4  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 803463D8  93 E1 00 14 */	stw r31, 0x14(r1)
/* 803463DC  80 80 00 C0 */	lwz r4, 0xc0(r0)
/* 803463E0  3F E4 80 00 */	addis r31, r4, 0x8000
/* 803463E4  4B CC 06 D9 */	bl OSReport
/* 803463E8  7F E3 FB 78 */	mr r3, r31
/* 803463EC  4B FF 5C F5 */	bl OSDumpContext
/* 803463F0  4B FF 39 11 */	bl PPCHalt
/* 803463F4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 803463F8  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 803463FC  38 21 00 18 */	addi r1, r1, 0x18
/* 80346400  7C 08 03 A6 */	mtlr r0
/* 80346404  4E 80 00 20 */	blr 
