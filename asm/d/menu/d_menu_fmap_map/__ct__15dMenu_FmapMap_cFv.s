lbl_801CEC24:
/* 801CEC24  3C 80 80 3A */	lis r4, __vt__12dDlst_base_c@ha /* 0x803A6F88@ha */
/* 801CEC28  38 04 6F 88 */	addi r0, r4, __vt__12dDlst_base_c@l /* 0x803A6F88@l */
/* 801CEC2C  90 03 00 00 */	stw r0, 0(r3)
/* 801CEC30  3C 80 80 3A */	lis r4, __vt__11dDrawPath_c@ha /* 0x803A7CF8@ha */
/* 801CEC34  38 04 7C F8 */	addi r0, r4, __vt__11dDrawPath_c@l /* 0x803A7CF8@l */
/* 801CEC38  90 03 00 00 */	stw r0, 0(r3)
/* 801CEC3C  3C 80 80 3A */	lis r4, __vt__28dDrawPathWithNormalPattern_c@ha /* 0x803A6F94@ha */
/* 801CEC40  38 04 6F 94 */	addi r0, r4, __vt__28dDrawPathWithNormalPattern_c@l /* 0x803A6F94@l */
/* 801CEC44  90 03 00 00 */	stw r0, 0(r3)
/* 801CEC48  3C 80 80 3A */	lis r4, __vt__15dRenderingMap_c@ha /* 0x803A6FD4@ha */
/* 801CEC4C  38 04 6F D4 */	addi r0, r4, __vt__15dRenderingMap_c@l /* 0x803A6FD4@l */
/* 801CEC50  90 03 00 00 */	stw r0, 0(r3)
/* 801CEC54  3C 80 80 3A */	lis r4, __vt__18dRenderingFDAmap_c@ha /* 0x803A7C90@ha */
/* 801CEC58  38 04 7C 90 */	addi r0, r4, __vt__18dRenderingFDAmap_c@l /* 0x803A7C90@l */
/* 801CEC5C  90 03 00 00 */	stw r0, 0(r3)
/* 801CEC60  38 A0 00 00 */	li r5, 0
/* 801CEC64  90 A3 00 04 */	stw r5, 4(r3)
/* 801CEC68  C0 02 A7 80 */	lfs f0, lit_3703(r2)
/* 801CEC6C  D0 03 00 08 */	stfs f0, 8(r3)
/* 801CEC70  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 801CEC74  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 801CEC78  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 801CEC7C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 801CEC80  B0 A3 00 1C */	sth r5, 0x1c(r3)
/* 801CEC84  B0 A3 00 1E */	sth r5, 0x1e(r3)
/* 801CEC88  B0 A3 00 20 */	sth r5, 0x20(r3)
/* 801CEC8C  B0 A3 00 22 */	sth r5, 0x22(r3)
/* 801CEC90  3C 80 80 3C */	lis r4, __vt__15renderingFmap_c@ha /* 0x803BD6E8@ha */
/* 801CEC94  38 04 D6 E8 */	addi r0, r4, __vt__15renderingFmap_c@l /* 0x803BD6E8@l */
/* 801CEC98  90 03 00 00 */	stw r0, 0(r3)
/* 801CEC9C  90 A3 00 78 */	stw r5, 0x78(r3)
/* 801CECA0  90 A3 00 7C */	stw r5, 0x7c(r3)
/* 801CECA4  90 A3 00 80 */	stw r5, 0x80(r3)
/* 801CECA8  90 A3 00 84 */	stw r5, 0x84(r3)
/* 801CECAC  90 A3 00 88 */	stw r5, 0x88(r3)
/* 801CECB0  90 A3 00 8C */	stw r5, 0x8c(r3)
/* 801CECB4  90 A3 00 90 */	stw r5, 0x90(r3)
/* 801CECB8  90 A3 00 94 */	stw r5, 0x94(r3)
/* 801CECBC  90 A3 00 98 */	stw r5, 0x98(r3)
/* 801CECC0  90 A3 00 9C */	stw r5, 0x9c(r3)
/* 801CECC4  90 A3 00 A0 */	stw r5, 0xa0(r3)
/* 801CECC8  90 A3 00 A4 */	stw r5, 0xa4(r3)
/* 801CECCC  D0 03 00 A8 */	stfs f0, 0xa8(r3)
/* 801CECD0  D0 03 00 AC */	stfs f0, 0xac(r3)
/* 801CECD4  D0 03 00 B0 */	stfs f0, 0xb0(r3)
/* 801CECD8  D0 03 00 B4 */	stfs f0, 0xb4(r3)
/* 801CECDC  98 A3 00 B8 */	stb r5, 0xb8(r3)
/* 801CECE0  98 A3 00 B9 */	stb r5, 0xb9(r3)
/* 801CECE4  98 A3 00 BA */	stb r5, 0xba(r3)
/* 801CECE8  98 A3 00 BB */	stb r5, 0xbb(r3)
/* 801CECEC  3C 80 80 3C */	lis r4, __vt__15dMenu_FmapMap_c@ha /* 0x803BD680@ha */
/* 801CECF0  38 04 D6 80 */	addi r0, r4, __vt__15dMenu_FmapMap_c@l /* 0x803BD680@l */
/* 801CECF4  90 03 00 00 */	stw r0, 0(r3)
/* 801CECF8  90 A3 00 BC */	stw r5, 0xbc(r3)
/* 801CECFC  90 A3 00 C0 */	stw r5, 0xc0(r3)
/* 801CED00  90 A3 00 C4 */	stw r5, 0xc4(r3)
/* 801CED04  90 A3 00 C8 */	stw r5, 0xc8(r3)
/* 801CED08  90 A3 00 CC */	stw r5, 0xcc(r3)
/* 801CED0C  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801CED10  90 A3 00 D4 */	stw r5, 0xd4(r3)
/* 801CED14  98 A3 00 D8 */	stb r5, 0xd8(r3)
/* 801CED18  98 A3 00 D9 */	stb r5, 0xd9(r3)
/* 801CED1C  90 A3 00 DC */	stw r5, 0xdc(r3)
/* 801CED20  90 A3 00 E0 */	stw r5, 0xe0(r3)
/* 801CED24  98 A3 00 E4 */	stb r5, 0xe4(r3)
/* 801CED28  98 A3 00 E5 */	stb r5, 0xe5(r3)
/* 801CED2C  90 A3 00 E8 */	stw r5, 0xe8(r3)
/* 801CED30  90 A3 00 EC */	stw r5, 0xec(r3)
/* 801CED34  4E 80 00 20 */	blr 
