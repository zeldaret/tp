lbl_801F25AC:
/* 801F25AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F25B0  7C 08 02 A6 */	mflr r0
/* 801F25B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F25B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F25BC  7C 7F 1B 78 */	mr r31, r3
/* 801F25C0  88 63 01 BD */	lbz r3, 0x1bd(r3)
/* 801F25C4  28 03 00 00 */	cmplwi r3, 0
/* 801F25C8  41 82 00 0C */	beq lbl_801F25D4
/* 801F25CC  38 03 FF FF */	addi r0, r3, -1
/* 801F25D0  98 1F 01 BD */	stb r0, 0x1bd(r31)
lbl_801F25D4:
/* 801F25D4  3C 60 80 3F */	lis r3, g_mDoMemCd_control@ha
/* 801F25D8  38 63 AF 40 */	addi r3, r3, g_mDoMemCd_control@l
/* 801F25DC  4B E2 47 05 */	bl SaveSync__15mDoMemCd_Ctrl_cFv
/* 801F25E0  90 7F 21 98 */	stw r3, 0x2198(r31)
/* 801F25E4  80 1F 21 98 */	lwz r0, 0x2198(r31)
/* 801F25E8  2C 00 00 00 */	cmpwi r0, 0
/* 801F25EC  41 82 00 0C */	beq lbl_801F25F8
/* 801F25F0  38 00 00 1B */	li r0, 0x1b
/* 801F25F4  98 1F 01 B2 */	stb r0, 0x1b2(r31)
lbl_801F25F8:
/* 801F25F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F25FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F2600  7C 08 03 A6 */	mtlr r0
/* 801F2604  38 21 00 10 */	addi r1, r1, 0x10
/* 801F2608  4E 80 00 20 */	blr 
