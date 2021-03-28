lbl_80C18BD8:
/* 80C18BD8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C18BDC  7C 08 02 A6 */	mflr r0
/* 80C18BE0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C18BE4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C18BE8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80C18BEC  2C 04 00 00 */	cmpwi r4, 0
/* 80C18BF0  41 82 00 0C */	beq lbl_80C18BFC
/* 80C18BF4  38 60 00 01 */	li r3, 1
/* 80C18BF8  48 00 00 BC */	b lbl_80C18CB4
lbl_80C18BFC:
/* 80C18BFC  A0 83 00 14 */	lhz r4, 0x14(r3)
/* 80C18C00  2C 04 00 00 */	cmpwi r4, 0
/* 80C18C04  41 80 00 0C */	blt lbl_80C18C10
/* 80C18C08  2C 04 00 03 */	cmpwi r4, 3
/* 80C18C0C  41 80 00 0C */	blt lbl_80C18C18
lbl_80C18C10:
/* 80C18C10  38 60 00 01 */	li r3, 1
/* 80C18C14  48 00 00 A0 */	b lbl_80C18CB4
lbl_80C18C18:
/* 80C18C18  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80C18C1C  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 80C18C20  83 E3 00 38 */	lwz r31, 0x38(r3)
/* 80C18C24  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 80C18C28  28 1F 00 00 */	cmplwi r31, 0
/* 80C18C2C  41 82 00 0C */	beq lbl_80C18C38
/* 80C18C30  28 03 00 00 */	cmplwi r3, 0
/* 80C18C34  40 82 00 0C */	bne lbl_80C18C40
lbl_80C18C38:
/* 80C18C38  38 60 00 01 */	li r3, 1
/* 80C18C3C  48 00 00 78 */	b lbl_80C18CB4
lbl_80C18C40:
/* 80C18C40  1C 04 00 06 */	mulli r0, r4, 6
/* 80C18C44  7C 63 02 14 */	add r3, r3, r0
/* 80C18C48  A8 03 05 74 */	lha r0, 0x574(r3)
/* 80C18C4C  B0 01 00 08 */	sth r0, 8(r1)
/* 80C18C50  A8 03 05 76 */	lha r0, 0x576(r3)
/* 80C18C54  B0 01 00 0A */	sth r0, 0xa(r1)
/* 80C18C58  A8 03 05 78 */	lha r0, 0x578(r3)
/* 80C18C5C  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80C18C60  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 80C18C64  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80C18C68  1F C4 00 30 */	mulli r30, r4, 0x30
/* 80C18C6C  7C 60 F2 14 */	add r3, r0, r30
/* 80C18C70  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80C18C74  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80C18C78  4B 72 D8 38 */	b PSMTXCopy
/* 80C18C7C  38 61 00 08 */	addi r3, r1, 8
/* 80C18C80  4B 3F 42 C4 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80C18C84  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C18C88  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C18C8C  80 9F 00 84 */	lwz r4, 0x84(r31)
/* 80C18C90  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80C18C94  7C 80 F2 14 */	add r4, r0, r30
/* 80C18C98  4B 72 D8 18 */	b PSMTXCopy
/* 80C18C9C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C18CA0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C18CA4  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 80C18CA8  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 80C18CAC  4B 72 D8 04 */	b PSMTXCopy
/* 80C18CB0  38 60 00 01 */	li r3, 1
lbl_80C18CB4:
/* 80C18CB4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C18CB8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80C18CBC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C18CC0  7C 08 03 A6 */	mtlr r0
/* 80C18CC4  38 21 00 20 */	addi r1, r1, 0x20
/* 80C18CC8  4E 80 00 20 */	blr 
