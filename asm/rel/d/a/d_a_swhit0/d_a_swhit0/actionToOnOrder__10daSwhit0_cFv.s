lbl_80486C28:
/* 80486C28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80486C2C  7C 08 02 A6 */	mflr r0
/* 80486C30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80486C34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80486C38  93 C1 00 08 */	stw r30, 8(r1)
/* 80486C3C  7C 7E 1B 78 */	mr r30, r3
/* 80486C40  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 80486C44  28 00 00 02 */	cmplwi r0, 2
/* 80486C48  40 82 00 7C */	bne lbl_80486CC4
/* 80486C4C  4B FF F3 C5 */	bl getEvNo__10daSwhit0_cFv
/* 80486C50  7C 64 1B 78 */	mr r4, r3
/* 80486C54  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80486C58  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80486C5C  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80486C60  7F E3 FB 78 */	mr r3, r31
/* 80486C64  38 A0 FF FF */	li r5, -1
/* 80486C68  4B BC 0C C9 */	bl isMapToolCamera__16dEvent_manager_cFUcl
/* 80486C6C  2C 03 00 00 */	cmpwi r3, 0
/* 80486C70  41 82 00 1C */	beq lbl_80486C8C
/* 80486C74  38 00 00 06 */	li r0, 6
/* 80486C78  98 1E 07 4E */	stb r0, 0x74e(r30)
/* 80486C7C  88 7E 07 4D */	lbz r3, 0x74d(r30)
/* 80486C80  38 03 00 02 */	addi r0, r3, 2
/* 80486C84  98 1E 07 4D */	stb r0, 0x74d(r30)
/* 80486C88  48 00 00 40 */	b lbl_80486CC8
lbl_80486C8C:
/* 80486C8C  88 7E 07 4D */	lbz r3, 0x74d(r30)
/* 80486C90  38 03 00 01 */	addi r0, r3, 1
/* 80486C94  98 1E 07 4D */	stb r0, 0x74d(r30)
/* 80486C98  7F E3 FB 78 */	mr r3, r31
/* 80486C9C  3C 80 80 48 */	lis r4, d_a_swhit0__stringBase0@ha /* 0x80487388@ha */
/* 80486CA0  38 84 73 88 */	addi r4, r4, d_a_swhit0__stringBase0@l /* 0x80487388@l */
/* 80486CA4  38 84 00 2C */	addi r4, r4, 0x2c
/* 80486CA8  38 A0 00 00 */	li r5, 0
/* 80486CAC  38 C0 00 00 */	li r6, 0
/* 80486CB0  4B BC 0E 6D */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80486CB4  90 7E 07 58 */	stw r3, 0x758(r30)
/* 80486CB8  7F C3 F3 78 */	mr r3, r30
/* 80486CBC  4B FF FB ED */	bl DemoProc__10daSwhit0_cFv
/* 80486CC0  48 00 00 08 */	b lbl_80486CC8
lbl_80486CC4:
/* 80486CC4  4B FF FD 01 */	bl orderEvent__10daSwhit0_cFv
lbl_80486CC8:
/* 80486CC8  38 60 00 01 */	li r3, 1
/* 80486CCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80486CD0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80486CD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80486CD8  7C 08 03 A6 */	mtlr r0
/* 80486CDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80486CE0  4E 80 00 20 */	blr 
