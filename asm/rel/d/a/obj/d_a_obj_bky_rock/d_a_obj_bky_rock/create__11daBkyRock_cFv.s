lbl_80BB6C4C:
/* 80BB6C4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB6C50  7C 08 02 A6 */	mflr r0
/* 80BB6C54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB6C58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BB6C5C  93 C1 00 08 */	stw r30, 8(r1)
/* 80BB6C60  7C 7F 1B 78 */	mr r31, r3
/* 80BB6C64  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80BB6C68  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80BB6C6C  40 82 00 1C */	bne lbl_80BB6C88
/* 80BB6C70  28 1F 00 00 */	cmplwi r31, 0
/* 80BB6C74  41 82 00 08 */	beq lbl_80BB6C7C
/* 80BB6C78  4B FF FB E1 */	bl __ct__11daBkyRock_cFv
lbl_80BB6C7C:
/* 80BB6C7C  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80BB6C80  60 00 00 08 */	ori r0, r0, 8
/* 80BB6C84  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80BB6C88:
/* 80BB6C88  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80BB6C8C  54 04 E6 3E */	rlwinm r4, r0, 0x1c, 0x18, 0x1f
/* 80BB6C90  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BB6C94  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BB6C98  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80BB6C9C  7C 05 07 74 */	extsb r5, r0
/* 80BB6CA0  4B 47 E6 C1 */	bl isSwitch__10dSv_info_cCFii
/* 80BB6CA4  2C 03 00 00 */	cmpwi r3, 0
/* 80BB6CA8  41 82 00 0C */	beq lbl_80BB6CB4
/* 80BB6CAC  38 60 00 05 */	li r3, 5
/* 80BB6CB0  48 00 00 98 */	b lbl_80BB6D48
lbl_80BB6CB4:
/* 80BB6CB4  7F E3 FB 78 */	mr r3, r31
/* 80BB6CB8  28 1F 00 00 */	cmplwi r31, 0
/* 80BB6CBC  41 82 00 08 */	beq lbl_80BB6CC4
/* 80BB6CC0  38 7F 05 68 */	addi r3, r31, 0x568
lbl_80BB6CC4:
/* 80BB6CC4  3C 80 80 BC */	lis r4, l_arcName@ha /* 0x80BB803C@ha */
/* 80BB6CC8  38 84 80 3C */	addi r4, r4, l_arcName@l /* 0x80BB803C@l */
/* 80BB6CCC  80 84 00 00 */	lwz r4, 0(r4)
/* 80BB6CD0  4B 47 61 ED */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80BB6CD4  7C 7E 1B 78 */	mr r30, r3
/* 80BB6CD8  2C 1E 00 04 */	cmpwi r30, 4
/* 80BB6CDC  40 82 00 68 */	bne lbl_80BB6D44
/* 80BB6CE0  7F E3 FB 78 */	mr r3, r31
/* 80BB6CE4  3C 80 80 BB */	lis r4, daBkyRock_c_createHeap__FP10fopAc_ac_c@ha /* 0x80BB6838@ha */
/* 80BB6CE8  38 84 68 38 */	addi r4, r4, daBkyRock_c_createHeap__FP10fopAc_ac_c@l /* 0x80BB6838@l */
/* 80BB6CEC  38 A0 20 00 */	li r5, 0x2000
/* 80BB6CF0  4B 46 37 C1 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80BB6CF4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BB6CF8  40 82 00 0C */	bne lbl_80BB6D04
/* 80BB6CFC  38 60 00 05 */	li r3, 5
/* 80BB6D00  48 00 00 48 */	b lbl_80BB6D48
lbl_80BB6D04:
/* 80BB6D04  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80BB6D08  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 80BB6D0C  2C 00 00 01 */	cmpwi r0, 1
/* 80BB6D10  40 82 00 2C */	bne lbl_80BB6D3C
/* 80BB6D14  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BB6D18  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BB6D1C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80BB6D20  80 9F 05 AC */	lwz r4, 0x5ac(r31)
/* 80BB6D24  7F E5 FB 78 */	mr r5, r31
/* 80BB6D28  4B 4B DC E1 */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80BB6D2C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BB6D30  41 82 00 0C */	beq lbl_80BB6D3C
/* 80BB6D34  38 60 00 05 */	li r3, 5
/* 80BB6D38  48 00 00 10 */	b lbl_80BB6D48
lbl_80BB6D3C:
/* 80BB6D3C  7F E3 FB 78 */	mr r3, r31
/* 80BB6D40  48 00 04 05 */	bl init__11daBkyRock_cFv
lbl_80BB6D44:
/* 80BB6D44  7F C3 F3 78 */	mr r3, r30
lbl_80BB6D48:
/* 80BB6D48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BB6D4C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BB6D50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB6D54  7C 08 03 A6 */	mtlr r0
/* 80BB6D58  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB6D5C  4E 80 00 20 */	blr 
