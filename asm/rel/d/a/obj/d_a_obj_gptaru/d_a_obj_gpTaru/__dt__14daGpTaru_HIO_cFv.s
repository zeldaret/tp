lbl_8057F458:
/* 8057F458  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057F45C  7C 08 02 A6 */	mflr r0
/* 8057F460  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057F464  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057F468  7C 7F 1B 79 */	or. r31, r3, r3
/* 8057F46C  41 82 00 40 */	beq lbl_8057F4AC
/* 8057F470  3C 60 80 58 */	lis r3, __vt__14daGpTaru_HIO_c@ha
/* 8057F474  38 03 F8 A8 */	addi r0, r3, __vt__14daGpTaru_HIO_c@l
/* 8057F478  90 1F 00 00 */	stw r0, 0(r31)
/* 8057F47C  41 82 00 20 */	beq lbl_8057F49C
/* 8057F480  3C 60 80 58 */	lis r3, __vt__18fOpAcm_HIO_entry_c@ha
/* 8057F484  38 03 F8 B4 */	addi r0, r3, __vt__18fOpAcm_HIO_entry_c@l
/* 8057F488  90 1F 00 00 */	stw r0, 0(r31)
/* 8057F48C  41 82 00 10 */	beq lbl_8057F49C
/* 8057F490  3C 60 80 58 */	lis r3, __vt__14mDoHIO_entry_c@ha
/* 8057F494  38 03 F8 C0 */	addi r0, r3, __vt__14mDoHIO_entry_c@l
/* 8057F498  90 1F 00 00 */	stw r0, 0(r31)
lbl_8057F49C:
/* 8057F49C  7C 80 07 35 */	extsh. r0, r4
/* 8057F4A0  40 81 00 0C */	ble lbl_8057F4AC
/* 8057F4A4  7F E3 FB 78 */	mr r3, r31
/* 8057F4A8  4B D4 F8 94 */	b __dl__FPv
lbl_8057F4AC:
/* 8057F4AC  7F E3 FB 78 */	mr r3, r31
/* 8057F4B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057F4B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057F4B8  7C 08 03 A6 */	mtlr r0
/* 8057F4BC  38 21 00 10 */	addi r1, r1, 0x10
/* 8057F4C0  4E 80 00 20 */	blr 
