lbl_8036FDE8:
/* 8036FDE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8036FDEC  7C 08 02 A6 */	mflr r0
/* 8036FDF0  2C 04 00 00 */	cmpwi r4, 0
/* 8036FDF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8036FDF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8036FDFC  41 82 00 0C */	beq lbl_8036FE08
/* 8036FE00  38 60 07 03 */	li r3, 0x703
/* 8036FE04  48 00 00 7C */	b lbl_8036FE80
lbl_8036FE08:
/* 8036FE08  3C A0 80 3D */	lis r5, gTRKStepStatus@ha /* 0x803D3254@ha */
/* 8036FE0C  3C 80 80 3A */	lis r4, lit_422@ha /* 0x803A2BE8@ha */
/* 8036FE10  3B E5 32 54 */	addi r31, r5, gTRKStepStatus@l /* 0x803D3254@l */
/* 8036FE14  38 00 00 01 */	li r0, 1
/* 8036FE18  38 A0 00 00 */	li r5, 0
/* 8036FE1C  90 7F 00 08 */	stw r3, 8(r31)
/* 8036FE20  38 84 2B E8 */	addi r4, r4, lit_422@l /* 0x803A2BE8@l */
/* 8036FE24  38 60 00 01 */	li r3, 1
/* 8036FE28  90 BF 00 04 */	stw r5, 4(r31)
/* 8036FE2C  90 1F 00 00 */	stw r0, 0(r31)
/* 8036FE30  4C C6 31 82 */	crclr 6
/* 8036FE34  48 00 2E 21 */	bl MWTRACE
/* 8036FE38  3C 60 80 45 */	lis r3, gTRKCPUState@ha /* 0x8044F338@ha */
/* 8036FE3C  80 9F 00 04 */	lwz r4, 4(r31)
/* 8036FE40  38 63 F3 38 */	addi r3, r3, gTRKCPUState@l /* 0x8044F338@l */
/* 8036FE44  80 03 01 F8 */	lwz r0, 0x1f8(r3)
/* 8036FE48  2C 04 00 00 */	cmpwi r4, 0
/* 8036FE4C  60 00 04 00 */	ori r0, r0, 0x400
/* 8036FE50  90 03 01 F8 */	stw r0, 0x1f8(r3)
/* 8036FE54  41 82 00 0C */	beq lbl_8036FE60
/* 8036FE58  2C 04 00 10 */	cmpwi r4, 0x10
/* 8036FE5C  40 82 00 10 */	bne lbl_8036FE6C
lbl_8036FE60:
/* 8036FE60  80 7F 00 08 */	lwz r3, 8(r31)
/* 8036FE64  38 03 FF FF */	addi r0, r3, -1
/* 8036FE68  90 1F 00 08 */	stw r0, 8(r31)
lbl_8036FE6C:
/* 8036FE6C  3C 60 80 45 */	lis r3, gTRKState@ha /* 0x8044F294@ha */
/* 8036FE70  38 00 00 00 */	li r0, 0
/* 8036FE74  38 83 F2 94 */	addi r4, r3, gTRKState@l /* 0x8044F294@l */
/* 8036FE78  38 60 00 00 */	li r3, 0
/* 8036FE7C  90 04 00 98 */	stw r0, 0x98(r4)
lbl_8036FE80:
/* 8036FE80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8036FE84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8036FE88  7C 08 03 A6 */	mtlr r0
/* 8036FE8C  38 21 00 10 */	addi r1, r1, 0x10
/* 8036FE90  4E 80 00 20 */	blr 
