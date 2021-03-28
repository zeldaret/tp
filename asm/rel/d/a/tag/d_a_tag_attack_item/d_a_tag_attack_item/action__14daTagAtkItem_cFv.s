lbl_805A2CA8:
/* 805A2CA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A2CAC  7C 08 02 A6 */	mflr r0
/* 805A2CB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A2CB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A2CB8  7C 7F 1B 78 */	mr r31, r3
/* 805A2CBC  48 00 00 9D */	bl checkHit__14daTagAtkItem_cFv
/* 805A2CC0  2C 03 00 00 */	cmpwi r3, 0
/* 805A2CC4  41 82 00 38 */	beq lbl_805A2CFC
/* 805A2CC8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 805A2CCC  54 04 46 3E */	srwi r4, r0, 0x18
/* 805A2CD0  28 04 00 FF */	cmplwi r4, 0xff
/* 805A2CD4  41 82 00 18 */	beq lbl_805A2CEC
/* 805A2CD8  38 7F 05 68 */	addi r3, r31, 0x568
/* 805A2CDC  38 A0 00 FF */	li r5, 0xff
/* 805A2CE0  38 C0 00 01 */	li r6, 1
/* 805A2CE4  4B AA 5C 5C */	b orderEvent__17dEvLib_callback_cFiii
/* 805A2CE8  48 00 00 14 */	b lbl_805A2CFC
lbl_805A2CEC:
/* 805A2CEC  7F E3 FB 78 */	mr r3, r31
/* 805A2CF0  48 00 02 65 */	bl createItem__14daTagAtkItem_cFv
/* 805A2CF4  7F E3 FB 78 */	mr r3, r31
/* 805A2CF8  4B A7 6F 84 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_805A2CFC:
/* 805A2CFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A2D00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A2D04  7C 08 03 A6 */	mtlr r0
/* 805A2D08  38 21 00 10 */	addi r1, r1, 0x10
/* 805A2D0C  4E 80 00 20 */	blr 
