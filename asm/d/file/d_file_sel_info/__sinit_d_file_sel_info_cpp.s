lbl_80192E88:
/* 80192E88  3C 60 80 3C */	lis r3, cNullVec__6Z2Calc@ha /* 0x803BB498@ha */
/* 80192E8C  38 A3 B4 98 */	addi r5, r3, cNullVec__6Z2Calc@l /* 0x803BB498@l */
/* 80192E90  80 65 00 C0 */	lwz r3, 0xc0(r5)
/* 80192E94  80 05 00 C4 */	lwz r0, 0xc4(r5)
/* 80192E98  90 65 00 D8 */	stw r3, 0xd8(r5)
/* 80192E9C  90 05 00 DC */	stw r0, 0xdc(r5)
/* 80192EA0  80 05 00 C8 */	lwz r0, 0xc8(r5)
/* 80192EA4  90 05 00 E0 */	stw r0, 0xe0(r5)
/* 80192EA8  38 85 00 D8 */	addi r4, r5, 0xd8
/* 80192EAC  80 65 00 CC */	lwz r3, 0xcc(r5)
/* 80192EB0  80 05 00 D0 */	lwz r0, 0xd0(r5)
/* 80192EB4  90 64 00 0C */	stw r3, 0xc(r4)
/* 80192EB8  90 04 00 10 */	stw r0, 0x10(r4)
/* 80192EBC  80 05 00 D4 */	lwz r0, 0xd4(r5)
/* 80192EC0  90 04 00 14 */	stw r0, 0x14(r4)
/* 80192EC4  4E 80 00 20 */	blr 
