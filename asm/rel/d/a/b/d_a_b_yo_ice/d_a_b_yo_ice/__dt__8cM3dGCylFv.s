lbl_8063DA7C:
/* 8063DA7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063DA80  7C 08 02 A6 */	mflr r0
/* 8063DA84  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063DA88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8063DA8C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8063DA90  41 82 00 1C */	beq lbl_8063DAAC
/* 8063DA94  3C A0 80 64 */	lis r5, __vt__8cM3dGCyl@ha
/* 8063DA98  38 05 DF B8 */	addi r0, r5, __vt__8cM3dGCyl@l
/* 8063DA9C  90 1F 00 14 */	stw r0, 0x14(r31)
/* 8063DAA0  7C 80 07 35 */	extsh. r0, r4
/* 8063DAA4  40 81 00 08 */	ble lbl_8063DAAC
/* 8063DAA8  4B C9 12 94 */	b __dl__FPv
lbl_8063DAAC:
/* 8063DAAC  7F E3 FB 78 */	mr r3, r31
/* 8063DAB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8063DAB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063DAB8  7C 08 03 A6 */	mtlr r0
/* 8063DABC  38 21 00 10 */	addi r1, r1, 0x10
/* 8063DAC0  4E 80 00 20 */	blr 
