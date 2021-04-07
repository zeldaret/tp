lbl_80499C6C:
/* 80499C6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80499C70  7C 08 02 A6 */	mflr r0
/* 80499C74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80499C78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80499C7C  93 C1 00 08 */	stw r30, 8(r1)
/* 80499C80  7C 7E 1B 78 */	mr r30, r3
/* 80499C84  88 03 09 3C */	lbz r0, 0x93c(r3)
/* 80499C88  28 00 00 02 */	cmplwi r0, 2
/* 80499C8C  40 82 00 2C */	bne lbl_80499CB8
/* 80499C90  3C 60 80 4A */	lis r3, d_a_arrow__stringBase0@ha /* 0x8049DE04@ha */
/* 80499C94  38 63 DE 04 */	addi r3, r3, d_a_arrow__stringBase0@l /* 0x8049DE04@l */
/* 80499C98  38 80 00 1F */	li r4, 0x1f
/* 80499C9C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80499CA0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80499CA4  3C A5 00 02 */	addis r5, r5, 2
/* 80499CA8  38 C0 00 80 */	li r6, 0x80
/* 80499CAC  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80499CB0  4B BA 26 3D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80499CB4  48 00 00 48 */	b lbl_80499CFC
lbl_80499CB8:
/* 80499CB8  28 00 00 04 */	cmplwi r0, 4
/* 80499CBC  40 82 00 0C */	bne lbl_80499CC8
/* 80499CC0  3B E0 00 20 */	li r31, 0x20
/* 80499CC4  48 00 00 18 */	b lbl_80499CDC
lbl_80499CC8:
/* 80499CC8  28 00 00 01 */	cmplwi r0, 1
/* 80499CCC  40 82 00 0C */	bne lbl_80499CD8
/* 80499CD0  3B E0 00 1D */	li r31, 0x1d
/* 80499CD4  48 00 00 08 */	b lbl_80499CDC
lbl_80499CD8:
/* 80499CD8  3B E0 00 1C */	li r31, 0x1c
lbl_80499CDC:
/* 80499CDC  4B C0 3B A9 */	bl getAlinkArcName__9daAlink_cFv
/* 80499CE0  57 E4 04 3E */	clrlwi r4, r31, 0x10
/* 80499CE4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80499CE8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80499CEC  3C A5 00 02 */	addis r5, r5, 2
/* 80499CF0  38 C0 00 80 */	li r6, 0x80
/* 80499CF4  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80499CF8  4B BA 25 F5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
lbl_80499CFC:
/* 80499CFC  3C 80 00 08 */	lis r4, 8
/* 80499D00  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80499D04  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80499D08  4B B7 AF 4D */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80499D0C  90 7E 05 68 */	stw r3, 0x568(r30)
/* 80499D10  80 1E 05 68 */	lwz r0, 0x568(r30)
/* 80499D14  28 00 00 00 */	cmplwi r0, 0
/* 80499D18  40 82 00 0C */	bne lbl_80499D24
/* 80499D1C  38 60 00 00 */	li r3, 0
/* 80499D20  48 00 00 34 */	b lbl_80499D54
lbl_80499D24:
/* 80499D24  38 7E 09 04 */	addi r3, r30, 0x904
/* 80499D28  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80499D2C  38 A0 00 01 */	li r5, 1
/* 80499D30  81 9E 09 14 */	lwz r12, 0x914(r30)
/* 80499D34  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80499D38  7D 89 03 A6 */	mtctr r12
/* 80499D3C  4E 80 04 21 */	bctrl 
/* 80499D40  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80499D44  7C 03 07 74 */	extsb r3, r0
/* 80499D48  4B B9 33 25 */	bl dComIfGp_getReverb__Fi
/* 80499D4C  98 7E 09 48 */	stb r3, 0x948(r30)
/* 80499D50  38 60 00 01 */	li r3, 1
lbl_80499D54:
/* 80499D54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80499D58  83 C1 00 08 */	lwz r30, 8(r1)
/* 80499D5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80499D60  7C 08 03 A6 */	mtlr r0
/* 80499D64  38 21 00 10 */	addi r1, r1, 0x10
/* 80499D68  4E 80 00 20 */	blr 
