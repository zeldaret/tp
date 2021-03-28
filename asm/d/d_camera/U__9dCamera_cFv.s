lbl_80162FD4:
/* 80162FD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80162FD8  7C 08 02 A6 */	mflr r0
/* 80162FDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80162FE0  80 03 06 0C */	lwz r0, 0x60c(r3)
/* 80162FE4  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80162FE8  41 82 00 0C */	beq lbl_80162FF4
/* 80162FEC  A8 63 07 6A */	lha r3, 0x76a(r3)
/* 80162FF0  48 00 00 0C */	b lbl_80162FFC
lbl_80162FF4:
/* 80162FF4  38 63 00 2E */	addi r3, r3, 0x2e
/* 80162FF8  48 10 E0 F1 */	bl Inv__7cSAngleCFv
lbl_80162FFC:
/* 80162FFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80163000  7C 08 03 A6 */	mtlr r0
/* 80163004  38 21 00 10 */	addi r1, r1, 0x10
/* 80163008  4E 80 00 20 */	blr 
