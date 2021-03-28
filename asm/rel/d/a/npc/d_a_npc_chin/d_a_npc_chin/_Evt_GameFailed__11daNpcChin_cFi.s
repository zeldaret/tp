lbl_8098FFD0:
/* 8098FFD0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8098FFD4  7C 08 02 A6 */	mflr r0
/* 8098FFD8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8098FFDC  39 61 00 20 */	addi r11, r1, 0x20
/* 8098FFE0  4B 9D 21 FC */	b _savegpr_29
/* 8098FFE4  7C 7D 1B 78 */	mr r29, r3
/* 8098FFE8  7C 9E 23 78 */	mr r30, r4
/* 8098FFEC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8098FFF0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8098FFF4  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 8098FFF8  38 00 FF FF */	li r0, -1
/* 8098FFFC  90 01 00 08 */	stw r0, 8(r1)
/* 80990000  7F E3 FB 78 */	mr r3, r31
/* 80990004  3C A0 80 99 */	lis r5, struct_80991D40+0x0@ha
/* 80990008  38 A5 1D 40 */	addi r5, r5, struct_80991D40+0x0@l
/* 8099000C  38 A5 00 94 */	addi r5, r5, 0x94
/* 80990010  38 C0 00 03 */	li r6, 3
/* 80990014  4B 6B 80 D8 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80990018  28 03 00 00 */	cmplwi r3, 0
/* 8099001C  41 82 00 10 */	beq lbl_8099002C
/* 80990020  80 03 00 00 */	lwz r0, 0(r3)
/* 80990024  90 01 00 08 */	stw r0, 8(r1)
/* 80990028  48 00 00 0C */	b lbl_80990034
lbl_8099002C:
/* 8099002C  38 60 00 01 */	li r3, 1
/* 80990030  48 00 00 30 */	b lbl_80990060
lbl_80990034:
/* 80990034  7F E3 FB 78 */	mr r3, r31
/* 80990038  7F C4 F3 78 */	mr r4, r30
/* 8099003C  4B 6B 7D 10 */	b getIsAddvance__16dEvent_manager_cFi
/* 80990040  2C 03 00 00 */	cmpwi r3, 0
/* 80990044  41 82 00 10 */	beq lbl_80990054
/* 80990048  7F A3 EB 78 */	mr r3, r29
/* 8099004C  38 81 00 08 */	addi r4, r1, 8
/* 80990050  48 00 00 29 */	bl _Evt_GameFailed_CutInit__11daNpcChin_cFRCi
lbl_80990054:
/* 80990054  7F A3 EB 78 */	mr r3, r29
/* 80990058  38 81 00 08 */	addi r4, r1, 8
/* 8099005C  48 00 01 19 */	bl _Evt_GameFailed_CutMain__11daNpcChin_cFRCi
lbl_80990060:
/* 80990060  39 61 00 20 */	addi r11, r1, 0x20
/* 80990064  4B 9D 21 C4 */	b _restgpr_29
/* 80990068  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8099006C  7C 08 03 A6 */	mtlr r0
/* 80990070  38 21 00 20 */	addi r1, r1, 0x20
/* 80990074  4E 80 00 20 */	blr 
