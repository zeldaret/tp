lbl_80C496D0:
/* 80C496D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C496D4  7C 08 02 A6 */	mflr r0
/* 80C496D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C496DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C496E0  7C 7F 1B 78 */	mr r31, r3
/* 80C496E4  80 03 05 B4 */	lwz r0, 0x5b4(r3)
/* 80C496E8  28 00 00 00 */	cmplwi r0, 0
/* 80C496EC  41 82 00 A0 */	beq lbl_80C4978C
/* 80C496F0  38 A0 00 00 */	li r5, 0
/* 80C496F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C496F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C496FC  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80C49700  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80C49704  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80C49708  41 82 00 08 */	beq lbl_80C49710
/* 80C4970C  38 A0 00 01 */	li r5, 1
lbl_80C49710:
/* 80C49710  88 9F 05 EA */	lbz r4, 0x5ea(r31)
/* 80C49714  54 80 15 BA */	rlwinm r0, r4, 2, 0x16, 0x1d
/* 80C49718  3C 60 80 C5 */	lis r3, l_anmArcName@ha /* 0x80C49EE4@ha */
/* 80C4971C  38 63 9E E4 */	addi r3, r3, l_anmArcName@l /* 0x80C49EE4@l */
/* 80C49720  7C 63 00 2E */	lwzx r3, r3, r0
/* 80C49724  54 80 0D FC */	rlwinm r0, r4, 1, 0x17, 0x1e
/* 80C49728  7C 05 02 14 */	add r0, r5, r0
/* 80C4972C  54 00 10 3A */	slwi r0, r0, 2
/* 80C49730  3C 80 80 C5 */	lis r4, l_anmName@ha /* 0x80C49E94@ha */
/* 80C49734  38 84 9E 94 */	addi r4, r4, l_anmName@l /* 0x80C49E94@l */
/* 80C49738  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C4973C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C49740  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C49744  3C A5 00 02 */	addis r5, r5, 2
/* 80C49748  38 C0 00 80 */	li r6, 0x80
/* 80C4974C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C49750  4B 3F 2C 2D */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80C49754  7C 64 1B 78 */	mr r4, r3
/* 80C49758  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80C4975C  38 A0 00 01 */	li r5, 1
/* 80C49760  38 C0 00 00 */	li r6, 0
/* 80C49764  3C E0 80 C5 */	lis r7, lit_3842@ha /* 0x80C49D10@ha */
/* 80C49768  C0 27 9D 10 */	lfs f1, lit_3842@l(r7)  /* 0x80C49D10@l */
/* 80C4976C  38 E0 00 00 */	li r7, 0
/* 80C49770  39 00 FF FF */	li r8, -1
/* 80C49774  39 20 00 01 */	li r9, 1
/* 80C49778  4B 3C 40 65 */	bl init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 80C4977C  3C 60 80 C5 */	lis r3, lit_3842@ha /* 0x80C49D10@ha */
/* 80C49780  C0 03 9D 10 */	lfs f0, lit_3842@l(r3)  /* 0x80C49D10@l */
/* 80C49784  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80C49788  D0 03 00 0C */	stfs f0, 0xc(r3)
lbl_80C4978C:
/* 80C4978C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C49790  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C49794  7C 08 03 A6 */	mtlr r0
/* 80C49798  38 21 00 10 */	addi r1, r1, 0x10
/* 80C4979C  4E 80 00 20 */	blr 
