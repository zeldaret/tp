lbl_80803C0C:
/* 80803C0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80803C10  7C 08 02 A6 */	mflr r0
/* 80803C14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80803C18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80803C1C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80803C20  41 82 00 1C */	beq lbl_80803C3C
/* 80803C24  3C A0 80 80 */	lis r5, __vt__8cM3dGSph@ha
/* 80803C28  38 05 46 CC */	addi r0, r5, __vt__8cM3dGSph@l
/* 80803C2C  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80803C30  7C 80 07 35 */	extsh. r0, r4
/* 80803C34  40 81 00 08 */	ble lbl_80803C3C
/* 80803C38  4B AC B1 04 */	b __dl__FPv
lbl_80803C3C:
/* 80803C3C  7F E3 FB 78 */	mr r3, r31
/* 80803C40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80803C44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80803C48  7C 08 03 A6 */	mtlr r0
/* 80803C4C  38 21 00 10 */	addi r1, r1, 0x10
/* 80803C50  4E 80 00 20 */	blr 
