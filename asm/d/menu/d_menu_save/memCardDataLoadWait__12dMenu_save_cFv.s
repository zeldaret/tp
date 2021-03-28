lbl_801F27CC:
/* 801F27CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F27D0  7C 08 02 A6 */	mflr r0
/* 801F27D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F27D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F27DC  7C 7F 1B 78 */	mr r31, r3
/* 801F27E0  3C 60 80 3F */	lis r3, g_mDoMemCd_control@ha
/* 801F27E4  38 63 AF 40 */	addi r3, r3, g_mDoMemCd_control@l
/* 801F27E8  38 9F 01 D0 */	addi r4, r31, 0x1d0
/* 801F27EC  38 A0 1F BC */	li r5, 0x1fbc
/* 801F27F0  38 C0 00 00 */	li r6, 0
/* 801F27F4  4B E2 42 BD */	bl LoadSync__15mDoMemCd_Ctrl_cFPvUlUl
/* 801F27F8  2C 03 00 00 */	cmpwi r3, 0
/* 801F27FC  41 82 00 30 */	beq lbl_801F282C
/* 801F2800  2C 03 00 02 */	cmpwi r3, 2
/* 801F2804  40 82 00 18 */	bne lbl_801F281C
/* 801F2808  38 00 00 00 */	li r0, 0
/* 801F280C  98 1F 01 C0 */	stb r0, 0x1c0(r31)
/* 801F2810  38 00 00 06 */	li r0, 6
/* 801F2814  98 1F 01 B2 */	stb r0, 0x1b2(r31)
/* 801F2818  48 00 00 14 */	b lbl_801F282C
lbl_801F281C:
/* 801F281C  2C 03 00 01 */	cmpwi r3, 1
/* 801F2820  40 82 00 0C */	bne lbl_801F282C
/* 801F2824  7F E3 FB 78 */	mr r3, r31
/* 801F2828  48 00 2A 51 */	bl saveSelectOpenInit__12dMenu_save_cFv
lbl_801F282C:
/* 801F282C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F2830  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F2834  7C 08 03 A6 */	mtlr r0
/* 801F2838  38 21 00 10 */	addi r1, r1, 0x10
/* 801F283C  4E 80 00 20 */	blr 
