lbl_8053BA60:
/* 8053BA60  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8053BA64  7C 08 02 A6 */	mflr r0
/* 8053BA68  90 01 00 24 */	stw r0, 0x24(r1)
/* 8053BA6C  39 61 00 20 */	addi r11, r1, 0x20
/* 8053BA70  4B E2 67 65 */	bl _savegpr_27
/* 8053BA74  7C 7D 1B 78 */	mr r29, r3
/* 8053BA78  7C 9B 23 78 */	mr r27, r4
/* 8053BA7C  3B E0 00 00 */	li r31, 0
/* 8053BA80  3B C0 FF FF */	li r30, -1
/* 8053BA84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8053BA88  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8053BA8C  3B 83 4F F8 */	addi r28, r3, 0x4ff8
/* 8053BA90  7F 83 E3 78 */	mr r3, r28
/* 8053BA94  3C A0 80 54 */	lis r5, d_a_npc_besu__stringBase0@ha /* 0x8053E908@ha */
/* 8053BA98  38 A5 E9 08 */	addi r5, r5, d_a_npc_besu__stringBase0@l /* 0x8053E908@l */
/* 8053BA9C  38 A5 01 F3 */	addi r5, r5, 0x1f3
/* 8053BAA0  38 C0 00 03 */	li r6, 3
/* 8053BAA4  4B B0 C6 49 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 8053BAA8  28 03 00 00 */	cmplwi r3, 0
/* 8053BAAC  41 82 00 08 */	beq lbl_8053BAB4
/* 8053BAB0  83 C3 00 00 */	lwz r30, 0(r3)
lbl_8053BAB4:
/* 8053BAB4  7F 83 E3 78 */	mr r3, r28
/* 8053BAB8  7F 64 DB 78 */	mr r4, r27
/* 8053BABC  4B B0 C2 91 */	bl getIsAddvance__16dEvent_manager_cFi
/* 8053BAC0  2C 03 00 00 */	cmpwi r3, 0
/* 8053BAC4  41 82 01 B0 */	beq lbl_8053BC74
/* 8053BAC8  2C 1E 00 02 */	cmpwi r30, 2
/* 8053BACC  41 82 00 F4 */	beq lbl_8053BBC0
/* 8053BAD0  40 80 00 14 */	bge lbl_8053BAE4
/* 8053BAD4  2C 1E 00 00 */	cmpwi r30, 0
/* 8053BAD8  41 82 00 18 */	beq lbl_8053BAF0
/* 8053BADC  40 80 00 78 */	bge lbl_8053BB54
/* 8053BAE0  48 00 01 94 */	b lbl_8053BC74
lbl_8053BAE4:
/* 8053BAE4  2C 1E 00 04 */	cmpwi r30, 4
/* 8053BAE8  40 80 01 8C */	bge lbl_8053BC74
/* 8053BAEC  48 00 01 20 */	b lbl_8053BC0C
lbl_8053BAF0:
/* 8053BAF0  80 1D 0B 58 */	lwz r0, 0xb58(r29)
/* 8053BAF4  2C 00 00 05 */	cmpwi r0, 5
/* 8053BAF8  41 82 00 28 */	beq lbl_8053BB20
/* 8053BAFC  83 9D 0B 5C */	lwz r28, 0xb5c(r29)
/* 8053BB00  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 8053BB04  4B C0 9D 95 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8053BB08  93 9D 0B 5C */	stw r28, 0xb5c(r29)
/* 8053BB0C  38 00 00 05 */	li r0, 5
/* 8053BB10  90 1D 0B 58 */	stw r0, 0xb58(r29)
/* 8053BB14  3C 60 80 54 */	lis r3, lit_4894@ha /* 0x8053E86C@ha */
/* 8053BB18  C0 03 E8 6C */	lfs f0, lit_4894@l(r3)  /* 0x8053E86C@l */
/* 8053BB1C  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_8053BB20:
/* 8053BB20  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 8053BB24  2C 00 00 0F */	cmpwi r0, 0xf
/* 8053BB28  41 82 01 4C */	beq lbl_8053BC74
/* 8053BB2C  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 8053BB30  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 8053BB34  4B C0 9D 65 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8053BB38  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 8053BB3C  38 00 00 0F */	li r0, 0xf
/* 8053BB40  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 8053BB44  3C 60 80 54 */	lis r3, lit_4894@ha /* 0x8053E86C@ha */
/* 8053BB48  C0 03 E8 6C */	lfs f0, lit_4894@l(r3)  /* 0x8053E86C@l */
/* 8053BB4C  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
/* 8053BB50  48 00 01 24 */	b lbl_8053BC74
lbl_8053BB54:
/* 8053BB54  80 1D 0B 58 */	lwz r0, 0xb58(r29)
/* 8053BB58  2C 00 00 06 */	cmpwi r0, 6
/* 8053BB5C  41 82 00 28 */	beq lbl_8053BB84
/* 8053BB60  83 9D 0B 5C */	lwz r28, 0xb5c(r29)
/* 8053BB64  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 8053BB68  4B C0 9D 31 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8053BB6C  93 9D 0B 5C */	stw r28, 0xb5c(r29)
/* 8053BB70  38 00 00 06 */	li r0, 6
/* 8053BB74  90 1D 0B 58 */	stw r0, 0xb58(r29)
/* 8053BB78  3C 60 80 54 */	lis r3, lit_4894@ha /* 0x8053E86C@ha */
/* 8053BB7C  C0 03 E8 6C */	lfs f0, lit_4894@l(r3)  /* 0x8053E86C@l */
/* 8053BB80  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_8053BB84:
/* 8053BB84  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 8053BB88  2C 00 00 10 */	cmpwi r0, 0x10
/* 8053BB8C  41 82 00 28 */	beq lbl_8053BBB4
/* 8053BB90  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 8053BB94  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 8053BB98  4B C0 9D 01 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8053BB9C  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 8053BBA0  38 00 00 10 */	li r0, 0x10
/* 8053BBA4  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 8053BBA8  3C 60 80 54 */	lis r3, lit_4894@ha /* 0x8053E86C@ha */
/* 8053BBAC  C0 03 E8 6C */	lfs f0, lit_4894@l(r3)  /* 0x8053E86C@l */
/* 8053BBB0  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
lbl_8053BBB4:
/* 8053BBB4  38 00 00 20 */	li r0, 0x20
/* 8053BBB8  90 1D 11 20 */	stw r0, 0x1120(r29)
/* 8053BBBC  48 00 00 B8 */	b lbl_8053BC74
lbl_8053BBC0:
/* 8053BBC0  83 9D 0B 5C */	lwz r28, 0xb5c(r29)
/* 8053BBC4  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 8053BBC8  4B C0 9C D1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8053BBCC  93 9D 0B 5C */	stw r28, 0xb5c(r29)
/* 8053BBD0  38 00 00 05 */	li r0, 5
/* 8053BBD4  90 1D 0B 58 */	stw r0, 0xb58(r29)
/* 8053BBD8  3C 60 80 54 */	lis r3, lit_4337@ha /* 0x8053E844@ha */
/* 8053BBDC  C0 03 E8 44 */	lfs f0, lit_4337@l(r3)  /* 0x8053E844@l */
/* 8053BBE0  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
/* 8053BBE4  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 8053BBE8  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 8053BBEC  4B C0 9C AD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8053BBF0  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 8053BBF4  38 00 00 0F */	li r0, 0xf
/* 8053BBF8  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 8053BBFC  3C 60 80 54 */	lis r3, lit_4337@ha /* 0x8053E844@ha */
/* 8053BC00  C0 03 E8 44 */	lfs f0, lit_4337@l(r3)  /* 0x8053E844@l */
/* 8053BC04  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
/* 8053BC08  48 00 00 6C */	b lbl_8053BC74
lbl_8053BC0C:
/* 8053BC0C  80 1D 0B 58 */	lwz r0, 0xb58(r29)
/* 8053BC10  2C 00 00 06 */	cmpwi r0, 6
/* 8053BC14  41 82 00 28 */	beq lbl_8053BC3C
/* 8053BC18  83 9D 0B 5C */	lwz r28, 0xb5c(r29)
/* 8053BC1C  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 8053BC20  4B C0 9C 79 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8053BC24  93 9D 0B 5C */	stw r28, 0xb5c(r29)
/* 8053BC28  38 00 00 06 */	li r0, 6
/* 8053BC2C  90 1D 0B 58 */	stw r0, 0xb58(r29)
/* 8053BC30  3C 60 80 54 */	lis r3, lit_4894@ha /* 0x8053E86C@ha */
/* 8053BC34  C0 03 E8 6C */	lfs f0, lit_4894@l(r3)  /* 0x8053E86C@l */
/* 8053BC38  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_8053BC3C:
/* 8053BC3C  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 8053BC40  2C 00 00 10 */	cmpwi r0, 0x10
/* 8053BC44  41 82 00 28 */	beq lbl_8053BC6C
/* 8053BC48  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 8053BC4C  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 8053BC50  4B C0 9C 49 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8053BC54  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 8053BC58  38 00 00 10 */	li r0, 0x10
/* 8053BC5C  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 8053BC60  3C 60 80 54 */	lis r3, lit_4894@ha /* 0x8053E86C@ha */
/* 8053BC64  C0 03 E8 6C */	lfs f0, lit_4894@l(r3)  /* 0x8053E86C@l */
/* 8053BC68  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
lbl_8053BC6C:
/* 8053BC6C  38 00 00 20 */	li r0, 0x20
/* 8053BC70  90 1D 11 20 */	stw r0, 0x1120(r29)
lbl_8053BC74:
/* 8053BC74  2C 1E 00 02 */	cmpwi r30, 2
/* 8053BC78  41 82 00 68 */	beq lbl_8053BCE0
/* 8053BC7C  40 80 00 14 */	bge lbl_8053BC90
/* 8053BC80  2C 1E 00 00 */	cmpwi r30, 0
/* 8053BC84  41 82 00 18 */	beq lbl_8053BC9C
/* 8053BC88  40 80 00 30 */	bge lbl_8053BCB8
/* 8053BC8C  48 00 00 70 */	b lbl_8053BCFC
lbl_8053BC90:
/* 8053BC90  2C 1E 00 04 */	cmpwi r30, 4
/* 8053BC94  40 80 00 68 */	bge lbl_8053BCFC
/* 8053BC98  48 00 00 50 */	b lbl_8053BCE8
lbl_8053BC9C:
/* 8053BC9C  7F A3 EB 78 */	mr r3, r29
/* 8053BCA0  81 9D 0E 3C */	lwz r12, 0xe3c(r29)
/* 8053BCA4  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8053BCA8  7D 89 03 A6 */	mtctr r12
/* 8053BCAC  4E 80 04 21 */	bctrl 
/* 8053BCB0  3B E0 00 01 */	li r31, 1
/* 8053BCB4  48 00 00 48 */	b lbl_8053BCFC
lbl_8053BCB8:
/* 8053BCB8  7F A3 EB 78 */	mr r3, r29
/* 8053BCBC  81 9D 0E 3C */	lwz r12, 0xe3c(r29)
/* 8053BCC0  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8053BCC4  7D 89 03 A6 */	mtctr r12
/* 8053BCC8  4E 80 04 21 */	bctrl 
/* 8053BCCC  80 1D 11 20 */	lwz r0, 0x1120(r29)
/* 8053BCD0  2C 00 00 00 */	cmpwi r0, 0
/* 8053BCD4  40 82 00 28 */	bne lbl_8053BCFC
/* 8053BCD8  3B E0 00 01 */	li r31, 1
/* 8053BCDC  48 00 00 20 */	b lbl_8053BCFC
lbl_8053BCE0:
/* 8053BCE0  3B E0 00 01 */	li r31, 1
/* 8053BCE4  48 00 00 18 */	b lbl_8053BCFC
lbl_8053BCE8:
/* 8053BCE8  38 7D 11 20 */	addi r3, r29, 0x1120
/* 8053BCEC  48 00 26 49 */	bl func_8053E334
/* 8053BCF0  2C 03 00 00 */	cmpwi r3, 0
/* 8053BCF4  40 82 00 08 */	bne lbl_8053BCFC
/* 8053BCF8  3B E0 00 01 */	li r31, 1
lbl_8053BCFC:
/* 8053BCFC  7F E3 FB 78 */	mr r3, r31
/* 8053BD00  39 61 00 20 */	addi r11, r1, 0x20
/* 8053BD04  4B E2 65 1D */	bl _restgpr_27
/* 8053BD08  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8053BD0C  7C 08 03 A6 */	mtlr r0
/* 8053BD10  38 21 00 20 */	addi r1, r1, 0x20
/* 8053BD14  4E 80 00 20 */	blr 
