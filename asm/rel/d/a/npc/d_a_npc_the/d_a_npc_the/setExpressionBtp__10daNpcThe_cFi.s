lbl_80AF841C:
/* 80AF841C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AF8420  7C 08 02 A6 */	mflr r0
/* 80AF8424  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF8428  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AF842C  93 C1 00 08 */	stw r30, 8(r1)
/* 80AF8430  7C 7E 1B 78 */	mr r30, r3
/* 80AF8434  7C 9F 23 78 */	mr r31, r4
/* 80AF8438  38 80 00 00 */	li r4, 0
/* 80AF843C  80 A3 09 9C */	lwz r5, 0x99c(r3)
/* 80AF8440  38 00 F5 7F */	li r0, -2689
/* 80AF8444  7C A0 00 38 */	and r0, r5, r0
/* 80AF8448  90 03 09 9C */	stw r0, 0x99c(r3)
/* 80AF844C  57 E0 18 38 */	slwi r0, r31, 3
/* 80AF8450  3C A0 80 B0 */	lis r5, l_btpGetParamList@ha
/* 80AF8454  38 C5 C2 D8 */	addi r6, r5, l_btpGetParamList@l
/* 80AF8458  7C A6 00 2E */	lwzx r5, r6, r0
/* 80AF845C  2C 05 00 00 */	cmpwi r5, 0
/* 80AF8460  41 80 00 24 */	blt lbl_80AF8484
/* 80AF8464  7C 86 02 14 */	add r4, r6, r0
/* 80AF8468  80 04 00 04 */	lwz r0, 4(r4)
/* 80AF846C  54 00 10 3A */	slwi r0, r0, 2
/* 80AF8470  3C 80 80 B0 */	lis r4, l_resNames@ha
/* 80AF8474  38 84 C3 80 */	addi r4, r4, l_resNames@l
/* 80AF8478  7C 84 00 2E */	lwzx r4, r4, r0
/* 80AF847C  4B 65 A6 EC */	b getTexPtrnAnmP__8daNpcF_cFPci
/* 80AF8480  7C 64 1B 78 */	mr r4, r3
lbl_80AF8484:
/* 80AF8484  38 C0 00 00 */	li r6, 0
/* 80AF8488  28 1F 00 0D */	cmplwi r31, 0xd
/* 80AF848C  41 81 00 5C */	bgt lbl_80AF84E8
/* 80AF8490  3C 60 80 B0 */	lis r3, lit_4441@ha
/* 80AF8494  38 63 C4 5C */	addi r3, r3, lit_4441@l
/* 80AF8498  57 E0 10 3A */	slwi r0, r31, 2
/* 80AF849C  7C 03 00 2E */	lwzx r0, r3, r0
/* 80AF84A0  7C 09 03 A6 */	mtctr r0
/* 80AF84A4  4E 80 04 20 */	bctr 
lbl_80AF84A8:
/* 80AF84A8  38 C0 00 02 */	li r6, 2
/* 80AF84AC  48 00 00 40 */	b lbl_80AF84EC
lbl_80AF84B0:
/* 80AF84B0  38 C0 00 02 */	li r6, 2
/* 80AF84B4  48 00 00 38 */	b lbl_80AF84EC
lbl_80AF84B8:
/* 80AF84B8  38 C0 00 02 */	li r6, 2
/* 80AF84BC  48 00 00 30 */	b lbl_80AF84EC
lbl_80AF84C0:
/* 80AF84C0  38 C0 00 02 */	li r6, 2
/* 80AF84C4  48 00 00 28 */	b lbl_80AF84EC
lbl_80AF84C8:
/* 80AF84C8  38 C0 00 02 */	li r6, 2
/* 80AF84CC  48 00 00 20 */	b lbl_80AF84EC
lbl_80AF84D0:
/* 80AF84D0  38 C0 00 02 */	li r6, 2
/* 80AF84D4  48 00 00 18 */	b lbl_80AF84EC
lbl_80AF84D8:
/* 80AF84D8  38 C0 00 02 */	li r6, 2
/* 80AF84DC  48 00 00 10 */	b lbl_80AF84EC
lbl_80AF84E0:
/* 80AF84E0  38 C0 00 02 */	li r6, 2
/* 80AF84E4  48 00 00 08 */	b lbl_80AF84EC
lbl_80AF84E8:
/* 80AF84E8  38 80 00 00 */	li r4, 0
lbl_80AF84EC:
/* 80AF84EC  28 04 00 00 */	cmplwi r4, 0
/* 80AF84F0  40 82 00 0C */	bne lbl_80AF84FC
/* 80AF84F4  38 60 00 01 */	li r3, 1
/* 80AF84F8  48 00 00 54 */	b lbl_80AF854C
lbl_80AF84FC:
/* 80AF84FC  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80AF8500  80 63 00 04 */	lwz r3, 4(r3)
/* 80AF8504  80 A3 00 04 */	lwz r5, 4(r3)
/* 80AF8508  7F C3 F3 78 */	mr r3, r30
/* 80AF850C  3C E0 80 B0 */	lis r7, lit_4296@ha
/* 80AF8510  C0 27 BE 84 */	lfs f1, lit_4296@l(r7)
/* 80AF8514  4B 65 A7 B0 */	b setBtpAnm__8daNpcF_cFP16J3DAnmTexPatternP12J3DModelDatafi
/* 80AF8518  2C 03 00 00 */	cmpwi r3, 0
/* 80AF851C  41 82 00 2C */	beq lbl_80AF8548
/* 80AF8520  80 1E 09 9C */	lwz r0, 0x99c(r30)
/* 80AF8524  60 00 02 80 */	ori r0, r0, 0x280
/* 80AF8528  90 1E 09 9C */	stw r0, 0x99c(r30)
/* 80AF852C  2C 1F 00 00 */	cmpwi r31, 0
/* 80AF8530  40 82 00 10 */	bne lbl_80AF8540
/* 80AF8534  80 1E 09 9C */	lwz r0, 0x99c(r30)
/* 80AF8538  60 00 08 00 */	ori r0, r0, 0x800
/* 80AF853C  90 1E 09 9C */	stw r0, 0x99c(r30)
lbl_80AF8540:
/* 80AF8540  38 60 00 01 */	li r3, 1
/* 80AF8544  48 00 00 08 */	b lbl_80AF854C
lbl_80AF8548:
/* 80AF8548  38 60 00 00 */	li r3, 0
lbl_80AF854C:
/* 80AF854C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AF8550  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AF8554  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AF8558  7C 08 03 A6 */	mtlr r0
/* 80AF855C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AF8560  4E 80 00 20 */	blr 
