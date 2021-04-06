lbl_803138C8:
/* 803138C8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 803138CC  7C 08 02 A6 */	mflr r0
/* 803138D0  90 01 00 54 */	stw r0, 0x54(r1)
/* 803138D4  39 61 00 50 */	addi r11, r1, 0x50
/* 803138D8  48 04 E9 01 */	bl _savegpr_28
/* 803138DC  7C 7C 1B 78 */	mr r28, r3
/* 803138E0  7C 9D 23 78 */	mr r29, r4
/* 803138E4  7C BE 2B 78 */	mr r30, r5
/* 803138E8  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 803138EC  3B E3 4A C8 */	addi r31, r3, j3dSys@l /* 0x80434AC8@l */
/* 803138F0  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 803138F4  80 63 00 30 */	lwz r3, 0x30(r3)
/* 803138F8  80 9F 01 04 */	lwz r4, 0x104(r31)
/* 803138FC  54 A0 04 3E */	clrlwi r0, r5, 0x10
/* 80313900  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80313904  7C 84 02 14 */	add r4, r4, r0
/* 80313908  38 A1 00 08 */	addi r5, r1, 8
/* 8031390C  48 03 2B D9 */	bl PSMTXConcat
/* 80313910  80 0D 90 40 */	lwz r0, sTexGenBlock__17J3DDifferedTexMtx(r13)
/* 80313914  28 00 00 00 */	cmplwi r0, 0
/* 80313918  41 82 00 0C */	beq lbl_80313924
/* 8031391C  38 61 00 08 */	addi r3, r1, 8
/* 80313920  4B FF F9 0D */	bl loadExecute__17J3DDifferedTexMtxFPA4_Cf
lbl_80313924:
/* 80313924  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 80313928  80 63 00 30 */	lwz r3, 0x30(r3)
/* 8031392C  1C 9D 00 03 */	mulli r4, r29, 3
/* 80313930  4B FF C1 B1 */	bl J3DFifoLoadPosMtxImm__FPA4_fUl
/* 80313934  7F 83 E3 78 */	mr r3, r28
/* 80313938  7F A4 EB 78 */	mr r4, r29
/* 8031393C  7F C5 F3 78 */	mr r5, r30
/* 80313940  38 C1 00 08 */	addi r6, r1, 8
/* 80313944  81 9C 00 00 */	lwz r12, 0(r28)
/* 80313948  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8031394C  7D 89 03 A6 */	mtctr r12
/* 80313950  4E 80 04 21 */	bctrl 
/* 80313954  39 61 00 50 */	addi r11, r1, 0x50
/* 80313958  48 04 E8 CD */	bl _restgpr_28
/* 8031395C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80313960  7C 08 03 A6 */	mtlr r0
/* 80313964  38 21 00 50 */	addi r1, r1, 0x50
/* 80313968  4E 80 00 20 */	blr 
