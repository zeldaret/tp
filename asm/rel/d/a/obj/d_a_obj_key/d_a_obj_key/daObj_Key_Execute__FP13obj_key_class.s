lbl_80C408B4:
/* 80C408B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C408B8  7C 08 02 A6 */	mflr r0
/* 80C408BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C408C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C408C4  7C 7F 1B 78 */	mr r31, r3
/* 80C408C8  38 60 00 00 */	li r3, 0
/* 80C408CC  38 00 00 02 */	li r0, 2
/* 80C408D0  7C 09 03 A6 */	mtctr r0
lbl_80C408D4:
/* 80C408D4  38 A3 06 0E */	addi r5, r3, 0x60e
/* 80C408D8  7C 9F 2A AE */	lhax r4, r31, r5
/* 80C408DC  2C 04 00 00 */	cmpwi r4, 0
/* 80C408E0  41 82 00 0C */	beq lbl_80C408EC
/* 80C408E4  38 04 FF FF */	addi r0, r4, -1
/* 80C408E8  7C 1F 2B 2E */	sthx r0, r31, r5
lbl_80C408EC:
/* 80C408EC  38 63 00 02 */	addi r3, r3, 2
/* 80C408F0  42 00 FF E4 */	bdnz lbl_80C408D4
/* 80C408F4  7F E3 FB 78 */	mr r3, r31
/* 80C408F8  4B FF FD F5 */	bl action__FP13obj_key_class
/* 80C408FC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C40900  7C 03 07 74 */	extsb r3, r0
/* 80C40904  4B 3E C7 69 */	bl dComIfGp_getReverb__Fi
/* 80C40908  7C 65 1B 78 */	mr r5, r3
/* 80C4090C  38 7F 05 E8 */	addi r3, r31, 0x5e8
/* 80C40910  38 80 00 00 */	li r4, 0
/* 80C40914  81 9F 05 F8 */	lwz r12, 0x5f8(r31)
/* 80C40918  81 8C 00 08 */	lwz r12, 8(r12)
/* 80C4091C  7D 89 03 A6 */	mtctr r12
/* 80C40920  4E 80 04 21 */	bctrl 
/* 80C40924  38 60 00 01 */	li r3, 1
/* 80C40928  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C4092C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C40930  7C 08 03 A6 */	mtlr r0
/* 80C40934  38 21 00 10 */	addi r1, r1, 0x10
/* 80C40938  4E 80 00 20 */	blr 
