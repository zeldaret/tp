lbl_80CC8378:
/* 80CC8378  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CC837C  7C 08 02 A6 */	mflr r0
/* 80CC8380  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CC8384  3C 60 80 CD */	lis r3, lit_3994@ha
/* 80CC8388  C0 23 91 AC */	lfs f1, lit_3994@l(r3)
/* 80CC838C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80CC8390  3C 60 80 CD */	lis r3, lit_4114@ha
/* 80CC8394  C0 03 91 B8 */	lfs f0, lit_4114@l(r3)
/* 80CC8398  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80CC839C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80CC83A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CC83A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CC83A8  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80CC83AC  38 80 00 03 */	li r4, 3
/* 80CC83B0  38 A0 00 1F */	li r5, 0x1f
/* 80CC83B4  38 C1 00 08 */	addi r6, r1, 8
/* 80CC83B8  4B 3A 77 58 */	b StartQuake__12dVibration_cFii4cXyz
/* 80CC83BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CC83C0  7C 08 03 A6 */	mtlr r0
/* 80CC83C4  38 21 00 20 */	addi r1, r1, 0x20
/* 80CC83C8  4E 80 00 20 */	blr 
