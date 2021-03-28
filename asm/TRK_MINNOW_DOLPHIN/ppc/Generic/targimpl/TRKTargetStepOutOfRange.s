lbl_8036FD30:
/* 8036FD30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8036FD34  7C 08 02 A6 */	mflr r0
/* 8036FD38  2C 05 00 00 */	cmpwi r5, 0
/* 8036FD3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8036FD40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8036FD44  41 82 00 0C */	beq lbl_8036FD50
/* 8036FD48  38 60 07 03 */	li r3, 0x703
/* 8036FD4C  48 00 00 88 */	b lbl_8036FDD4
lbl_8036FD50:
/* 8036FD50  3C C0 80 3D */	lis r6, gTRKStepStatus@ha
/* 8036FD54  3C A0 80 3A */	lis r5, lit_422@ha
/* 8036FD58  3B E6 32 54 */	addi r31, r6, gTRKStepStatus@l
/* 8036FD5C  38 C0 00 01 */	li r6, 1
/* 8036FD60  90 7F 00 0C */	stw r3, 0xc(r31)
/* 8036FD64  38 05 2B E8 */	addi r0, r5, lit_422@l
/* 8036FD68  38 60 00 01 */	li r3, 1
/* 8036FD6C  90 9F 00 10 */	stw r4, 0x10(r31)
/* 8036FD70  7C 04 03 78 */	mr r4, r0
/* 8036FD74  90 DF 00 04 */	stw r6, 4(r31)
/* 8036FD78  90 DF 00 00 */	stw r6, 0(r31)
/* 8036FD7C  4C C6 31 82 */	crclr 6
/* 8036FD80  48 00 2E D5 */	bl MWTRACE
/* 8036FD84  3C 60 80 45 */	lis r3, gTRKCPUState@ha
/* 8036FD88  80 9F 00 04 */	lwz r4, 4(r31)
/* 8036FD8C  38 63 F3 38 */	addi r3, r3, gTRKCPUState@l
/* 8036FD90  80 03 01 F8 */	lwz r0, 0x1f8(r3)
/* 8036FD94  2C 04 00 00 */	cmpwi r4, 0
/* 8036FD98  60 00 04 00 */	ori r0, r0, 0x400
/* 8036FD9C  90 03 01 F8 */	stw r0, 0x1f8(r3)
/* 8036FDA0  41 82 00 0C */	beq lbl_8036FDAC
/* 8036FDA4  2C 04 00 10 */	cmpwi r4, 0x10
/* 8036FDA8  40 82 00 18 */	bne lbl_8036FDC0
lbl_8036FDAC:
/* 8036FDAC  3C 60 80 3D */	lis r3, gTRKStepStatus@ha
/* 8036FDB0  38 83 32 54 */	addi r4, r3, gTRKStepStatus@l
/* 8036FDB4  80 64 00 08 */	lwz r3, 8(r4)
/* 8036FDB8  38 03 FF FF */	addi r0, r3, -1
/* 8036FDBC  90 04 00 08 */	stw r0, 8(r4)
lbl_8036FDC0:
/* 8036FDC0  3C 60 80 45 */	lis r3, gTRKState@ha
/* 8036FDC4  38 00 00 00 */	li r0, 0
/* 8036FDC8  38 83 F2 94 */	addi r4, r3, gTRKState@l
/* 8036FDCC  38 60 00 00 */	li r3, 0
/* 8036FDD0  90 04 00 98 */	stw r0, 0x98(r4)
lbl_8036FDD4:
/* 8036FDD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8036FDD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8036FDDC  7C 08 03 A6 */	mtlr r0
/* 8036FDE0  38 21 00 10 */	addi r1, r1, 0x10
/* 8036FDE4  4E 80 00 20 */	blr 
