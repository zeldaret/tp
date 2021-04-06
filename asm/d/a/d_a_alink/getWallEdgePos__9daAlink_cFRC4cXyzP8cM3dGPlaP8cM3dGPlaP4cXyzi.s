lbl_800B01FC:
/* 800B01FC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 800B0200  7C 08 02 A6 */	mflr r0
/* 800B0204  90 01 00 54 */	stw r0, 0x54(r1)
/* 800B0208  39 61 00 50 */	addi r11, r1, 0x50
/* 800B020C  48 2B 1F CD */	bl _savegpr_28
/* 800B0210  7C 9C 23 78 */	mr r28, r4
/* 800B0214  7C BD 2B 78 */	mr r29, r5
/* 800B0218  7C DE 33 78 */	mr r30, r6
/* 800B021C  7C FF 3B 78 */	mr r31, r7
/* 800B0220  C0 05 00 00 */	lfs f0, 0(r5)
/* 800B0224  FC 20 00 50 */	fneg f1, f0
/* 800B0228  C0 05 00 08 */	lfs f0, 8(r5)
/* 800B022C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 800B0230  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800B0234  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 800B0238  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 800B023C  38 61 00 08 */	addi r3, r1, 8
/* 800B0240  38 81 00 14 */	addi r4, r1, 0x14
/* 800B0244  48 1B 6D 05 */	bl normalizeZP__4cXyzFv
/* 800B0248  38 61 00 20 */	addi r3, r1, 0x20
/* 800B024C  38 81 00 14 */	addi r4, r1, 0x14
/* 800B0250  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 800B0254  C0 1C 00 08 */	lfs f0, 8(r28)
/* 800B0258  EC 61 00 32 */	fmuls f3, f1, f0
/* 800B025C  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 800B0260  C0 1C 00 00 */	lfs f0, 0(r28)
/* 800B0264  EC 41 00 32 */	fmuls f2, f1, f0
/* 800B0268  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 800B026C  C0 1C 00 04 */	lfs f0, 4(r28)
/* 800B0270  EC 01 00 32 */	fmuls f0, f1, f0
/* 800B0274  EC 02 00 2A */	fadds f0, f2, f0
/* 800B0278  EC 03 00 2A */	fadds f0, f3, f0
/* 800B027C  FC 20 00 50 */	fneg f1, f0
/* 800B0280  48 1B F1 5D */	bl __ct__8cM3dGPlaFPC4cXyzf
/* 800B0284  7F A3 EB 78 */	mr r3, r29
/* 800B0288  7F C4 F3 78 */	mr r4, r30
/* 800B028C  38 A1 00 20 */	addi r5, r1, 0x20
/* 800B0290  7F E6 FB 78 */	mr r6, r31
/* 800B0294  48 1B E6 0D */	bl cM3d_3PlaneCrossPos__FRC8cM3dGPlaRC8cM3dGPlaRC8cM3dGPlaP3Vec
/* 800B0298  3C 80 80 3A */	lis r4, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 800B029C  38 04 37 C0 */	addi r0, r4, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 800B02A0  90 01 00 30 */	stw r0, 0x30(r1)
/* 800B02A4  39 61 00 50 */	addi r11, r1, 0x50
/* 800B02A8  48 2B 1F 7D */	bl _restgpr_28
/* 800B02AC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 800B02B0  7C 08 03 A6 */	mtlr r0
/* 800B02B4  38 21 00 50 */	addi r1, r1, 0x50
/* 800B02B8  4E 80 00 20 */	blr 
