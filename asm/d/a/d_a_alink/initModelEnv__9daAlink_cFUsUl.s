lbl_800A3E98:
/* 800A3E98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800A3E9C  7C 08 02 A6 */	mflr r0
/* 800A3EA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800A3EA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800A3EA8  93 C1 00 08 */	stw r30, 8(r1)
/* 800A3EAC  7C 7E 1B 78 */	mr r30, r3
/* 800A3EB0  7C BF 2B 78 */	mr r31, r5
/* 800A3EB4  38 62 92 90 */	la r3, l_arcName(r2) /* 80452C90-_SDA2_BASE_ */
/* 800A3EB8  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 800A3EBC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800A3EC0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800A3EC4  3C A5 00 02 */	addis r5, r5, 2
/* 800A3EC8  38 C0 00 80 */	li r6, 0x80
/* 800A3ECC  38 A5 C2 F8 */	addi r5, r5, -15624
/* 800A3ED0  4B F9 84 1D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 800A3ED4  7C 64 1B 78 */	mr r4, r3
/* 800A3ED8  7F C3 F3 78 */	mr r3, r30
/* 800A3EDC  38 A0 00 00 */	li r5, 0
/* 800A3EE0  7F E6 FB 78 */	mr r6, r31
/* 800A3EE4  4B FF FE 99 */	bl initModel__9daAlink_cFP12J3DModelDataUlUl
/* 800A3EE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800A3EEC  83 C1 00 08 */	lwz r30, 8(r1)
/* 800A3EF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800A3EF4  7C 08 03 A6 */	mtlr r0
/* 800A3EF8  38 21 00 10 */	addi r1, r1, 0x10
/* 800A3EFC  4E 80 00 20 */	blr 
