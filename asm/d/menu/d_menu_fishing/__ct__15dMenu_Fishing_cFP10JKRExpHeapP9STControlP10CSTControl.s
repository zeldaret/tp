lbl_801C4D54:
/* 801C4D54  3C E0 80 3A */	lis r7, __vt__12dDlst_base_c@ha /* 0x803A6F88@ha */
/* 801C4D58  38 07 6F 88 */	addi r0, r7, __vt__12dDlst_base_c@l /* 0x803A6F88@l */
/* 801C4D5C  90 03 00 00 */	stw r0, 0(r3)
/* 801C4D60  3C E0 80 3C */	lis r7, __vt__15dMenu_Fishing_c@ha /* 0x803BD074@ha */
/* 801C4D64  38 07 D0 74 */	addi r0, r7, __vt__15dMenu_Fishing_c@l /* 0x803BD074@l */
/* 801C4D68  90 03 00 00 */	stw r0, 0(r3)
/* 801C4D6C  90 83 00 04 */	stw r4, 4(r3)
/* 801C4D70  38 80 00 00 */	li r4, 0
/* 801C4D74  90 83 00 08 */	stw r4, 8(r3)
/* 801C4D78  90 83 00 14 */	stw r4, 0x14(r3)
/* 801C4D7C  90 A3 00 0C */	stw r5, 0xc(r3)
/* 801C4D80  90 C3 00 10 */	stw r6, 0x10(r3)
/* 801C4D84  38 00 00 01 */	li r0, 1
/* 801C4D88  98 03 01 FA */	stb r0, 0x1fa(r3)
/* 801C4D8C  98 83 01 FB */	stb r4, 0x1fb(r3)
/* 801C4D90  B0 83 01 F8 */	sth r4, 0x1f8(r3)
/* 801C4D94  4E 80 00 20 */	blr 
