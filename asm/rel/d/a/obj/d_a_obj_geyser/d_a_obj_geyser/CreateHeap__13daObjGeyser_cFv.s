lbl_80BF70E0:
/* 80BF70E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF70E4  7C 08 02 A6 */	mflr r0
/* 80BF70E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF70EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BF70F0  93 C1 00 08 */	stw r30, 8(r1)
/* 80BF70F4  7C 7E 1B 78 */	mr r30, r3
/* 80BF70F8  3C 60 80 C0 */	lis r3, l_arcName@ha /* 0x80BF9088@ha */
/* 80BF70FC  38 63 90 88 */	addi r3, r3, l_arcName@l /* 0x80BF9088@l */
/* 80BF7100  80 63 00 00 */	lwz r3, 0(r3)
/* 80BF7104  38 80 00 04 */	li r4, 4
/* 80BF7108  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BF710C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BF7110  3C A5 00 02 */	addis r5, r5, 2
/* 80BF7114  38 C0 00 80 */	li r6, 0x80
/* 80BF7118  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80BF711C  4B 44 51 D1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BF7120  7C 60 1B 78 */	mr r0, r3
/* 80BF7124  7C 1F 03 78 */	mr r31, r0
/* 80BF7128  3C 80 00 08 */	lis r4, 8
/* 80BF712C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80BF7130  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80BF7134  4B 41 DB 21 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80BF7138  90 7E 05 A8 */	stw r3, 0x5a8(r30)
/* 80BF713C  80 1E 05 A8 */	lwz r0, 0x5a8(r30)
/* 80BF7140  28 00 00 00 */	cmplwi r0, 0
/* 80BF7144  40 82 00 0C */	bne lbl_80BF7150
/* 80BF7148  38 60 00 00 */	li r3, 0
/* 80BF714C  48 00 00 10 */	b lbl_80BF715C
lbl_80BF7150:
/* 80BF7150  7F E3 FB 78 */	mr r3, r31
/* 80BF7154  4B 41 79 2D */	bl mDoExt_setupStageTexture__FP12J3DModelData
/* 80BF7158  38 60 00 01 */	li r3, 1
lbl_80BF715C:
/* 80BF715C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BF7160  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BF7164  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF7168  7C 08 03 A6 */	mtlr r0
/* 80BF716C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF7170  4E 80 00 20 */	blr 
