lbl_806E1B5C:
/* 806E1B5C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806E1B60  7C 08 02 A6 */	mflr r0
/* 806E1B64  90 01 00 24 */	stw r0, 0x24(r1)
/* 806E1B68  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806E1B6C  7C 7F 1B 78 */	mr r31, r3
/* 806E1B70  80 03 05 C4 */	lwz r0, 0x5c4(r3)
/* 806E1B74  90 01 00 10 */	stw r0, 0x10(r1)
/* 806E1B78  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 806E1B7C  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 806E1B80  38 81 00 10 */	addi r4, r1, 0x10
/* 806E1B84  4B 93 7C 74 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 806E1B88  28 03 00 00 */	cmplwi r3, 0
/* 806E1B8C  40 82 00 24 */	bne lbl_806E1BB0
/* 806E1B90  80 7F 05 C4 */	lwz r3, 0x5c4(r31)
/* 806E1B94  3C 03 00 01 */	addis r0, r3, 1
/* 806E1B98  28 00 FF FF */	cmplwi r0, 0xffff
/* 806E1B9C  41 82 00 14 */	beq lbl_806E1BB0
/* 806E1BA0  38 00 FF FF */	li r0, -1
/* 806E1BA4  90 1F 05 C4 */	stw r0, 0x5c4(r31)
/* 806E1BA8  38 00 01 2C */	li r0, 0x12c
/* 806E1BAC  90 1F 05 B8 */	stw r0, 0x5b8(r31)
lbl_806E1BB0:
/* 806E1BB0  80 7F 05 C4 */	lwz r3, 0x5c4(r31)
/* 806E1BB4  3C 03 00 01 */	addis r0, r3, 1
/* 806E1BB8  28 00 FF FF */	cmplwi r0, 0xffff
/* 806E1BBC  40 82 00 58 */	bne lbl_806E1C14
/* 806E1BC0  80 1F 05 B8 */	lwz r0, 0x5b8(r31)
/* 806E1BC4  2C 00 00 00 */	cmpwi r0, 0
/* 806E1BC8  40 82 00 4C */	bne lbl_806E1C14
/* 806E1BCC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 806E1BD0  7C 07 07 74 */	extsb r7, r0
/* 806E1BD4  38 00 00 00 */	li r0, 0
/* 806E1BD8  90 01 00 08 */	stw r0, 8(r1)
/* 806E1BDC  38 60 01 CF */	li r3, 0x1cf
/* 806E1BE0  28 1F 00 00 */	cmplwi r31, 0
/* 806E1BE4  41 82 00 0C */	beq lbl_806E1BF0
/* 806E1BE8  80 9F 00 04 */	lwz r4, 4(r31)
/* 806E1BEC  48 00 00 08 */	b lbl_806E1BF4
lbl_806E1BF0:
/* 806E1BF0  38 80 FF FF */	li r4, -1
lbl_806E1BF4:
/* 806E1BF4  3C A0 10 00 */	lis r5, 0x1000 /* 0x0FFFFF05@ha */
/* 806E1BF8  38 A5 FF 05 */	addi r5, r5, 0xFF05 /* 0x0FFFFF05@l */
/* 806E1BFC  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 806E1C00  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 806E1C04  39 20 00 00 */	li r9, 0
/* 806E1C08  39 40 FF FF */	li r10, -1
/* 806E1C0C  4B 93 82 E4 */	b fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 806E1C10  90 7F 05 C4 */	stw r3, 0x5c4(r31)
lbl_806E1C14:
/* 806E1C14  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806E1C18  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806E1C1C  7C 08 03 A6 */	mtlr r0
/* 806E1C20  38 21 00 20 */	addi r1, r1, 0x20
/* 806E1C24  4E 80 00 20 */	blr 
