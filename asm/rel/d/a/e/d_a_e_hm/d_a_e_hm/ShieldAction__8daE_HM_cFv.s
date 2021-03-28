lbl_806E2C50:
/* 806E2C50  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806E2C54  7C 08 02 A6 */	mflr r0
/* 806E2C58  90 01 00 24 */	stw r0, 0x24(r1)
/* 806E2C5C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806E2C60  93 C1 00 18 */	stw r30, 0x18(r1)
/* 806E2C64  7C 7E 1B 78 */	mr r30, r3
/* 806E2C68  3C 80 80 6E */	lis r4, lit_3791@ha
/* 806E2C6C  3B E4 59 20 */	addi r31, r4, lit_3791@l
/* 806E2C70  A8 03 05 D6 */	lha r0, 0x5d6(r3)
/* 806E2C74  2C 00 00 01 */	cmpwi r0, 1
/* 806E2C78  41 82 00 74 */	beq lbl_806E2CEC
/* 806E2C7C  40 80 00 74 */	bge lbl_806E2CF0
/* 806E2C80  2C 00 00 00 */	cmpwi r0, 0
/* 806E2C84  40 80 00 08 */	bge lbl_806E2C8C
/* 806E2C88  48 00 00 68 */	b lbl_806E2CF0
lbl_806E2C8C:
/* 806E2C8C  38 80 00 0B */	li r4, 0xb
/* 806E2C90  38 A0 00 00 */	li r5, 0
/* 806E2C94  C0 3F 00 E0 */	lfs f1, 0xe0(r31)
/* 806E2C98  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806E2C9C  4B FF E1 F1 */	bl SetAnm__8daE_HM_cFiiff
/* 806E2CA0  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070242@ha */
/* 806E2CA4  38 03 02 42 */	addi r0, r3, 0x0242 /* 0x00070242@l */
/* 806E2CA8  90 01 00 08 */	stw r0, 8(r1)
/* 806E2CAC  38 7E 06 30 */	addi r3, r30, 0x630
/* 806E2CB0  38 81 00 08 */	addi r4, r1, 8
/* 806E2CB4  38 A0 FF FF */	li r5, -1
/* 806E2CB8  81 9E 06 30 */	lwz r12, 0x630(r30)
/* 806E2CBC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806E2CC0  7D 89 03 A6 */	mtctr r12
/* 806E2CC4  4E 80 04 21 */	bctrl 
/* 806E2CC8  3C 60 80 6E */	lis r3, data_806E5C80@ha
/* 806E2CCC  A8 03 5C 80 */	lha r0, data_806E5C80@l(r3)
/* 806E2CD0  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 806E2CD4  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 806E2CD8  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 806E2CDC  A8 7E 05 D6 */	lha r3, 0x5d6(r30)
/* 806E2CE0  38 03 00 01 */	addi r0, r3, 1
/* 806E2CE4  B0 1E 05 D6 */	sth r0, 0x5d6(r30)
/* 806E2CE8  48 00 00 08 */	b lbl_806E2CF0
lbl_806E2CEC:
/* 806E2CEC  4B FF FE 95 */	bl ShieldMotion__8daE_HM_cFv
lbl_806E2CF0:
/* 806E2CF0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806E2CF4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 806E2CF8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806E2CFC  7C 08 03 A6 */	mtlr r0
/* 806E2D00  38 21 00 20 */	addi r1, r1, 0x20
/* 806E2D04  4E 80 00 20 */	blr 
