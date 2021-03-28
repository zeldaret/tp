lbl_80BD6470:
/* 80BD6470  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80BD6474  7C 08 02 A6 */	mflr r0
/* 80BD6478  90 01 00 34 */	stw r0, 0x34(r1)
/* 80BD647C  39 61 00 30 */	addi r11, r1, 0x30
/* 80BD6480  4B 78 BD 58 */	b _savegpr_28
/* 80BD6484  7C 7F 1B 78 */	mr r31, r3
/* 80BD6488  4B FF FF 31 */	bl initBaseMtx__14daObjCrystal_cFv
/* 80BD648C  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80BD6490  38 03 00 24 */	addi r0, r3, 0x24
/* 80BD6494  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80BD6498  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BD649C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BD64A0  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80BD64A4  38 80 00 00 */	li r4, 0
/* 80BD64A8  90 81 00 08 */	stw r4, 8(r1)
/* 80BD64AC  38 00 FF FF */	li r0, -1
/* 80BD64B0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BD64B4  90 81 00 10 */	stw r4, 0x10(r1)
/* 80BD64B8  90 81 00 14 */	stw r4, 0x14(r1)
/* 80BD64BC  90 81 00 18 */	stw r4, 0x18(r1)
/* 80BD64C0  38 80 00 00 */	li r4, 0
/* 80BD64C4  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008BED@ha */
/* 80BD64C8  38 A5 8B ED */	addi r5, r5, 0x8BED /* 0x00008BED@l */
/* 80BD64CC  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 80BD64D0  38 E0 00 00 */	li r7, 0
/* 80BD64D4  39 1F 04 B4 */	addi r8, r31, 0x4b4
/* 80BD64D8  39 3F 04 EC */	addi r9, r31, 0x4ec
/* 80BD64DC  39 40 00 FF */	li r10, 0xff
/* 80BD64E0  3D 60 80 BD */	lis r11, lit_3693@ha
/* 80BD64E4  C0 2B 68 BC */	lfs f1, lit_3693@l(r11)
/* 80BD64E8  4B 47 65 A8 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80BD64EC  90 7F 05 78 */	stw r3, 0x578(r31)
/* 80BD64F0  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 80BD64F4  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0x0000FFFF@l */
/* 80BD64F8  B0 1F 05 7C */	sth r0, 0x57c(r31)
/* 80BD64FC  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80BD6500  80 63 00 04 */	lwz r3, 4(r3)
/* 80BD6504  83 A3 00 54 */	lwz r29, 0x54(r3)
/* 80BD6508  3B 80 00 00 */	li r28, 0
/* 80BD650C  3C 60 80 BD */	lis r3, stringBase0@ha
/* 80BD6510  3B C3 68 D8 */	addi r30, r3, stringBase0@l
/* 80BD6514  48 00 00 28 */	b lbl_80BD653C
lbl_80BD6518:
/* 80BD6518  7F A3 EB 78 */	mr r3, r29
/* 80BD651C  7F 84 E3 78 */	mr r4, r28
/* 80BD6520  4B 70 85 D8 */	b getName__10JUTNameTabCFUs
/* 80BD6524  38 9E 00 09 */	addi r4, r30, 9
/* 80BD6528  4B 79 24 6C */	b strcmp
/* 80BD652C  2C 03 00 00 */	cmpwi r3, 0
/* 80BD6530  40 82 00 08 */	bne lbl_80BD6538
/* 80BD6534  B3 9F 05 7C */	sth r28, 0x57c(r31)
lbl_80BD6538:
/* 80BD6538  3B 9C 00 01 */	addi r28, r28, 1
lbl_80BD653C:
/* 80BD653C  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80BD6540  80 83 00 04 */	lwz r4, 4(r3)
/* 80BD6544  A0 84 00 2C */	lhz r4, 0x2c(r4)
/* 80BD6548  57 80 04 3E */	clrlwi r0, r28, 0x10
/* 80BD654C  7C 00 20 40 */	cmplw r0, r4
/* 80BD6550  41 80 FF C8 */	blt lbl_80BD6518
/* 80BD6554  81 83 00 00 */	lwz r12, 0(r3)
/* 80BD6558  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80BD655C  7D 89 03 A6 */	mtctr r12
/* 80BD6560  4E 80 04 21 */	bctrl 
/* 80BD6564  80 BF 05 78 */	lwz r5, 0x578(r31)
/* 80BD6568  28 05 00 00 */	cmplwi r5, 0
/* 80BD656C  41 82 00 28 */	beq lbl_80BD6594
/* 80BD6570  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80BD6574  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80BD6578  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80BD657C  A0 1F 05 7C */	lhz r0, 0x57c(r31)
/* 80BD6580  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80BD6584  7C 63 02 14 */	add r3, r3, r0
/* 80BD6588  38 85 00 68 */	addi r4, r5, 0x68
/* 80BD658C  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 80BD6590  4B 6A A2 50 */	b func_802807E0
lbl_80BD6594:
/* 80BD6594  38 60 00 01 */	li r3, 1
/* 80BD6598  39 61 00 30 */	addi r11, r1, 0x30
/* 80BD659C  4B 78 BC 88 */	b _restgpr_28
/* 80BD65A0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BD65A4  7C 08 03 A6 */	mtlr r0
/* 80BD65A8  38 21 00 30 */	addi r1, r1, 0x30
/* 80BD65AC  4E 80 00 20 */	blr 
