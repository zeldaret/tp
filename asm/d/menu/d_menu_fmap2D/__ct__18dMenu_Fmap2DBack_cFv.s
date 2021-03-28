lbl_801CF56C:
/* 801CF56C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801CF570  7C 08 02 A6 */	mflr r0
/* 801CF574  90 01 00 44 */	stw r0, 0x44(r1)
/* 801CF578  39 61 00 40 */	addi r11, r1, 0x40
/* 801CF57C  48 19 2C 59 */	bl _savegpr_27
/* 801CF580  7C 7F 1B 78 */	mr r31, r3
/* 801CF584  3C 60 80 3A */	lis r3, __vt__12dDlst_base_c@ha
/* 801CF588  38 03 6F 88 */	addi r0, r3, __vt__12dDlst_base_c@l
/* 801CF58C  90 1F 00 00 */	stw r0, 0(r31)
/* 801CF590  38 7F 00 04 */	addi r3, r31, 4
/* 801CF594  4B FF 31 85 */	bl __ct__16dMenuMapCommon_cFv
/* 801CF598  3C 60 80 3C */	lis r3, __vt__18dMenu_Fmap2DBack_c@ha
/* 801CF59C  38 63 D7 60 */	addi r3, r3, __vt__18dMenu_Fmap2DBack_c@l
/* 801CF5A0  90 7F 00 00 */	stw r3, 0(r31)
/* 801CF5A4  38 03 00 0C */	addi r0, r3, 0xc
/* 801CF5A8  90 1F 00 04 */	stw r0, 4(r31)
/* 801CF5AC  38 00 FF FF */	li r0, -1
/* 801CF5B0  90 1F 11 F0 */	stw r0, 0x11f0(r31)
/* 801CF5B4  90 1F 11 F4 */	stw r0, 0x11f4(r31)
/* 801CF5B8  90 1F 11 F8 */	stw r0, 0x11f8(r31)
/* 801CF5BC  90 1F 11 FC */	stw r0, 0x11fc(r31)
/* 801CF5C0  90 1F 12 00 */	stw r0, 0x1200(r31)
/* 801CF5C4  90 1F 12 04 */	stw r0, 0x1204(r31)
/* 801CF5C8  90 1F 12 08 */	stw r0, 0x1208(r31)
/* 801CF5CC  90 1F 12 0C */	stw r0, 0x120c(r31)
/* 801CF5D0  38 60 00 00 */	li r3, 0
/* 801CF5D4  3C 80 80 43 */	lis r4, g_meter2_info@ha
/* 801CF5D8  38 84 01 88 */	addi r4, r4, g_meter2_info@l
/* 801CF5DC  98 64 00 F2 */	stb r3, 0xf2(r4)
/* 801CF5E0  38 80 00 00 */	li r4, 0
/* 801CF5E4  38 A0 00 00 */	li r5, 0
/* 801CF5E8  C0 02 A7 D0 */	lfs f0, lit_3970(r2)
/* 801CF5EC  38 00 00 08 */	li r0, 8
/* 801CF5F0  7C 09 03 A6 */	mtctr r0
lbl_801CF5F4:
/* 801CF5F4  38 C0 00 00 */	li r6, 0
/* 801CF5F8  38 03 0C B4 */	addi r0, r3, 0xcb4
/* 801CF5FC  7C DF 01 2E */	stwx r6, r31, r0
/* 801CF600  38 03 0E 8C */	addi r0, r3, 0xe8c
/* 801CF604  7C 1F 05 2E */	stfsx f0, r31, r0
/* 801CF608  38 03 0E AC */	addi r0, r3, 0xeac
/* 801CF60C  7C 1F 05 2E */	stfsx f0, r31, r0
/* 801CF610  38 03 0E CC */	addi r0, r3, 0xecc
/* 801CF614  7C 1F 05 2E */	stfsx f0, r31, r0
/* 801CF618  38 03 0E EC */	addi r0, r3, 0xeec
/* 801CF61C  7C 1F 05 2E */	stfsx f0, r31, r0
/* 801CF620  38 03 0F 0C */	addi r0, r3, 0xf0c
/* 801CF624  7C 1F 05 2E */	stfsx f0, r31, r0
/* 801CF628  38 03 0F 2C */	addi r0, r3, 0xf2c
/* 801CF62C  7C 1F 05 2E */	stfsx f0, r31, r0
/* 801CF630  38 03 0F 4C */	addi r0, r3, 0xf4c
/* 801CF634  7C 1F 05 2E */	stfsx f0, r31, r0
/* 801CF638  38 03 0F 6C */	addi r0, r3, 0xf6c
/* 801CF63C  7C 1F 05 2E */	stfsx f0, r31, r0
/* 801CF640  38 03 10 04 */	addi r0, r3, 0x1004
/* 801CF644  7C 1F 05 2E */	stfsx f0, r31, r0
/* 801CF648  38 03 10 24 */	addi r0, r3, 0x1024
/* 801CF64C  7C 1F 05 2E */	stfsx f0, r31, r0
/* 801CF650  38 05 0C E8 */	addi r0, r5, 0xce8
/* 801CF654  7C 1F 05 2E */	stfsx f0, r31, r0
/* 801CF658  38 05 0C EC */	addi r0, r5, 0xcec
/* 801CF65C  7C 1F 05 2E */	stfsx f0, r31, r0
/* 801CF660  38 05 0C F0 */	addi r0, r5, 0xcf0
/* 801CF664  7C 1F 05 2E */	stfsx f0, r31, r0
/* 801CF668  38 05 0C F4 */	addi r0, r5, 0xcf4
/* 801CF66C  7C 1F 05 2E */	stfsx f0, r31, r0
/* 801CF670  38 05 0C F8 */	addi r0, r5, 0xcf8
/* 801CF674  7C 1F 05 2E */	stfsx f0, r31, r0
/* 801CF678  38 C0 00 FF */	li r6, 0xff
/* 801CF67C  38 04 12 1C */	addi r0, r4, 0x121c
/* 801CF680  7C DF 01 AE */	stbx r6, r31, r0
/* 801CF684  38 04 12 30 */	addi r0, r4, 0x1230
/* 801CF688  7C DF 01 AE */	stbx r6, r31, r0
/* 801CF68C  38 03 0D 8C */	addi r0, r3, 0xd8c
/* 801CF690  7C 1F 05 2E */	stfsx f0, r31, r0
/* 801CF694  38 03 0D AC */	addi r0, r3, 0xdac
/* 801CF698  7C 1F 05 2E */	stfsx f0, r31, r0
/* 801CF69C  38 03 0D CC */	addi r0, r3, 0xdcc
/* 801CF6A0  7C 1F 05 2E */	stfsx f0, r31, r0
/* 801CF6A4  38 03 0D EC */	addi r0, r3, 0xdec
/* 801CF6A8  7C 1F 05 2E */	stfsx f0, r31, r0
/* 801CF6AC  38 03 0E 0C */	addi r0, r3, 0xe0c
/* 801CF6B0  7C 1F 05 2E */	stfsx f0, r31, r0
/* 801CF6B4  38 03 0E 2C */	addi r0, r3, 0xe2c
/* 801CF6B8  7C 1F 05 2E */	stfsx f0, r31, r0
/* 801CF6BC  38 03 0E 4C */	addi r0, r3, 0xe4c
/* 801CF6C0  7C 1F 05 2E */	stfsx f0, r31, r0
/* 801CF6C4  38 03 0E 6C */	addi r0, r3, 0xe6c
/* 801CF6C8  7C 1F 05 2E */	stfsx f0, r31, r0
/* 801CF6CC  38 84 00 01 */	addi r4, r4, 1
/* 801CF6D0  38 A5 00 14 */	addi r5, r5, 0x14
/* 801CF6D4  38 63 00 04 */	addi r3, r3, 4
/* 801CF6D8  42 00 FF 1C */	bdnz lbl_801CF5F4
/* 801CF6DC  38 60 00 00 */	li r3, 0
/* 801CF6E0  C0 02 A7 D0 */	lfs f0, lit_3970(r2)
/* 801CF6E4  38 00 00 14 */	li r0, 0x14
/* 801CF6E8  7C 09 03 A6 */	mtctr r0
lbl_801CF6EC:
/* 801CF6EC  38 03 10 44 */	addi r0, r3, 0x1044
/* 801CF6F0  7C 1F 05 2E */	stfsx f0, r31, r0
/* 801CF6F4  38 03 10 94 */	addi r0, r3, 0x1094
/* 801CF6F8  7C 1F 05 2E */	stfsx f0, r31, r0
/* 801CF6FC  38 03 10 E4 */	addi r0, r3, 0x10e4
/* 801CF700  7C 1F 05 2E */	stfsx f0, r31, r0
/* 801CF704  38 03 11 34 */	addi r0, r3, 0x1134
/* 801CF708  7C 1F 05 2E */	stfsx f0, r31, r0
/* 801CF70C  38 63 00 04 */	addi r3, r3, 4
/* 801CF710  42 00 FF DC */	bdnz lbl_801CF6EC
/* 801CF714  38 00 00 00 */	li r0, 0
/* 801CF718  90 1F 0D 88 */	stw r0, 0xd88(r31)
/* 801CF71C  C0 22 A7 D0 */	lfs f1, lit_3970(r2)
/* 801CF720  D0 3F 0F E0 */	stfs f1, 0xfe0(r31)
/* 801CF724  D0 3F 0F E4 */	stfs f1, 0xfe4(r31)
/* 801CF728  D0 3F 0F E8 */	stfs f1, 0xfe8(r31)
/* 801CF72C  D0 3F 0F EC */	stfs f1, 0xfec(r31)
/* 801CF730  D0 3F 0F F0 */	stfs f1, 0xff0(r31)
/* 801CF734  D0 3F 0F F4 */	stfs f1, 0xff4(r31)
/* 801CF738  D0 3F 0F F8 */	stfs f1, 0xff8(r31)
/* 801CF73C  D0 3F 0F FC */	stfs f1, 0xffc(r31)
/* 801CF740  D0 3F 10 00 */	stfs f1, 0x1000(r31)
/* 801CF744  D0 3F 11 84 */	stfs f1, 0x1184(r31)
/* 801CF748  D0 3F 11 88 */	stfs f1, 0x1188(r31)
/* 801CF74C  D0 3F 0F 8C */	stfs f1, 0xf8c(r31)
/* 801CF750  D0 3F 0F 90 */	stfs f1, 0xf90(r31)
/* 801CF754  C0 02 A7 D4 */	lfs f0, lit_3971(r2)
/* 801CF758  D0 1F 0F 94 */	stfs f0, 0xf94(r31)
/* 801CF75C  D0 1F 0F 98 */	stfs f0, 0xf98(r31)
/* 801CF760  D0 3F 0F A0 */	stfs f1, 0xfa0(r31)
/* 801CF764  7F E3 FB 78 */	mr r3, r31
/* 801CF768  48 00 33 F5 */	bl getAllMapZoomRate__18dMenu_Fmap2DBack_cFv
/* 801CF76C  D0 3F 0F 9C */	stfs f1, 0xf9c(r31)
/* 801CF770  C0 42 A7 D4 */	lfs f2, lit_3971(r2)
/* 801CF774  D0 5F 0F A4 */	stfs f2, 0xfa4(r31)
/* 801CF778  C0 22 A7 D0 */	lfs f1, lit_3970(r2)
/* 801CF77C  D0 3F 0F A8 */	stfs f1, 0xfa8(r31)
/* 801CF780  38 80 00 00 */	li r4, 0
/* 801CF784  90 9F 0C B0 */	stw r4, 0xcb0(r31)
/* 801CF788  90 9F 0C D4 */	stw r4, 0xcd4(r31)
/* 801CF78C  D0 3F 0F BC */	stfs f1, 0xfbc(r31)
/* 801CF790  D0 3F 0F C0 */	stfs f1, 0xfc0(r31)
/* 801CF794  D0 3F 0F C4 */	stfs f1, 0xfc4(r31)
/* 801CF798  90 9F 0C DC */	stw r4, 0xcdc(r31)
/* 801CF79C  90 9F 0C E0 */	stw r4, 0xce0(r31)
/* 801CF7A0  98 9F 12 2D */	stb r4, 0x122d(r31)
/* 801CF7A4  98 9F 12 2E */	stb r4, 0x122e(r31)
/* 801CF7A8  98 9F 12 24 */	stb r4, 0x1224(r31)
/* 801CF7AC  98 9F 12 25 */	stb r4, 0x1225(r31)
/* 801CF7B0  D0 3F 0F C8 */	stfs f1, 0xfc8(r31)
/* 801CF7B4  D0 3F 0F CC */	stfs f1, 0xfcc(r31)
/* 801CF7B8  D0 3F 0F D0 */	stfs f1, 0xfd0(r31)
/* 801CF7BC  D0 3F 0F D4 */	stfs f1, 0xfd4(r31)
/* 801CF7C0  D0 3F 0F D8 */	stfs f1, 0xfd8(r31)
/* 801CF7C4  D0 3F 0F DC */	stfs f1, 0xfdc(r31)
/* 801CF7C8  D0 3F 11 9C */	stfs f1, 0x119c(r31)
/* 801CF7CC  D0 3F 11 A0 */	stfs f1, 0x11a0(r31)
/* 801CF7D0  D0 3F 11 B4 */	stfs f1, 0x11b4(r31)
/* 801CF7D4  D0 3F 11 B8 */	stfs f1, 0x11b8(r31)
/* 801CF7D8  D0 3F 11 BC */	stfs f1, 0x11bc(r31)
/* 801CF7DC  D0 3F 11 C0 */	stfs f1, 0x11c0(r31)
/* 801CF7E0  D0 3F 11 C4 */	stfs f1, 0x11c4(r31)
/* 801CF7E4  D0 3F 11 C8 */	stfs f1, 0x11c8(r31)
/* 801CF7E8  D0 3F 11 CC */	stfs f1, 0x11cc(r31)
/* 801CF7EC  D0 3F 11 D0 */	stfs f1, 0x11d0(r31)
/* 801CF7F0  98 9F 12 2C */	stb r4, 0x122c(r31)
/* 801CF7F4  98 9F 12 39 */	stb r4, 0x1239(r31)
/* 801CF7F8  98 9F 12 38 */	stb r4, 0x1238(r31)
/* 801CF7FC  B0 9F 12 18 */	sth r4, 0x1218(r31)
/* 801CF800  B0 9F 12 1A */	sth r4, 0x121a(r31)
/* 801CF804  38 60 00 FF */	li r3, 0xff
/* 801CF808  98 7F 12 26 */	stb r3, 0x1226(r31)
/* 801CF80C  98 9F 12 27 */	stb r4, 0x1227(r31)
/* 801CF810  98 9F 12 28 */	stb r4, 0x1228(r31)
/* 801CF814  98 9F 12 29 */	stb r4, 0x1229(r31)
/* 801CF818  98 9F 12 2A */	stb r4, 0x122a(r31)
/* 801CF81C  38 00 00 01 */	li r0, 1
/* 801CF820  98 1F 12 2B */	stb r0, 0x122b(r31)
/* 801CF824  D0 3F 0F B0 */	stfs f1, 0xfb0(r31)
/* 801CF828  D0 3F 0F B4 */	stfs f1, 0xfb4(r31)
/* 801CF82C  D0 5F 0F B8 */	stfs f2, 0xfb8(r31)
/* 801CF830  D0 3F 11 D4 */	stfs f1, 0x11d4(r31)
/* 801CF834  D0 3F 11 90 */	stfs f1, 0x1190(r31)
/* 801CF838  D0 3F 11 8C */	stfs f1, 0x118c(r31)
/* 801CF83C  D0 3F 11 A8 */	stfs f1, 0x11a8(r31)
/* 801CF840  D0 3F 11 A4 */	stfs f1, 0x11a4(r31)
/* 801CF844  D0 3F 11 B0 */	stfs f1, 0x11b0(r31)
/* 801CF848  D0 3F 11 AC */	stfs f1, 0x11ac(r31)
/* 801CF84C  D0 3F 11 98 */	stfs f1, 0x1198(r31)
/* 801CF850  D0 3F 11 94 */	stfs f1, 0x1194(r31)
/* 801CF854  D0 3F 11 D8 */	stfs f1, 0x11d8(r31)
/* 801CF858  D0 3F 11 DC */	stfs f1, 0x11dc(r31)
/* 801CF85C  C0 02 A7 D8 */	lfs f0, lit_3972(r2)
/* 801CF860  D0 1F 11 E0 */	stfs f0, 0x11e0(r31)
/* 801CF864  D0 3F 11 E4 */	stfs f1, 0x11e4(r31)
/* 801CF868  D0 3F 11 E8 */	stfs f1, 0x11e8(r31)
/* 801CF86C  D0 3F 11 EC */	stfs f1, 0x11ec(r31)
/* 801CF870  98 9F 11 F0 */	stb r4, 0x11f0(r31)
/* 801CF874  98 9F 11 F1 */	stb r4, 0x11f1(r31)
/* 801CF878  98 9F 11 F2 */	stb r4, 0x11f2(r31)
/* 801CF87C  98 9F 11 F3 */	stb r4, 0x11f3(r31)
/* 801CF880  98 7F 11 F4 */	stb r3, 0x11f4(r31)
/* 801CF884  98 7F 11 F5 */	stb r3, 0x11f5(r31)
/* 801CF888  98 7F 11 F6 */	stb r3, 0x11f6(r31)
/* 801CF88C  98 7F 11 F7 */	stb r3, 0x11f7(r31)
/* 801CF890  98 9F 11 F8 */	stb r4, 0x11f8(r31)
/* 801CF894  98 9F 11 F9 */	stb r4, 0x11f9(r31)
/* 801CF898  98 9F 11 FA */	stb r4, 0x11fa(r31)
/* 801CF89C  98 9F 11 FB */	stb r4, 0x11fb(r31)
/* 801CF8A0  98 7F 11 FC */	stb r3, 0x11fc(r31)
/* 801CF8A4  98 7F 11 FD */	stb r3, 0x11fd(r31)
/* 801CF8A8  98 7F 11 FE */	stb r3, 0x11fe(r31)
/* 801CF8AC  98 7F 11 FF */	stb r3, 0x11ff(r31)
/* 801CF8B0  98 9F 12 00 */	stb r4, 0x1200(r31)
/* 801CF8B4  98 9F 12 01 */	stb r4, 0x1201(r31)
/* 801CF8B8  98 9F 12 02 */	stb r4, 0x1202(r31)
/* 801CF8BC  98 9F 12 03 */	stb r4, 0x1203(r31)
/* 801CF8C0  98 9F 12 04 */	stb r4, 0x1204(r31)
/* 801CF8C4  98 9F 12 05 */	stb r4, 0x1205(r31)
/* 801CF8C8  98 9F 12 06 */	stb r4, 0x1206(r31)
/* 801CF8CC  98 7F 12 07 */	stb r3, 0x1207(r31)
/* 801CF8D0  98 9F 12 08 */	stb r4, 0x1208(r31)
/* 801CF8D4  98 9F 12 09 */	stb r4, 0x1209(r31)
/* 801CF8D8  98 9F 12 0A */	stb r4, 0x120a(r31)
/* 801CF8DC  98 9F 12 0B */	stb r4, 0x120b(r31)
/* 801CF8E0  98 9F 12 0C */	stb r4, 0x120c(r31)
/* 801CF8E4  98 9F 12 0D */	stb r4, 0x120d(r31)
/* 801CF8E8  98 9F 12 0E */	stb r4, 0x120e(r31)
/* 801CF8EC  98 7F 12 0F */	stb r3, 0x120f(r31)
/* 801CF8F0  D0 5F 12 10 */	stfs f2, 0x1210(r31)
/* 801CF8F4  D0 5F 12 14 */	stfs f2, 0x1214(r31)
/* 801CF8F8  98 1F 12 3A */	stb r0, 0x123a(r31)
/* 801CF8FC  98 9F 12 2F */	stb r4, 0x122f(r31)
/* 801CF900  38 7F 00 04 */	addi r3, r31, 4
/* 801CF904  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 801CF908  3B C4 61 C0 */	addi r30, r4, g_dComIfG_gameInfo@l
/* 801CF90C  80 9E 5C BC */	lwz r4, 0x5cbc(r30)
/* 801CF910  4B FF 2F C9 */	bl initiate__16dMenuMapCommon_cFP10JKRArchive
/* 801CF914  38 60 01 18 */	li r3, 0x118
/* 801CF918  48 0F F3 35 */	bl __nw__FUl
/* 801CF91C  7C 60 1B 79 */	or. r0, r3, r3
/* 801CF920  41 82 00 0C */	beq lbl_801CF92C
/* 801CF924  48 12 8B 75 */	bl __ct__9J2DScreenFv
/* 801CF928  7C 60 1B 78 */	mr r0, r3
lbl_801CF92C:
/* 801CF92C  90 1F 0C 98 */	stw r0, 0xc98(r31)
/* 801CF930  80 7F 0C 98 */	lwz r3, 0xc98(r31)
/* 801CF934  3C 80 80 39 */	lis r4, d_menu_d_menu_fmap2D__stringBase0@ha
/* 801CF938  38 84 65 D0 */	addi r4, r4, d_menu_d_menu_fmap2D__stringBase0@l
/* 801CF93C  3C A0 00 02 */	lis r5, 2
/* 801CF940  80 DE 5C BC */	lwz r6, 0x5cbc(r30)
/* 801CF944  48 12 8D 05 */	bl setPriority__9J2DScreenFPCcUlP10JKRArchive
/* 801CF948  80 7F 0C 98 */	lwz r3, 0xc98(r31)
/* 801CF94C  48 08 57 9D */	bl dPaneClass_showNullPane__FP9J2DScreen
/* 801CF950  38 60 01 18 */	li r3, 0x118
/* 801CF954  48 0F F2 F9 */	bl __nw__FUl
/* 801CF958  7C 60 1B 79 */	or. r0, r3, r3
/* 801CF95C  41 82 00 0C */	beq lbl_801CF968
/* 801CF960  48 12 8B 39 */	bl __ct__9J2DScreenFv
/* 801CF964  7C 60 1B 78 */	mr r0, r3
lbl_801CF968:
/* 801CF968  90 1F 0C 9C */	stw r0, 0xc9c(r31)
/* 801CF96C  80 7F 0C 9C */	lwz r3, 0xc9c(r31)
/* 801CF970  3C 80 80 39 */	lis r4, d_menu_d_menu_fmap2D__stringBase0@ha
/* 801CF974  38 84 65 D0 */	addi r4, r4, d_menu_d_menu_fmap2D__stringBase0@l
/* 801CF978  38 84 00 20 */	addi r4, r4, 0x20
/* 801CF97C  3C A0 00 02 */	lis r5, 2
/* 801CF980  80 DE 5C BC */	lwz r6, 0x5cbc(r30)
/* 801CF984  48 12 8C C5 */	bl setPriority__9J2DScreenFPCcUlP10JKRArchive
/* 801CF988  80 7F 0C 9C */	lwz r3, 0xc9c(r31)
/* 801CF98C  48 08 57 5D */	bl dPaneClass_showNullPane__FP9J2DScreen
/* 801CF990  3C 60 80 39 */	lis r3, d_menu_d_menu_fmap2D__stringBase0@ha
/* 801CF994  38 63 65 D0 */	addi r3, r3, d_menu_d_menu_fmap2D__stringBase0@l
/* 801CF998  38 63 00 3A */	addi r3, r3, 0x3a
/* 801CF99C  80 9E 5C BC */	lwz r4, 0x5cbc(r30)
/* 801CF9A0  48 10 48 D1 */	bl getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader
/* 801CF9A4  48 13 90 C9 */	bl load__20J2DAnmLoaderDataBaseFPCv
/* 801CF9A8  90 7F 0C E4 */	stw r3, 0xce4(r31)
/* 801CF9AC  80 7F 0C E4 */	lwz r3, 0xce4(r31)
/* 801CF9B0  80 9F 0C 9C */	lwz r4, 0xc9c(r31)
/* 801CF9B4  81 83 00 00 */	lwz r12, 0(r3)
/* 801CF9B8  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801CF9BC  7D 89 03 A6 */	mtctr r12
/* 801CF9C0  4E 80 04 21 */	bctrl 
/* 801CF9C4  C0 02 A7 D0 */	lfs f0, lit_3970(r2)
/* 801CF9C8  D0 1F 0F AC */	stfs f0, 0xfac(r31)
/* 801CF9CC  38 60 00 2C */	li r3, 0x2c
/* 801CF9D0  48 0F F2 7D */	bl __nw__FUl
/* 801CF9D4  7C 60 1B 79 */	or. r0, r3, r3
/* 801CF9D8  41 82 00 24 */	beq lbl_801CF9FC
/* 801CF9DC  80 9F 0C 9C */	lwz r4, 0xc9c(r31)
/* 801CF9E0  3C A0 52 4F */	lis r5, 0x524F /* 0x524F4F54@ha */
/* 801CF9E4  38 C5 4F 54 */	addi r6, r5, 0x4F54 /* 0x524F4F54@l */
/* 801CF9E8  38 A0 00 00 */	li r5, 0
/* 801CF9EC  38 E0 00 02 */	li r7, 2
/* 801CF9F0  39 00 00 00 */	li r8, 0
/* 801CF9F4  48 08 62 75 */	bl __ct__17CPaneMgrAlphaMorfFP9J2DScreenUxUcP10JKRExpHeap
/* 801CF9F8  7C 60 1B 78 */	mr r0, r3
lbl_801CF9FC:
/* 801CF9FC  90 1F 0C A0 */	stw r0, 0xca0(r31)
/* 801CFA00  38 60 00 6C */	li r3, 0x6c
/* 801CFA04  48 0F F2 49 */	bl __nw__FUl
/* 801CFA08  7C 60 1B 79 */	or. r0, r3, r3
/* 801CFA0C  41 82 00 28 */	beq lbl_801CFA34
/* 801CFA10  80 9F 0C 9C */	lwz r4, 0xc9c(r31)
/* 801CFA14  3C A0 65 72 */	lis r5, 0x6572 /* 0x65725F6E@ha */
/* 801CFA18  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x65725F6E@l */
/* 801CFA1C  3C A0 63 65 */	lis r5, 0x6365 /* 0x63656E74@ha */
/* 801CFA20  38 A5 6E 74 */	addi r5, r5, 0x6E74 /* 0x63656E74@l */
/* 801CFA24  38 E0 00 00 */	li r7, 0
/* 801CFA28  39 00 00 00 */	li r8, 0
/* 801CFA2C  48 08 3F 59 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801CFA30  7C 60 1B 78 */	mr r0, r3
lbl_801CFA34:
/* 801CFA34  90 1F 0C A4 */	stw r0, 0xca4(r31)
/* 801CFA38  38 60 00 6C */	li r3, 0x6c
/* 801CFA3C  48 0F F2 11 */	bl __nw__FUl
/* 801CFA40  7C 60 1B 79 */	or. r0, r3, r3
/* 801CFA44  41 82 00 28 */	beq lbl_801CFA6C
/* 801CFA48  80 9F 0C 9C */	lwz r4, 0xc9c(r31)
/* 801CFA4C  3C A0 62 6C */	lis r5, 0x626C /* 0x626C616B@ha */
/* 801CFA50  38 C5 61 6B */	addi r6, r5, 0x616B /* 0x626C616B@l */
/* 801CFA54  3C A0 6D 61 */	lis r5, 0x6D61 /* 0x6D61705F@ha */
/* 801CFA58  38 A5 70 5F */	addi r5, r5, 0x705F /* 0x6D61705F@l */
/* 801CFA5C  38 E0 00 00 */	li r7, 0
/* 801CFA60  39 00 00 00 */	li r8, 0
/* 801CFA64  48 08 3F 21 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801CFA68  7C 60 1B 78 */	mr r0, r3
lbl_801CFA6C:
/* 801CFA6C  90 1F 0C A8 */	stw r0, 0xca8(r31)
/* 801CFA70  38 60 00 2C */	li r3, 0x2c
/* 801CFA74  48 0F F1 D9 */	bl __nw__FUl
/* 801CFA78  7C 60 1B 79 */	or. r0, r3, r3
/* 801CFA7C  41 82 00 10 */	beq lbl_801CFA8C
/* 801CFA80  38 80 00 01 */	li r4, 1
/* 801CFA84  48 03 B4 09 */	bl __ct__14dMeterHaihai_cFUc
/* 801CFA88  7C 60 1B 78 */	mr r0, r3
lbl_801CFA8C:
/* 801CFA8C  90 1F 0C E0 */	stw r0, 0xce0(r31)
/* 801CFA90  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801CFA94  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801CFA98  80 63 5D 30 */	lwz r3, 0x5d30(r3)
/* 801CFA9C  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 801CFAA0  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 801CFAA4  3C A0 80 39 */	lis r5, d_menu_d_menu_fmap2D__stringBase0@ha
/* 801CFAA8  38 A5 65 D0 */	addi r5, r5, d_menu_d_menu_fmap2D__stringBase0@l
/* 801CFAAC  38 A5 00 54 */	addi r5, r5, 0x54
/* 801CFAB0  81 83 00 00 */	lwz r12, 0(r3)
/* 801CFAB4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801CFAB8  7D 89 03 A6 */	mtctr r12
/* 801CFABC  4E 80 04 21 */	bctrl 
/* 801CFAC0  7C 7C 1B 78 */	mr r28, r3
/* 801CFAC4  38 60 01 50 */	li r3, 0x150
/* 801CFAC8  48 0F F1 85 */	bl __nw__FUl
/* 801CFACC  7C 60 1B 79 */	or. r0, r3, r3
/* 801CFAD0  41 82 00 10 */	beq lbl_801CFAE0
/* 801CFAD4  7F 84 E3 78 */	mr r4, r28
/* 801CFAD8  48 12 CC 31 */	bl __ct__10J2DPictureFPC7ResTIMG
/* 801CFADC  7C 60 1B 78 */	mr r0, r3
lbl_801CFAE0:
/* 801CFAE0  90 1F 0C B0 */	stw r0, 0xcb0(r31)
/* 801CFAE4  38 60 00 00 */	li r3, 0
/* 801CFAE8  98 61 00 10 */	stb r3, 0x10(r1)
/* 801CFAEC  98 61 00 11 */	stb r3, 0x11(r1)
/* 801CFAF0  98 61 00 12 */	stb r3, 0x12(r1)
/* 801CFAF4  38 00 00 FF */	li r0, 0xff
/* 801CFAF8  98 01 00 13 */	stb r0, 0x13(r1)
/* 801CFAFC  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801CFB00  90 01 00 14 */	stw r0, 0x14(r1)
/* 801CFB04  98 61 00 18 */	stb r3, 0x18(r1)
/* 801CFB08  98 61 00 19 */	stb r3, 0x19(r1)
/* 801CFB0C  98 61 00 1A */	stb r3, 0x1a(r1)
/* 801CFB10  98 61 00 1B */	stb r3, 0x1b(r1)
/* 801CFB14  80 01 00 18 */	lwz r0, 0x18(r1)
/* 801CFB18  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801CFB1C  80 7F 0C B0 */	lwz r3, 0xcb0(r31)
/* 801CFB20  38 81 00 1C */	addi r4, r1, 0x1c
/* 801CFB24  38 A1 00 14 */	addi r5, r1, 0x14
/* 801CFB28  81 83 00 00 */	lwz r12, 0(r3)
/* 801CFB2C  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 801CFB30  7D 89 03 A6 */	mtctr r12
/* 801CFB34  4E 80 04 21 */	bctrl 
/* 801CFB38  80 7F 0C B0 */	lwz r3, 0xcb0(r31)
/* 801CFB3C  38 80 00 00 */	li r4, 0
/* 801CFB40  81 83 00 00 */	lwz r12, 0(r3)
/* 801CFB44  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801CFB48  7D 89 03 A6 */	mtctr r12
/* 801CFB4C  4E 80 04 21 */	bctrl 
/* 801CFB50  38 60 01 18 */	li r3, 0x118
/* 801CFB54  48 0F F0 F9 */	bl __nw__FUl
/* 801CFB58  7C 60 1B 79 */	or. r0, r3, r3
/* 801CFB5C  41 82 00 0C */	beq lbl_801CFB68
/* 801CFB60  48 12 89 39 */	bl __ct__9J2DScreenFv
/* 801CFB64  7C 60 1B 78 */	mr r0, r3
lbl_801CFB68:
/* 801CFB68  90 1F 0C D8 */	stw r0, 0xcd8(r31)
/* 801CFB6C  80 7F 0C D8 */	lwz r3, 0xcd8(r31)
/* 801CFB70  3C 80 80 39 */	lis r4, d_menu_d_menu_fmap2D__stringBase0@ha
/* 801CFB74  38 84 65 D0 */	addi r4, r4, d_menu_d_menu_fmap2D__stringBase0@l
/* 801CFB78  38 84 00 64 */	addi r4, r4, 0x64
/* 801CFB7C  3C A0 00 02 */	lis r5, 2
/* 801CFB80  80 DE 5C BC */	lwz r6, 0x5cbc(r30)
/* 801CFB84  48 12 8A C5 */	bl setPriority__9J2DScreenFPCcUlP10JKRArchive
/* 801CFB88  80 7F 0C D8 */	lwz r3, 0xcd8(r31)
/* 801CFB8C  48 08 55 5D */	bl dPaneClass_showNullPane__FP9J2DScreen
/* 801CFB90  38 60 00 6C */	li r3, 0x6c
/* 801CFB94  48 0F F0 B9 */	bl __nw__FUl
/* 801CFB98  7C 60 1B 79 */	or. r0, r3, r3
/* 801CFB9C  41 82 00 24 */	beq lbl_801CFBC0
/* 801CFBA0  80 9F 0C D8 */	lwz r4, 0xcd8(r31)
/* 801CFBA4  3C A0 70 6F */	lis r5, 0x706F /* 0x706F5F6E@ha */
/* 801CFBA8  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x706F5F6E@l */
/* 801CFBAC  38 A0 66 5F */	li r5, 0x665f
/* 801CFBB0  38 E0 00 02 */	li r7, 2
/* 801CFBB4  39 00 00 00 */	li r8, 0
/* 801CFBB8  48 08 3D CD */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801CFBBC  7C 60 1B 78 */	mr r0, r3
lbl_801CFBC0:
/* 801CFBC0  90 1F 0C AC */	stw r0, 0xcac(r31)
/* 801CFBC4  3C 60 80 43 */	lis r3, g_fmapHIO@ha
/* 801CFBC8  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l
/* 801CFBCC  C0 03 02 4C */	lfs f0, 0x24c(r3)
/* 801CFBD0  80 7F 0C AC */	lwz r3, 0xcac(r31)
/* 801CFBD4  80 63 00 04 */	lwz r3, 4(r3)
/* 801CFBD8  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801CFBDC  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801CFBE0  81 83 00 00 */	lwz r12, 0(r3)
/* 801CFBE4  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801CFBE8  7D 89 03 A6 */	mtctr r12
/* 801CFBEC  4E 80 04 21 */	bctrl 
/* 801CFBF0  3B 60 00 00 */	li r27, 0
/* 801CFBF4  3B C0 00 00 */	li r30, 0
/* 801CFBF8  3C 60 80 43 */	lis r3, g_fmapHIO@ha
/* 801CFBFC  3B 83 FC 60 */	addi r28, r3, g_fmapHIO@l
/* 801CFC00  3C 60 80 39 */	lis r3, cur_tag_3868@ha
/* 801CFC04  3B A3 62 48 */	addi r29, r3, cur_tag_3868@l
lbl_801CFC08:
/* 801CFC08  80 7F 0C D8 */	lwz r3, 0xcd8(r31)
/* 801CFC0C  7C 9D F2 14 */	add r4, r29, r30
/* 801CFC10  80 A4 00 00 */	lwz r5, 0(r4)
/* 801CFC14  80 C4 00 04 */	lwz r6, 4(r4)
/* 801CFC18  81 83 00 00 */	lwz r12, 0(r3)
/* 801CFC1C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801CFC20  7D 89 03 A6 */	mtctr r12
/* 801CFC24  4E 80 04 21 */	bctrl 
/* 801CFC28  80 1C 02 58 */	lwz r0, 0x258(r28)
/* 801CFC2C  90 01 00 08 */	stw r0, 8(r1)
/* 801CFC30  80 1C 02 54 */	lwz r0, 0x254(r28)
/* 801CFC34  90 01 00 0C */	stw r0, 0xc(r1)
/* 801CFC38  38 81 00 0C */	addi r4, r1, 0xc
/* 801CFC3C  38 A1 00 08 */	addi r5, r1, 8
/* 801CFC40  81 83 00 00 */	lwz r12, 0(r3)
/* 801CFC44  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 801CFC48  7D 89 03 A6 */	mtctr r12
/* 801CFC4C  4E 80 04 21 */	bctrl 
/* 801CFC50  3B 7B 00 01 */	addi r27, r27, 1
/* 801CFC54  2C 1B 00 04 */	cmpwi r27, 4
/* 801CFC58  3B DE 00 08 */	addi r30, r30, 8
/* 801CFC5C  41 80 FF AC */	blt lbl_801CFC08
/* 801CFC60  7F E3 FB 78 */	mr r3, r31
/* 801CFC64  48 00 2B 85 */	bl getMapScissorAreaSizeX__18dMenu_Fmap2DBack_cFv
/* 801CFC68  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801CFC6C  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 801CFC70  D0 23 00 70 */	stfs f1, 0x70(r3)
/* 801CFC74  7F E3 FB 78 */	mr r3, r31
/* 801CFC78  48 00 2C A9 */	bl getMapScissorAreaSizeY__18dMenu_Fmap2DBack_cFv
/* 801CFC7C  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801CFC80  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 801CFC84  D0 23 00 74 */	stfs f1, 0x74(r3)
/* 801CFC88  7F E3 FB 78 */	mr r3, r31
/* 801CFC8C  48 00 2A AD */	bl getMapScissorAreaLX__18dMenu_Fmap2DBack_cFv
/* 801CFC90  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801CFC94  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 801CFC98  D0 23 00 78 */	stfs f1, 0x78(r3)
/* 801CFC9C  7F E3 FB 78 */	mr r3, r31
/* 801CFCA0  48 00 2A F1 */	bl getMapScissorAreaLY__18dMenu_Fmap2DBack_cFv
/* 801CFCA4  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801CFCA8  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 801CFCAC  D0 23 00 7C */	stfs f1, 0x7c(r3)
/* 801CFCB0  38 00 00 00 */	li r0, 0
/* 801CFCB4  90 1F 12 3C */	stw r0, 0x123c(r31)
/* 801CFCB8  90 1F 12 40 */	stw r0, 0x1240(r31)
/* 801CFCBC  90 1F 12 44 */	stw r0, 0x1244(r31)
/* 801CFCC0  7F E3 FB 78 */	mr r3, r31
/* 801CFCC4  39 61 00 40 */	addi r11, r1, 0x40
/* 801CFCC8  48 19 25 59 */	bl _restgpr_27
/* 801CFCCC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801CFCD0  7C 08 03 A6 */	mtlr r0
/* 801CFCD4  38 21 00 40 */	addi r1, r1, 0x40
/* 801CFCD8  4E 80 00 20 */	blr 
