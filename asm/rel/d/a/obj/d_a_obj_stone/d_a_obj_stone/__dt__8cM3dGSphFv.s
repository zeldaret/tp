lbl_80CE99D4:
/* 80CE99D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE99D8  7C 08 02 A6 */	mflr r0
/* 80CE99DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE99E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CE99E4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CE99E8  41 82 00 1C */	beq lbl_80CE9A04
/* 80CE99EC  3C A0 80 CF */	lis r5, __vt__8cM3dGSph@ha /* 0x80CECDC8@ha */
/* 80CE99F0  38 05 CD C8 */	addi r0, r5, __vt__8cM3dGSph@l /* 0x80CECDC8@l */
/* 80CE99F4  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80CE99F8  7C 80 07 35 */	extsh. r0, r4
/* 80CE99FC  40 81 00 08 */	ble lbl_80CE9A04
/* 80CE9A00  4B 5E 53 3D */	bl __dl__FPv
lbl_80CE9A04:
/* 80CE9A04  7F E3 FB 78 */	mr r3, r31
/* 80CE9A08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CE9A0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE9A10  7C 08 03 A6 */	mtlr r0
/* 80CE9A14  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE9A18  4E 80 00 20 */	blr 
