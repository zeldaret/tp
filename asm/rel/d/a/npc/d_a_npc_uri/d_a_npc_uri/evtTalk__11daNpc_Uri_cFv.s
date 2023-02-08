lbl_80B27C8C:
/* 80B27C8C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B27C90  7C 08 02 A6 */	mflr r0
/* 80B27C94  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B27C98  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80B27C9C  7C 7F 1B 78 */	mr r31, r3
/* 80B27CA0  3C 80 80 B3 */	lis r4, lit_4734@ha /* 0x80B2DAE4@ha */
/* 80B27CA4  38 A4 DA E4 */	addi r5, r4, lit_4734@l /* 0x80B2DAE4@l */
/* 80B27CA8  80 85 00 00 */	lwz r4, 0(r5)
/* 80B27CAC  80 05 00 04 */	lwz r0, 4(r5)
/* 80B27CB0  90 81 00 14 */	stw r4, 0x14(r1)
/* 80B27CB4  90 01 00 18 */	stw r0, 0x18(r1)
/* 80B27CB8  80 05 00 08 */	lwz r0, 8(r5)
/* 80B27CBC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80B27CC0  38 81 00 14 */	addi r4, r1, 0x14
/* 80B27CC4  48 00 0A D1 */	bl chkAction__11daNpc_Uri_cFM11daNpc_Uri_cFPCvPvPv_i
/* 80B27CC8  2C 03 00 00 */	cmpwi r3, 0
/* 80B27CCC  41 82 00 1C */	beq lbl_80B27CE8
/* 80B27CD0  7F E3 FB 78 */	mr r3, r31
/* 80B27CD4  38 80 00 00 */	li r4, 0
/* 80B27CD8  39 9F 0F CC */	addi r12, r31, 0xfcc
/* 80B27CDC  4B 83 A3 A9 */	bl __ptmf_scall
/* 80B27CE0  60 00 00 00 */	nop 
/* 80B27CE4  48 00 00 30 */	b lbl_80B27D14
lbl_80B27CE8:
/* 80B27CE8  3C 60 80 B3 */	lis r3, lit_4739@ha /* 0x80B2DAF0@ha */
/* 80B27CEC  38 83 DA F0 */	addi r4, r3, lit_4739@l /* 0x80B2DAF0@l */
/* 80B27CF0  80 64 00 00 */	lwz r3, 0(r4)
/* 80B27CF4  80 04 00 04 */	lwz r0, 4(r4)
/* 80B27CF8  90 61 00 08 */	stw r3, 8(r1)
/* 80B27CFC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B27D00  80 04 00 08 */	lwz r0, 8(r4)
/* 80B27D04  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B27D08  7F E3 FB 78 */	mr r3, r31
/* 80B27D0C  38 81 00 08 */	addi r4, r1, 8
/* 80B27D10  48 00 0A B1 */	bl setAction__11daNpc_Uri_cFM11daNpc_Uri_cFPCvPvPv_i
lbl_80B27D14:
/* 80B27D14  38 60 00 01 */	li r3, 1
/* 80B27D18  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80B27D1C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B27D20  7C 08 03 A6 */	mtlr r0
/* 80B27D24  38 21 00 30 */	addi r1, r1, 0x30
/* 80B27D28  4E 80 00 20 */	blr 
