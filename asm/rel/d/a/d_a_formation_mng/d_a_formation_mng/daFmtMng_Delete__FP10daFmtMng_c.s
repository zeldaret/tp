lbl_808373C4:
/* 808373C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 808373C8  7C 08 02 A6 */	mflr r0
/* 808373CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 808373D0  39 61 00 20 */	addi r11, r1, 0x20
/* 808373D4  4B B2 AE 08 */	b _savegpr_29
/* 808373D8  7C 7D 1B 79 */	or. r29, r3, r3
/* 808373DC  41 82 00 60 */	beq lbl_8083743C
/* 808373E0  83 DD 05 6C */	lwz r30, 0x56c(r29)
/* 808373E4  3B E0 00 00 */	li r31, 0
/* 808373E8  48 00 00 14 */	b lbl_808373FC
lbl_808373EC:
/* 808373EC  80 7E 00 00 */	lwz r3, 0(r30)
/* 808373F0  4B 7E 28 C8 */	b fopAcM_delete__FUi
/* 808373F4  3B FF 00 01 */	addi r31, r31, 1
/* 808373F8  3B DE 00 20 */	addi r30, r30, 0x20
lbl_808373FC:
/* 808373FC  80 7D 05 84 */	lwz r3, 0x584(r29)
/* 80837400  80 1D 05 88 */	lwz r0, 0x588(r29)
/* 80837404  7C 03 01 D6 */	mullw r0, r3, r0
/* 80837408  7C 1F 00 00 */	cmpw r31, r0
/* 8083740C  41 80 FF E0 */	blt lbl_808373EC
/* 80837410  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80837414  3C 80 80 83 */	lis r4, __dt__8FmtPos_cFv@ha
/* 80837418  38 84 6C 24 */	addi r4, r4, __dt__8FmtPos_cFv@l
/* 8083741C  4B B2 A8 50 */	b __destroy_new_array
/* 80837420  80 7D 05 6C */	lwz r3, 0x56c(r29)
/* 80837424  3C 80 80 83 */	lis r4, __dt__11FmtMember_cFv@ha
/* 80837428  38 84 74 58 */	addi r4, r4, __dt__11FmtMember_cFv@l
/* 8083742C  4B B2 A8 40 */	b __destroy_new_array
/* 80837430  7F A3 EB 78 */	mr r3, r29
/* 80837434  38 80 00 00 */	li r4, 0
/* 80837438  4B 7E 18 54 */	b __dt__10fopAc_ac_cFv
lbl_8083743C:
/* 8083743C  38 60 00 01 */	li r3, 1
/* 80837440  39 61 00 20 */	addi r11, r1, 0x20
/* 80837444  4B B2 AD E4 */	b _restgpr_29
/* 80837448  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8083744C  7C 08 03 A6 */	mtlr r0
/* 80837450  38 21 00 20 */	addi r1, r1, 0x20
/* 80837454  4E 80 00 20 */	blr 
