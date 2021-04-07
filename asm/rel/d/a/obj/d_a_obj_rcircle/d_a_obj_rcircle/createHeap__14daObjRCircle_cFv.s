lbl_80CB8814:
/* 80CB8814  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CB8818  7C 08 02 A6 */	mflr r0
/* 80CB881C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CB8820  39 61 00 20 */	addi r11, r1, 0x20
/* 80CB8824  4B 6A 99 B9 */	bl _savegpr_29
/* 80CB8828  7C 7F 1B 78 */	mr r31, r3
/* 80CB882C  3C 60 80 CC */	lis r3, l_arcName@ha /* 0x80CB8D10@ha */
/* 80CB8830  38 63 8D 10 */	addi r3, r3, l_arcName@l /* 0x80CB8D10@l */
/* 80CB8834  80 63 00 00 */	lwz r3, 0(r3)
/* 80CB8838  38 80 00 05 */	li r4, 5
/* 80CB883C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CB8840  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CB8844  3F A5 00 02 */	addis r29, r5, 2
/* 80CB8848  3B BD C2 F8 */	addi r29, r29, -15624
/* 80CB884C  7F A5 EB 78 */	mr r5, r29
/* 80CB8850  38 C0 00 80 */	li r6, 0x80
/* 80CB8854  4B 38 3A 99 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CB8858  7C 7E 1B 78 */	mr r30, r3
/* 80CB885C  3C 80 00 08 */	lis r4, 8
/* 80CB8860  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000284@ha */
/* 80CB8864  38 A5 02 84 */	addi r5, r5, 0x0284 /* 0x11000284@l */
/* 80CB8868  4B 35 C3 ED */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80CB886C  90 7F 05 A4 */	stw r3, 0x5a4(r31)
/* 80CB8870  80 1F 05 A4 */	lwz r0, 0x5a4(r31)
/* 80CB8874  28 00 00 00 */	cmplwi r0, 0
/* 80CB8878  40 82 00 0C */	bne lbl_80CB8884
/* 80CB887C  38 60 00 00 */	li r3, 0
/* 80CB8880  48 00 00 90 */	b lbl_80CB8910
lbl_80CB8884:
/* 80CB8884  3C 60 80 CC */	lis r3, l_arcName@ha /* 0x80CB8D10@ha */
/* 80CB8888  38 63 8D 10 */	addi r3, r3, l_arcName@l /* 0x80CB8D10@l */
/* 80CB888C  80 63 00 00 */	lwz r3, 0(r3)
/* 80CB8890  38 80 00 0B */	li r4, 0xb
/* 80CB8894  7F A5 EB 78 */	mr r5, r29
/* 80CB8898  38 C0 00 80 */	li r6, 0x80
/* 80CB889C  4B 38 3A 51 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CB88A0  7C 65 1B 78 */	mr r5, r3
/* 80CB88A4  38 7F 05 8C */	addi r3, r31, 0x58c
/* 80CB88A8  38 9E 00 58 */	addi r4, r30, 0x58
/* 80CB88AC  38 C0 00 01 */	li r6, 1
/* 80CB88B0  38 E0 00 02 */	li r7, 2
/* 80CB88B4  3D 00 80 CC */	lis r8, lit_3701@ha /* 0x80CB8D00@ha */
/* 80CB88B8  C0 28 8D 00 */	lfs f1, lit_3701@l(r8)  /* 0x80CB8D00@l */
/* 80CB88BC  39 00 00 00 */	li r8, 0
/* 80CB88C0  39 20 FF FF */	li r9, -1
/* 80CB88C4  4B 35 4D 79 */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80CB88C8  3C 60 80 CC */	lis r3, l_arcName@ha /* 0x80CB8D10@ha */
/* 80CB88CC  38 63 8D 10 */	addi r3, r3, l_arcName@l /* 0x80CB8D10@l */
/* 80CB88D0  80 63 00 00 */	lwz r3, 0(r3)
/* 80CB88D4  38 80 00 08 */	li r4, 8
/* 80CB88D8  7F A5 EB 78 */	mr r5, r29
/* 80CB88DC  38 C0 00 80 */	li r6, 0x80
/* 80CB88E0  4B 38 3A 0D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CB88E4  7C 65 1B 78 */	mr r5, r3
/* 80CB88E8  38 7F 05 74 */	addi r3, r31, 0x574
/* 80CB88EC  38 9E 00 58 */	addi r4, r30, 0x58
/* 80CB88F0  38 C0 00 01 */	li r6, 1
/* 80CB88F4  38 E0 00 00 */	li r7, 0
/* 80CB88F8  3D 00 80 CC */	lis r8, lit_3702@ha /* 0x80CB8D04@ha */
/* 80CB88FC  C0 28 8D 04 */	lfs f1, lit_3702@l(r8)  /* 0x80CB8D04@l */
/* 80CB8900  39 00 00 00 */	li r8, 0
/* 80CB8904  39 20 FF FF */	li r9, -1
/* 80CB8908  4B 35 4E 05 */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80CB890C  38 60 00 01 */	li r3, 1
lbl_80CB8910:
/* 80CB8910  39 61 00 20 */	addi r11, r1, 0x20
/* 80CB8914  4B 6A 99 15 */	bl _restgpr_29
/* 80CB8918  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CB891C  7C 08 03 A6 */	mtlr r0
/* 80CB8920  38 21 00 20 */	addi r1, r1, 0x20
/* 80CB8924  4E 80 00 20 */	blr 
