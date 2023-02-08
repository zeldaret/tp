lbl_80D61A00:
/* 80D61A00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D61A04  7C 08 02 A6 */	mflr r0
/* 80D61A08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D61A0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D61A10  7C 7F 1B 78 */	mr r31, r3
/* 80D61A14  3C 60 80 D6 */	lis r3, search_spinner_sub__FPvPv@ha /* 0x80D61718@ha */
/* 80D61A18  38 63 17 18 */	addi r3, r3, search_spinner_sub__FPvPv@l /* 0x80D61718@l */
/* 80D61A1C  7F E4 FB 78 */	mr r4, r31
/* 80D61A20  4B 2B 7D D9 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80D61A24  28 03 00 00 */	cmplwi r3, 0
/* 80D61A28  41 82 00 58 */	beq lbl_80D61A80
/* 80D61A2C  88 03 0A 6F */	lbz r0, 0xa6f(r3)
/* 80D61A30  28 00 00 00 */	cmplwi r0, 0
/* 80D61A34  40 82 00 0C */	bne lbl_80D61A40
/* 80D61A38  38 00 00 01 */	li r0, 1
/* 80D61A3C  98 03 0A 6F */	stb r0, 0xa6f(r3)
lbl_80D61A40:
/* 80D61A40  38 00 00 00 */	li r0, 0
/* 80D61A44  90 03 0A 64 */	stw r0, 0xa64(r3)
/* 80D61A48  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80D61A4C  D0 03 0A A4 */	stfs f0, 0xaa4(r3)
/* 80D61A50  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80D61A54  D0 03 0A A8 */	stfs f0, 0xaa8(r3)
/* 80D61A58  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80D61A5C  D0 03 0A AC */	stfs f0, 0xaac(r3)
/* 80D61A60  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D61A64  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D61A68  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D61A6C  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80D61A70  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D61A74  7C 05 07 74 */	extsb r5, r0
/* 80D61A78  4B 2D 37 89 */	bl onSwitch__10dSv_info_cFii
/* 80D61A7C  48 00 00 20 */	b lbl_80D61A9C
lbl_80D61A80:
/* 80D61A80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D61A84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D61A88  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D61A8C  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80D61A90  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D61A94  7C 05 07 74 */	extsb r5, r0
/* 80D61A98  4B 2D 38 19 */	bl offSwitch__10dSv_info_cFii
lbl_80D61A9C:
/* 80D61A9C  38 60 00 01 */	li r3, 1
/* 80D61AA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D61AA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D61AA8  7C 08 03 A6 */	mtlr r0
/* 80D61AAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D61AB0  4E 80 00 20 */	blr 
