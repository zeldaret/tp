lbl_80100D38:
/* 80100D38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80100D3C  7C 08 02 A6 */	mflr r0
/* 80100D40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80100D44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80100D48  7C 7F 1B 78 */	mr r31, r3
/* 80100D4C  4B FF FA 25 */	bl commonRoofHangProc__9daAlink_cFv
/* 80100D50  2C 03 00 00 */	cmpwi r3, 0
/* 80100D54  41 82 00 0C */	beq lbl_80100D60
/* 80100D58  38 60 00 01 */	li r3, 1
/* 80100D5C  48 00 00 34 */	b lbl_80100D90
lbl_80100D60:
/* 80100D60  C0 3F 33 A8 */	lfs f1, 0x33a8(r31)
/* 80100D64  C0 02 93 F8 */	lfs f0, lit_13700(r2)
/* 80100D68  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80100D6C  40 80 00 0C */	bge lbl_80100D78
/* 80100D70  38 00 00 00 */	li r0, 0
/* 80100D74  B0 1F 30 08 */	sth r0, 0x3008(r31)
lbl_80100D78:
/* 80100D78  A8 1F 30 08 */	lha r0, 0x3008(r31)
/* 80100D7C  2C 00 00 00 */	cmpwi r0, 0
/* 80100D80  40 82 00 0C */	bne lbl_80100D8C
/* 80100D84  7F E3 FB 78 */	mr r3, r31
/* 80100D88  4B FF FB 65 */	bl checkNextActionRoofHang__9daAlink_cFv
lbl_80100D8C:
/* 80100D8C  38 60 00 01 */	li r3, 1
lbl_80100D90:
/* 80100D90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80100D94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80100D98  7C 08 03 A6 */	mtlr r0
/* 80100D9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80100DA0  4E 80 00 20 */	blr 
