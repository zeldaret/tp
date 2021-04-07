lbl_80CA4328:
/* 80CA4328  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA432C  7C 08 02 A6 */	mflr r0
/* 80CA4330  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA4334  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA4338  7C 7F 1B 78 */	mr r31, r3
/* 80CA433C  48 00 03 9D */	bl getResName__13daObj_Nougu_cFv
/* 80CA4340  38 80 00 03 */	li r4, 3
/* 80CA4344  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CA4348  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CA434C  3C A5 00 02 */	addis r5, r5, 2
/* 80CA4350  38 C0 00 80 */	li r6, 0x80
/* 80CA4354  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80CA4358  4B 39 7F 95 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CA435C  28 03 00 00 */	cmplwi r3, 0
/* 80CA4360  40 82 00 0C */	bne lbl_80CA436C
/* 80CA4364  38 60 00 00 */	li r3, 0
/* 80CA4368  48 00 00 24 */	b lbl_80CA438C
lbl_80CA436C:
/* 80CA436C  3C 80 00 08 */	lis r4, 8
/* 80CA4370  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80CA4374  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80CA4378  4B 37 08 DD */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80CA437C  90 7F 05 74 */	stw r3, 0x574(r31)
/* 80CA4380  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80CA4384  30 03 FF FF */	addic r0, r3, -1
/* 80CA4388  7C 60 19 10 */	subfe r3, r0, r3
lbl_80CA438C:
/* 80CA438C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA4390  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA4394  7C 08 03 A6 */	mtlr r0
/* 80CA4398  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA439C  4E 80 00 20 */	blr 
