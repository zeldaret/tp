lbl_801F67B8:
/* 801F67B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F67BC  7C 08 02 A6 */	mflr r0
/* 801F67C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F67C4  7C 64 1B 78 */	mr r4, r3
/* 801F67C8  3C 60 80 3F */	lis r3, g_mDoMemCd_control@ha /* 0x803EAF40@ha */
/* 801F67CC  38 63 AF 40 */	addi r3, r3, g_mDoMemCd_control@l /* 0x803EAF40@l */
/* 801F67D0  38 84 01 D0 */	addi r4, r4, 0x1d0
/* 801F67D4  38 A0 1F BC */	li r5, 0x1fbc
/* 801F67D8  38 C0 00 00 */	li r6, 0
/* 801F67DC  4B E2 03 7D */	bl save__15mDoMemCd_Ctrl_cFPvUlUl
/* 801F67E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F67E4  7C 08 03 A6 */	mtlr r0
/* 801F67E8  38 21 00 10 */	addi r1, r1, 0x10
/* 801F67EC  4E 80 00 20 */	blr 
