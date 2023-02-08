lbl_80846000:
/* 80846000  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80846004  7C 08 02 A6 */	mflr r0
/* 80846008  90 01 00 24 */	stw r0, 0x24(r1)
/* 8084600C  39 61 00 20 */	addi r11, r1, 0x20
/* 80846010  4B B1 C1 C1 */	bl _savegpr_26
/* 80846014  7C 7F 1B 78 */	mr r31, r3
/* 80846018  3C 60 80 85 */	lis r3, l_arcName@ha /* 0x80848E3C@ha */
/* 8084601C  3B C3 8E 3C */	addi r30, r3, l_arcName@l /* 0x80848E3C@l */
/* 80846020  38 7E 00 00 */	addi r3, r30, 0
/* 80846024  38 80 00 23 */	li r4, 0x23
/* 80846028  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8084602C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80846030  3F A5 00 02 */	addis r29, r5, 2
/* 80846034  3B BD C2 F8 */	addi r29, r29, -15624
/* 80846038  7F A5 EB 78 */	mr r5, r29
/* 8084603C  38 C0 00 80 */	li r6, 0x80
/* 80846040  4B 7F 62 AD */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80846044  38 80 00 00 */	li r4, 0
/* 80846048  3C A0 11 02 */	lis r5, 0x1102 /* 0x11020284@ha */
/* 8084604C  38 A5 02 84 */	addi r5, r5, 0x0284 /* 0x11020284@l */
/* 80846050  4B 7C EC 05 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80846054  90 7F 05 70 */	stw r3, 0x570(r31)
/* 80846058  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 8084605C  28 00 00 00 */	cmplwi r0, 0
/* 80846060  40 82 00 0C */	bne lbl_8084606C
/* 80846064  38 60 00 00 */	li r3, 0
/* 80846068  48 00 03 AC */	b lbl_80846414
lbl_8084606C:
/* 8084606C  3B 60 00 00 */	li r27, 0
/* 80846070  3B 40 00 00 */	li r26, 0
lbl_80846074:
/* 80846074  38 60 01 04 */	li r3, 0x104
/* 80846078  4B A8 8B D5 */	bl __nw__FUl
/* 8084607C  7C 7C 1B 79 */	or. r28, r3, r3
/* 80846080  41 82 00 CC */	beq lbl_8084614C
/* 80846084  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha /* 0x803CEE60@ha */
/* 80846088  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l /* 0x803CEE60@l */
/* 8084608C  90 1C 00 00 */	stw r0, 0(r28)
/* 80846090  38 7C 00 04 */	addi r3, r28, 4
/* 80846094  3C 80 80 84 */	lis r4, __ct__14J3DMatColorAnmFv@ha /* 0x808466E0@ha */
/* 80846098  38 84 66 E0 */	addi r4, r4, __ct__14J3DMatColorAnmFv@l /* 0x808466E0@l */
/* 8084609C  3C A0 80 84 */	lis r5, __dt__14J3DMatColorAnmFv@ha /* 0x808466A4@ha */
/* 808460A0  38 A5 66 A4 */	addi r5, r5, __dt__14J3DMatColorAnmFv@l /* 0x808466A4@l */
/* 808460A4  38 C0 00 08 */	li r6, 8
/* 808460A8  38 E0 00 02 */	li r7, 2
/* 808460AC  4B B1 BC B5 */	bl __construct_array
/* 808460B0  38 7C 00 14 */	addi r3, r28, 0x14
/* 808460B4  3C 80 80 84 */	lis r4, __ct__12J3DTexMtxAnmFv@ha /* 0x8084668C@ha */
/* 808460B8  38 84 66 8C */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l /* 0x8084668C@l */
/* 808460BC  3C A0 80 84 */	lis r5, __dt__12J3DTexMtxAnmFv@ha /* 0x80846650@ha */
/* 808460C0  38 A5 66 50 */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l /* 0x80846650@l */
/* 808460C4  38 C0 00 08 */	li r6, 8
/* 808460C8  38 E0 00 08 */	li r7, 8
/* 808460CC  4B B1 BC 95 */	bl __construct_array
/* 808460D0  38 7C 00 54 */	addi r3, r28, 0x54
/* 808460D4  3C 80 80 84 */	lis r4, __ct__11J3DTexNoAnmFv@ha /* 0x8084662C@ha */
/* 808460D8  38 84 66 2C */	addi r4, r4, __ct__11J3DTexNoAnmFv@l /* 0x8084662C@l */
/* 808460DC  3C A0 80 84 */	lis r5, __dt__11J3DTexNoAnmFv@ha /* 0x808465E4@ha */
/* 808460E0  38 A5 65 E4 */	addi r5, r5, __dt__11J3DTexNoAnmFv@l /* 0x808465E4@l */
/* 808460E4  38 C0 00 0C */	li r6, 0xc
/* 808460E8  38 E0 00 08 */	li r7, 8
/* 808460EC  4B B1 BC 75 */	bl __construct_array
/* 808460F0  38 7C 00 B4 */	addi r3, r28, 0xb4
/* 808460F4  3C 80 80 84 */	lis r4, __ct__14J3DTevColorAnmFv@ha /* 0x808465CC@ha */
/* 808460F8  38 84 65 CC */	addi r4, r4, __ct__14J3DTevColorAnmFv@l /* 0x808465CC@l */
/* 808460FC  3C A0 80 84 */	lis r5, __dt__14J3DTevColorAnmFv@ha /* 0x80846590@ha */
/* 80846100  38 A5 65 90 */	addi r5, r5, __dt__14J3DTevColorAnmFv@l /* 0x80846590@l */
/* 80846104  38 C0 00 08 */	li r6, 8
/* 80846108  38 E0 00 04 */	li r7, 4
/* 8084610C  4B B1 BC 55 */	bl __construct_array
/* 80846110  38 7C 00 D4 */	addi r3, r28, 0xd4
/* 80846114  3C 80 80 84 */	lis r4, __ct__15J3DTevKColorAnmFv@ha /* 0x80846578@ha */
/* 80846118  38 84 65 78 */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l /* 0x80846578@l */
/* 8084611C  3C A0 80 84 */	lis r5, __dt__15J3DTevKColorAnmFv@ha /* 0x8084653C@ha */
/* 80846120  38 A5 65 3C */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l /* 0x8084653C@l */
/* 80846124  38 C0 00 08 */	li r6, 8
/* 80846128  38 E0 00 04 */	li r7, 4
/* 8084612C  4B B1 BC 35 */	bl __construct_array
/* 80846130  7F 83 E3 78 */	mr r3, r28
/* 80846134  4B AE 61 ED */	bl initialize__14J3DMaterialAnmFv
/* 80846138  3C 60 80 85 */	lis r3, __vt__18daHoZelda_matAnm_c@ha /* 0x80848FFC@ha */
/* 8084613C  38 03 8F FC */	addi r0, r3, __vt__18daHoZelda_matAnm_c@l /* 0x80848FFC@l */
/* 80846140  90 1C 00 00 */	stw r0, 0(r28)
/* 80846144  7F 83 E3 78 */	mr r3, r28
/* 80846148  4B FF FD 65 */	bl init__18daHoZelda_matAnm_cFv
lbl_8084614C:
/* 8084614C  38 1A 06 10 */	addi r0, r26, 0x610
/* 80846150  7F 9F 01 2E */	stwx r28, r31, r0
/* 80846154  7C 1F 00 2E */	lwzx r0, r31, r0
/* 80846158  28 00 00 00 */	cmplwi r0, 0
/* 8084615C  40 82 00 0C */	bne lbl_80846168
/* 80846160  38 60 00 00 */	li r3, 0
/* 80846164  48 00 02 B0 */	b lbl_80846414
lbl_80846168:
/* 80846168  3B 7B 00 01 */	addi r27, r27, 1
/* 8084616C  2C 1B 00 02 */	cmpwi r27, 2
/* 80846170  3B 5A 00 04 */	addi r26, r26, 4
/* 80846174  41 80 FF 00 */	blt lbl_80846074
/* 80846178  38 60 05 F0 */	li r3, 0x5f0
/* 8084617C  4B A8 8B 49 */	bl __nwa__FUl
/* 80846180  38 80 00 00 */	li r4, 0
/* 80846184  38 A0 00 00 */	li r5, 0
/* 80846188  38 C0 00 20 */	li r6, 0x20
/* 8084618C  38 E0 00 2F */	li r7, 0x2f
/* 80846190  4B B1 BD 85 */	bl __construct_new_array
/* 80846194  7C 7B 1B 79 */	or. r27, r3, r3
/* 80846198  40 82 00 0C */	bne lbl_808461A4
/* 8084619C  38 60 00 00 */	li r3, 0
/* 808461A0  48 00 02 74 */	b lbl_80846414
lbl_808461A4:
/* 808461A4  38 60 02 F0 */	li r3, 0x2f0
/* 808461A8  4B A8 8B 1D */	bl __nwa__FUl
/* 808461AC  7C 7A 1B 79 */	or. r26, r3, r3
/* 808461B0  40 82 00 0C */	bne lbl_808461BC
/* 808461B4  38 60 00 00 */	li r3, 0
/* 808461B8  48 00 02 5C */	b lbl_80846414
lbl_808461BC:
/* 808461BC  38 60 00 24 */	li r3, 0x24
/* 808461C0  4B A8 8A 8D */	bl __nw__FUl
/* 808461C4  28 03 00 00 */	cmplwi r3, 0
/* 808461C8  41 82 00 34 */	beq lbl_808461FC
/* 808461CC  93 63 00 1C */	stw r27, 0x1c(r3)
/* 808461D0  93 43 00 20 */	stw r26, 0x20(r3)
/* 808461D4  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 808461D8  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 808461DC  38 00 00 00 */	li r0, 0
/* 808461E0  98 03 00 00 */	stb r0, 0(r3)
/* 808461E4  B0 03 00 18 */	sth r0, 0x18(r3)
/* 808461E8  B0 03 00 1A */	sth r0, 0x1a(r3)
/* 808461EC  D0 03 00 04 */	stfs f0, 4(r3)
/* 808461F0  D0 03 00 08 */	stfs f0, 8(r3)
/* 808461F4  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 808461F8  D0 03 00 14 */	stfs f0, 0x14(r3)
lbl_808461FC:
/* 808461FC  90 7F 05 C4 */	stw r3, 0x5c4(r31)
/* 80846200  80 1F 05 C4 */	lwz r0, 0x5c4(r31)
/* 80846204  28 00 00 00 */	cmplwi r0, 0
/* 80846208  40 82 00 0C */	bne lbl_80846214
/* 8084620C  38 60 00 00 */	li r3, 0
/* 80846210  48 00 02 04 */	b lbl_80846414
lbl_80846214:
/* 80846214  38 60 00 10 */	li r3, 0x10
/* 80846218  4B A8 8A 35 */	bl __nw__FUl
/* 8084621C  28 03 00 00 */	cmplwi r3, 0
/* 80846220  41 82 00 94 */	beq lbl_808462B4
/* 80846224  80 BF 05 C4 */	lwz r5, 0x5c4(r31)
/* 80846228  3C 80 80 85 */	lis r4, __vt__10J3DMtxCalc@ha /* 0x80848FD0@ha */
/* 8084622C  38 04 8F D0 */	addi r0, r4, __vt__10J3DMtxCalc@l /* 0x80848FD0@l */
/* 80846230  90 03 00 00 */	stw r0, 0(r3)
/* 80846234  3C 80 80 85 */	lis r4, __vt__19J3DMtxCalcNoAnmBase@ha /* 0x80848FA4@ha */
/* 80846238  38 04 8F A4 */	addi r0, r4, __vt__19J3DMtxCalcNoAnmBase@l /* 0x80848FA4@l */
/* 8084623C  90 03 00 00 */	stw r0, 0(r3)
/* 80846240  3C 80 80 85 */	lis r4, data_80848F78@ha /* 0x80848F78@ha */
/* 80846244  38 04 8F 78 */	addi r0, r4, data_80848F78@l /* 0x80848F78@l */
/* 80846248  90 03 00 00 */	stw r0, 0(r3)
/* 8084624C  3C 80 80 3A */	lis r4, __vt__25mDoExt_MtxCalcAnmBlendTbl@ha /* 0x803A33E4@ha */
/* 80846250  38 04 33 E4 */	addi r0, r4, __vt__25mDoExt_MtxCalcAnmBlendTbl@l /* 0x803A33E4@l */
/* 80846254  90 03 00 00 */	stw r0, 0(r3)
/* 80846258  38 00 00 03 */	li r0, 3
/* 8084625C  90 03 00 04 */	stw r0, 4(r3)
/* 80846260  38 1F 05 AC */	addi r0, r31, 0x5ac
/* 80846264  90 03 00 08 */	stw r0, 8(r3)
/* 80846268  38 C0 00 00 */	li r6, 0
/* 8084626C  38 80 00 00 */	li r4, 0
/* 80846270  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 80846274  48 00 00 24 */	b lbl_80846298
lbl_80846278:
/* 80846278  80 03 00 08 */	lwz r0, 8(r3)
/* 8084627C  7C E0 22 14 */	add r7, r0, r4
/* 80846280  80 07 00 04 */	lwz r0, 4(r7)
/* 80846284  28 00 00 00 */	cmplwi r0, 0
/* 80846288  40 82 00 08 */	bne lbl_80846290
/* 8084628C  D0 07 00 00 */	stfs f0, 0(r7)
lbl_80846290:
/* 80846290  38 C6 00 01 */	addi r6, r6, 1
/* 80846294  38 84 00 08 */	addi r4, r4, 8
lbl_80846298:
/* 80846298  80 03 00 04 */	lwz r0, 4(r3)
/* 8084629C  7C 06 00 00 */	cmpw r6, r0
/* 808462A0  41 80 FF D8 */	blt lbl_80846278
/* 808462A4  3C 80 80 3A */	lis r4, __vt__28mDoExt_MtxCalcAnmBlendTblOld@ha /* 0x803A33B8@ha */
/* 808462A8  38 04 33 B8 */	addi r0, r4, __vt__28mDoExt_MtxCalcAnmBlendTblOld@l /* 0x803A33B8@l */
/* 808462AC  90 03 00 00 */	stw r0, 0(r3)
/* 808462B0  90 A3 00 0C */	stw r5, 0xc(r3)
lbl_808462B4:
/* 808462B4  90 7F 05 A8 */	stw r3, 0x5a8(r31)
/* 808462B8  80 1F 05 A8 */	lwz r0, 0x5a8(r31)
/* 808462BC  28 00 00 00 */	cmplwi r0, 0
/* 808462C0  40 82 00 0C */	bne lbl_808462CC
/* 808462C4  38 60 00 00 */	li r3, 0
/* 808462C8  48 00 01 4C */	b lbl_80846414
lbl_808462CC:
/* 808462CC  38 7E 00 00 */	addi r3, r30, 0
/* 808462D0  38 80 00 2F */	li r4, 0x2f
/* 808462D4  7F A5 EB 78 */	mr r5, r29
/* 808462D8  38 C0 00 80 */	li r6, 0x80
/* 808462DC  4B 7F 60 11 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 808462E0  7C 65 1B 78 */	mr r5, r3
/* 808462E4  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 808462E8  80 83 00 04 */	lwz r4, 4(r3)
/* 808462EC  38 7F 05 78 */	addi r3, r31, 0x578
/* 808462F0  38 84 00 58 */	addi r4, r4, 0x58
/* 808462F4  38 C0 00 01 */	li r6, 1
/* 808462F8  38 E0 00 02 */	li r7, 2
/* 808462FC  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 80846300  39 00 00 00 */	li r8, 0
/* 80846304  39 20 FF FF */	li r9, -1
/* 80846308  4B 7C 72 45 */	bl init__13mDoExt_btpAnmFP16J3DMaterialTableP16J3DAnmTexPatterniifss
/* 8084630C  2C 03 00 00 */	cmpwi r3, 0
/* 80846310  40 82 00 0C */	bne lbl_8084631C
/* 80846314  38 60 00 00 */	li r3, 0
/* 80846318  48 00 00 FC */	b lbl_80846414
lbl_8084631C:
/* 8084631C  38 7E 00 00 */	addi r3, r30, 0
/* 80846320  38 80 00 26 */	li r4, 0x26
/* 80846324  7F A5 EB 78 */	mr r5, r29
/* 80846328  38 C0 00 80 */	li r6, 0x80
/* 8084632C  4B 7F 5F C1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80846330  7C 65 1B 78 */	mr r5, r3
/* 80846334  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80846338  80 83 00 04 */	lwz r4, 4(r3)
/* 8084633C  38 7F 05 90 */	addi r3, r31, 0x590
/* 80846340  38 84 00 58 */	addi r4, r4, 0x58
/* 80846344  38 C0 00 01 */	li r6, 1
/* 80846348  38 E0 00 00 */	li r7, 0
/* 8084634C  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 80846350  39 00 00 00 */	li r8, 0
/* 80846354  39 20 FF FF */	li r9, -1
/* 80846358  4B 7C 72 E5 */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 8084635C  2C 03 00 00 */	cmpwi r3, 0
/* 80846360  40 82 00 0C */	bne lbl_8084636C
/* 80846364  38 60 00 00 */	li r3, 0
/* 80846368  48 00 00 AC */	b lbl_80846414
lbl_8084636C:
/* 8084636C  38 7E 00 00 */	addi r3, r30, 0
/* 80846370  38 80 00 20 */	li r4, 0x20
/* 80846374  7F A5 EB 78 */	mr r5, r29
/* 80846378  38 C0 00 80 */	li r6, 0x80
/* 8084637C  4B 7F 5F 71 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80846380  3C 80 00 08 */	lis r4, 8
/* 80846384  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80846388  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 8084638C  4B 7C E8 C9 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80846390  90 7F 05 74 */	stw r3, 0x574(r31)
/* 80846394  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 80846398  28 00 00 00 */	cmplwi r0, 0
/* 8084639C  40 82 00 0C */	bne lbl_808463A8
/* 808463A0  38 60 00 00 */	li r3, 0
/* 808463A4  48 00 00 70 */	b lbl_80846414
lbl_808463A8:
/* 808463A8  38 7E 00 00 */	addi r3, r30, 0
/* 808463AC  38 80 00 0C */	li r4, 0xc
/* 808463B0  7F A5 EB 78 */	mr r5, r29
/* 808463B4  38 C0 00 80 */	li r6, 0x80
/* 808463B8  4B 7F 5F 35 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 808463BC  7C 64 1B 78 */	mr r4, r3
/* 808463C0  38 7F 06 A8 */	addi r3, r31, 0x6a8
/* 808463C4  38 A0 00 01 */	li r5, 1
/* 808463C8  38 C0 00 00 */	li r6, 0
/* 808463CC  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 808463D0  38 E0 00 00 */	li r7, 0
/* 808463D4  39 00 FF FF */	li r8, -1
/* 808463D8  39 20 00 00 */	li r9, 0
/* 808463DC  4B 7C 74 01 */	bl init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 808463E0  2C 03 00 00 */	cmpwi r3, 0
/* 808463E4  40 82 00 0C */	bne lbl_808463F0
/* 808463E8  38 60 00 00 */	li r3, 0
/* 808463EC  48 00 00 28 */	b lbl_80846414
lbl_808463F0:
/* 808463F0  38 60 00 01 */	li r3, 1
/* 808463F4  4B A8 88 59 */	bl __nw__FUl
/* 808463F8  90 7F 06 D4 */	stw r3, 0x6d4(r31)
/* 808463FC  80 1F 06 D4 */	lwz r0, 0x6d4(r31)
/* 80846400  28 00 00 00 */	cmplwi r0, 0
/* 80846404  40 82 00 0C */	bne lbl_80846410
/* 80846408  38 60 00 00 */	li r3, 0
/* 8084640C  48 00 00 08 */	b lbl_80846414
lbl_80846410:
/* 80846410  38 60 00 01 */	li r3, 1
lbl_80846414:
/* 80846414  39 61 00 20 */	addi r11, r1, 0x20
/* 80846418  4B B1 BE 05 */	bl _restgpr_26
/* 8084641C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80846420  7C 08 03 A6 */	mtlr r0
/* 80846424  38 21 00 20 */	addi r1, r1, 0x20
/* 80846428  4E 80 00 20 */	blr 
