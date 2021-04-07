lbl_80C35B9C:
/* 80C35B9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C35BA0  7C 08 02 A6 */	mflr r0
/* 80C35BA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C35BA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C35BAC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C35BB0  41 82 00 1C */	beq lbl_80C35BCC
/* 80C35BB4  3C A0 80 C4 */	lis r5, __vt__8cM3dGPla@ha /* 0x80C385A4@ha */
/* 80C35BB8  38 05 85 A4 */	addi r0, r5, __vt__8cM3dGPla@l /* 0x80C385A4@l */
/* 80C35BBC  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80C35BC0  7C 80 07 35 */	extsh. r0, r4
/* 80C35BC4  40 81 00 08 */	ble lbl_80C35BCC
/* 80C35BC8  4B 69 91 75 */	bl __dl__FPv
lbl_80C35BCC:
/* 80C35BCC  7F E3 FB 78 */	mr r3, r31
/* 80C35BD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C35BD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C35BD8  7C 08 03 A6 */	mtlr r0
/* 80C35BDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C35BE0  4E 80 00 20 */	blr 
