lbl_80BD49EC:
/* 80BD49EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD49F0  7C 08 02 A6 */	mflr r0
/* 80BD49F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD49F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BD49FC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BD4A00  41 82 00 1C */	beq lbl_80BD4A1C
/* 80BD4A04  3C A0 80 BD */	lis r5, __vt__8cM3dGCyl@ha
/* 80BD4A08  38 05 4E 18 */	addi r0, r5, __vt__8cM3dGCyl@l
/* 80BD4A0C  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80BD4A10  7C 80 07 35 */	extsh. r0, r4
/* 80BD4A14  40 81 00 08 */	ble lbl_80BD4A1C
/* 80BD4A18  4B 6F A3 24 */	b __dl__FPv
lbl_80BD4A1C:
/* 80BD4A1C  7F E3 FB 78 */	mr r3, r31
/* 80BD4A20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BD4A24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD4A28  7C 08 03 A6 */	mtlr r0
/* 80BD4A2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD4A30  4E 80 00 20 */	blr 
