lbl_8031DED0:
/* 8031DED0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8031DED4  7C 08 02 A6 */	mflr r0
/* 8031DED8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8031DEDC  39 61 00 30 */	addi r11, r1, 0x30
/* 8031DEE0  48 04 42 ED */	bl _savegpr_25
/* 8031DEE4  7C 7D 1B 78 */	mr r29, r3
/* 8031DEE8  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031DEEC  80 64 00 00 */	lwz r3, 0(r4)
/* 8031DEF0  80 1D 00 04 */	lwz r0, 4(r29)
/* 8031DEF4  7C 03 02 14 */	add r0, r3, r0
/* 8031DEF8  90 04 00 08 */	stw r0, 8(r4)
/* 8031DEFC  80 6D 94 00 */	lwz r3, __GDCurrentDL(r13)
/* 8031DF00  83 43 00 08 */	lwz r26, 8(r3)
/* 8031DF04  3B E0 00 00 */	li r31, 0
/* 8031DF08  3B C0 00 00 */	li r30, 0
/* 8031DF0C  3B 80 00 00 */	li r28, 0
/* 8031DF10  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 8031DF14  3B 63 4A C8 */	addi r27, r3, j3dSys@l /* 0x80434AC8@l */
lbl_8031DF18:
/* 8031DF18  3B 3C 00 08 */	addi r25, r28, 8
/* 8031DF1C  7F 3D CA 14 */	add r25, r29, r25
/* 8031DF20  A0 19 00 00 */	lhz r0, 0(r25)
/* 8031DF24  28 00 FF FF */	cmplwi r0, 0xffff
/* 8031DF28  41 82 00 50 */	beq lbl_8031DF78
/* 8031DF2C  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031DF30  80 04 00 00 */	lwz r0, 0(r4)
/* 8031DF34  80 7D 00 04 */	lwz r3, 4(r29)
/* 8031DF38  7C 1F 02 14 */	add r0, r31, r0
/* 8031DF3C  7C 03 02 14 */	add r0, r3, r0
/* 8031DF40  90 04 00 08 */	stw r0, 8(r4)
/* 8031DF44  7F C3 F3 78 */	mr r3, r30
/* 8031DF48  7F 24 CB 78 */	mr r4, r25
/* 8031DF4C  48 00 61 F1 */	bl patchTexNo_PtrToIdx__FUlRCUs
/* 8031DF50  80 7B 00 58 */	lwz r3, 0x58(r27)
/* 8031DF54  80 63 00 04 */	lwz r3, 4(r3)
/* 8031DF58  A0 19 00 00 */	lhz r0, 0(r25)
/* 8031DF5C  54 00 28 34 */	slwi r0, r0, 5
/* 8031DF60  7C 63 02 14 */	add r3, r3, r0
/* 8031DF64  88 03 00 08 */	lbz r0, 8(r3)
/* 8031DF68  28 00 00 01 */	cmplwi r0, 1
/* 8031DF6C  3B FF 00 14 */	addi r31, r31, 0x14
/* 8031DF70  40 82 00 08 */	bne lbl_8031DF78
/* 8031DF74  3B FF 00 23 */	addi r31, r31, 0x23
lbl_8031DF78:
/* 8031DF78  3B DE 00 01 */	addi r30, r30, 1
/* 8031DF7C  28 1E 00 08 */	cmplwi r30, 8
/* 8031DF80  3B 9C 00 02 */	addi r28, r28, 2
/* 8031DF84  41 80 FF 94 */	blt lbl_8031DF18
/* 8031DF88  80 6D 94 00 */	lwz r3, __GDCurrentDL(r13)
/* 8031DF8C  80 03 00 08 */	lwz r0, 8(r3)
/* 8031DF90  7F 43 D3 78 */	mr r3, r26
/* 8031DF94  7C 9A 00 50 */	subf r4, r26, r0
/* 8031DF98  48 01 D6 45 */	bl DCStoreRange
/* 8031DF9C  39 61 00 30 */	addi r11, r1, 0x30
/* 8031DFA0  48 04 42 79 */	bl _restgpr_25
/* 8031DFA4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8031DFA8  7C 08 03 A6 */	mtlr r0
/* 8031DFAC  38 21 00 30 */	addi r1, r1, 0x30
/* 8031DFB0  4E 80 00 20 */	blr 
