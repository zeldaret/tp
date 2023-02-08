lbl_80CAF7A8:
/* 80CAF7A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CAF7AC  7C 08 02 A6 */	mflr r0
/* 80CAF7B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CAF7B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CAF7B8  93 C1 00 08 */	stw r30, 8(r1)
/* 80CAF7BC  7C 7F 1B 78 */	mr r31, r3
/* 80CAF7C0  88 03 07 40 */	lbz r0, 0x740(r3)
/* 80CAF7C4  54 00 10 3A */	slwi r0, r0, 2
/* 80CAF7C8  3C 60 80 CB */	lis r3, l_arcName@ha /* 0x80CB0B08@ha */
/* 80CAF7CC  38 63 0B 08 */	addi r3, r3, l_arcName@l /* 0x80CB0B08@l */
/* 80CAF7D0  7C 63 00 2E */	lwzx r3, r3, r0
/* 80CAF7D4  3C 80 80 CB */	lis r4, l_bmd@ha /* 0x80CB09D4@ha */
/* 80CAF7D8  38 84 09 D4 */	addi r4, r4, l_bmd@l /* 0x80CB09D4@l */
/* 80CAF7DC  7C 84 00 2E */	lwzx r4, r4, r0
/* 80CAF7E0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CAF7E4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CAF7E8  3F C5 00 02 */	addis r30, r5, 2
/* 80CAF7EC  3B DE C2 F8 */	addi r30, r30, -15624
/* 80CAF7F0  7F C5 F3 78 */	mr r5, r30
/* 80CAF7F4  38 C0 00 80 */	li r6, 0x80
/* 80CAF7F8  4B 38 CA F5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CAF7FC  3C 80 00 08 */	lis r4, 8
/* 80CAF800  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80CAF804  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80CAF808  4B 36 54 4D */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80CAF80C  90 7F 05 A8 */	stw r3, 0x5a8(r31)
/* 80CAF810  80 1F 05 A8 */	lwz r0, 0x5a8(r31)
/* 80CAF814  28 00 00 00 */	cmplwi r0, 0
/* 80CAF818  40 82 00 0C */	bne lbl_80CAF824
/* 80CAF81C  38 60 00 00 */	li r3, 0
/* 80CAF820  48 00 00 6C */	b lbl_80CAF88C
lbl_80CAF824:
/* 80CAF824  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CAF828  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80CAF82C  28 00 00 FF */	cmplwi r0, 0xff
/* 80CAF830  40 82 00 58 */	bne lbl_80CAF888
/* 80CAF834  88 1F 07 40 */	lbz r0, 0x740(r31)
/* 80CAF838  54 00 10 3A */	slwi r0, r0, 2
/* 80CAF83C  3C 60 80 CB */	lis r3, l_arcName@ha /* 0x80CB0B08@ha */
/* 80CAF840  38 63 0B 08 */	addi r3, r3, l_arcName@l /* 0x80CB0B08@l */
/* 80CAF844  7C 63 00 2E */	lwzx r3, r3, r0
/* 80CAF848  3C 80 80 CB */	lis r4, l_shadowBmd@ha /* 0x80CB09E4@ha */
/* 80CAF84C  38 84 09 E4 */	addi r4, r4, l_shadowBmd@l /* 0x80CB09E4@l */
/* 80CAF850  7C 84 00 2E */	lwzx r4, r4, r0
/* 80CAF854  7F C5 F3 78 */	mr r5, r30
/* 80CAF858  38 C0 00 80 */	li r6, 0x80
/* 80CAF85C  4B 38 CA 91 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CAF860  3C 80 00 08 */	lis r4, 8
/* 80CAF864  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80CAF868  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80CAF86C  4B 36 53 E9 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80CAF870  90 7F 07 24 */	stw r3, 0x724(r31)
/* 80CAF874  80 1F 07 24 */	lwz r0, 0x724(r31)
/* 80CAF878  28 00 00 00 */	cmplwi r0, 0
/* 80CAF87C  40 82 00 0C */	bne lbl_80CAF888
/* 80CAF880  38 60 00 00 */	li r3, 0
/* 80CAF884  48 00 00 08 */	b lbl_80CAF88C
lbl_80CAF888:
/* 80CAF888  38 60 00 01 */	li r3, 1
lbl_80CAF88C:
/* 80CAF88C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CAF890  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CAF894  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CAF898  7C 08 03 A6 */	mtlr r0
/* 80CAF89C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CAF8A0  4E 80 00 20 */	blr 
