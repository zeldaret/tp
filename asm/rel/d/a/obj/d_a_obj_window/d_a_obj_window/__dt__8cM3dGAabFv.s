lbl_80D39170:
/* 80D39170  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D39174  7C 08 02 A6 */	mflr r0
/* 80D39178  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3917C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D39180  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D39184  41 82 00 1C */	beq lbl_80D391A0
/* 80D39188  3C A0 80 D4 */	lis r5, __vt__8cM3dGAab@ha /* 0x80D39328@ha */
/* 80D3918C  38 05 93 28 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80D39328@l */
/* 80D39190  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80D39194  7C 80 07 35 */	extsh. r0, r4
/* 80D39198  40 81 00 08 */	ble lbl_80D391A0
/* 80D3919C  4B 59 5B A1 */	bl __dl__FPv
lbl_80D391A0:
/* 80D391A0  7F E3 FB 78 */	mr r3, r31
/* 80D391A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D391A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D391AC  7C 08 03 A6 */	mtlr r0
/* 80D391B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D391B4  4E 80 00 20 */	blr 
