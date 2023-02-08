lbl_801902B8:
/* 801902B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801902BC  7C 08 02 A6 */	mflr r0
/* 801902C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801902C4  7C 64 1B 78 */	mr r4, r3
/* 801902C8  3C 60 80 3F */	lis r3, g_mDoMemCd_control@ha /* 0x803EAF40@ha */
/* 801902CC  38 63 AF 40 */	addi r3, r3, g_mDoMemCd_control@l /* 0x803EAF40@l */
/* 801902D0  38 84 03 B8 */	addi r4, r4, 0x3b8
/* 801902D4  38 A0 1F BC */	li r5, 0x1fbc
/* 801902D8  38 C0 00 00 */	li r6, 0
/* 801902DC  4B E8 68 7D */	bl save__15mDoMemCd_Ctrl_cFPvUlUl
/* 801902E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801902E4  7C 08 03 A6 */	mtlr r0
/* 801902E8  38 21 00 10 */	addi r1, r1, 0x10
/* 801902EC  4E 80 00 20 */	blr 
