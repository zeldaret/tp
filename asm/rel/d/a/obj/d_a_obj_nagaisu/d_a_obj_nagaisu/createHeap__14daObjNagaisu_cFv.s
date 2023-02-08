lbl_80C9F5A8:
/* 80C9F5A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C9F5AC  7C 08 02 A6 */	mflr r0
/* 80C9F5B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C9F5B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C9F5B8  93 C1 00 08 */	stw r30, 8(r1)
/* 80C9F5BC  7C 7E 1B 78 */	mr r30, r3
/* 80C9F5C0  3C 60 80 CA */	lis r3, l_arcName@ha /* 0x80CA0408@ha */
/* 80C9F5C4  38 63 04 08 */	addi r3, r3, l_arcName@l /* 0x80CA0408@l */
/* 80C9F5C8  80 63 00 00 */	lwz r3, 0(r3)
/* 80C9F5CC  38 80 00 04 */	li r4, 4
/* 80C9F5D0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C9F5D4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C9F5D8  3C A5 00 02 */	addis r5, r5, 2
/* 80C9F5DC  38 C0 00 80 */	li r6, 0x80
/* 80C9F5E0  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C9F5E4  4B 39 CD 09 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C9F5E8  3C 80 00 08 */	lis r4, 8
/* 80C9F5EC  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C9F5F0  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C9F5F4  4B 37 56 61 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C9F5F8  90 7E 05 74 */	stw r3, 0x574(r30)
/* 80C9F5FC  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 80C9F600  28 00 00 00 */	cmplwi r0, 0
/* 80C9F604  40 82 00 0C */	bne lbl_80C9F610
/* 80C9F608  38 60 00 00 */	li r3, 0
/* 80C9F60C  48 00 00 44 */	b lbl_80C9F650
lbl_80C9F610:
/* 80C9F610  3B FE 05 B4 */	addi r31, r30, 0x5b4
/* 80C9F614  3B C0 00 00 */	li r30, 0
lbl_80C9F618:
/* 80C9F618  88 1F 02 F0 */	lbz r0, 0x2f0(r31)
/* 80C9F61C  28 00 00 00 */	cmplwi r0, 0
/* 80C9F620  40 82 00 1C */	bne lbl_80C9F63C
/* 80C9F624  7F E3 FB 78 */	mr r3, r31
/* 80C9F628  48 00 07 25 */	bl createHeap__15daObjIsuChild_cFv
/* 80C9F62C  2C 03 00 00 */	cmpwi r3, 0
/* 80C9F630  40 82 00 0C */	bne lbl_80C9F63C
/* 80C9F634  38 60 00 00 */	li r3, 0
/* 80C9F638  48 00 00 18 */	b lbl_80C9F650
lbl_80C9F63C:
/* 80C9F63C  3B DE 00 01 */	addi r30, r30, 1
/* 80C9F640  2C 1E 00 3C */	cmpwi r30, 0x3c
/* 80C9F644  3B FF 02 F4 */	addi r31, r31, 0x2f4
/* 80C9F648  41 80 FF D0 */	blt lbl_80C9F618
/* 80C9F64C  38 60 00 01 */	li r3, 1
lbl_80C9F650:
/* 80C9F650  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C9F654  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C9F658  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C9F65C  7C 08 03 A6 */	mtlr r0
/* 80C9F660  38 21 00 10 */	addi r1, r1, 0x10
/* 80C9F664  4E 80 00 20 */	blr 
