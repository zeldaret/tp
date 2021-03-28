lbl_80CA39F4:
/* 80CA39F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA39F8  7C 08 02 A6 */	mflr r0
/* 80CA39FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA3A00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA3A04  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CA3A08  41 82 00 1C */	beq lbl_80CA3A24
/* 80CA3A0C  3C A0 80 CA */	lis r5, __vt__8cM3dGAab@ha
/* 80CA3A10  38 05 3B 14 */	addi r0, r5, __vt__8cM3dGAab@l
/* 80CA3A14  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80CA3A18  7C 80 07 35 */	extsh. r0, r4
/* 80CA3A1C  40 81 00 08 */	ble lbl_80CA3A24
/* 80CA3A20  4B 62 B3 1C */	b __dl__FPv
lbl_80CA3A24:
/* 80CA3A24  7F E3 FB 78 */	mr r3, r31
/* 80CA3A28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA3A2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA3A30  7C 08 03 A6 */	mtlr r0
/* 80CA3A34  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA3A38  4E 80 00 20 */	blr 
