lbl_801F1F80:
/* 801F1F80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F1F84  7C 08 02 A6 */	mflr r0
/* 801F1F88  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F1F8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F1F90  7C 7F 1B 78 */	mr r31, r3
/* 801F1F94  88 63 01 BD */	lbz r3, 0x1bd(r3)
/* 801F1F98  28 03 00 00 */	cmplwi r3, 0
/* 801F1F9C  41 82 00 10 */	beq lbl_801F1FAC
/* 801F1FA0  38 03 FF FF */	addi r0, r3, -1
/* 801F1FA4  98 1F 01 BD */	stb r0, 0x1bd(r31)
/* 801F1FA8  48 00 00 44 */	b lbl_801F1FEC
lbl_801F1FAC:
/* 801F1FAC  38 00 00 01 */	li r0, 1
/* 801F1FB0  98 1F 21 A1 */	stb r0, 0x21a1(r31)
/* 801F1FB4  80 6D 8C 40 */	lwz r3, sManager__10JFWDisplay(r13)
/* 801F1FB8  80 63 00 04 */	lwz r3, 4(r3)
/* 801F1FBC  28 03 00 00 */	cmplwi r3, 0
/* 801F1FC0  41 82 00 18 */	beq lbl_801F1FD8
/* 801F1FC4  38 80 00 00 */	li r4, 0
/* 801F1FC8  81 83 00 00 */	lwz r12, 0(r3)
/* 801F1FCC  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801F1FD0  7D 89 03 A6 */	mtctr r12
/* 801F1FD4  4E 80 04 21 */	bctrl 
lbl_801F1FD8:
/* 801F1FD8  38 00 00 00 */	li r0, 0
/* 801F1FDC  98 1F 21 A0 */	stb r0, 0x21a0(r31)
/* 801F1FE0  38 00 00 01 */	li r0, 1
/* 801F1FE4  80 6D 86 F8 */	lwz r3, mResetData__6mDoRst(r13)
/* 801F1FE8  98 03 00 10 */	stb r0, 0x10(r3)
lbl_801F1FEC:
/* 801F1FEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F1FF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F1FF4  7C 08 03 A6 */	mtlr r0
/* 801F1FF8  38 21 00 10 */	addi r1, r1, 0x10
/* 801F1FFC  4E 80 00 20 */	blr 
