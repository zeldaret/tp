lbl_80CCC498:
/* 80CCC498  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CCC49C  7C 08 02 A6 */	mflr r0
/* 80CCC4A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CCC4A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CCC4A8  7C 7F 1B 78 */	mr r31, r3
/* 80CCC4AC  48 00 02 A1 */	bl exeEmtSmoke__17daObjSCannonTen_cFv
/* 80CCC4B0  7F E3 FB 78 */	mr r3, r31
/* 80CCC4B4  48 00 04 05 */	bl exeEmtLine__17daObjSCannonTen_cFv
/* 80CCC4B8  38 80 00 01 */	li r4, 1
/* 80CCC4BC  88 1F 05 7D */	lbz r0, 0x57d(r31)
/* 80CCC4C0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80CCC4C4  40 82 00 1C */	bne lbl_80CCC4E0
/* 80CCC4C8  3C 60 80 CD */	lis r3, lit_3832@ha /* 0x80CCCC38@ha */
/* 80CCC4CC  C0 23 CC 38 */	lfs f1, lit_3832@l(r3)  /* 0x80CCCC38@l */
/* 80CCC4D0  C0 1F 05 84 */	lfs f0, 0x584(r31)
/* 80CCC4D4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80CCC4D8  41 82 00 08 */	beq lbl_80CCC4E0
/* 80CCC4DC  38 80 00 00 */	li r4, 0
lbl_80CCC4E0:
/* 80CCC4E0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80CCC4E4  41 82 00 30 */	beq lbl_80CCC514
/* 80CCC4E8  38 7F 05 E0 */	addi r3, r31, 0x5e0
/* 80CCC4EC  48 00 05 81 */	bl func_80CCCA6C
/* 80CCC4F0  2C 03 00 00 */	cmpwi r3, 0
/* 80CCC4F4  40 82 00 20 */	bne lbl_80CCC514
/* 80CCC4F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CCC4FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CCC500  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80CCC504  80 9F 05 E4 */	lwz r4, 0x5e4(r31)
/* 80CCC508  4B 37 BC 75 */	bl cutEnd__16dEvent_manager_cFi
/* 80CCC50C  7F E3 FB 78 */	mr r3, r31
/* 80CCC510  48 00 00 91 */	bl changeScene__17daObjSCannonTen_cFv
lbl_80CCC514:
/* 80CCC514  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CCC518  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CCC51C  7C 08 03 A6 */	mtlr r0
/* 80CCC520  38 21 00 10 */	addi r1, r1, 0x10
/* 80CCC524  4E 80 00 20 */	blr 
