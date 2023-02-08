lbl_80BCCCD8:
/* 80BCCCD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BCCCDC  7C 08 02 A6 */	mflr r0
/* 80BCCCE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BCCCE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BCCCE8  7C 7F 1B 78 */	mr r31, r3
/* 80BCCCEC  3C 60 80 BD */	lis r3, l_arcName@ha /* 0x80BCEACC@ha */
/* 80BCCCF0  38 63 EA CC */	addi r3, r3, l_arcName@l /* 0x80BCEACC@l */
/* 80BCCCF4  38 80 00 03 */	li r4, 3
/* 80BCCCF8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BCCCFC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BCCD00  3C A5 00 02 */	addis r5, r5, 2
/* 80BCCD04  38 C0 00 80 */	li r6, 0x80
/* 80BCCD08  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80BCCD0C  4B 46 F5 E1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BCCD10  7C 66 1B 78 */	mr r6, r3
/* 80BCCD14  38 7F 10 70 */	addi r3, r31, 0x1070
/* 80BCCD18  38 80 00 01 */	li r4, 1
/* 80BCCD1C  38 A0 00 64 */	li r5, 0x64
/* 80BCCD20  38 E0 00 00 */	li r7, 0
/* 80BCCD24  4B 44 66 3D */	bl init__19mDoExt_3DlineMat1_cFUsUsP7ResTIMGi
/* 80BCCD28  30 03 FF FF */	addic r0, r3, -1
/* 80BCCD2C  7C 60 19 10 */	subfe r3, r0, r3
/* 80BCCD30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BCCD34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BCCD38  7C 08 03 A6 */	mtlr r0
/* 80BCCD3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BCCD40  4E 80 00 20 */	blr 
