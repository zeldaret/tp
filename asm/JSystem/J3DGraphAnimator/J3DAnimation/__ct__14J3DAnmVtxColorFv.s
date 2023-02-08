lbl_8032A29C:
/* 8032A29C  3C 80 80 3A */	lis r4, __vt__10J3DAnmBase@ha /* 0x803A7C38@ha */
/* 8032A2A0  38 04 7C 38 */	addi r0, r4, __vt__10J3DAnmBase@l /* 0x803A7C38@l */
/* 8032A2A4  90 03 00 00 */	stw r0, 0(r3)
/* 8032A2A8  38 A0 00 00 */	li r5, 0
/* 8032A2AC  98 A3 00 04 */	stb r5, 4(r3)
/* 8032A2B0  98 A3 00 05 */	stb r5, 5(r3)
/* 8032A2B4  B0 A3 00 06 */	sth r5, 6(r3)
/* 8032A2B8  C0 02 CA 34 */	lfs f0, lit_853(r2)
/* 8032A2BC  D0 03 00 08 */	stfs f0, 8(r3)
/* 8032A2C0  3C 80 80 3D */	lis r4, __vt__14J3DAnmVtxColor@ha /* 0x803CEDD4@ha */
/* 8032A2C4  38 04 ED D4 */	addi r0, r4, __vt__14J3DAnmVtxColor@l /* 0x803CEDD4@l */
/* 8032A2C8  90 03 00 00 */	stw r0, 0(r3)
/* 8032A2CC  7C A4 2B 78 */	mr r4, r5
/* 8032A2D0  38 00 00 02 */	li r0, 2
/* 8032A2D4  7C 09 03 A6 */	mtctr r0
lbl_8032A2D8:
/* 8032A2D8  38 04 00 0C */	addi r0, r4, 0xc
/* 8032A2DC  7C A3 03 2E */	sthx r5, r3, r0
/* 8032A2E0  38 84 00 02 */	addi r4, r4, 2
/* 8032A2E4  42 00 FF F4 */	bdnz lbl_8032A2D8
/* 8032A2E8  38 80 00 00 */	li r4, 0
/* 8032A2EC  38 A0 00 00 */	li r5, 0
/* 8032A2F0  38 00 00 02 */	li r0, 2
/* 8032A2F4  7C 09 03 A6 */	mtctr r0
lbl_8032A2F8:
/* 8032A2F8  38 04 00 10 */	addi r0, r4, 0x10
/* 8032A2FC  7C A3 01 2E */	stwx r5, r3, r0
/* 8032A300  38 84 00 04 */	addi r4, r4, 4
/* 8032A304  42 00 FF F4 */	bdnz lbl_8032A2F8
/* 8032A308  4E 80 00 20 */	blr 
