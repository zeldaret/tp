lbl_80A3C24C:
/* 80A3C24C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A3C250  7C 08 02 A6 */	mflr r0
/* 80A3C254  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A3C258  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A3C25C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A3C260  41 82 00 1C */	beq lbl_80A3C27C
/* 80A3C264  3C A0 80 A4 */	lis r5, __vt__8cM3dGSph@ha
/* 80A3C268  38 05 31 98 */	addi r0, r5, __vt__8cM3dGSph@l
/* 80A3C26C  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80A3C270  7C 80 07 35 */	extsh. r0, r4
/* 80A3C274  40 81 00 08 */	ble lbl_80A3C27C
/* 80A3C278  4B 89 2A C4 */	b __dl__FPv
lbl_80A3C27C:
/* 80A3C27C  7F E3 FB 78 */	mr r3, r31
/* 80A3C280  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A3C284  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A3C288  7C 08 03 A6 */	mtlr r0
/* 80A3C28C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A3C290  4E 80 00 20 */	blr 
