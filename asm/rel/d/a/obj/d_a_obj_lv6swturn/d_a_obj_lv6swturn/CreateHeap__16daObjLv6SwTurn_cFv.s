lbl_80C83C10:
/* 80C83C10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C83C14  7C 08 02 A6 */	mflr r0
/* 80C83C18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C83C1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C83C20  7C 7F 1B 78 */	mr r31, r3
/* 80C83C24  3C 60 80 C8 */	lis r3, l_arcName@ha /* 0x80C846F0@ha */
/* 80C83C28  38 63 46 F0 */	addi r3, r3, l_arcName@l /* 0x80C846F0@l */
/* 80C83C2C  80 63 00 00 */	lwz r3, 0(r3)
/* 80C83C30  38 80 00 04 */	li r4, 4
/* 80C83C34  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C83C38  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C83C3C  3C A5 00 02 */	addis r5, r5, 2
/* 80C83C40  38 C0 00 80 */	li r6, 0x80
/* 80C83C44  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C83C48  4B 3B 86 A5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C83C4C  3C 80 00 08 */	lis r4, 8
/* 80C83C50  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C83C54  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C83C58  4B 39 0F FD */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C83C5C  90 7F 05 A8 */	stw r3, 0x5a8(r31)
/* 80C83C60  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C83C64  30 03 FF FF */	addic r0, r3, -1
/* 80C83C68  7C 60 19 10 */	subfe r3, r0, r3
/* 80C83C6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C83C70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C83C74  7C 08 03 A6 */	mtlr r0
/* 80C83C78  38 21 00 10 */	addi r1, r1, 0x10
/* 80C83C7C  4E 80 00 20 */	blr 
