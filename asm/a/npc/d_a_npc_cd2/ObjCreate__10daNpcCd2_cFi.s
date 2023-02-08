lbl_80157F28:
/* 80157F28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80157F2C  7C 08 02 A6 */	mflr r0
/* 80157F30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80157F34  48 00 1A 19 */	bl getObjMdlDataP__10daNpcCd2_cFi
/* 80157F38  28 03 00 00 */	cmplwi r3, 0
/* 80157F3C  41 82 00 18 */	beq lbl_80157F54
/* 80157F40  3C 80 00 08 */	lis r4, 8
/* 80157F44  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80157F48  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80157F4C  4B EB CD 09 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80157F50  48 00 00 08 */	b lbl_80157F58
lbl_80157F54:
/* 80157F54  38 60 00 00 */	li r3, 0
lbl_80157F58:
/* 80157F58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80157F5C  7C 08 03 A6 */	mtlr r0
/* 80157F60  38 21 00 10 */	addi r1, r1, 0x10
/* 80157F64  4E 80 00 20 */	blr 
