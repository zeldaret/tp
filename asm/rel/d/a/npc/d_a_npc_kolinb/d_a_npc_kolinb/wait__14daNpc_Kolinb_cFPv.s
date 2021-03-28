lbl_80A4742C:
/* 80A4742C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A47430  7C 08 02 A6 */	mflr r0
/* 80A47434  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A47438  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A4743C  93 C1 00 08 */	stw r30, 8(r1)
/* 80A47440  7C 7F 1B 78 */	mr r31, r3
/* 80A47444  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80A47448  2C 00 00 02 */	cmpwi r0, 2
/* 80A4744C  41 82 01 64 */	beq lbl_80A475B0
/* 80A47450  40 80 01 68 */	bge lbl_80A475B8
/* 80A47454  2C 00 00 00 */	cmpwi r0, 0
/* 80A47458  40 80 00 0C */	bge lbl_80A47464
/* 80A4745C  48 00 01 5C */	b lbl_80A475B8
/* 80A47460  48 00 01 58 */	b lbl_80A475B8
lbl_80A47464:
/* 80A47464  88 1F 0F B4 */	lbz r0, 0xfb4(r31)
/* 80A47468  2C 00 00 02 */	cmpwi r0, 2
/* 80A4746C  41 82 00 78 */	beq lbl_80A474E4
/* 80A47470  40 80 00 D8 */	bge lbl_80A47548
/* 80A47474  2C 00 00 01 */	cmpwi r0, 1
/* 80A47478  40 80 00 08 */	bge lbl_80A47480
/* 80A4747C  48 00 00 CC */	b lbl_80A47548
lbl_80A47480:
/* 80A47480  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80A47484  2C 00 00 01 */	cmpwi r0, 1
/* 80A47488  41 82 00 28 */	beq lbl_80A474B0
/* 80A4748C  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80A47490  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80A47494  4B 6F E4 04 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A47498  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80A4749C  38 00 00 01 */	li r0, 1
/* 80A474A0  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80A474A4  3C 60 80 A5 */	lis r3, lit_4542@ha
/* 80A474A8  C0 03 87 D0 */	lfs f0, lit_4542@l(r3)
/* 80A474AC  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80A474B0:
/* 80A474B0  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80A474B4  2C 00 00 01 */	cmpwi r0, 1
/* 80A474B8  41 82 00 F0 */	beq lbl_80A475A8
/* 80A474BC  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80A474C0  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80A474C4  4B 6F E3 D4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A474C8  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80A474CC  38 00 00 01 */	li r0, 1
/* 80A474D0  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80A474D4  3C 60 80 A5 */	lis r3, lit_4542@ha
/* 80A474D8  C0 03 87 D0 */	lfs f0, lit_4542@l(r3)
/* 80A474DC  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 80A474E0  48 00 00 C8 */	b lbl_80A475A8
lbl_80A474E4:
/* 80A474E4  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80A474E8  2C 00 00 05 */	cmpwi r0, 5
/* 80A474EC  41 82 00 28 */	beq lbl_80A47514
/* 80A474F0  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80A474F4  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80A474F8  4B 6F E3 A0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A474FC  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80A47500  38 00 00 05 */	li r0, 5
/* 80A47504  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80A47508  3C 60 80 A5 */	lis r3, lit_4542@ha
/* 80A4750C  C0 03 87 D0 */	lfs f0, lit_4542@l(r3)
/* 80A47510  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80A47514:
/* 80A47514  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80A47518  2C 00 00 05 */	cmpwi r0, 5
/* 80A4751C  41 82 00 8C */	beq lbl_80A475A8
/* 80A47520  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80A47524  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80A47528  4B 6F E3 70 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A4752C  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80A47530  38 00 00 05 */	li r0, 5
/* 80A47534  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80A47538  3C 60 80 A5 */	lis r3, lit_4542@ha
/* 80A4753C  C0 03 87 D0 */	lfs f0, lit_4542@l(r3)
/* 80A47540  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 80A47544  48 00 00 64 */	b lbl_80A475A8
lbl_80A47548:
/* 80A47548  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80A4754C  2C 00 00 00 */	cmpwi r0, 0
/* 80A47550  41 82 00 28 */	beq lbl_80A47578
/* 80A47554  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80A47558  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80A4755C  4B 6F E3 3C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A47560  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80A47564  38 00 00 00 */	li r0, 0
/* 80A47568  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80A4756C  3C 60 80 A5 */	lis r3, lit_4542@ha
/* 80A47570  C0 03 87 D0 */	lfs f0, lit_4542@l(r3)
/* 80A47574  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80A47578:
/* 80A47578  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80A4757C  2C 00 00 00 */	cmpwi r0, 0
/* 80A47580  41 82 00 28 */	beq lbl_80A475A8
/* 80A47584  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80A47588  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80A4758C  4B 6F E3 0C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A47590  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80A47594  38 00 00 00 */	li r0, 0
/* 80A47598  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80A4759C  3C 60 80 A5 */	lis r3, lit_4542@ha
/* 80A475A0  C0 03 87 D0 */	lfs f0, lit_4542@l(r3)
/* 80A475A4  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80A475A8:
/* 80A475A8  38 00 00 02 */	li r0, 2
/* 80A475AC  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80A475B0:
/* 80A475B0  38 00 00 00 */	li r0, 0
/* 80A475B4  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_80A475B8:
/* 80A475B8  38 60 00 01 */	li r3, 1
/* 80A475BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A475C0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A475C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A475C8  7C 08 03 A6 */	mtlr r0
/* 80A475CC  38 21 00 10 */	addi r1, r1, 0x10
/* 80A475D0  4E 80 00 20 */	blr 
