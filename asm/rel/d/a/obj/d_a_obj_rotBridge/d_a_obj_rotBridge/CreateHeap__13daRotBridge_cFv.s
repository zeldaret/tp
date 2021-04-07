lbl_80CBEB38:
/* 80CBEB38  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CBEB3C  7C 08 02 A6 */	mflr r0
/* 80CBEB40  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CBEB44  39 61 00 20 */	addi r11, r1, 0x20
/* 80CBEB48  4B 6A 36 95 */	bl _savegpr_29
/* 80CBEB4C  7C 7E 1B 78 */	mr r30, r3
/* 80CBEB50  3C 60 80 CC */	lis r3, lit_3626@ha /* 0x80CBF668@ha */
/* 80CBEB54  3B A3 F6 68 */	addi r29, r3, lit_3626@l /* 0x80CBF668@l */
/* 80CBEB58  88 1E 05 AC */	lbz r0, 0x5ac(r30)
/* 80CBEB5C  54 00 10 3A */	slwi r0, r0, 2
/* 80CBEB60  3C 60 80 CC */	lis r3, l_resNameIdx@ha /* 0x80CBF6D8@ha */
/* 80CBEB64  38 63 F6 D8 */	addi r3, r3, l_resNameIdx@l /* 0x80CBF6D8@l */
/* 80CBEB68  7C 63 00 2E */	lwzx r3, r3, r0
/* 80CBEB6C  38 9D 00 04 */	addi r4, r29, 4
/* 80CBEB70  7C 84 00 2E */	lwzx r4, r4, r0
/* 80CBEB74  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CBEB78  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CBEB7C  3F E5 00 02 */	addis r31, r5, 2
/* 80CBEB80  3B FF C2 F8 */	addi r31, r31, -15624
/* 80CBEB84  7F E5 FB 78 */	mr r5, r31
/* 80CBEB88  38 C0 00 80 */	li r6, 0x80
/* 80CBEB8C  4B 37 D7 61 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CBEB90  3C 80 00 08 */	lis r4, 8
/* 80CBEB94  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80CBEB98  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80CBEB9C  4B 35 60 B9 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80CBEBA0  90 7E 05 A8 */	stw r3, 0x5a8(r30)
/* 80CBEBA4  80 1E 05 A8 */	lwz r0, 0x5a8(r30)
/* 80CBEBA8  28 00 00 00 */	cmplwi r0, 0
/* 80CBEBAC  40 82 00 0C */	bne lbl_80CBEBB8
/* 80CBEBB0  38 60 00 00 */	li r3, 0
/* 80CBEBB4  48 00 00 F0 */	b lbl_80CBECA4
lbl_80CBEBB8:
/* 80CBEBB8  88 1E 05 AC */	lbz r0, 0x5ac(r30)
/* 80CBEBBC  54 00 10 3A */	slwi r0, r0, 2
/* 80CBEBC0  3C 60 80 CC */	lis r3, l_resNameIdx@ha /* 0x80CBF6D8@ha */
/* 80CBEBC4  38 63 F6 D8 */	addi r3, r3, l_resNameIdx@l /* 0x80CBF6D8@l */
/* 80CBEBC8  7C 63 00 2E */	lwzx r3, r3, r0
/* 80CBEBCC  38 9D 00 1C */	addi r4, r29, 0x1c
/* 80CBEBD0  7C 84 00 2E */	lwzx r4, r4, r0
/* 80CBEBD4  7F E5 FB 78 */	mr r5, r31
/* 80CBEBD8  38 C0 00 80 */	li r6, 0x80
/* 80CBEBDC  4B 37 D7 11 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CBEBE0  7C 64 1B 78 */	mr r4, r3
/* 80CBEBE4  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 80CBEBE8  38 A0 00 01 */	li r5, 1
/* 80CBEBEC  38 C0 00 00 */	li r6, 0
/* 80CBEBF0  C0 3D 00 28 */	lfs f1, 0x28(r29)
/* 80CBEBF4  38 E0 00 00 */	li r7, 0
/* 80CBEBF8  39 00 FF FF */	li r8, -1
/* 80CBEBFC  39 20 00 00 */	li r9, 0
/* 80CBEC00  4B 34 EB DD */	bl init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 80CBEC04  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80CBEC08  54 03 A7 3E */	rlwinm r3, r0, 0x14, 0x1c, 0x1f
/* 80CBEC0C  88 1E 05 AC */	lbz r0, 0x5ac(r30)
/* 80CBEC10  28 00 00 01 */	cmplwi r0, 1
/* 80CBEC14  40 82 00 84 */	bne lbl_80CBEC98
/* 80CBEC18  28 03 00 0F */	cmplwi r3, 0xf
/* 80CBEC1C  41 82 00 7C */	beq lbl_80CBEC98
/* 80CBEC20  38 60 00 C0 */	li r3, 0xc0
/* 80CBEC24  4B 61 00 29 */	bl __nw__FUl
/* 80CBEC28  7C 60 1B 79 */	or. r0, r3, r3
/* 80CBEC2C  41 82 00 0C */	beq lbl_80CBEC38
/* 80CBEC30  4B 3B CD 41 */	bl __ct__4dBgWFv
/* 80CBEC34  7C 60 1B 78 */	mr r0, r3
lbl_80CBEC38:
/* 80CBEC38  90 1E 05 DC */	stw r0, 0x5dc(r30)
/* 80CBEC3C  80 1E 05 DC */	lwz r0, 0x5dc(r30)
/* 80CBEC40  28 00 00 00 */	cmplwi r0, 0
/* 80CBEC44  41 82 00 44 */	beq lbl_80CBEC88
/* 80CBEC48  88 1E 05 AC */	lbz r0, 0x5ac(r30)
/* 80CBEC4C  54 00 10 3A */	slwi r0, r0, 2
/* 80CBEC50  3C 60 80 CC */	lis r3, l_resNameIdx@ha /* 0x80CBF6D8@ha */
/* 80CBEC54  38 63 F6 D8 */	addi r3, r3, l_resNameIdx@l /* 0x80CBF6D8@l */
/* 80CBEC58  7C 63 00 2E */	lwzx r3, r3, r0
/* 80CBEC5C  38 80 00 0B */	li r4, 0xb
/* 80CBEC60  7F E5 FB 78 */	mr r5, r31
/* 80CBEC64  38 C0 00 80 */	li r6, 0x80
/* 80CBEC68  4B 37 D6 85 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CBEC6C  7C 64 1B 78 */	mr r4, r3
/* 80CBEC70  80 7E 05 DC */	lwz r3, 0x5dc(r30)
/* 80CBEC74  38 A0 00 01 */	li r5, 1
/* 80CBEC78  38 DE 05 E0 */	addi r6, r30, 0x5e0
/* 80CBEC7C  4B 3B B2 BD */	bl Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80CBEC80  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CBEC84  41 82 00 1C */	beq lbl_80CBECA0
lbl_80CBEC88:
/* 80CBEC88  38 00 00 00 */	li r0, 0
/* 80CBEC8C  90 1E 05 DC */	stw r0, 0x5dc(r30)
/* 80CBEC90  38 60 00 00 */	li r3, 0
/* 80CBEC94  48 00 00 10 */	b lbl_80CBECA4
lbl_80CBEC98:
/* 80CBEC98  38 00 00 00 */	li r0, 0
/* 80CBEC9C  90 1E 05 DC */	stw r0, 0x5dc(r30)
lbl_80CBECA0:
/* 80CBECA0  38 60 00 01 */	li r3, 1
lbl_80CBECA4:
/* 80CBECA4  39 61 00 20 */	addi r11, r1, 0x20
/* 80CBECA8  4B 6A 35 81 */	bl _restgpr_29
/* 80CBECAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CBECB0  7C 08 03 A6 */	mtlr r0
/* 80CBECB4  38 21 00 20 */	addi r1, r1, 0x20
/* 80CBECB8  4E 80 00 20 */	blr 
