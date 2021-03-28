lbl_80C29B0C:
/* 80C29B0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C29B10  7C 08 02 A6 */	mflr r0
/* 80C29B14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C29B18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C29B1C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C29B20  41 82 00 1C */	beq lbl_80C29B3C
/* 80C29B24  3C A0 80 C3 */	lis r5, __vt__8cM3dGSph@ha
/* 80C29B28  38 05 AD 1C */	addi r0, r5, __vt__8cM3dGSph@l
/* 80C29B2C  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80C29B30  7C 80 07 35 */	extsh. r0, r4
/* 80C29B34  40 81 00 08 */	ble lbl_80C29B3C
/* 80C29B38  4B 6A 52 04 */	b __dl__FPv
lbl_80C29B3C:
/* 80C29B3C  7F E3 FB 78 */	mr r3, r31
/* 80C29B40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C29B44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C29B48  7C 08 03 A6 */	mtlr r0
/* 80C29B4C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C29B50  4E 80 00 20 */	blr 
