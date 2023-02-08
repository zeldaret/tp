lbl_80292AA4:
/* 80292AA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80292AA8  7C 08 02 A6 */	mflr r0
/* 80292AAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80292AB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80292AB4  7C 7F 1B 78 */	mr r31, r3
/* 80292AB8  80 63 01 2C */	lwz r3, 0x12c(r3)
/* 80292ABC  28 03 00 00 */	cmplwi r3, 0
/* 80292AC0  41 82 00 18 */	beq lbl_80292AD8
/* 80292AC4  4B FF FF E1 */	bl getTransposeTotal__8JASTrackCFv
/* 80292AC8  88 1F 02 2A */	lbz r0, 0x22a(r31)
/* 80292ACC  7C 00 07 74 */	extsb r0, r0
/* 80292AD0  7C 60 1A 14 */	add r3, r0, r3
/* 80292AD4  48 00 00 0C */	b lbl_80292AE0
lbl_80292AD8:
/* 80292AD8  88 7F 02 2A */	lbz r3, 0x22a(r31)
/* 80292ADC  7C 63 07 74 */	extsb r3, r3
lbl_80292AE0:
/* 80292AE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80292AE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80292AE8  7C 08 03 A6 */	mtlr r0
/* 80292AEC  38 21 00 10 */	addi r1, r1, 0x10
/* 80292AF0  4E 80 00 20 */	blr 
