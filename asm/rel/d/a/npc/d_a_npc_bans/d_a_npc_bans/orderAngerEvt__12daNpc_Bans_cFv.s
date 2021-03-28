lbl_80964DD0:
/* 80964DD0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80964DD4  7C 08 02 A6 */	mflr r0
/* 80964DD8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80964DDC  39 61 00 30 */	addi r11, r1, 0x30
/* 80964DE0  4B 9F D3 FC */	b _savegpr_29
/* 80964DE4  7C 7D 1B 78 */	mr r29, r3
/* 80964DE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80964DEC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80964DF0  83 E3 5D AC */	lwz r31, 0x5dac(r3)
/* 80964DF4  7F E3 FB 78 */	mr r3, r31
/* 80964DF8  38 80 00 00 */	li r4, 0
/* 80964DFC  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 80964E00  81 8C 01 CC */	lwz r12, 0x1cc(r12)
/* 80964E04  7D 89 03 A6 */	mtctr r12
/* 80964E08  4E 80 04 21 */	bctrl 
/* 80964E0C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80964E10  41 82 00 88 */	beq lbl_80964E98
/* 80964E14  7F E3 FB 78 */	mr r3, r31
/* 80964E18  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 80964E1C  81 8C 01 C8 */	lwz r12, 0x1c8(r12)
/* 80964E20  7D 89 03 A6 */	mtctr r12
/* 80964E24  4E 80 04 21 */	bctrl 
/* 80964E28  28 03 00 00 */	cmplwi r3, 0
/* 80964E2C  41 82 00 6C */	beq lbl_80964E98
/* 80964E30  38 00 00 04 */	li r0, 4
/* 80964E34  B0 1D 0E 30 */	sth r0, 0xe30(r29)
/* 80964E38  3B C0 00 00 */	li r30, 0
lbl_80964E3C:
/* 80964E3C  38 1E 00 05 */	addi r0, r30, 5
/* 80964E40  54 03 18 38 */	slwi r3, r0, 3
/* 80964E44  38 63 12 04 */	addi r3, r3, 0x1204
/* 80964E48  7C 7D 1A 14 */	add r3, r29, r3
/* 80964E4C  4B 7E 08 BC */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80964E50  28 03 00 00 */	cmplwi r3, 0
/* 80964E54  41 82 00 38 */	beq lbl_80964E8C
/* 80964E58  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80964E5C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80964E60  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80964E64  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80964E68  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80964E6C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80964E70  38 81 00 08 */	addi r4, r1, 8
/* 80964E74  48 00 2F 39 */	bl chkPointInArea__15daTag_EvtArea_cF4cXyz
/* 80964E78  2C 03 00 00 */	cmpwi r3, 0
/* 80964E7C  41 82 00 10 */	beq lbl_80964E8C
/* 80964E80  38 00 00 06 */	li r0, 6
/* 80964E84  B0 1D 0E 30 */	sth r0, 0xe30(r29)
/* 80964E88  48 00 00 10 */	b lbl_80964E98
lbl_80964E8C:
/* 80964E8C  3B DE 00 01 */	addi r30, r30, 1
/* 80964E90  2C 1E 00 02 */	cmpwi r30, 2
/* 80964E94  41 80 FF A8 */	blt lbl_80964E3C
lbl_80964E98:
/* 80964E98  39 61 00 30 */	addi r11, r1, 0x30
/* 80964E9C  4B 9F D3 8C */	b _restgpr_29
/* 80964EA0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80964EA4  7C 08 03 A6 */	mtlr r0
/* 80964EA8  38 21 00 30 */	addi r1, r1, 0x30
/* 80964EAC  4E 80 00 20 */	blr 
