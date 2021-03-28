lbl_8049ACE0:
/* 8049ACE0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8049ACE4  7C 08 02 A6 */	mflr r0
/* 8049ACE8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8049ACEC  39 61 00 20 */	addi r11, r1, 0x20
/* 8049ACF0  4B EC 74 E8 */	b _savegpr_28
/* 8049ACF4  7C 7C 1B 78 */	mr r28, r3
/* 8049ACF8  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 8049ACFC  4B B8 2F C0 */	b gndCheck__11fopAcM_gc_cFPC4cXyz
/* 8049AD00  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8049AD04  41 82 00 40 */	beq lbl_8049AD44
/* 8049AD08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8049AD0C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8049AD10  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 8049AD14  7F C3 F3 78 */	mr r3, r30
/* 8049AD18  3C 80 80 3F */	lis r4, mGndCheck__11fopAcM_gc_c@ha
/* 8049AD1C  38 84 1C C4 */	addi r4, r4, mGndCheck__11fopAcM_gc_c@l
/* 8049AD20  3B E4 00 14 */	addi r31, r4, 0x14
/* 8049AD24  7F E4 FB 78 */	mr r4, r31
/* 8049AD28  4B BD A3 D8 */	b GetRoomId__4dBgSFRC13cBgS_PolyInfo
/* 8049AD2C  7C 7D 1B 78 */	mr r29, r3
/* 8049AD30  7F C3 F3 78 */	mr r3, r30
/* 8049AD34  7F E4 FB 78 */	mr r4, r31
/* 8049AD38  4B BD 9E B0 */	b GetPolyColor__4dBgSFRC13cBgS_PolyInfo
/* 8049AD3C  98 7C 04 8D */	stb r3, 0x48d(r28)
/* 8049AD40  48 00 00 10 */	b lbl_8049AD50
lbl_8049AD44:
/* 8049AD44  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha
/* 8049AD48  8B A3 0D 64 */	lbz r29, struct_80450D64+0x0@l(r3)
/* 8049AD4C  7F BD 07 74 */	extsb r29, r29
lbl_8049AD50:
/* 8049AD50  9B BC 04 8C */	stb r29, 0x48c(r28)
/* 8049AD54  9B BC 06 6E */	stb r29, 0x66e(r28)
/* 8049AD58  9B BC 04 E2 */	stb r29, 0x4e2(r28)
/* 8049AD5C  39 61 00 20 */	addi r11, r1, 0x20
/* 8049AD60  4B EC 74 C4 */	b _restgpr_28
/* 8049AD64  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8049AD68  7C 08 03 A6 */	mtlr r0
/* 8049AD6C  38 21 00 20 */	addi r1, r1, 0x20
/* 8049AD70  4E 80 00 20 */	blr 
