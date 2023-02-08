lbl_80C26CD8:
/* 80C26CD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C26CDC  7C 08 02 A6 */	mflr r0
/* 80C26CE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C26CE4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C26CE8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C26CEC  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80C26CF0  88 04 05 D6 */	lbz r0, 0x5d6(r4)
/* 80C26CF4  28 00 00 00 */	cmplwi r0, 0
/* 80C26CF8  40 82 00 2C */	bne lbl_80C26D24
/* 80C26CFC  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 80C26D00  C0 03 04 C0 */	lfs f0, 0x4c0(r3)
/* 80C26D04  EC 21 00 28 */	fsubs f1, f1, f0
/* 80C26D08  3C 60 80 C2 */	lis r3, lit_3767@ha /* 0x80C27528@ha */
/* 80C26D0C  C0 03 75 28 */	lfs f0, lit_3767@l(r3)  /* 0x80C27528@l */
/* 80C26D10  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C26D14  40 80 00 10 */	bge lbl_80C26D24
/* 80C26D18  3C 60 80 C2 */	lis r3, lit_3768@ha /* 0x80C2752C@ha */
/* 80C26D1C  C0 03 75 2C */	lfs f0, lit_3768@l(r3)  /* 0x80C2752C@l */
/* 80C26D20  D0 04 05 A4 */	stfs f0, 0x5a4(r4)
lbl_80C26D24:
/* 80C26D24  7C 83 23 78 */	mr r3, r4
/* 80C26D28  4B FF FC F9 */	bl Check_RideOn__12daObjIkada_cFv
/* 80C26D2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C26D30  7C 08 03 A6 */	mtlr r0
/* 80C26D34  38 21 00 10 */	addi r1, r1, 0x10
/* 80C26D38  4E 80 00 20 */	blr 
