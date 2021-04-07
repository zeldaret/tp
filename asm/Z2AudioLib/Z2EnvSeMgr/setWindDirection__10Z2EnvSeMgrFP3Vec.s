lbl_802C7FC8:
/* 802C7FC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C7FCC  7C 08 02 A6 */	mflr r0
/* 802C7FD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C7FD4  88 03 01 60 */	lbz r0, 0x160(r3)
/* 802C7FD8  28 00 00 03 */	cmplwi r0, 3
/* 802C7FDC  40 82 00 18 */	bne lbl_802C7FF4
/* 802C7FE0  38 63 01 44 */	addi r3, r3, 0x144
/* 802C7FE4  3C 80 80 3A */	lis r4, cNullVec__6Z2Calc@ha /* 0x8039C250@ha */
/* 802C7FE8  38 84 C2 50 */	addi r4, r4, cNullVec__6Z2Calc@l /* 0x8039C250@l */
/* 802C7FEC  4B FF DD 85 */	bl setPanDir__10Z2EnvSeDirFP3Vec
/* 802C7FF0  48 00 00 0C */	b lbl_802C7FFC
lbl_802C7FF4:
/* 802C7FF4  38 63 01 44 */	addi r3, r3, 0x144
/* 802C7FF8  4B FF DD 79 */	bl setPanDir__10Z2EnvSeDirFP3Vec
lbl_802C7FFC:
/* 802C7FFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C8000  7C 08 03 A6 */	mtlr r0
/* 802C8004  38 21 00 10 */	addi r1, r1, 0x10
/* 802C8008  4E 80 00 20 */	blr 
