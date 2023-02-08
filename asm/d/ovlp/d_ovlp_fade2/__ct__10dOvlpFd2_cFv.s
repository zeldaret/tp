lbl_80252990:
/* 80252990  3C 80 80 3A */	lis r4, __vt__12dDlst_base_c@ha /* 0x803A6F88@ha */
/* 80252994  38 A4 6F 88 */	addi r5, r4, __vt__12dDlst_base_c@l /* 0x803A6F88@l */
/* 80252998  90 A3 00 D8 */	stw r5, 0xd8(r3)
/* 8025299C  3C 80 80 3C */	lis r4, __vt__16dDlst_snapShot_c@ha /* 0x803C2DEC@ha */
/* 802529A0  38 04 2D EC */	addi r0, r4, __vt__16dDlst_snapShot_c@l /* 0x803C2DEC@l */
/* 802529A4  90 03 00 D8 */	stw r0, 0xd8(r3)
/* 802529A8  90 A3 00 DC */	stw r5, 0xdc(r3)
/* 802529AC  3C 80 80 3C */	lis r4, __vt__15dOvlpFd2_dlst_c@ha /* 0x803C2D5C@ha */
/* 802529B0  38 04 2D 5C */	addi r0, r4, __vt__15dOvlpFd2_dlst_c@l /* 0x803C2D5C@l */
/* 802529B4  90 03 00 DC */	stw r0, 0xdc(r3)
/* 802529B8  3C 80 80 3C */	lis r4, lit_3695@ha /* 0x803C2CF0@ha */
/* 802529BC  38 A4 2C F0 */	addi r5, r4, lit_3695@l /* 0x803C2CF0@l */
/* 802529C0  80 85 00 00 */	lwz r4, 0(r5)
/* 802529C4  80 05 00 04 */	lwz r0, 4(r5)
/* 802529C8  90 83 00 CC */	stw r4, 0xcc(r3)
/* 802529CC  90 03 00 D0 */	stw r0, 0xd0(r3)
/* 802529D0  80 05 00 08 */	lwz r0, 8(r5)
/* 802529D4  90 03 00 D4 */	stw r0, 0xd4(r3)
/* 802529D8  38 00 00 00 */	li r0, 0
/* 802529DC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802529E0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802529E4  98 04 5E B8 */	stb r0, 0x5eb8(r4)
/* 802529E8  38 00 00 02 */	li r0, 2
/* 802529EC  98 03 01 1D */	stb r0, 0x11d(r3)
/* 802529F0  4E 80 00 20 */	blr 
