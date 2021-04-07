lbl_80016394:
/* 80016394  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80016398  7C 08 02 A6 */	mflr r0
/* 8001639C  90 01 00 24 */	stw r0, 0x24(r1)
/* 800163A0  39 61 00 20 */	addi r11, r1, 0x20
/* 800163A4  48 34 BE 35 */	bl _savegpr_28
/* 800163A8  7C 7C 1B 78 */	mr r28, r3
/* 800163AC  7C 9D 23 78 */	mr r29, r4
/* 800163B0  7C BE 2B 78 */	mr r30, r5
/* 800163B4  4B FF 89 FD */	bl mDoExt_getCommandHeap__Fv
/* 800163B8  7C 64 1B 78 */	mr r4, r3
/* 800163BC  38 60 00 28 */	li r3, 0x28
/* 800163C0  38 A0 FF FC */	li r5, -4
/* 800163C4  48 2B 88 D5 */	bl __nw__FUlP7JKRHeapi
/* 800163C8  7C 7F 1B 79 */	or. r31, r3, r3
/* 800163CC  41 82 00 10 */	beq lbl_800163DC
/* 800163D0  7F A4 EB 78 */	mr r4, r29
/* 800163D4  4B FF FF 65 */	bl __ct__21mDoDvdThd_toMainRam_cFUc
/* 800163D8  7C 7F 1B 78 */	mr r31, r3
lbl_800163DC:
/* 800163DC  28 1F 00 00 */	cmplwi r31, 0
/* 800163E0  41 82 00 60 */	beq lbl_80016440
/* 800163E4  7F 83 E3 78 */	mr r3, r28
/* 800163E8  4B FF F4 F5 */	bl my_DVDConvertPathToEntrynum__FPCc
/* 800163EC  90 7F 00 18 */	stw r3, 0x18(r31)
/* 800163F0  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 800163F4  2C 00 FF FF */	cmpwi r0, -1
/* 800163F8  40 82 00 34 */	bne lbl_8001642C
/* 800163FC  38 00 00 01 */	li r0, 1
/* 80016400  98 1F 00 0C */	stb r0, 0xc(r31)
/* 80016404  28 1F 00 00 */	cmplwi r31, 0
/* 80016408  41 82 00 1C */	beq lbl_80016424
/* 8001640C  7F E3 FB 78 */	mr r3, r31
/* 80016410  38 80 00 01 */	li r4, 1
/* 80016414  81 9F 00 10 */	lwz r12, 0x10(r31)
/* 80016418  81 8C 00 08 */	lwz r12, 8(r12)
/* 8001641C  7D 89 03 A6 */	mtctr r12
/* 80016420  4E 80 04 21 */	bctrl 
lbl_80016424:
/* 80016424  3B E0 00 00 */	li r31, 0
/* 80016428  48 00 00 18 */	b lbl_80016440
lbl_8001642C:
/* 8001642C  93 DF 00 24 */	stw r30, 0x24(r31)
/* 80016430  3C 60 80 3E */	lis r3, l_param__9mDoDvdThd@ha /* 0x803DEC60@ha */
/* 80016434  38 63 EC 60 */	addi r3, r3, l_param__9mDoDvdThd@l /* 0x803DEC60@l */
/* 80016438  7F E4 FB 78 */	mr r4, r31
/* 8001643C  4B FF F5 A9 */	bl addition__17mDoDvdThd_param_cFP19mDoDvdThd_command_c
lbl_80016440:
/* 80016440  7F E3 FB 78 */	mr r3, r31
/* 80016444  39 61 00 20 */	addi r11, r1, 0x20
/* 80016448  48 34 BD DD */	bl _restgpr_28
/* 8001644C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80016450  7C 08 03 A6 */	mtlr r0
/* 80016454  38 21 00 20 */	addi r1, r1, 0x20
/* 80016458  4E 80 00 20 */	blr 
