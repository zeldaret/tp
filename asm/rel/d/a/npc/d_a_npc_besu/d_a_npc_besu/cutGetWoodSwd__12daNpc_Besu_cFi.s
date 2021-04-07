lbl_8053AF5C:
/* 8053AF5C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8053AF60  7C 08 02 A6 */	mflr r0
/* 8053AF64  90 01 00 24 */	stw r0, 0x24(r1)
/* 8053AF68  39 61 00 20 */	addi r11, r1, 0x20
/* 8053AF6C  4B E2 72 69 */	bl _savegpr_27
/* 8053AF70  7C 7B 1B 78 */	mr r27, r3
/* 8053AF74  7C 9C 23 78 */	mr r28, r4
/* 8053AF78  3B C0 00 00 */	li r30, 0
/* 8053AF7C  3B A0 FF FF */	li r29, -1
/* 8053AF80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8053AF84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8053AF88  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 8053AF8C  7F E3 FB 78 */	mr r3, r31
/* 8053AF90  3C A0 80 54 */	lis r5, d_a_npc_besu__stringBase0@ha /* 0x8053E908@ha */
/* 8053AF94  38 A5 E9 08 */	addi r5, r5, d_a_npc_besu__stringBase0@l /* 0x8053E908@l */
/* 8053AF98  38 A5 01 F3 */	addi r5, r5, 0x1f3
/* 8053AF9C  38 C0 00 03 */	li r6, 3
/* 8053AFA0  4B B0 D1 4D */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 8053AFA4  28 03 00 00 */	cmplwi r3, 0
/* 8053AFA8  41 82 00 08 */	beq lbl_8053AFB0
/* 8053AFAC  83 A3 00 00 */	lwz r29, 0(r3)
lbl_8053AFB0:
/* 8053AFB0  7F E3 FB 78 */	mr r3, r31
/* 8053AFB4  7F 84 E3 78 */	mr r4, r28
/* 8053AFB8  4B B0 CD 95 */	bl getIsAddvance__16dEvent_manager_cFi
/* 8053AFBC  2C 03 00 00 */	cmpwi r3, 0
/* 8053AFC0  41 82 00 40 */	beq lbl_8053B000
/* 8053AFC4  2C 1D 00 0A */	cmpwi r29, 0xa
/* 8053AFC8  41 82 00 38 */	beq lbl_8053B000
/* 8053AFCC  40 80 00 14 */	bge lbl_8053AFE0
/* 8053AFD0  2C 1D 00 01 */	cmpwi r29, 1
/* 8053AFD4  41 82 00 18 */	beq lbl_8053AFEC
/* 8053AFD8  40 80 00 28 */	bge lbl_8053B000
/* 8053AFDC  48 00 00 24 */	b lbl_8053B000
lbl_8053AFE0:
/* 8053AFE0  2C 1D 00 0C */	cmpwi r29, 0xc
/* 8053AFE4  40 80 00 1C */	bge lbl_8053B000
/* 8053AFE8  48 00 00 10 */	b lbl_8053AFF8
lbl_8053AFEC:
/* 8053AFEC  38 00 00 01 */	li r0, 1
/* 8053AFF0  98 1B 0E 25 */	stb r0, 0xe25(r27)
/* 8053AFF4  48 00 00 0C */	b lbl_8053B000
lbl_8053AFF8:
/* 8053AFF8  38 00 00 00 */	li r0, 0
/* 8053AFFC  98 1B 0E 25 */	stb r0, 0xe25(r27)
lbl_8053B000:
/* 8053B000  2C 1D 00 0A */	cmpwi r29, 0xa
/* 8053B004  40 80 00 18 */	bge lbl_8053B01C
/* 8053B008  2C 1D 00 02 */	cmpwi r29, 2
/* 8053B00C  40 80 00 30 */	bge lbl_8053B03C
/* 8053B010  2C 1D 00 00 */	cmpwi r29, 0
/* 8053B014  40 80 00 10 */	bge lbl_8053B024
/* 8053B018  48 00 00 24 */	b lbl_8053B03C
lbl_8053B01C:
/* 8053B01C  2C 1D 00 0C */	cmpwi r29, 0xc
/* 8053B020  40 80 00 1C */	bge lbl_8053B03C
lbl_8053B024:
/* 8053B024  7F 63 DB 78 */	mr r3, r27
/* 8053B028  81 9B 0E 3C */	lwz r12, 0xe3c(r27)
/* 8053B02C  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8053B030  7D 89 03 A6 */	mtctr r12
/* 8053B034  4E 80 04 21 */	bctrl 
/* 8053B038  3B C0 00 01 */	li r30, 1
lbl_8053B03C:
/* 8053B03C  7F C3 F3 78 */	mr r3, r30
/* 8053B040  39 61 00 20 */	addi r11, r1, 0x20
/* 8053B044  4B E2 71 DD */	bl _restgpr_27
/* 8053B048  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8053B04C  7C 08 03 A6 */	mtlr r0
/* 8053B050  38 21 00 20 */	addi r1, r1, 0x20
/* 8053B054  4E 80 00 20 */	blr 
