lbl_8002F638:
/* 8002F638  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002F63C  7C 08 02 A6 */	mflr r0
/* 8002F640  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002F644  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8002F648  93 C1 00 08 */	stw r30, 8(r1)
/* 8002F64C  7C 7E 1B 78 */	mr r30, r3
/* 8002F650  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002F654  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002F658  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 8002F65C  7F E3 FB 78 */	mr r3, r31
/* 8002F660  4B FF D5 5D */	bl getTimerMode__14dComIfG_play_cFv
/* 8002F664  7C 1E 18 00 */	cmpw r30, r3
/* 8002F668  40 82 00 2C */	bne lbl_8002F694
/* 8002F66C  7F E3 FB 78 */	mr r3, r31
/* 8002F670  4B FF D5 6D */	bl getTimerPtr__14dComIfG_play_cFv
/* 8002F674  28 03 00 00 */	cmplwi r3, 0
/* 8002F678  41 82 00 14 */	beq lbl_8002F68C
/* 8002F67C  38 80 00 04 */	li r4, 4
/* 8002F680  48 22 E1 ED */	bl restart__8dTimer_cFUc
/* 8002F684  38 60 00 01 */	li r3, 1
/* 8002F688  48 00 00 10 */	b lbl_8002F698
lbl_8002F68C:
/* 8002F68C  38 60 00 00 */	li r3, 0
/* 8002F690  48 00 00 08 */	b lbl_8002F698
lbl_8002F694:
/* 8002F694  38 60 00 00 */	li r3, 0
lbl_8002F698:
/* 8002F698  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8002F69C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8002F6A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002F6A4  7C 08 03 A6 */	mtlr r0
/* 8002F6A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8002F6AC  4E 80 00 20 */	blr 
