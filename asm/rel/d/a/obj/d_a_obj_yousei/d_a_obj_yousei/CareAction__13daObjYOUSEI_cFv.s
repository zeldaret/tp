lbl_804D0780:
/* 804D0780  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D0784  7C 08 02 A6 */	mflr r0
/* 804D0788  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D078C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 804D0790  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 804D0794  80 84 5D B4 */	lwz r4, 0x5db4(r4)
/* 804D0798  80 04 05 74 */	lwz r0, 0x574(r4)
/* 804D079C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 804D07A0  41 82 00 14 */	beq lbl_804D07B4
/* 804D07A4  3C 80 80 4D */	lis r4, lit_4462@ha
/* 804D07A8  C0 04 17 10 */	lfs f0, lit_4462@l(r4)
/* 804D07AC  D0 03 05 E8 */	stfs f0, 0x5e8(r3)
/* 804D07B0  48 00 00 10 */	b lbl_804D07C0
lbl_804D07B4:
/* 804D07B4  3C 80 80 4D */	lis r4, lit_3791@ha
/* 804D07B8  C0 04 16 40 */	lfs f0, lit_3791@l(r4)
/* 804D07BC  D0 03 05 E8 */	stfs f0, 0x5e8(r3)
lbl_804D07C0:
/* 804D07C0  38 80 00 01 */	li r4, 1
/* 804D07C4  B0 83 05 CA */	sth r4, 0x5ca(r3)
/* 804D07C8  38 00 00 00 */	li r0, 0
/* 804D07CC  B0 03 05 CC */	sth r0, 0x5cc(r3)
/* 804D07D0  98 83 05 AE */	stb r4, 0x5ae(r3)
/* 804D07D4  3C 80 00 06 */	lis r4, 0x0006 /* 0x000600D8@ha */
/* 804D07D8  38 04 00 D8 */	addi r0, r4, 0x00D8 /* 0x000600D8@l */
/* 804D07DC  90 01 00 08 */	stw r0, 8(r1)
/* 804D07E0  38 81 00 08 */	addi r4, r1, 8
/* 804D07E4  38 A0 00 00 */	li r5, 0
/* 804D07E8  38 C0 FF FF */	li r6, -1
/* 804D07EC  85 83 06 1C */	lwzu r12, 0x61c(r3)
/* 804D07F0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 804D07F4  7D 89 03 A6 */	mtctr r12
/* 804D07F8  4E 80 04 21 */	bctrl 
/* 804D07FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D0800  7C 08 03 A6 */	mtlr r0
/* 804D0804  38 21 00 10 */	addi r1, r1, 0x10
/* 804D0808  4E 80 00 20 */	blr 
