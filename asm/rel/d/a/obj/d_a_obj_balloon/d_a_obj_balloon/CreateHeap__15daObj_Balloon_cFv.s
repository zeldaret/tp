lbl_80BA87CC:
/* 80BA87CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA87D0  7C 08 02 A6 */	mflr r0
/* 80BA87D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA87D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA87DC  7C 7F 1B 78 */	mr r31, r3
/* 80BA87E0  88 03 05 78 */	lbz r0, 0x578(r3)
/* 80BA87E4  28 00 00 00 */	cmplwi r0, 0
/* 80BA87E8  40 82 00 2C */	bne lbl_80BA8814
/* 80BA87EC  3C 60 80 BB */	lis r3, d_a_obj_balloon__stringBase0@ha /* 0x80BA8E54@ha */
/* 80BA87F0  38 63 8E 54 */	addi r3, r3, d_a_obj_balloon__stringBase0@l /* 0x80BA8E54@l */
/* 80BA87F4  38 80 00 03 */	li r4, 3
/* 80BA87F8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BA87FC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BA8800  3C A5 00 02 */	addis r5, r5, 2
/* 80BA8804  38 C0 00 80 */	li r6, 0x80
/* 80BA8808  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80BA880C  4B 49 3A E1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BA8810  48 00 00 60 */	b lbl_80BA8870
lbl_80BA8814:
/* 80BA8814  28 00 00 01 */	cmplwi r0, 1
/* 80BA8818  40 82 00 2C */	bne lbl_80BA8844
/* 80BA881C  3C 60 80 BB */	lis r3, d_a_obj_balloon__stringBase0@ha /* 0x80BA8E54@ha */
/* 80BA8820  38 63 8E 54 */	addi r3, r3, d_a_obj_balloon__stringBase0@l /* 0x80BA8E54@l */
/* 80BA8824  38 80 00 04 */	li r4, 4
/* 80BA8828  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BA882C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BA8830  3C A5 00 02 */	addis r5, r5, 2
/* 80BA8834  38 C0 00 80 */	li r6, 0x80
/* 80BA8838  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80BA883C  4B 49 3A B1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BA8840  48 00 00 30 */	b lbl_80BA8870
lbl_80BA8844:
/* 80BA8844  28 00 00 02 */	cmplwi r0, 2
/* 80BA8848  40 82 00 28 */	bne lbl_80BA8870
/* 80BA884C  3C 60 80 BB */	lis r3, d_a_obj_balloon__stringBase0@ha /* 0x80BA8E54@ha */
/* 80BA8850  38 63 8E 54 */	addi r3, r3, d_a_obj_balloon__stringBase0@l /* 0x80BA8E54@l */
/* 80BA8854  38 80 00 05 */	li r4, 5
/* 80BA8858  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BA885C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BA8860  3C A5 00 02 */	addis r5, r5, 2
/* 80BA8864  38 C0 00 80 */	li r6, 0x80
/* 80BA8868  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80BA886C  4B 49 3A 81 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
lbl_80BA8870:
/* 80BA8870  38 80 00 00 */	li r4, 0
/* 80BA8874  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80BA8878  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80BA887C  4B 46 C3 D9 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80BA8880  90 7F 05 70 */	stw r3, 0x570(r31)
/* 80BA8884  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80BA8888  30 03 FF FF */	addic r0, r3, -1
/* 80BA888C  7C 60 19 10 */	subfe r3, r0, r3
/* 80BA8890  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA8894  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA8898  7C 08 03 A6 */	mtlr r0
/* 80BA889C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA88A0  4E 80 00 20 */	blr 
