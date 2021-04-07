lbl_804A3580:
/* 804A3580  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A3584  7C 08 02 A6 */	mflr r0
/* 804A3588  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A358C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804A3590  93 C1 00 08 */	stw r30, 8(r1)
/* 804A3594  7C 7E 1B 78 */	mr r30, r3
/* 804A3598  7C 9F 23 78 */	mr r31, r4
/* 804A359C  4B BF A2 E9 */	bl getAlinkArcName__9daAlink_cFv
/* 804A35A0  57 E4 04 3E */	clrlwi r4, r31, 0x10
/* 804A35A4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804A35A8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804A35AC  3C A5 00 02 */	addis r5, r5, 2
/* 804A35B0  38 C0 00 80 */	li r6, 0x80
/* 804A35B4  38 A5 C2 F8 */	addi r5, r5, -15624
/* 804A35B8  4B B9 8D 35 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804A35BC  7C 64 1B 78 */	mr r4, r3
/* 804A35C0  38 7E 05 6C */	addi r3, r30, 0x56c
/* 804A35C4  38 A0 00 01 */	li r5, 1
/* 804A35C8  38 C0 FF FF */	li r6, -1
/* 804A35CC  3C E0 80 4A */	lis r7, lit_4173@ha /* 0x804A4104@ha */
/* 804A35D0  C0 27 41 04 */	lfs f1, lit_4173@l(r7)  /* 0x804A4104@l */
/* 804A35D4  38 E0 00 00 */	li r7, 0
/* 804A35D8  39 00 FF FF */	li r8, -1
/* 804A35DC  39 20 00 01 */	li r9, 1
/* 804A35E0  4B B6 A1 FD */	bl init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 804A35E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804A35E8  83 C1 00 08 */	lwz r30, 8(r1)
/* 804A35EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A35F0  7C 08 03 A6 */	mtlr r0
/* 804A35F4  38 21 00 10 */	addi r1, r1, 0x10
/* 804A35F8  4E 80 00 20 */	blr 
