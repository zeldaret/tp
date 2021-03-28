lbl_80A1E4AC:
/* 80A1E4AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A1E4B0  7C 08 02 A6 */	mflr r0
/* 80A1E4B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A1E4B8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A1E4BC  7C 7F 1B 78 */	mr r31, r3
/* 80A1E4C0  A8 03 14 06 */	lha r0, 0x1406(r3)
/* 80A1E4C4  2C 00 00 00 */	cmpwi r0, 0
/* 80A1E4C8  41 82 00 18 */	beq lbl_80A1E4E0
/* 80A1E4CC  40 80 00 08 */	bge lbl_80A1E4D4
/* 80A1E4D0  48 00 00 90 */	b lbl_80A1E560
lbl_80A1E4D4:
/* 80A1E4D4  2C 00 00 02 */	cmpwi r0, 2
/* 80A1E4D8  40 80 00 88 */	bge lbl_80A1E560
/* 80A1E4DC  48 00 00 48 */	b lbl_80A1E524
lbl_80A1E4E0:
/* 80A1E4E0  38 80 00 04 */	li r4, 4
/* 80A1E4E4  3C A0 80 A2 */	lis r5, lit_3998@ha
/* 80A1E4E8  C0 25 10 90 */	lfs f1, lit_3998@l(r5)
/* 80A1E4EC  38 A0 00 00 */	li r5, 0
/* 80A1E4F0  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80A1E4F4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A1E4F8  7D 89 03 A6 */	mtctr r12
/* 80A1E4FC  4E 80 04 21 */	bctrl 
/* 80A1E500  3C 60 80 A2 */	lis r3, lit_3908@ha
/* 80A1E504  C0 03 10 80 */	lfs f0, lit_3908@l(r3)
/* 80A1E508  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80A1E50C  80 1F 14 68 */	lwz r0, 0x1468(r31)
/* 80A1E510  60 00 00 04 */	ori r0, r0, 4
/* 80A1E514  90 1F 14 68 */	stw r0, 0x1468(r31)
/* 80A1E518  38 00 00 01 */	li r0, 1
/* 80A1E51C  B0 1F 14 06 */	sth r0, 0x1406(r31)
/* 80A1E520  48 00 00 40 */	b lbl_80A1E560
lbl_80A1E524:
/* 80A1E524  38 80 10 00 */	li r4, 0x1000
/* 80A1E528  48 00 0C 71 */	bl _turn_to_link__15daNpcKasiHana_cFs
/* 80A1E52C  2C 03 00 00 */	cmpwi r3, 0
/* 80A1E530  41 82 00 30 */	beq lbl_80A1E560
/* 80A1E534  3C 60 80 A2 */	lis r3, lit_5577@ha
/* 80A1E538  38 83 16 38 */	addi r4, r3, lit_5577@l
/* 80A1E53C  80 64 00 00 */	lwz r3, 0(r4)
/* 80A1E540  80 04 00 04 */	lwz r0, 4(r4)
/* 80A1E544  90 61 00 08 */	stw r3, 8(r1)
/* 80A1E548  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A1E54C  80 04 00 08 */	lwz r0, 8(r4)
/* 80A1E550  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A1E554  7F E3 FB 78 */	mr r3, r31
/* 80A1E558  38 81 00 08 */	addi r4, r1, 8
/* 80A1E55C  4B FF F2 21 */	bl setAction__15daNpcKasiHana_cFM15daNpcKasiHana_cFPCvPvi_i
lbl_80A1E560:
/* 80A1E560  38 60 00 01 */	li r3, 1
/* 80A1E564  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A1E568  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A1E56C  7C 08 03 A6 */	mtlr r0
/* 80A1E570  38 21 00 20 */	addi r1, r1, 0x20
/* 80A1E574  4E 80 00 20 */	blr 
