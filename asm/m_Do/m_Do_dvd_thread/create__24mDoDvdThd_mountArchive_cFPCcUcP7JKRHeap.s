lbl_80015E14:
/* 80015E14  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80015E18  7C 08 02 A6 */	mflr r0
/* 80015E1C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80015E20  39 61 00 20 */	addi r11, r1, 0x20
/* 80015E24  48 34 C3 B5 */	bl _savegpr_28
/* 80015E28  7C 7C 1B 78 */	mr r28, r3
/* 80015E2C  7C 9D 23 78 */	mr r29, r4
/* 80015E30  7C BE 2B 78 */	mr r30, r5
/* 80015E34  4B FF 8F 7D */	bl mDoExt_getCommandHeap__Fv
/* 80015E38  7C 64 1B 78 */	mr r4, r3
/* 80015E3C  38 60 00 24 */	li r3, 0x24
/* 80015E40  38 A0 FF FC */	li r5, -4
/* 80015E44  48 2B 8E 55 */	bl __nw__FUlP7JKRHeapi
/* 80015E48  7C 7F 1B 79 */	or. r31, r3, r3
/* 80015E4C  41 82 00 10 */	beq lbl_80015E5C
/* 80015E50  7F A4 EB 78 */	mr r4, r29
/* 80015E54  4B FF FF 51 */	bl __ct__24mDoDvdThd_mountArchive_cFUc
/* 80015E58  7C 7F 1B 78 */	mr r31, r3
lbl_80015E5C:
/* 80015E5C  28 1F 00 00 */	cmplwi r31, 0
/* 80015E60  41 82 00 60 */	beq lbl_80015EC0
/* 80015E64  7F 83 E3 78 */	mr r3, r28
/* 80015E68  4B FF FA 75 */	bl my_DVDConvertPathToEntrynum__FPCc
/* 80015E6C  90 7F 00 18 */	stw r3, 0x18(r31)
/* 80015E70  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 80015E74  2C 00 FF FF */	cmpwi r0, -1
/* 80015E78  40 82 00 34 */	bne lbl_80015EAC
/* 80015E7C  38 00 00 01 */	li r0, 1
/* 80015E80  98 1F 00 0C */	stb r0, 0xc(r31)
/* 80015E84  28 1F 00 00 */	cmplwi r31, 0
/* 80015E88  41 82 00 1C */	beq lbl_80015EA4
/* 80015E8C  7F E3 FB 78 */	mr r3, r31
/* 80015E90  38 80 00 01 */	li r4, 1
/* 80015E94  81 9F 00 10 */	lwz r12, 0x10(r31)
/* 80015E98  81 8C 00 08 */	lwz r12, 8(r12)
/* 80015E9C  7D 89 03 A6 */	mtctr r12
/* 80015EA0  4E 80 04 21 */	bctrl 
lbl_80015EA4:
/* 80015EA4  3B E0 00 00 */	li r31, 0
/* 80015EA8  48 00 00 18 */	b lbl_80015EC0
lbl_80015EAC:
/* 80015EAC  93 DF 00 20 */	stw r30, 0x20(r31)
/* 80015EB0  3C 60 80 3E */	lis r3, l_param__9mDoDvdThd@ha /* 0x803DEC60@ha */
/* 80015EB4  38 63 EC 60 */	addi r3, r3, l_param__9mDoDvdThd@l /* 0x803DEC60@l */
/* 80015EB8  7F E4 FB 78 */	mr r4, r31
/* 80015EBC  4B FF FB 29 */	bl addition__17mDoDvdThd_param_cFP19mDoDvdThd_command_c
lbl_80015EC0:
/* 80015EC0  7F E3 FB 78 */	mr r3, r31
/* 80015EC4  39 61 00 20 */	addi r11, r1, 0x20
/* 80015EC8  48 34 C3 5D */	bl _restgpr_28
/* 80015ECC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80015ED0  7C 08 03 A6 */	mtlr r0
/* 80015ED4  38 21 00 20 */	addi r1, r1, 0x20
/* 80015ED8  4E 80 00 20 */	blr 
