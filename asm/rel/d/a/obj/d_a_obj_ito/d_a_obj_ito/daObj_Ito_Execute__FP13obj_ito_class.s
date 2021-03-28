lbl_8047CEE4:
/* 8047CEE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8047CEE8  7C 08 02 A6 */	mflr r0
/* 8047CEEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8047CEF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8047CEF4  7C 7F 1B 78 */	mr r31, r3
/* 8047CEF8  A8 63 06 0C */	lha r3, 0x60c(r3)
/* 8047CEFC  38 03 00 01 */	addi r0, r3, 1
/* 8047CF00  B0 1F 06 0C */	sth r0, 0x60c(r31)
/* 8047CF04  A8 7F 06 3A */	lha r3, 0x63a(r31)
/* 8047CF08  2C 03 00 00 */	cmpwi r3, 0
/* 8047CF0C  41 82 00 0C */	beq lbl_8047CF18
/* 8047CF10  38 03 FF FF */	addi r0, r3, -1
/* 8047CF14  B0 1F 06 3A */	sth r0, 0x63a(r31)
lbl_8047CF18:
/* 8047CF18  38 60 00 00 */	li r3, 0
/* 8047CF1C  38 00 00 02 */	li r0, 2
/* 8047CF20  7C 09 03 A6 */	mtctr r0
lbl_8047CF24:
/* 8047CF24  38 A3 06 12 */	addi r5, r3, 0x612
/* 8047CF28  7C 9F 2A AE */	lhax r4, r31, r5
/* 8047CF2C  2C 04 00 00 */	cmpwi r4, 0
/* 8047CF30  41 82 00 0C */	beq lbl_8047CF3C
/* 8047CF34  38 04 FF FF */	addi r0, r4, -1
/* 8047CF38  7C 1F 2B 2E */	sthx r0, r31, r5
lbl_8047CF3C:
/* 8047CF3C  38 63 00 02 */	addi r3, r3, 2
/* 8047CF40  42 00 FF E4 */	bdnz lbl_8047CF24
/* 8047CF44  7F E3 FB 78 */	mr r3, r31
/* 8047CF48  4B FF F0 ED */	bl action__FP13obj_ito_class
/* 8047CF4C  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 8047CF50  54 00 00 3E */	slwi r0, r0, 0
/* 8047CF54  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 8047CF58  38 00 00 00 */	li r0, 0
/* 8047CF5C  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 8047CF60  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8047CF64  7C 03 07 74 */	extsb r3, r0
/* 8047CF68  4B BB 01 04 */	b dComIfGp_getReverb__Fi
/* 8047CF6C  7C 65 1B 78 */	mr r5, r3
/* 8047CF70  38 7F 05 7C */	addi r3, r31, 0x57c
/* 8047CF74  38 80 00 00 */	li r4, 0
/* 8047CF78  81 9F 05 7C */	lwz r12, 0x57c(r31)
/* 8047CF7C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8047CF80  7D 89 03 A6 */	mtctr r12
/* 8047CF84  4E 80 04 21 */	bctrl 
/* 8047CF88  38 00 00 01 */	li r0, 1
/* 8047CF8C  98 1F 06 39 */	stb r0, 0x639(r31)
/* 8047CF90  38 60 00 01 */	li r3, 1
/* 8047CF94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8047CF98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8047CF9C  7C 08 03 A6 */	mtlr r0
/* 8047CFA0  38 21 00 10 */	addi r1, r1, 0x10
/* 8047CFA4  4E 80 00 20 */	blr 
