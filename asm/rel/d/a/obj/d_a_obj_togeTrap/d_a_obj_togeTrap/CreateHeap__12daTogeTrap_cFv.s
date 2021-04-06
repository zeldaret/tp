lbl_80D17D5C:
/* 80D17D5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D17D60  7C 08 02 A6 */	mflr r0
/* 80D17D64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D17D68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D17D6C  93 C1 00 08 */	stw r30, 8(r1)
/* 80D17D70  7C 7E 1B 78 */	mr r30, r3
/* 80D17D74  3C 60 80 D2 */	lis r3, d_a_obj_togeTrap__stringBase0@ha /* 0x80D18F08@ha */
/* 80D17D78  38 63 8F 08 */	addi r3, r3, d_a_obj_togeTrap__stringBase0@l /* 0x80D18F08@l */
/* 80D17D7C  38 80 00 04 */	li r4, 4
/* 80D17D80  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D17D84  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D17D88  3F E5 00 02 */	addis r31, r5, 2
/* 80D17D8C  3B FF C2 F8 */	addi r31, r31, -15624
/* 80D17D90  7F E5 FB 78 */	mr r5, r31
/* 80D17D94  38 C0 00 80 */	li r6, 0x80
/* 80D17D98  4B 32 45 55 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D17D9C  3C 80 00 08 */	lis r4, 8
/* 80D17DA0  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80D17DA4  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80D17DA8  4B 2F CE AD */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80D17DAC  90 7E 0A D4 */	stw r3, 0xad4(r30)
/* 80D17DB0  80 1E 0A D4 */	lwz r0, 0xad4(r30)
/* 80D17DB4  28 00 00 00 */	cmplwi r0, 0
/* 80D17DB8  40 82 00 0C */	bne lbl_80D17DC4
/* 80D17DBC  38 60 00 00 */	li r3, 0
/* 80D17DC0  48 00 00 3C */	b lbl_80D17DFC
lbl_80D17DC4:
/* 80D17DC4  3C 60 80 D2 */	lis r3, d_a_obj_togeTrap__stringBase0@ha /* 0x80D18F08@ha */
/* 80D17DC8  38 63 8F 08 */	addi r3, r3, d_a_obj_togeTrap__stringBase0@l /* 0x80D18F08@l */
/* 80D17DCC  38 80 00 05 */	li r4, 5
/* 80D17DD0  7F E5 FB 78 */	mr r5, r31
/* 80D17DD4  38 C0 00 80 */	li r6, 0x80
/* 80D17DD8  4B 32 45 15 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D17DDC  3C 80 00 08 */	lis r4, 8
/* 80D17DE0  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80D17DE4  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80D17DE8  4B 2F CE 6D */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80D17DEC  90 7E 0A D8 */	stw r3, 0xad8(r30)
/* 80D17DF0  80 7E 0A D8 */	lwz r3, 0xad8(r30)
/* 80D17DF4  30 03 FF FF */	addic r0, r3, -1
/* 80D17DF8  7C 60 19 10 */	subfe r3, r0, r3
lbl_80D17DFC:
/* 80D17DFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D17E00  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D17E04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D17E08  7C 08 03 A6 */	mtlr r0
/* 80D17E0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D17E10  4E 80 00 20 */	blr 
