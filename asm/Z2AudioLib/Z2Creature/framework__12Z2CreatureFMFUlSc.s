lbl_802C20E8:
/* 802C20E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802C20EC  7C 08 02 A6 */	mflr r0
/* 802C20F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802C20F4  39 61 00 20 */	addi r11, r1, 0x20
/* 802C20F8  48 0A 00 E5 */	bl _savegpr_29
/* 802C20FC  7C 7D 1B 78 */	mr r29, r3
/* 802C2100  7C 9E 23 78 */	mr r30, r4
/* 802C2104  7C BF 2B 78 */	mr r31, r5
/* 802C2108  4B FF E5 45 */	bl framework__10Z2CreatureFUlSc
/* 802C210C  38 7D 00 A4 */	addi r3, r29, 0xa4
/* 802C2110  7F C4 F3 78 */	mr r4, r30
/* 802C2114  7F E5 FB 78 */	mr r5, r31
/* 802C2118  81 9D 00 B4 */	lwz r12, 0xb4(r29)
/* 802C211C  81 8C 00 08 */	lwz r12, 8(r12)
/* 802C2120  7D 89 03 A6 */	mtctr r12
/* 802C2124  4E 80 04 21 */	bctrl 
/* 802C2128  38 7D 00 C4 */	addi r3, r29, 0xc4
/* 802C212C  7F C4 F3 78 */	mr r4, r30
/* 802C2130  7F E5 FB 78 */	mr r5, r31
/* 802C2134  81 9D 00 D4 */	lwz r12, 0xd4(r29)
/* 802C2138  81 8C 00 08 */	lwz r12, 8(r12)
/* 802C213C  7D 89 03 A6 */	mtctr r12
/* 802C2140  4E 80 04 21 */	bctrl 
/* 802C2144  38 7D 00 E4 */	addi r3, r29, 0xe4
/* 802C2148  7F C4 F3 78 */	mr r4, r30
/* 802C214C  7F E5 FB 78 */	mr r5, r31
/* 802C2150  81 9D 00 F4 */	lwz r12, 0xf4(r29)
/* 802C2154  81 8C 00 08 */	lwz r12, 8(r12)
/* 802C2158  7D 89 03 A6 */	mtctr r12
/* 802C215C  4E 80 04 21 */	bctrl 
/* 802C2160  38 7D 01 04 */	addi r3, r29, 0x104
/* 802C2164  7F C4 F3 78 */	mr r4, r30
/* 802C2168  7F E5 FB 78 */	mr r5, r31
/* 802C216C  81 9D 01 14 */	lwz r12, 0x114(r29)
/* 802C2170  81 8C 00 08 */	lwz r12, 8(r12)
/* 802C2174  7D 89 03 A6 */	mtctr r12
/* 802C2178  4E 80 04 21 */	bctrl 
/* 802C217C  39 61 00 20 */	addi r11, r1, 0x20
/* 802C2180  48 0A 00 A9 */	bl _restgpr_29
/* 802C2184  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802C2188  7C 08 03 A6 */	mtlr r0
/* 802C218C  38 21 00 20 */	addi r1, r1, 0x20
/* 802C2190  4E 80 00 20 */	blr 
