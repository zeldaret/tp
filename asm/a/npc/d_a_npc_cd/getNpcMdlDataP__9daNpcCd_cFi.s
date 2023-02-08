lbl_80157524:
/* 80157524  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80157528  7C 08 02 A6 */	mflr r0
/* 8015752C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80157530  88 03 09 E8 */	lbz r0, 0x9e8(r3)
/* 80157534  28 00 00 00 */	cmplwi r0, 0
/* 80157538  54 84 18 38 */	slwi r4, r4, 3
/* 8015753C  3C 60 80 3B */	lis r3, l_bmdTbl@ha /* 0x803B3C04@ha */
/* 80157540  38 03 3C 04 */	addi r0, r3, l_bmdTbl@l /* 0x803B3C04@l */
/* 80157544  7C A0 22 14 */	add r5, r0, r4
/* 80157548  41 82 00 10 */	beq lbl_80157558
/* 8015754C  3C 60 80 3B */	lis r3, l_bmdTWTbl@ha /* 0x803B3CF4@ha */
/* 80157550  38 03 3C F4 */	addi r0, r3, l_bmdTWTbl@l /* 0x803B3CF4@l */
/* 80157554  7C A0 22 14 */	add r5, r0, r4
lbl_80157558:
/* 80157558  80 65 00 00 */	lwz r3, 0(r5)
/* 8015755C  80 85 00 04 */	lwz r4, 4(r5)
/* 80157560  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80157564  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80157568  3C A5 00 02 */	addis r5, r5, 2
/* 8015756C  38 C0 00 80 */	li r6, 0x80
/* 80157570  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80157574  4B EE 4D 79 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80157578  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015757C  7C 08 03 A6 */	mtlr r0
/* 80157580  38 21 00 10 */	addi r1, r1, 0x10
/* 80157584  4E 80 00 20 */	blr 
