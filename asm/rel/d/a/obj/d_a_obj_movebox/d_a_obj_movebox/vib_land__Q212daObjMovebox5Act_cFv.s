lbl_804801A8:
/* 804801A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804801AC  7C 08 02 A6 */	mflr r0
/* 804801B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804801B4  3C 60 80 48 */	lis r3, lit_3687@ha /* 0x804810E8@ha */
/* 804801B8  C0 23 10 E8 */	lfs f1, lit_3687@l(r3)  /* 0x804810E8@l */
/* 804801BC  D0 21 00 08 */	stfs f1, 8(r1)
/* 804801C0  3C 60 80 48 */	lis r3, lit_3902@ha /* 0x804810FC@ha */
/* 804801C4  C0 03 10 FC */	lfs f0, lit_3902@l(r3)  /* 0x804810FC@l */
/* 804801C8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 804801CC  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 804801D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804801D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804801D8  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 804801DC  38 80 00 04 */	li r4, 4
/* 804801E0  38 A0 00 1F */	li r5, 0x1f
/* 804801E4  38 C1 00 08 */	addi r6, r1, 8
/* 804801E8  4B BE F8 3D */	bl StartShock__12dVibration_cFii4cXyz
/* 804801EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804801F0  7C 08 03 A6 */	mtlr r0
/* 804801F4  38 21 00 20 */	addi r1, r1, 0x20
/* 804801F8  4E 80 00 20 */	blr 
