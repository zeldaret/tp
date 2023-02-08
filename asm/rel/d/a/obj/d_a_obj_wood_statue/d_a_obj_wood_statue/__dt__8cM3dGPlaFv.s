lbl_80D3A134:
/* 80D3A134  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3A138  7C 08 02 A6 */	mflr r0
/* 80D3A13C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3A140  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D3A144  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D3A148  41 82 00 1C */	beq lbl_80D3A164
/* 80D3A14C  3C A0 80 D4 */	lis r5, __vt__8cM3dGPla@ha /* 0x80D3B8E4@ha */
/* 80D3A150  38 05 B8 E4 */	addi r0, r5, __vt__8cM3dGPla@l /* 0x80D3B8E4@l */
/* 80D3A154  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80D3A158  7C 80 07 35 */	extsh. r0, r4
/* 80D3A15C  40 81 00 08 */	ble lbl_80D3A164
/* 80D3A160  4B 59 4B DD */	bl __dl__FPv
lbl_80D3A164:
/* 80D3A164  7F E3 FB 78 */	mr r3, r31
/* 80D3A168  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D3A16C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3A170  7C 08 03 A6 */	mtlr r0
/* 80D3A174  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3A178  4E 80 00 20 */	blr 
