lbl_80006A10:
/* 80006A10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80006A14  7C 08 02 A6 */	mflr r0
/* 80006A18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80006A1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80006A20  93 C1 00 08 */	stw r30, 8(r1)
/* 80006A24  7C 7E 1B 78 */	mr r30, r3
/* 80006A28  7C 9F 23 78 */	mr r31, r4
/* 80006A2C  88 0D 86 34 */	lbz r0, struct_80450BB4+0x0(r13)
/* 80006A30  28 00 00 00 */	cmplwi r0, 0
/* 80006A34  40 82 00 08 */	bne lbl_80006A3C
/* 80006A38  4B FF FE 8D */	bl OSReportInit__Fv
lbl_80006A3C:
/* 80006A3C  88 0D 86 1C */	lbz r0, data_80450B9C(r13)
/* 80006A40  28 00 00 00 */	cmplwi r0, 0
/* 80006A44  40 82 00 10 */	bne lbl_80006A54
/* 80006A48  88 0D 86 18 */	lbz r0, struct_80450B98+0x0(r13)
/* 80006A4C  28 00 00 00 */	cmplwi r0, 0
/* 80006A50  40 82 00 34 */	bne lbl_80006A84
lbl_80006A54:
/* 80006A54  48 00 E3 11 */	bl mDoExt_GetCurrentRunningThread__Fv
/* 80006A58  80 0D 86 20 */	lwz r0, __OSReport_MonopolyThread(r13)
/* 80006A5C  28 00 00 00 */	cmplwi r0, 0
/* 80006A60  41 82 00 0C */	beq lbl_80006A6C
/* 80006A64  7C 00 18 40 */	cmplw r0, r3
/* 80006A68  40 82 00 1C */	bne lbl_80006A84
lbl_80006A6C:
/* 80006A6C  7F C3 F3 78 */	mr r3, r30
/* 80006A70  7F E4 FB 78 */	mr r4, r31
/* 80006A74  4B FF FF 11 */	bl mDoPrintf_vprintf__FPCcP16__va_list_struct
/* 80006A78  80 6D 86 24 */	lwz r3, print_counts(r13)
/* 80006A7C  38 03 00 01 */	addi r0, r3, 1
/* 80006A80  90 0D 86 24 */	stw r0, print_counts(r13)
lbl_80006A84:
/* 80006A84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80006A88  83 C1 00 08 */	lwz r30, 8(r1)
/* 80006A8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80006A90  7C 08 03 A6 */	mtlr r0
/* 80006A94  38 21 00 10 */	addi r1, r1, 0x10
/* 80006A98  4E 80 00 20 */	blr 
