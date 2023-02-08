lbl_80CC3A14:
/* 80CC3A14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC3A18  7C 08 02 A6 */	mflr r0
/* 80CC3A1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC3A20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC3A24  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CC3A28  41 82 00 1C */	beq lbl_80CC3A44
/* 80CC3A2C  3C A0 80 CC */	lis r5, __vt__8cM3dGSph@ha /* 0x80CC3C48@ha */
/* 80CC3A30  38 05 3C 48 */	addi r0, r5, __vt__8cM3dGSph@l /* 0x80CC3C48@l */
/* 80CC3A34  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80CC3A38  7C 80 07 35 */	extsh. r0, r4
/* 80CC3A3C  40 81 00 08 */	ble lbl_80CC3A44
/* 80CC3A40  4B 60 B2 FD */	bl __dl__FPv
lbl_80CC3A44:
/* 80CC3A44  7F E3 FB 78 */	mr r3, r31
/* 80CC3A48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC3A4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC3A50  7C 08 03 A6 */	mtlr r0
/* 80CC3A54  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC3A58  4E 80 00 20 */	blr 
