lbl_8004AF98:
/* 8004AF98  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8004AF9C  7C 08 02 A6 */	mflr r0
/* 8004AFA0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8004AFA4  39 61 00 20 */	addi r11, r1, 0x20
/* 8004AFA8  48 31 72 35 */	bl _savegpr_29
/* 8004AFAC  7C 7D 1B 78 */	mr r29, r3
/* 8004AFB0  7C 9E 23 78 */	mr r30, r4
/* 8004AFB4  38 00 00 00 */	li r0, 0
/* 8004AFB8  90 03 00 04 */	stw r0, 4(r3)
/* 8004AFBC  98 C3 00 0A */	stb r6, 0xa(r3)
/* 8004AFC0  B0 A3 00 08 */	sth r5, 8(r3)
/* 8004AFC4  38 00 00 20 */	li r0, 0x20
/* 8004AFC8  B0 03 00 0E */	sth r0, 0xe(r3)
/* 8004AFCC  A3 E3 00 0E */	lhz r31, 0xe(r3)
/* 8004AFD0  1C 7F 00 14 */	mulli r3, r31, 0x14
/* 8004AFD4  38 63 00 10 */	addi r3, r3, 0x10
/* 8004AFD8  48 28 3C ED */	bl __nwa__FUl
/* 8004AFDC  3C 80 80 05 */	lis r4, __ct__16dPa_simpleData_cFv@ha
/* 8004AFE0  38 84 B0 60 */	addi r4, r4, __ct__16dPa_simpleData_cFv@l
/* 8004AFE4  3C A0 80 05 */	lis r5, __dt__16dPa_simpleData_cFv@ha
/* 8004AFE8  38 A5 B0 24 */	addi r5, r5, __dt__16dPa_simpleData_cFv@l
/* 8004AFEC  38 C0 00 14 */	li r6, 0x14
/* 8004AFF0  7F E7 FB 78 */	mr r7, r31
/* 8004AFF4  48 31 6F 21 */	bl __construct_new_array
/* 8004AFF8  90 7D 00 10 */	stw r3, 0x10(r29)
/* 8004AFFC  7F A3 EB 78 */	mr r3, r29
/* 8004B000  7F C4 F3 78 */	mr r4, r30
/* 8004B004  48 00 00 61 */	bl createEmitter__19dPa_simpleEcallBackFP17JPAEmitterManager
/* 8004B008  80 7D 00 04 */	lwz r3, 4(r29)
/* 8004B00C  39 61 00 20 */	addi r11, r1, 0x20
/* 8004B010  48 31 72 19 */	bl _restgpr_29
/* 8004B014  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8004B018  7C 08 03 A6 */	mtlr r0
/* 8004B01C  38 21 00 20 */	addi r1, r1, 0x20
/* 8004B020  4E 80 00 20 */	blr 
