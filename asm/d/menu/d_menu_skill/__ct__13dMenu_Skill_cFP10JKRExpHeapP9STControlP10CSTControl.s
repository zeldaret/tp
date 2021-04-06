lbl_801F7224:
/* 801F7224  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F7228  7C 08 02 A6 */	mflr r0
/* 801F722C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F7230  39 61 00 20 */	addi r11, r1, 0x20
/* 801F7234  48 16 AF A5 */	bl _savegpr_28
/* 801F7238  7C 7F 1B 78 */	mr r31, r3
/* 801F723C  7C 9C 23 78 */	mr r28, r4
/* 801F7240  7C BD 2B 78 */	mr r29, r5
/* 801F7244  7C DE 33 78 */	mr r30, r6
/* 801F7248  3C 60 80 3A */	lis r3, __vt__12dDlst_base_c@ha /* 0x803A6F88@ha */
/* 801F724C  38 03 6F 88 */	addi r0, r3, __vt__12dDlst_base_c@l /* 0x803A6F88@l */
/* 801F7250  90 1F 00 00 */	stw r0, 0(r31)
/* 801F7254  3C 60 80 3C */	lis r3, __vt__13dMenu_Skill_c@ha /* 0x803BE8C0@ha */
/* 801F7258  38 03 E8 C0 */	addi r0, r3, __vt__13dMenu_Skill_c@l /* 0x803BE8C0@l */
/* 801F725C  90 1F 00 00 */	stw r0, 0(r31)
/* 801F7260  38 7F 01 A0 */	addi r3, r31, 0x1a0
/* 801F7264  3C 80 80 19 */	lis r4, __ct__Q28JUtility6TColorFv@ha /* 0x80193960@ha */
/* 801F7268  38 84 39 60 */	addi r4, r4, __ct__Q28JUtility6TColorFv@l /* 0x80193960@l */
/* 801F726C  38 A0 00 00 */	li r5, 0
/* 801F7270  38 C0 00 04 */	li r6, 4
/* 801F7274  38 E0 00 05 */	li r7, 5
/* 801F7278  48 16 AA E9 */	bl __construct_array
/* 801F727C  38 7F 01 B4 */	addi r3, r31, 0x1b4
/* 801F7280  3C 80 80 19 */	lis r4, __ct__Q28JUtility6TColorFv@ha /* 0x80193960@ha */
/* 801F7284  38 84 39 60 */	addi r4, r4, __ct__Q28JUtility6TColorFv@l /* 0x80193960@l */
/* 801F7288  38 A0 00 00 */	li r5, 0
/* 801F728C  38 C0 00 04 */	li r6, 4
/* 801F7290  38 E0 00 05 */	li r7, 5
/* 801F7294  48 16 AA CD */	bl __construct_array
/* 801F7298  38 7F 01 C8 */	addi r3, r31, 0x1c8
/* 801F729C  3C 80 80 19 */	lis r4, __ct__Q28JUtility6TColorFv@ha /* 0x80193960@ha */
/* 801F72A0  38 84 39 60 */	addi r4, r4, __ct__Q28JUtility6TColorFv@l /* 0x80193960@l */
/* 801F72A4  38 A0 00 00 */	li r5, 0
/* 801F72A8  38 C0 00 04 */	li r6, 4
/* 801F72AC  38 E0 00 05 */	li r7, 5
/* 801F72B0  48 16 AA B1 */	bl __construct_array
/* 801F72B4  38 7F 01 DC */	addi r3, r31, 0x1dc
/* 801F72B8  3C 80 80 19 */	lis r4, __ct__Q28JUtility6TColorFv@ha /* 0x80193960@ha */
/* 801F72BC  38 84 39 60 */	addi r4, r4, __ct__Q28JUtility6TColorFv@l /* 0x80193960@l */
/* 801F72C0  38 A0 00 00 */	li r5, 0
/* 801F72C4  38 C0 00 04 */	li r6, 4
/* 801F72C8  38 E0 00 05 */	li r7, 5
/* 801F72CC  48 16 AA 95 */	bl __construct_array
/* 801F72D0  93 9F 00 04 */	stw r28, 4(r31)
/* 801F72D4  38 60 00 00 */	li r3, 0
/* 801F72D8  90 7F 00 08 */	stw r3, 8(r31)
/* 801F72DC  90 7F 00 14 */	stw r3, 0x14(r31)
/* 801F72E0  93 BF 00 0C */	stw r29, 0xc(r31)
/* 801F72E4  93 DF 00 10 */	stw r30, 0x10(r31)
/* 801F72E8  38 00 00 01 */	li r0, 1
/* 801F72EC  98 1F 02 04 */	stb r0, 0x204(r31)
/* 801F72F0  98 7F 02 05 */	stb r3, 0x205(r31)
/* 801F72F4  B0 7F 02 00 */	sth r3, 0x200(r31)
/* 801F72F8  90 7F 01 FC */	stw r3, 0x1fc(r31)
/* 801F72FC  B0 7F 02 02 */	sth r3, 0x202(r31)
/* 801F7300  98 7F 02 06 */	stb r3, 0x206(r31)
/* 801F7304  38 00 00 FF */	li r0, 0xff
/* 801F7308  98 1F 02 09 */	stb r0, 0x209(r31)
/* 801F730C  98 1F 02 0A */	stb r0, 0x20a(r31)
/* 801F7310  7F E3 FB 78 */	mr r3, r31
/* 801F7314  48 00 06 65 */	bl skill_init_calc__13dMenu_Skill_cFv
/* 801F7318  C0 02 AA 88 */	lfs f0, lit_3808(r2)
/* 801F731C  D0 1F 01 F0 */	stfs f0, 0x1f0(r31)
/* 801F7320  C0 02 AA 8C */	lfs f0, lit_3809(r2)
/* 801F7324  D0 1F 01 F8 */	stfs f0, 0x1f8(r31)
/* 801F7328  D0 1F 01 F4 */	stfs f0, 0x1f4(r31)
/* 801F732C  7F E3 FB 78 */	mr r3, r31
/* 801F7330  39 61 00 20 */	addi r11, r1, 0x20
/* 801F7334  48 16 AE F1 */	bl _restgpr_28
/* 801F7338  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F733C  7C 08 03 A6 */	mtlr r0
/* 801F7340  38 21 00 20 */	addi r1, r1, 0x20
/* 801F7344  4E 80 00 20 */	blr 
