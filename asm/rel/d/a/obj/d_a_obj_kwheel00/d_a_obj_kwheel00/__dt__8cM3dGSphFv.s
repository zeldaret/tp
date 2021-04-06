lbl_80C4E4E4:
/* 80C4E4E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C4E4E8  7C 08 02 A6 */	mflr r0
/* 80C4E4EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C4E4F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C4E4F4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C4E4F8  41 82 00 1C */	beq lbl_80C4E514
/* 80C4E4FC  3C A0 80 C5 */	lis r5, __vt__8cM3dGSph@ha /* 0x80C4E994@ha */
/* 80C4E500  38 05 E9 94 */	addi r0, r5, __vt__8cM3dGSph@l /* 0x80C4E994@l */
/* 80C4E504  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80C4E508  7C 80 07 35 */	extsh. r0, r4
/* 80C4E50C  40 81 00 08 */	ble lbl_80C4E514
/* 80C4E510  4B 68 08 2D */	bl __dl__FPv
lbl_80C4E514:
/* 80C4E514  7F E3 FB 78 */	mr r3, r31
/* 80C4E518  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C4E51C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C4E520  7C 08 03 A6 */	mtlr r0
/* 80C4E524  38 21 00 10 */	addi r1, r1, 0x10
/* 80C4E528  4E 80 00 20 */	blr 
