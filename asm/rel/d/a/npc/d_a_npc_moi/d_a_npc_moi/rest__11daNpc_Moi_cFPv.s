lbl_80A794C0:
/* 80A794C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A794C4  7C 08 02 A6 */	mflr r0
/* 80A794C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A794CC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A794D0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80A794D4  7C 7F 1B 78 */	mr r31, r3
/* 80A794D8  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80A794DC  2C 00 00 02 */	cmpwi r0, 2
/* 80A794E0  41 82 00 8C */	beq lbl_80A7956C
/* 80A794E4  40 80 01 08 */	bge lbl_80A795EC
/* 80A794E8  2C 00 00 00 */	cmpwi r0, 0
/* 80A794EC  40 80 00 0C */	bge lbl_80A794F8
/* 80A794F0  48 00 00 FC */	b lbl_80A795EC
/* 80A794F4  48 00 00 F8 */	b lbl_80A795EC
lbl_80A794F8:
/* 80A794F8  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80A794FC  2C 00 00 00 */	cmpwi r0, 0
/* 80A79500  40 82 00 6C */	bne lbl_80A7956C
/* 80A79504  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80A79508  2C 00 00 09 */	cmpwi r0, 9
/* 80A7950C  41 82 00 28 */	beq lbl_80A79534
/* 80A79510  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80A79514  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80A79518  4B 6C C3 80 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A7951C  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80A79520  38 00 00 09 */	li r0, 9
/* 80A79524  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80A79528  3C 60 80 A8 */	lis r3, lit_4862@ha
/* 80A7952C  C0 03 B0 14 */	lfs f0, lit_4862@l(r3)
/* 80A79530  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80A79534:
/* 80A79534  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80A79538  2C 00 00 13 */	cmpwi r0, 0x13
/* 80A7953C  41 82 00 28 */	beq lbl_80A79564
/* 80A79540  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80A79544  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80A79548  4B 6C C3 50 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A7954C  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80A79550  38 00 00 13 */	li r0, 0x13
/* 80A79554  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80A79558  3C 60 80 A8 */	lis r3, lit_4862@ha
/* 80A7955C  C0 03 B0 14 */	lfs f0, lit_4862@l(r3)
/* 80A79560  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80A79564:
/* 80A79564  38 00 00 02 */	li r0, 2
/* 80A79568  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80A7956C:
/* 80A7956C  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80A79570  2C 00 00 00 */	cmpwi r0, 0
/* 80A79574  40 82 00 78 */	bne lbl_80A795EC
/* 80A79578  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A7957C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A79580  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80A79584  28 00 00 00 */	cmplwi r0, 0
/* 80A79588  40 82 00 2C */	bne lbl_80A795B4
/* 80A7958C  3C 60 00 05 */	lis r3, 0x0005 /* 0x000500DF@ha */
/* 80A79590  38 03 00 DF */	addi r0, r3, 0x00DF /* 0x000500DF@l */
/* 80A79594  90 01 00 08 */	stw r0, 8(r1)
/* 80A79598  38 7F 05 80 */	addi r3, r31, 0x580
/* 80A7959C  38 81 00 08 */	addi r4, r1, 8
/* 80A795A0  38 A0 FF FF */	li r5, -1
/* 80A795A4  81 9F 05 80 */	lwz r12, 0x580(r31)
/* 80A795A8  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80A795AC  7D 89 03 A6 */	mtctr r12
/* 80A795B0  4E 80 04 21 */	bctrl 
lbl_80A795B4:
/* 80A795B4  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80A795B8  2C 00 00 00 */	cmpwi r0, 0
/* 80A795BC  41 82 00 28 */	beq lbl_80A795E4
/* 80A795C0  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A795C4  4B 6C C1 38 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A795C8  38 00 00 00 */	li r0, 0
/* 80A795CC  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80A795D0  3C 60 80 A8 */	lis r3, lit_4115@ha
/* 80A795D4  C0 03 AF D8 */	lfs f0, lit_4115@l(r3)
/* 80A795D8  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80A795DC  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A795E0  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80A795E4:
/* 80A795E4  38 00 00 00 */	li r0, 0
/* 80A795E8  98 1F 0C FF */	stb r0, 0xcff(r31)
lbl_80A795EC:
/* 80A795EC  38 60 00 01 */	li r3, 1
/* 80A795F0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A795F4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80A795F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A795FC  7C 08 03 A6 */	mtlr r0
/* 80A79600  38 21 00 20 */	addi r1, r1, 0x20
/* 80A79604  4E 80 00 20 */	blr 
