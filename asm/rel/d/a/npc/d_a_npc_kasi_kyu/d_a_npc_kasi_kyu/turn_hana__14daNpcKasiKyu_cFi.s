lbl_80A2484C:
/* 80A2484C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A24850  7C 08 02 A6 */	mflr r0
/* 80A24854  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A24858  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A2485C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80A24860  7C 7E 1B 78 */	mr r30, r3
/* 80A24864  3C 80 80 A2 */	lis r4, m__20daNpcKasiKyu_Param_c@ha /* 0x80A258B8@ha */
/* 80A24868  3B E4 58 B8 */	addi r31, r4, m__20daNpcKasiKyu_Param_c@l /* 0x80A258B8@l */
/* 80A2486C  A8 03 14 04 */	lha r0, 0x1404(r3)
/* 80A24870  2C 00 00 01 */	cmpwi r0, 1
/* 80A24874  41 82 00 58 */	beq lbl_80A248CC
/* 80A24878  40 80 00 A8 */	bge lbl_80A24920
/* 80A2487C  2C 00 FF FF */	cmpwi r0, -1
/* 80A24880  41 82 00 A0 */	beq lbl_80A24920
/* 80A24884  40 80 00 0C */	bge lbl_80A24890
/* 80A24888  48 00 00 98 */	b lbl_80A24920
/* 80A2488C  48 00 00 94 */	b lbl_80A24920
lbl_80A24890:
/* 80A24890  38 80 00 04 */	li r4, 4
/* 80A24894  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 80A24898  38 A0 00 00 */	li r5, 0
/* 80A2489C  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80A248A0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A248A4  7D 89 03 A6 */	mtctr r12
/* 80A248A8  4E 80 04 21 */	bctrl 
/* 80A248AC  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 80A248B0  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80A248B4  7F C3 F3 78 */	mr r3, r30
/* 80A248B8  38 80 00 00 */	li r4, 0
/* 80A248BC  4B FF EA 71 */	bl setLookMode__14daNpcKasiKyu_cFi
/* 80A248C0  38 00 00 01 */	li r0, 1
/* 80A248C4  B0 1E 14 04 */	sth r0, 0x1404(r30)
/* 80A248C8  48 00 00 58 */	b lbl_80A24920
lbl_80A248CC:
/* 80A248CC  C0 1F 02 48 */	lfs f0, 0x248(r31)
/* 80A248D0  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A248D4  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 80A248D8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A248DC  C0 1F 02 4C */	lfs f0, 0x24c(r31)
/* 80A248E0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A248E4  38 81 00 08 */	addi r4, r1, 8
/* 80A248E8  38 A0 08 00 */	li r5, 0x800
/* 80A248EC  48 00 04 25 */	bl _turn_pos__14daNpcKasiKyu_cFRC4cXyzs
/* 80A248F0  2C 03 00 00 */	cmpwi r3, 0
/* 80A248F4  41 82 00 2C */	beq lbl_80A24920
/* 80A248F8  7F C3 F3 78 */	mr r3, r30
/* 80A248FC  38 80 00 0C */	li r4, 0xc
/* 80A24900  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 80A24904  38 A0 00 00 */	li r5, 0
/* 80A24908  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80A2490C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A24910  7D 89 03 A6 */	mtctr r12
/* 80A24914  4E 80 04 21 */	bctrl 
/* 80A24918  38 00 00 02 */	li r0, 2
/* 80A2491C  B0 1E 14 04 */	sth r0, 0x1404(r30)
lbl_80A24920:
/* 80A24920  38 60 00 01 */	li r3, 1
/* 80A24924  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A24928  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80A2492C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A24930  7C 08 03 A6 */	mtlr r0
/* 80A24934  38 21 00 20 */	addi r1, r1, 0x20
/* 80A24938  4E 80 00 20 */	blr 
