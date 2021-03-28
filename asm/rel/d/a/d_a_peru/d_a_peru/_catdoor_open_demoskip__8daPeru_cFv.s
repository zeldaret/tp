lbl_80D4A920:
/* 80D4A920  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4A924  7C 08 02 A6 */	mflr r0
/* 80D4A928  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4A92C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D4A930  38 63 0E 48 */	addi r3, r3, 0xe48
/* 80D4A934  4B 3F AD D4 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80D4A938  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D4A93C  41 82 00 34 */	beq lbl_80D4A970
/* 80D4A940  38 00 88 00 */	li r0, -30720
/* 80D4A944  B0 1F 06 64 */	sth r0, 0x664(r31)
/* 80D4A948  38 00 78 00 */	li r0, 0x7800
/* 80D4A94C  B0 1F 07 5C */	sth r0, 0x75c(r31)
/* 80D4A950  4B E7 9B 04 */	b setBaseMtx__14daObjCatDoor_cFv
/* 80D4A954  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D4A958  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D4A95C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D4A960  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80D4A964  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D4A968  7C 05 07 74 */	extsb r5, r0
/* 80D4A96C  4B 2E A8 94 */	b onSwitch__10dSv_info_cFii
lbl_80D4A970:
/* 80D4A970  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D4A974  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4A978  7C 08 03 A6 */	mtlr r0
/* 80D4A97C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4A980  4E 80 00 20 */	blr 
