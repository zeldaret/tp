lbl_804BED1C:
/* 804BED1C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804BED20  7C 08 02 A6 */	mflr r0
/* 804BED24  90 01 00 24 */	stw r0, 0x24(r1)
/* 804BED28  39 61 00 20 */	addi r11, r1, 0x20
/* 804BED2C  4B EA 34 AD */	bl _savegpr_28
/* 804BED30  7C 7C 1B 78 */	mr r28, r3
/* 804BED34  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 804BED38  4B B5 EF 85 */	bl gndCheck__11fopAcM_gc_cFPC4cXyz
/* 804BED3C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804BED40  41 82 00 40 */	beq lbl_804BED80
/* 804BED44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804BED48  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804BED4C  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 804BED50  7F C3 F3 78 */	mr r3, r30
/* 804BED54  3C 80 80 3F */	lis r4, mGndCheck__11fopAcM_gc_c@ha /* 0x803F1CC4@ha */
/* 804BED58  38 84 1C C4 */	addi r4, r4, mGndCheck__11fopAcM_gc_c@l /* 0x803F1CC4@l */
/* 804BED5C  3B E4 00 14 */	addi r31, r4, 0x14
/* 804BED60  7F E4 FB 78 */	mr r4, r31
/* 804BED64  4B BB 63 9D */	bl GetRoomId__4dBgSFRC13cBgS_PolyInfo
/* 804BED68  7C 7D 1B 78 */	mr r29, r3
/* 804BED6C  7F C3 F3 78 */	mr r3, r30
/* 804BED70  7F E4 FB 78 */	mr r4, r31
/* 804BED74  4B BB 5E 75 */	bl GetPolyColor__4dBgSFRC13cBgS_PolyInfo
/* 804BED78  98 7C 04 8D */	stb r3, 0x48d(r28)
/* 804BED7C  48 00 00 10 */	b lbl_804BED8C
lbl_804BED80:
/* 804BED80  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha /* 0x80450D64@ha */
/* 804BED84  8B A3 0D 64 */	lbz r29, struct_80450D64+0x0@l(r3)  /* 0x80450D64@l */
/* 804BED88  7F BD 07 74 */	extsb r29, r29
lbl_804BED8C:
/* 804BED8C  9B BC 04 8C */	stb r29, 0x48c(r28)
/* 804BED90  7F A3 EB 78 */	mr r3, r29
/* 804BED94  4B B6 E2 D9 */	bl dComIfGp_getReverb__Fi
/* 804BED98  98 7C 08 4D */	stb r3, 0x84d(r28)
/* 804BED9C  9B BC 04 E2 */	stb r29, 0x4e2(r28)
/* 804BEDA0  39 61 00 20 */	addi r11, r1, 0x20
/* 804BEDA4  4B EA 34 81 */	bl _restgpr_28
/* 804BEDA8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804BEDAC  7C 08 03 A6 */	mtlr r0
/* 804BEDB0  38 21 00 20 */	addi r1, r1, 0x20
/* 804BEDB4  4E 80 00 20 */	blr 
