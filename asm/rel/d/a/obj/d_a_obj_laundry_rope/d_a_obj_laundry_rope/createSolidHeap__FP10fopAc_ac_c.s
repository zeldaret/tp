lbl_80C52CC8:
/* 80C52CC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C52CCC  7C 08 02 A6 */	mflr r0
/* 80C52CD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C52CD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C52CD8  7C 7F 1B 78 */	mr r31, r3
/* 80C52CDC  3C 60 80 C5 */	lis r3, l_arcName@ha
/* 80C52CE0  38 63 33 CC */	addi r3, r3, l_arcName@l
/* 80C52CE4  80 63 00 00 */	lwz r3, 0(r3)
/* 80C52CE8  3C 80 80 C5 */	lis r4, stringBase0@ha
/* 80C52CEC  38 84 33 B0 */	addi r4, r4, stringBase0@l
/* 80C52CF0  38 84 00 0A */	addi r4, r4, 0xa
/* 80C52CF4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C52CF8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C52CFC  3C A5 00 02 */	addis r5, r5, 2
/* 80C52D00  38 C0 00 80 */	li r6, 0x80
/* 80C52D04  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C52D08  4B 3E 96 74 */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80C52D0C  7C 66 1B 78 */	mr r6, r3
/* 80C52D10  38 7F 05 68 */	addi r3, r31, 0x568
/* 80C52D14  38 80 00 01 */	li r4, 1
/* 80C52D18  38 A0 00 0F */	li r5, 0xf
/* 80C52D1C  38 E0 00 01 */	li r7, 1
/* 80C52D20  4B 3C 06 40 */	b init__19mDoExt_3DlineMat1_cFUsUsP7ResTIMGi
/* 80C52D24  2C 03 00 00 */	cmpwi r3, 0
/* 80C52D28  40 82 00 0C */	bne lbl_80C52D34
/* 80C52D2C  38 60 00 00 */	li r3, 0
/* 80C52D30  48 00 00 2C */	b lbl_80C52D5C
lbl_80C52D34:
/* 80C52D34  80 7F 05 A0 */	lwz r3, 0x5a0(r31)
/* 80C52D38  80 83 00 04 */	lwz r4, 4(r3)
/* 80C52D3C  3C 60 80 C5 */	lis r3, lit_4036@ha
/* 80C52D40  C0 03 33 AC */	lfs f0, lit_4036@l(r3)
/* 80C52D44  38 00 00 0F */	li r0, 0xf
/* 80C52D48  7C 09 03 A6 */	mtctr r0
lbl_80C52D4C:
/* 80C52D4C  D0 04 00 00 */	stfs f0, 0(r4)
/* 80C52D50  38 84 00 04 */	addi r4, r4, 4
/* 80C52D54  42 00 FF F8 */	bdnz lbl_80C52D4C
/* 80C52D58  38 60 00 01 */	li r3, 1
lbl_80C52D5C:
/* 80C52D5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C52D60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C52D64  7C 08 03 A6 */	mtlr r0
/* 80C52D68  38 21 00 10 */	addi r1, r1, 0x10
/* 80C52D6C  4E 80 00 20 */	blr 
