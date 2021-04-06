lbl_8053BF60:
/* 8053BF60  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8053BF64  7C 08 02 A6 */	mflr r0
/* 8053BF68  90 01 00 24 */	stw r0, 0x24(r1)
/* 8053BF6C  39 61 00 20 */	addi r11, r1, 0x20
/* 8053BF70  4B E2 62 65 */	bl _savegpr_27
/* 8053BF74  7C 7F 1B 78 */	mr r31, r3
/* 8053BF78  7C 9B 23 78 */	mr r27, r4
/* 8053BF7C  3B A0 00 00 */	li r29, 0
/* 8053BF80  3B 80 FF FF */	li r28, -1
/* 8053BF84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8053BF88  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8053BF8C  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 8053BF90  7F C3 F3 78 */	mr r3, r30
/* 8053BF94  3C A0 80 54 */	lis r5, d_a_npc_besu__stringBase0@ha /* 0x8053E908@ha */
/* 8053BF98  38 A5 E9 08 */	addi r5, r5, d_a_npc_besu__stringBase0@l /* 0x8053E908@l */
/* 8053BF9C  38 A5 01 F3 */	addi r5, r5, 0x1f3
/* 8053BFA0  38 C0 00 03 */	li r6, 3
/* 8053BFA4  4B B0 C1 49 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 8053BFA8  28 03 00 00 */	cmplwi r3, 0
/* 8053BFAC  41 82 00 08 */	beq lbl_8053BFB4
/* 8053BFB0  83 83 00 00 */	lwz r28, 0(r3)
lbl_8053BFB4:
/* 8053BFB4  7F C3 F3 78 */	mr r3, r30
/* 8053BFB8  7F 64 DB 78 */	mr r4, r27
/* 8053BFBC  4B B0 BD 91 */	bl getIsAddvance__16dEvent_manager_cFi
/* 8053BFC0  2C 03 00 00 */	cmpwi r3, 0
/* 8053BFC4  41 82 00 74 */	beq lbl_8053C038
/* 8053BFC8  2C 1C 00 01 */	cmpwi r28, 1
/* 8053BFCC  41 82 00 0C */	beq lbl_8053BFD8
/* 8053BFD0  40 80 00 68 */	bge lbl_8053C038
/* 8053BFD4  48 00 00 64 */	b lbl_8053C038
lbl_8053BFD8:
/* 8053BFD8  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 8053BFDC  2C 00 00 19 */	cmpwi r0, 0x19
/* 8053BFE0  41 82 00 28 */	beq lbl_8053C008
/* 8053BFE4  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 8053BFE8  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 8053BFEC  4B C0 98 AD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8053BFF0  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 8053BFF4  38 00 00 19 */	li r0, 0x19
/* 8053BFF8  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 8053BFFC  3C 60 80 54 */	lis r3, lit_4337@ha /* 0x8053E844@ha */
/* 8053C000  C0 03 E8 44 */	lfs f0, lit_4337@l(r3)  /* 0x8053E844@l */
/* 8053C004  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_8053C008:
/* 8053C008  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 8053C00C  2C 00 00 1B */	cmpwi r0, 0x1b
/* 8053C010  41 82 00 28 */	beq lbl_8053C038
/* 8053C014  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 8053C018  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 8053C01C  4B C0 98 7D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8053C020  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 8053C024  38 00 00 1B */	li r0, 0x1b
/* 8053C028  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 8053C02C  3C 60 80 54 */	lis r3, lit_4337@ha /* 0x8053E844@ha */
/* 8053C030  C0 03 E8 44 */	lfs f0, lit_4337@l(r3)  /* 0x8053E844@l */
/* 8053C034  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_8053C038:
/* 8053C038  2C 1C 00 01 */	cmpwi r28, 1
/* 8053C03C  41 82 00 30 */	beq lbl_8053C06C
/* 8053C040  40 80 00 30 */	bge lbl_8053C070
/* 8053C044  2C 1C 00 00 */	cmpwi r28, 0
/* 8053C048  40 80 00 08 */	bge lbl_8053C050
/* 8053C04C  48 00 00 24 */	b lbl_8053C070
lbl_8053C050:
/* 8053C050  7F E3 FB 78 */	mr r3, r31
/* 8053C054  81 9F 0E 3C */	lwz r12, 0xe3c(r31)
/* 8053C058  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8053C05C  7D 89 03 A6 */	mtctr r12
/* 8053C060  4E 80 04 21 */	bctrl 
/* 8053C064  3B A0 00 01 */	li r29, 1
/* 8053C068  48 00 00 08 */	b lbl_8053C070
lbl_8053C06C:
/* 8053C06C  3B A0 00 01 */	li r29, 1
lbl_8053C070:
/* 8053C070  7F A3 EB 78 */	mr r3, r29
/* 8053C074  39 61 00 20 */	addi r11, r1, 0x20
/* 8053C078  4B E2 61 A9 */	bl _restgpr_27
/* 8053C07C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8053C080  7C 08 03 A6 */	mtlr r0
/* 8053C084  38 21 00 20 */	addi r1, r1, 0x20
/* 8053C088  4E 80 00 20 */	blr 
