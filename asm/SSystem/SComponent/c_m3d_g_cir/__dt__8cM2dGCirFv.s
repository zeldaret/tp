lbl_8026EED0:
/* 8026EED0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8026EED4  7C 08 02 A6 */	mflr r0
/* 8026EED8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8026EEDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8026EEE0  7C 7F 1B 79 */	or. r31, r3, r3
/* 8026EEE4  41 82 00 1C */	beq lbl_8026EF00
/* 8026EEE8  3C A0 80 3C */	lis r5, __vt__8cM2dGCir@ha
/* 8026EEEC  38 05 3F EC */	addi r0, r5, __vt__8cM2dGCir@l
/* 8026EEF0  90 1F 00 0C */	stw r0, 0xc(r31)
/* 8026EEF4  7C 80 07 35 */	extsh. r0, r4
/* 8026EEF8  40 81 00 08 */	ble lbl_8026EF00
/* 8026EEFC  48 05 FE 41 */	bl __dl__FPv
lbl_8026EF00:
/* 8026EF00  7F E3 FB 78 */	mr r3, r31
/* 8026EF04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8026EF08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8026EF0C  7C 08 03 A6 */	mtlr r0
/* 8026EF10  38 21 00 10 */	addi r1, r1, 0x10
/* 8026EF14  4E 80 00 20 */	blr 
