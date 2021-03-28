lbl_8096BA28:
/* 8096BA28  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8096BA2C  7C 08 02 A6 */	mflr r0
/* 8096BA30  90 01 00 24 */	stw r0, 0x24(r1)
/* 8096BA34  39 61 00 20 */	addi r11, r1, 0x20
/* 8096BA38  4B 9F 67 A4 */	b _savegpr_29
/* 8096BA3C  7C 7D 1B 78 */	mr r29, r3
/* 8096BA40  7C 9E 23 78 */	mr r30, r4
/* 8096BA44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8096BA48  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8096BA4C  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 8096BA50  38 00 FF FF */	li r0, -1
/* 8096BA54  90 01 00 08 */	stw r0, 8(r1)
/* 8096BA58  7F E3 FB 78 */	mr r3, r31
/* 8096BA5C  3C A0 80 97 */	lis r5, stringBase0@ha
/* 8096BA60  38 A5 CB 4C */	addi r5, r5, stringBase0@l
/* 8096BA64  38 A5 00 4B */	addi r5, r5, 0x4b
/* 8096BA68  38 C0 00 03 */	li r6, 3
/* 8096BA6C  4B 6D C6 80 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 8096BA70  28 03 00 00 */	cmplwi r3, 0
/* 8096BA74  41 82 00 10 */	beq lbl_8096BA84
/* 8096BA78  80 03 00 00 */	lwz r0, 0(r3)
/* 8096BA7C  90 01 00 08 */	stw r0, 8(r1)
/* 8096BA80  48 00 00 0C */	b lbl_8096BA8C
lbl_8096BA84:
/* 8096BA84  38 60 00 01 */	li r3, 1
/* 8096BA88  48 00 00 30 */	b lbl_8096BAB8
lbl_8096BA8C:
/* 8096BA8C  7F E3 FB 78 */	mr r3, r31
/* 8096BA90  7F C4 F3 78 */	mr r4, r30
/* 8096BA94  4B 6D C2 B8 */	b getIsAddvance__16dEvent_manager_cFi
/* 8096BA98  2C 03 00 00 */	cmpwi r3, 0
/* 8096BA9C  41 82 00 10 */	beq lbl_8096BAAC
/* 8096BAA0  7F A3 EB 78 */	mr r3, r29
/* 8096BAA4  38 81 00 08 */	addi r4, r1, 8
/* 8096BAA8  48 00 00 29 */	bl _Evt_ChgYami_Noppo_CutInit__13daNpcBlueNS_cFRCi
lbl_8096BAAC:
/* 8096BAAC  7F A3 EB 78 */	mr r3, r29
/* 8096BAB0  38 81 00 08 */	addi r4, r1, 8
/* 8096BAB4  48 00 00 B5 */	bl _Evt_ChgYami_Noppo_CutMain__13daNpcBlueNS_cFRCi
lbl_8096BAB8:
/* 8096BAB8  39 61 00 20 */	addi r11, r1, 0x20
/* 8096BABC  4B 9F 67 6C */	b _restgpr_29
/* 8096BAC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8096BAC4  7C 08 03 A6 */	mtlr r0
/* 8096BAC8  38 21 00 20 */	addi r1, r1, 0x20
/* 8096BACC  4E 80 00 20 */	blr 
