lbl_804860EC:
/* 804860EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804860F0  7C 08 02 A6 */	mflr r0
/* 804860F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 804860F8  39 61 00 20 */	addi r11, r1, 0x20
/* 804860FC  4B ED C0 E1 */	bl _savegpr_29
/* 80486100  7C 7F 1B 78 */	mr r31, r3
/* 80486104  3C 60 80 48 */	lis r3, l_arcName@ha /* 0x804873BC@ha */
/* 80486108  38 63 73 BC */	addi r3, r3, l_arcName@l /* 0x804873BC@l */
/* 8048610C  80 63 00 00 */	lwz r3, 0(r3)
/* 80486110  38 80 00 08 */	li r4, 8
/* 80486114  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80486118  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8048611C  3F A5 00 02 */	addis r29, r5, 2
/* 80486120  3B BD C2 F8 */	addi r29, r29, -15624
/* 80486124  7F A5 EB 78 */	mr r5, r29
/* 80486128  38 C0 00 80 */	li r6, 0x80
/* 8048612C  4B BB 61 C1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80486130  7C 7E 1B 78 */	mr r30, r3
/* 80486134  3C 80 00 08 */	lis r4, 8
/* 80486138  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000202@ha */
/* 8048613C  38 A5 02 02 */	addi r5, r5, 0x0202 /* 0x11000202@l */
/* 80486140  4B B8 EB 15 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80486144  90 7F 05 70 */	stw r3, 0x570(r31)
/* 80486148  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 8048614C  28 00 00 00 */	cmplwi r0, 0
/* 80486150  40 82 00 0C */	bne lbl_8048615C
/* 80486154  38 60 00 00 */	li r3, 0
/* 80486158  48 00 00 A4 */	b lbl_804861FC
lbl_8048615C:
/* 8048615C  3C 60 80 48 */	lis r3, l_arcName@ha /* 0x804873BC@ha */
/* 80486160  38 63 73 BC */	addi r3, r3, l_arcName@l /* 0x804873BC@l */
/* 80486164  80 63 00 00 */	lwz r3, 0(r3)
/* 80486168  38 80 00 05 */	li r4, 5
/* 8048616C  7F A5 EB 78 */	mr r5, r29
/* 80486170  38 C0 00 80 */	li r6, 0x80
/* 80486174  4B BB 61 79 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80486178  7C 64 1B 78 */	mr r4, r3
/* 8048617C  38 7F 05 74 */	addi r3, r31, 0x574
/* 80486180  38 A0 00 01 */	li r5, 1
/* 80486184  38 C0 00 02 */	li r6, 2
/* 80486188  3C E0 80 48 */	lis r7, lit_3685@ha /* 0x80487370@ha */
/* 8048618C  C0 27 73 70 */	lfs f1, lit_3685@l(r7)  /* 0x80487370@l */
/* 80486190  38 E0 00 00 */	li r7, 0
/* 80486194  39 00 FF FF */	li r8, -1
/* 80486198  39 20 00 00 */	li r9, 0
/* 8048619C  4B B8 76 41 */	bl init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 804861A0  2C 03 00 00 */	cmpwi r3, 0
/* 804861A4  40 82 00 0C */	bne lbl_804861B0
/* 804861A8  38 60 00 00 */	li r3, 0
/* 804861AC  48 00 00 50 */	b lbl_804861FC
lbl_804861B0:
/* 804861B0  3C 60 80 48 */	lis r3, l_arcName@ha /* 0x804873BC@ha */
/* 804861B4  38 63 73 BC */	addi r3, r3, l_arcName@l /* 0x804873BC@l */
/* 804861B8  80 63 00 00 */	lwz r3, 0(r3)
/* 804861BC  38 80 00 0B */	li r4, 0xb
/* 804861C0  7F A5 EB 78 */	mr r5, r29
/* 804861C4  38 C0 00 80 */	li r6, 0x80
/* 804861C8  4B BB 61 25 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804861CC  7C 65 1B 78 */	mr r5, r3
/* 804861D0  38 7F 05 90 */	addi r3, r31, 0x590
/* 804861D4  38 9E 00 58 */	addi r4, r30, 0x58
/* 804861D8  38 C0 00 00 */	li r6, 0
/* 804861DC  38 E0 00 02 */	li r7, 2
/* 804861E0  3D 00 80 48 */	lis r8, lit_3685@ha /* 0x80487370@ha */
/* 804861E4  C0 28 73 70 */	lfs f1, lit_3685@l(r8)  /* 0x80487370@l */
/* 804861E8  39 00 00 00 */	li r8, 0
/* 804861EC  39 20 FF FF */	li r9, -1
/* 804861F0  4B B8 75 1D */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 804861F4  30 03 FF FF */	addic r0, r3, -1
/* 804861F8  7C 60 19 10 */	subfe r3, r0, r3
lbl_804861FC:
/* 804861FC  39 61 00 20 */	addi r11, r1, 0x20
/* 80486200  4B ED C0 29 */	bl _restgpr_29
/* 80486204  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80486208  7C 08 03 A6 */	mtlr r0
/* 8048620C  38 21 00 20 */	addi r1, r1, 0x20
/* 80486210  4E 80 00 20 */	blr 
