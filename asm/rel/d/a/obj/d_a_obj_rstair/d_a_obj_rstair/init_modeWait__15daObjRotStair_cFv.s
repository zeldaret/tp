lbl_80CC1C30:
/* 80CC1C30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC1C34  7C 08 02 A6 */	mflr r0
/* 80CC1C38  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC1C3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC1C40  93 C1 00 08 */	stw r30, 8(r1)
/* 80CC1C44  7C 7E 1B 78 */	mr r30, r3
/* 80CC1C48  8B E3 05 E3 */	lbz r31, 0x5e3(r3)
/* 80CC1C4C  7F E0 07 74 */	extsb r0, r31
/* 80CC1C50  2C 00 00 04 */	cmpwi r0, 4
/* 80CC1C54  41 80 00 08 */	blt lbl_80CC1C5C
/* 80CC1C58  3B FF FF FC */	addi r31, r31, -4
lbl_80CC1C5C:
/* 80CC1C5C  7F E0 07 74 */	extsb r0, r31
/* 80CC1C60  2C 00 00 03 */	cmpwi r0, 3
/* 80CC1C64  40 82 00 28 */	bne lbl_80CC1C8C
/* 80CC1C68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CC1C6C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CC1C70  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80CC1C74  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80CC1C78  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80CC1C7C  7C 05 07 74 */	extsb r5, r0
/* 80CC1C80  4B 37 36 E0 */	b isSwitch__10dSv_info_cCFii
/* 80CC1C84  2C 03 00 00 */	cmpwi r3, 0
/* 80CC1C88  40 82 00 34 */	bne lbl_80CC1CBC
lbl_80CC1C8C:
/* 80CC1C8C  7F E0 07 74 */	extsb r0, r31
/* 80CC1C90  2C 00 00 01 */	cmpwi r0, 1
/* 80CC1C94  40 82 00 34 */	bne lbl_80CC1CC8
/* 80CC1C98  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CC1C9C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CC1CA0  A0 1E 05 CA */	lhz r0, 0x5ca(r30)
/* 80CC1CA4  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80CC1CA8  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80CC1CAC  7C 05 07 74 */	extsb r5, r0
/* 80CC1CB0  4B 37 36 B0 */	b isSwitch__10dSv_info_cCFii
/* 80CC1CB4  2C 03 00 00 */	cmpwi r3, 0
/* 80CC1CB8  41 82 00 10 */	beq lbl_80CC1CC8
lbl_80CC1CBC:
/* 80CC1CBC  7F C3 F3 78 */	mr r3, r30
/* 80CC1CC0  48 00 06 51 */	bl onWaterModel__15daObjRotStair_cFv
/* 80CC1CC4  48 00 00 0C */	b lbl_80CC1CD0
lbl_80CC1CC8:
/* 80CC1CC8  7F C3 F3 78 */	mr r3, r30
/* 80CC1CCC  48 00 06 99 */	bl offWaterModel__15daObjRotStair_cFv
lbl_80CC1CD0:
/* 80CC1CD0  38 00 00 00 */	li r0, 0
/* 80CC1CD4  98 1E 05 CD */	stb r0, 0x5cd(r30)
/* 80CC1CD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC1CDC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CC1CE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC1CE4  7C 08 03 A6 */	mtlr r0
/* 80CC1CE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC1CEC  4E 80 00 20 */	blr 
