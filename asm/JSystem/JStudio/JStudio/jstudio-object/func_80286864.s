lbl_80286864:
/* 80286864  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80286868  7C 08 02 A6 */	mflr r0
/* 8028686C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80286870  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80286874  93 C1 00 08 */	stw r30, 8(r1)
/* 80286878  7C 7E 1B 78 */	mr r30, r3
/* 8028687C  7C BF 2B 78 */	mr r31, r5
/* 80286880  48 00 22 41 */	bl __ct__Q37JStudio3stb7TObjectFRCQ47JStudio3stb4data20TParse_TBlock_object
/* 80286884  3C 60 80 3C */	lis r3, __vt__Q27JStudio7TObject@ha /* 0x803C55F0@ha */
/* 80286888  38 03 55 F0 */	addi r0, r3, __vt__Q27JStudio7TObject@l /* 0x803C55F0@l */
/* 8028688C  90 1E 00 08 */	stw r0, 8(r30)
/* 80286890  93 FE 00 34 */	stw r31, 0x34(r30)
/* 80286894  7F C3 F3 78 */	mr r3, r30
/* 80286898  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8028689C  83 C1 00 08 */	lwz r30, 8(r1)
/* 802868A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802868A4  7C 08 03 A6 */	mtlr r0
/* 802868A8  38 21 00 10 */	addi r1, r1, 0x10
/* 802868AC  4E 80 00 20 */	blr 
