lbl_80539BA0:
/* 80539BA0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80539BA4  7C 08 02 A6 */	mflr r0
/* 80539BA8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80539BAC  39 61 00 20 */	addi r11, r1, 0x20
/* 80539BB0  4B E2 86 29 */	bl _savegpr_28
/* 80539BB4  7C 7F 1B 78 */	mr r31, r3
/* 80539BB8  7C 9C 23 78 */	mr r28, r4
/* 80539BBC  7C BD 2B 78 */	mr r29, r5
/* 80539BC0  80 03 11 20 */	lwz r0, 0x1120(r3)
/* 80539BC4  2C 00 00 00 */	cmpwi r0, 0
/* 80539BC8  41 82 00 88 */	beq lbl_80539C50
/* 80539BCC  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 80539BD0  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80539BD4  7D 89 03 A6 */	mtctr r12
/* 80539BD8  4E 80 04 21 */	bctrl 
/* 80539BDC  80 1F 11 20 */	lwz r0, 0x1120(r31)
/* 80539BE0  2C 00 00 00 */	cmpwi r0, 0
/* 80539BE4  40 82 00 F8 */	bne lbl_80539CDC
/* 80539BE8  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80539BEC  2C 00 00 07 */	cmpwi r0, 7
/* 80539BF0  41 82 00 28 */	beq lbl_80539C18
/* 80539BF4  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80539BF8  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80539BFC  4B C0 BC 9D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80539C00  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80539C04  38 00 00 07 */	li r0, 7
/* 80539C08  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80539C0C  3C 60 80 54 */	lis r3, lit_5582@ha /* 0x8053E8CC@ha */
/* 80539C10  C0 03 E8 CC */	lfs f0, lit_5582@l(r3)  /* 0x8053E8CC@l */
/* 80539C14  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80539C18:
/* 80539C18  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80539C1C  2C 00 00 0D */	cmpwi r0, 0xd
/* 80539C20  41 82 00 28 */	beq lbl_80539C48
/* 80539C24  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80539C28  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80539C2C  4B C0 BC 6D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80539C30  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80539C34  38 00 00 0D */	li r0, 0xd
/* 80539C38  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80539C3C  3C 60 80 54 */	lis r3, lit_5582@ha /* 0x8053E8CC@ha */
/* 80539C40  C0 03 E8 CC */	lfs f0, lit_5582@l(r3)  /* 0x8053E8CC@l */
/* 80539C44  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80539C48:
/* 80539C48  93 BF 11 24 */	stw r29, 0x1124(r31)
/* 80539C4C  48 00 00 90 */	b lbl_80539CDC
lbl_80539C50:
/* 80539C50  80 1F 11 24 */	lwz r0, 0x1124(r31)
/* 80539C54  2C 00 00 00 */	cmpwi r0, 0
/* 80539C58  41 82 00 84 */	beq lbl_80539CDC
/* 80539C5C  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 80539C60  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80539C64  7D 89 03 A6 */	mtctr r12
/* 80539C68  4E 80 04 21 */	bctrl 
/* 80539C6C  80 1F 11 24 */	lwz r0, 0x1124(r31)
/* 80539C70  2C 00 00 00 */	cmpwi r0, 0
/* 80539C74  40 82 00 68 */	bne lbl_80539CDC
/* 80539C78  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80539C7C  2C 00 00 04 */	cmpwi r0, 4
/* 80539C80  41 82 00 28 */	beq lbl_80539CA8
/* 80539C84  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80539C88  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80539C8C  4B C0 BC 0D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80539C90  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80539C94  38 00 00 04 */	li r0, 4
/* 80539C98  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80539C9C  3C 60 80 54 */	lis r3, lit_5582@ha /* 0x8053E8CC@ha */
/* 80539CA0  C0 03 E8 CC */	lfs f0, lit_5582@l(r3)  /* 0x8053E8CC@l */
/* 80539CA4  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80539CA8:
/* 80539CA8  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80539CAC  2C 00 00 0E */	cmpwi r0, 0xe
/* 80539CB0  41 82 00 28 */	beq lbl_80539CD8
/* 80539CB4  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80539CB8  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80539CBC  4B C0 BB DD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80539CC0  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80539CC4  38 00 00 0E */	li r0, 0xe
/* 80539CC8  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80539CCC  3C 60 80 54 */	lis r3, lit_5582@ha /* 0x8053E8CC@ha */
/* 80539CD0  C0 03 E8 CC */	lfs f0, lit_5582@l(r3)  /* 0x8053E8CC@l */
/* 80539CD4  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80539CD8:
/* 80539CD8  93 9F 11 20 */	stw r28, 0x1120(r31)
lbl_80539CDC:
/* 80539CDC  39 61 00 20 */	addi r11, r1, 0x20
/* 80539CE0  4B E2 85 45 */	bl _restgpr_28
/* 80539CE4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80539CE8  7C 08 03 A6 */	mtlr r0
/* 80539CEC  38 21 00 20 */	addi r1, r1, 0x20
/* 80539CF0  4E 80 00 20 */	blr 
