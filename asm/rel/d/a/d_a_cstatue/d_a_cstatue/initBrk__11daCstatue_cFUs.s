lbl_80666B80:
/* 80666B80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80666B84  7C 08 02 A6 */	mflr r0
/* 80666B88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80666B8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80666B90  7C 7F 1B 78 */	mr r31, r3
/* 80666B94  80 63 05 68 */	lwz r3, 0x568(r3)
/* 80666B98  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 80666B9C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80666BA0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80666BA4  3C A5 00 02 */	addis r5, r5, 2
/* 80666BA8  38 C0 00 80 */	li r6, 0x80
/* 80666BAC  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80666BB0  4B 9D 57 3D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80666BB4  7C 65 1B 78 */	mr r5, r3
/* 80666BB8  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80666BBC  80 83 00 04 */	lwz r4, 4(r3)
/* 80666BC0  38 7F 05 94 */	addi r3, r31, 0x594
/* 80666BC4  38 84 00 58 */	addi r4, r4, 0x58
/* 80666BC8  38 C0 00 01 */	li r6, 1
/* 80666BCC  38 E0 FF FF */	li r7, -1
/* 80666BD0  3D 00 80 66 */	lis r8, lit_4287@ha /* 0x8066773C@ha */
/* 80666BD4  C0 28 77 3C */	lfs f1, lit_4287@l(r8)  /* 0x8066773C@l */
/* 80666BD8  39 00 00 00 */	li r8, 0
/* 80666BDC  39 20 FF FF */	li r9, -1
/* 80666BE0  4B 9A 6B 2D */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80666BE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80666BE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80666BEC  7C 08 03 A6 */	mtlr r0
/* 80666BF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80666BF4  4E 80 00 20 */	blr 
