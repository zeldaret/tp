lbl_80CA2FDC:
/* 80CA2FDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA2FE0  7C 08 02 A6 */	mflr r0
/* 80CA2FE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA2FE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA2FEC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CA2FF0  41 82 00 1C */	beq lbl_80CA300C
/* 80CA2FF4  3C A0 80 CA */	lis r5, __vt__8cM3dGSph@ha /* 0x80CA3444@ha */
/* 80CA2FF8  38 05 34 44 */	addi r0, r5, __vt__8cM3dGSph@l /* 0x80CA3444@l */
/* 80CA2FFC  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80CA3000  7C 80 07 35 */	extsh. r0, r4
/* 80CA3004  40 81 00 08 */	ble lbl_80CA300C
/* 80CA3008  4B 62 BD 35 */	bl __dl__FPv
lbl_80CA300C:
/* 80CA300C  7F E3 FB 78 */	mr r3, r31
/* 80CA3010  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA3014  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA3018  7C 08 03 A6 */	mtlr r0
/* 80CA301C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA3020  4E 80 00 20 */	blr 
