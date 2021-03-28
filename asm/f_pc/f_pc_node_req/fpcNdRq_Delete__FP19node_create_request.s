lbl_80022A3C:
/* 80022A3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80022A40  7C 08 02 A6 */	mflr r0
/* 80022A44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80022A48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80022A4C  7C 7F 1B 78 */	mr r31, r3
/* 80022A50  4B FF FD 75 */	bl fpcNdRq_RequestQTo__FP19node_create_request
/* 80022A54  80 7F 00 3C */	lwz r3, 0x3c(r31)
/* 80022A58  28 03 00 00 */	cmplwi r3, 0
/* 80022A5C  41 82 00 28 */	beq lbl_80022A84
/* 80022A60  80 63 00 08 */	lwz r3, 8(r3)
/* 80022A64  28 03 00 00 */	cmplwi r3, 0
/* 80022A68  41 82 00 1C */	beq lbl_80022A84
/* 80022A6C  7F E4 FB 78 */	mr r4, r31
/* 80022A70  4B FF F9 B9 */	bl fpcMtd_Method__FPFPv_iPv
/* 80022A74  2C 03 00 00 */	cmpwi r3, 0
/* 80022A78  40 82 00 0C */	bne lbl_80022A84
/* 80022A7C  38 60 00 00 */	li r3, 0
/* 80022A80  48 00 00 10 */	b lbl_80022A90
lbl_80022A84:
/* 80022A84  7F E3 FB 78 */	mr r3, r31
/* 80022A88  48 24 07 D9 */	bl free__3cMlFPv
/* 80022A8C  38 60 00 01 */	li r3, 1
lbl_80022A90:
/* 80022A90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80022A94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80022A98  7C 08 03 A6 */	mtlr r0
/* 80022A9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80022AA0  4E 80 00 20 */	blr 
