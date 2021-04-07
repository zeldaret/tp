lbl_8059A808:
/* 8059A808  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059A80C  7C 08 02 A6 */	mflr r0
/* 8059A810  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059A814  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059A818  7C 7F 1B 78 */	mr r31, r3
/* 8059A81C  88 03 08 3E */	lbz r0, 0x83e(r3)
/* 8059A820  54 00 10 3A */	slwi r0, r0, 2
/* 8059A824  3C 60 80 5A */	lis r3, l_arcName@ha /* 0x8059B380@ha */
/* 8059A828  38 63 B3 80 */	addi r3, r3, l_arcName@l /* 0x8059B380@l */
/* 8059A82C  7C 63 00 2E */	lwzx r3, r3, r0
/* 8059A830  3C 80 80 5A */	lis r4, l_bmdName@ha /* 0x8059B2C8@ha */
/* 8059A834  38 84 B2 C8 */	addi r4, r4, l_bmdName@l /* 0x8059B2C8@l */
/* 8059A838  7C 84 00 2E */	lwzx r4, r4, r0
/* 8059A83C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8059A840  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8059A844  3C A5 00 02 */	addis r5, r5, 2
/* 8059A848  38 C0 00 80 */	li r6, 0x80
/* 8059A84C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8059A850  4B AA 1A 9D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8059A854  3C 80 00 08 */	lis r4, 8
/* 8059A858  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 8059A85C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 8059A860  4B A7 A3 F5 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8059A864  90 7F 05 70 */	stw r3, 0x570(r31)
/* 8059A868  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 8059A86C  30 03 FF FF */	addic r0, r3, -1
/* 8059A870  7C 60 19 10 */	subfe r3, r0, r3
/* 8059A874  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059A878  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059A87C  7C 08 03 A6 */	mtlr r0
/* 8059A880  38 21 00 10 */	addi r1, r1, 0x10
/* 8059A884  4E 80 00 20 */	blr 
