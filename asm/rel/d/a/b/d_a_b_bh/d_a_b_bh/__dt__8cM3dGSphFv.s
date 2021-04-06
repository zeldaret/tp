lbl_805B2FC4:
/* 805B2FC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B2FC8  7C 08 02 A6 */	mflr r0
/* 805B2FCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B2FD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805B2FD4  7C 7F 1B 79 */	or. r31, r3, r3
/* 805B2FD8  41 82 00 1C */	beq lbl_805B2FF4
/* 805B2FDC  3C A0 80 5B */	lis r5, __vt__8cM3dGSph@ha /* 0x805B3380@ha */
/* 805B2FE0  38 05 33 80 */	addi r0, r5, __vt__8cM3dGSph@l /* 0x805B3380@l */
/* 805B2FE4  90 1F 00 10 */	stw r0, 0x10(r31)
/* 805B2FE8  7C 80 07 35 */	extsh. r0, r4
/* 805B2FEC  40 81 00 08 */	ble lbl_805B2FF4
/* 805B2FF0  4B D1 BD 4D */	bl __dl__FPv
lbl_805B2FF4:
/* 805B2FF4  7F E3 FB 78 */	mr r3, r31
/* 805B2FF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805B2FFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B3000  7C 08 03 A6 */	mtlr r0
/* 805B3004  38 21 00 10 */	addi r1, r1, 0x10
/* 805B3008  4E 80 00 20 */	blr 
