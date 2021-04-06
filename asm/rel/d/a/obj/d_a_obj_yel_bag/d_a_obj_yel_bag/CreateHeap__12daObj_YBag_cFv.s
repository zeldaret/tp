lbl_80D3C898:
/* 80D3C898  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3C89C  7C 08 02 A6 */	mflr r0
/* 80D3C8A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3C8A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D3C8A8  7C 7F 1B 78 */	mr r31, r3
/* 80D3C8AC  38 60 00 00 */	li r3, 0
/* 80D3C8B0  3C 80 80 D4 */	lis r4, l_bmdGetParamList@ha /* 0x80D3DD94@ha */
/* 80D3C8B4  38 A4 DD 94 */	addi r5, r4, l_bmdGetParamList@l /* 0x80D3DD94@l */
/* 80D3C8B8  80 85 00 00 */	lwz r4, 0(r5)
/* 80D3C8BC  2C 04 00 00 */	cmpwi r4, 0
/* 80D3C8C0  41 80 00 30 */	blt lbl_80D3C8F0
/* 80D3C8C4  80 05 00 04 */	lwz r0, 4(r5)
/* 80D3C8C8  54 00 10 3A */	slwi r0, r0, 2
/* 80D3C8CC  3C 60 80 D4 */	lis r3, l_resNames@ha /* 0x80D3DDB0@ha */
/* 80D3C8D0  38 63 DD B0 */	addi r3, r3, l_resNames@l /* 0x80D3DDB0@l */
/* 80D3C8D4  7C 63 00 2E */	lwzx r3, r3, r0
/* 80D3C8D8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D3C8DC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D3C8E0  3C A5 00 02 */	addis r5, r5, 2
/* 80D3C8E4  38 C0 00 80 */	li r6, 0x80
/* 80D3C8E8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80D3C8EC  4B 2F FA 01 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
lbl_80D3C8F0:
/* 80D3C8F0  28 03 00 00 */	cmplwi r3, 0
/* 80D3C8F4  41 82 00 1C */	beq lbl_80D3C910
/* 80D3C8F8  3C 80 00 08 */	lis r4, 8
/* 80D3C8FC  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80D3C900  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80D3C904  4B 2D 83 51 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80D3C908  90 7F 05 80 */	stw r3, 0x580(r31)
/* 80D3C90C  48 00 00 0C */	b lbl_80D3C918
lbl_80D3C910:
/* 80D3C910  38 00 00 00 */	li r0, 0
/* 80D3C914  90 1F 05 80 */	stw r0, 0x580(r31)
lbl_80D3C918:
/* 80D3C918  80 7F 05 80 */	lwz r3, 0x580(r31)
/* 80D3C91C  30 03 FF FF */	addic r0, r3, -1
/* 80D3C920  7C 00 19 10 */	subfe r0, r0, r3
/* 80D3C924  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80D3C928  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D3C92C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3C930  7C 08 03 A6 */	mtlr r0
/* 80D3C934  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3C938  4E 80 00 20 */	blr 
