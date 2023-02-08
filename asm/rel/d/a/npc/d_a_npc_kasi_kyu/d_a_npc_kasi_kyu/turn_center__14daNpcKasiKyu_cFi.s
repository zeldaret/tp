lbl_80A24370:
/* 80A24370  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A24374  7C 08 02 A6 */	mflr r0
/* 80A24378  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A2437C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A24380  7C 7F 1B 78 */	mr r31, r3
/* 80A24384  A8 03 14 04 */	lha r0, 0x1404(r3)
/* 80A24388  2C 00 00 00 */	cmpwi r0, 0
/* 80A2438C  41 82 00 18 */	beq lbl_80A243A4
/* 80A24390  40 80 00 08 */	bge lbl_80A24398
/* 80A24394  48 00 00 94 */	b lbl_80A24428
lbl_80A24398:
/* 80A24398  2C 00 00 02 */	cmpwi r0, 2
/* 80A2439C  40 80 00 8C */	bge lbl_80A24428
/* 80A243A0  48 00 00 48 */	b lbl_80A243E8
lbl_80A243A4:
/* 80A243A4  38 80 00 00 */	li r4, 0
/* 80A243A8  4B FF EF 85 */	bl setLookMode__14daNpcKasiKyu_cFi
/* 80A243AC  7F E3 FB 78 */	mr r3, r31
/* 80A243B0  38 80 00 04 */	li r4, 4
/* 80A243B4  3C A0 80 A2 */	lis r5, lit_4249@ha /* 0x80A25944@ha */
/* 80A243B8  C0 25 59 44 */	lfs f1, lit_4249@l(r5)  /* 0x80A25944@l */
/* 80A243BC  38 A0 00 00 */	li r5, 0
/* 80A243C0  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80A243C4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A243C8  7D 89 03 A6 */	mtctr r12
/* 80A243CC  4E 80 04 21 */	bctrl 
/* 80A243D0  3C 60 80 A2 */	lis r3, lit_4449@ha /* 0x80A2595C@ha */
/* 80A243D4  C0 03 59 5C */	lfs f0, lit_4449@l(r3)  /* 0x80A2595C@l */
/* 80A243D8  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80A243DC  38 00 00 01 */	li r0, 1
/* 80A243E0  B0 1F 14 04 */	sth r0, 0x1404(r31)
/* 80A243E4  48 00 00 44 */	b lbl_80A24428
lbl_80A243E8:
/* 80A243E8  38 9F 14 50 */	addi r4, r31, 0x1450
/* 80A243EC  38 A0 10 00 */	li r5, 0x1000
/* 80A243F0  48 00 09 21 */	bl _turn_pos__14daNpcKasiKyu_cFRC4cXyzs
/* 80A243F4  2C 03 00 00 */	cmpwi r3, 0
/* 80A243F8  41 82 00 30 */	beq lbl_80A24428
/* 80A243FC  3C 60 80 A2 */	lis r3, lit_5148@ha /* 0x80A25E94@ha */
/* 80A24400  38 83 5E 94 */	addi r4, r3, lit_5148@l /* 0x80A25E94@l */
/* 80A24404  80 64 00 00 */	lwz r3, 0(r4)
/* 80A24408  80 04 00 04 */	lwz r0, 4(r4)
/* 80A2440C  90 61 00 08 */	stw r3, 8(r1)
/* 80A24410  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A24414  80 04 00 08 */	lwz r0, 8(r4)
/* 80A24418  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A2441C  7F E3 FB 78 */	mr r3, r31
/* 80A24420  38 81 00 08 */	addi r4, r1, 8
/* 80A24424  4B FF EE 61 */	bl setAction__14daNpcKasiKyu_cFM14daNpcKasiKyu_cFPCvPvi_i
lbl_80A24428:
/* 80A24428  38 60 00 01 */	li r3, 1
/* 80A2442C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A24430  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A24434  7C 08 03 A6 */	mtlr r0
/* 80A24438  38 21 00 20 */	addi r1, r1, 0x20
/* 80A2443C  4E 80 00 20 */	blr 
