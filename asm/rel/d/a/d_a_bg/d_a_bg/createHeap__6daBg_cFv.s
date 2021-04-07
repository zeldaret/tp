lbl_804582B8:
/* 804582B8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804582BC  7C 08 02 A6 */	mflr r0
/* 804582C0  90 01 00 44 */	stw r0, 0x44(r1)
/* 804582C4  39 61 00 40 */	addi r11, r1, 0x40
/* 804582C8  4B F0 9E F1 */	bl _savegpr_20
/* 804582CC  7C 7F 1B 78 */	mr r31, r3
/* 804582D0  4B FF F9 29 */	bl setArcName__6daBg_cFv
/* 804582D4  7C 7C 1B 78 */	mr r28, r3
/* 804582D8  83 3F 00 B0 */	lwz r25, 0xb0(r31)
/* 804582DC  3B DF 05 70 */	addi r30, r31, 0x570
/* 804582E0  3B 40 00 00 */	li r26, 0
/* 804582E4  3B 60 00 00 */	li r27, 0
/* 804582E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804582EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804582F0  3C 63 00 02 */	addis r3, r3, 2
/* 804582F4  3B A3 D4 F8 */	addi r29, r3, -11016
/* 804582F8  3C 60 80 46 */	lis r3, data_80459424@ha /* 0x80459424@ha */
/* 804582FC  3A C3 94 24 */	addi r22, r3, data_80459424@l /* 0x80459424@l */
lbl_80458300:
/* 80458300  7F 83 E3 78 */	mr r3, r28
/* 80458304  7C 96 DA 14 */	add r4, r22, r27
/* 80458308  7F A5 EB 78 */	mr r5, r29
/* 8045830C  38 C0 00 40 */	li r6, 0x40
/* 80458310  4B BE 40 6D */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80458314  7C 78 1B 79 */	or. r24, r3, r3
/* 80458318  40 82 00 24 */	bne lbl_8045833C
/* 8045831C  7F 83 E3 78 */	mr r3, r28
/* 80458320  3C 80 80 46 */	lis r4, data_80459468@ha /* 0x80459468@ha */
/* 80458324  38 04 94 68 */	addi r0, r4, data_80459468@l /* 0x80459468@l */
/* 80458328  7C 80 DA 14 */	add r4, r0, r27
/* 8045832C  7F A5 EB 78 */	mr r5, r29
/* 80458330  38 C0 00 40 */	li r6, 0x40
/* 80458334  4B BE 40 49 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80458338  7C 78 1B 78 */	mr r24, r3
lbl_8045833C:
/* 8045833C  28 18 00 00 */	cmplwi r24, 0
/* 80458340  41 82 02 8C */	beq lbl_804585CC
/* 80458344  7F 03 C3 78 */	mr r3, r24
/* 80458348  4B BB 67 39 */	bl mDoExt_setupStageTexture__FP12J3DModelData
/* 8045834C  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 80458350  3A E3 00 84 */	addi r23, r3, 0x0084 /* 0x11000084@l */
/* 80458354  38 A0 00 00 */	li r5, 0
/* 80458358  38 80 00 00 */	li r4, 0
/* 8045835C  48 00 00 18 */	b lbl_80458374
lbl_80458360:
/* 80458360  80 78 00 60 */	lwz r3, 0x60(r24)
/* 80458364  54 A0 13 BA */	rlwinm r0, r5, 2, 0xe, 0x1d
/* 80458368  7C 63 00 2E */	lwzx r3, r3, r0
/* 8045836C  90 83 00 3C */	stw r4, 0x3c(r3)
/* 80458370  38 A5 00 01 */	addi r5, r5, 1
lbl_80458374:
/* 80458374  54 A3 04 3E */	clrlwi r3, r5, 0x10
/* 80458378  A0 18 00 5C */	lhz r0, 0x5c(r24)
/* 8045837C  7C 03 00 40 */	cmplw r3, r0
/* 80458380  41 80 FF E0 */	blt lbl_80458360
/* 80458384  7F 83 E3 78 */	mr r3, r28
/* 80458388  3C 80 80 46 */	lis r4, data_804594AC@ha /* 0x804594AC@ha */
/* 8045838C  38 04 94 AC */	addi r0, r4, data_804594AC@l /* 0x804594AC@l */
/* 80458390  7C 80 DA 14 */	add r4, r0, r27
/* 80458394  7F A5 EB 78 */	mr r5, r29
/* 80458398  38 C0 00 40 */	li r6, 0x40
/* 8045839C  4B BE 3F E1 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 804583A0  7C 74 1B 79 */	or. r20, r3, r3
/* 804583A4  41 82 00 4C */	beq lbl_804583F0
/* 804583A8  38 60 00 08 */	li r3, 8
/* 804583AC  4B E7 68 A1 */	bl __nw__FUl
/* 804583B0  90 7E 00 04 */	stw r3, 4(r30)
/* 804583B4  80 7E 00 04 */	lwz r3, 4(r30)
/* 804583B8  28 03 00 00 */	cmplwi r3, 0
/* 804583BC  40 82 00 0C */	bne lbl_804583C8
/* 804583C0  38 60 00 00 */	li r3, 0
/* 804583C4  48 00 03 74 */	b lbl_80458738
lbl_804583C8:
/* 804583C8  7F 04 C3 78 */	mr r4, r24
/* 804583CC  7E 85 A3 78 */	mr r5, r20
/* 804583D0  38 C0 00 01 */	li r6, 1
/* 804583D4  4B FF FB 61 */	bl create__13daBg_btkAnm_cFP12J3DModelDataP19J3DAnmTextureSRTKeyi
/* 804583D8  2C 03 00 00 */	cmpwi r3, 0
/* 804583DC  40 82 00 0C */	bne lbl_804583E8
/* 804583E0  38 60 00 00 */	li r3, 0
/* 804583E4  48 00 03 54 */	b lbl_80458738
lbl_804583E8:
/* 804583E8  62 F7 12 00 */	ori r23, r23, 0x1200
/* 804583EC  48 00 00 0C */	b lbl_804583F8
lbl_804583F0:
/* 804583F0  38 00 00 00 */	li r0, 0
/* 804583F4  90 1E 00 04 */	stw r0, 4(r30)
lbl_804583F8:
/* 804583F8  3C 60 80 46 */	lis r3, lit_4125@ha /* 0x80459388@ha */
/* 804583FC  C0 03 93 88 */	lfs f0, lit_4125@l(r3)  /* 0x80459388@l */
/* 80458400  D0 1E 00 10 */	stfs f0, 0x10(r30)
/* 80458404  7F 83 E3 78 */	mr r3, r28
/* 80458408  3C 80 80 46 */	lis r4, data_804594F0@ha /* 0x804594F0@ha */
/* 8045840C  38 04 94 F0 */	addi r0, r4, data_804594F0@l /* 0x804594F0@l */
/* 80458410  7C 80 DA 14 */	add r4, r0, r27
/* 80458414  7F A5 EB 78 */	mr r5, r29
/* 80458418  38 C0 00 40 */	li r6, 0x40
/* 8045841C  4B BE 3F 61 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80458420  7C 74 1B 79 */	or. r20, r3, r3
/* 80458424  41 82 00 44 */	beq lbl_80458468
/* 80458428  38 60 00 08 */	li r3, 8
/* 8045842C  4B E7 68 21 */	bl __nw__FUl
/* 80458430  90 7E 00 08 */	stw r3, 8(r30)
/* 80458434  80 7E 00 08 */	lwz r3, 8(r30)
/* 80458438  28 03 00 00 */	cmplwi r3, 0
/* 8045843C  40 82 00 0C */	bne lbl_80458448
/* 80458440  38 60 00 00 */	li r3, 0
/* 80458444  48 00 02 F4 */	b lbl_80458738
lbl_80458448:
/* 80458448  7F 04 C3 78 */	mr r4, r24
/* 8045844C  7E 85 A3 78 */	mr r5, r20
/* 80458450  38 C0 00 01 */	li r6, 1
/* 80458454  4B FF FC 9D */	bl create__13daBg_brkAnm_cFP12J3DModelDataP15J3DAnmTevRegKeyi
/* 80458458  2C 03 00 00 */	cmpwi r3, 0
/* 8045845C  40 82 00 14 */	bne lbl_80458470
/* 80458460  38 60 00 00 */	li r3, 0
/* 80458464  48 00 02 D4 */	b lbl_80458738
lbl_80458468:
/* 80458468  38 00 00 00 */	li r0, 0
/* 8045846C  90 1E 00 08 */	stw r0, 8(r30)
lbl_80458470:
/* 80458470  3A 80 00 00 */	li r20, 0
/* 80458474  48 00 00 C4 */	b lbl_80458538
lbl_80458478:
/* 80458478  80 78 00 64 */	lwz r3, 0x64(r24)
/* 8045847C  7E 84 A3 78 */	mr r4, r20
/* 80458480  4B E8 66 79 */	bl getName__10JUTNameTabCFUs
/* 80458484  7C 75 1B 78 */	mr r21, r3
/* 80458488  88 03 00 03 */	lbz r0, 3(r3)
/* 8045848C  2C 00 00 4D */	cmpwi r0, 0x4d
/* 80458490  40 82 00 A4 */	bne lbl_80458534
/* 80458494  88 15 00 04 */	lbz r0, 4(r21)
/* 80458498  2C 00 00 41 */	cmpwi r0, 0x41
/* 8045849C  40 82 00 98 */	bne lbl_80458534
/* 804584A0  38 75 00 05 */	addi r3, r21, 5
/* 804584A4  3C 80 80 46 */	lis r4, d_a_bg__stringBase0@ha /* 0x804593A8@ha */
/* 804584A8  38 84 93 A8 */	addi r4, r4, d_a_bg__stringBase0@l /* 0x804593A8@l */
/* 804584AC  38 A0 00 02 */	li r5, 2
/* 804584B0  4B F0 DB DD */	bl memcmp
/* 804584B4  2C 03 00 00 */	cmpwi r3, 0
/* 804584B8  40 82 00 0C */	bne lbl_804584C4
/* 804584BC  62 F7 12 00 */	ori r23, r23, 0x1200
/* 804584C0  48 00 00 74 */	b lbl_80458534
lbl_804584C4:
/* 804584C4  38 75 00 05 */	addi r3, r21, 5
/* 804584C8  3C 80 80 46 */	lis r4, d_a_bg__stringBase0@ha /* 0x804593A8@ha */
/* 804584CC  38 84 93 A8 */	addi r4, r4, d_a_bg__stringBase0@l /* 0x804593A8@l */
/* 804584D0  38 84 00 03 */	addi r4, r4, 3
/* 804584D4  38 A0 00 02 */	li r5, 2
/* 804584D8  4B F0 DB B5 */	bl memcmp
/* 804584DC  2C 03 00 00 */	cmpwi r3, 0
/* 804584E0  40 82 00 0C */	bne lbl_804584EC
/* 804584E4  66 F7 20 00 */	oris r23, r23, 0x2000
/* 804584E8  48 00 00 4C */	b lbl_80458534
lbl_804584EC:
/* 804584EC  38 75 00 05 */	addi r3, r21, 5
/* 804584F0  3C 80 80 46 */	lis r4, d_a_bg__stringBase0@ha /* 0x804593A8@ha */
/* 804584F4  38 84 93 A8 */	addi r4, r4, d_a_bg__stringBase0@l /* 0x804593A8@l */
/* 804584F8  38 84 00 06 */	addi r4, r4, 6
/* 804584FC  38 A0 00 02 */	li r5, 2
/* 80458500  4B F0 DB 8D */	bl memcmp
/* 80458504  2C 03 00 00 */	cmpwi r3, 0
/* 80458508  41 82 00 24 */	beq lbl_8045852C
/* 8045850C  38 75 00 05 */	addi r3, r21, 5
/* 80458510  3C 80 80 46 */	lis r4, d_a_bg__stringBase0@ha /* 0x804593A8@ha */
/* 80458514  38 84 93 A8 */	addi r4, r4, d_a_bg__stringBase0@l /* 0x804593A8@l */
/* 80458518  38 84 00 09 */	addi r4, r4, 9
/* 8045851C  38 A0 00 02 */	li r5, 2
/* 80458520  4B F0 DB 6D */	bl memcmp
/* 80458524  2C 03 00 00 */	cmpwi r3, 0
/* 80458528  40 82 00 0C */	bne lbl_80458534
lbl_8045852C:
/* 8045852C  38 00 00 01 */	li r0, 1
/* 80458530  98 1F 05 F0 */	stb r0, 0x5f0(r31)
lbl_80458534:
/* 80458534  3A 94 00 01 */	addi r20, r20, 1
lbl_80458538:
/* 80458538  56 83 04 3E */	clrlwi r3, r20, 0x10
/* 8045853C  A0 18 00 5C */	lhz r0, 0x5c(r24)
/* 80458540  7C 03 00 40 */	cmplw r3, r0
/* 80458544  41 80 FF 34 */	blt lbl_80458478
/* 80458548  7F 03 C3 78 */	mr r3, r24
/* 8045854C  38 80 00 00 */	li r4, 0
/* 80458550  7E E5 BB 78 */	mr r5, r23
/* 80458554  4B BB C7 01 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80458558  90 7E 00 00 */	stw r3, 0(r30)
/* 8045855C  80 1E 00 00 */	lwz r0, 0(r30)
/* 80458560  28 00 00 00 */	cmplwi r0, 0
/* 80458564  40 82 00 0C */	bne lbl_80458570
/* 80458568  38 60 00 00 */	li r3, 0
/* 8045856C  48 00 01 CC */	b lbl_80458738
lbl_80458570:
/* 80458570  38 60 03 88 */	li r3, 0x388
/* 80458574  4B E7 66 D9 */	bl __nw__FUl
/* 80458578  7C 74 1B 79 */	or. r20, r3, r3
/* 8045857C  41 82 00 2C */	beq lbl_804585A8
/* 80458580  3C 80 80 3A */	lis r4, j3dDefaultLightInfo@ha /* 0x803A1EC8@ha */
/* 80458584  38 84 1E C8 */	addi r4, r4, j3dDefaultLightInfo@l /* 0x803A1EC8@l */
/* 80458588  4B EC D1 3D */	bl __as__12J3DLightInfoFRC12J3DLightInfo
/* 8045858C  38 74 00 74 */	addi r3, r20, 0x74
/* 80458590  3C 80 80 46 */	lis r4, __ct__11J3DLightObjFv@ha /* 0x80458750@ha */
/* 80458594  38 84 87 50 */	addi r4, r4, __ct__11J3DLightObjFv@l /* 0x80458750@l */
/* 80458598  38 A0 00 00 */	li r5, 0
/* 8045859C  38 C0 00 74 */	li r6, 0x74
/* 804585A0  38 E0 00 06 */	li r7, 6
/* 804585A4  4B F0 97 BD */	bl __construct_array
lbl_804585A8:
/* 804585A8  92 9E 00 0C */	stw r20, 0xc(r30)
/* 804585AC  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 804585B0  28 03 00 00 */	cmplwi r3, 0
/* 804585B4  40 82 00 0C */	bne lbl_804585C0
/* 804585B8  38 60 00 00 */	li r3, 0
/* 804585BC  48 00 01 7C */	b lbl_80458738
lbl_804585C0:
/* 804585C0  7F 24 07 74 */	extsb r4, r25
/* 804585C4  38 A0 00 FF */	li r5, 0xff
/* 804585C8  4B D5 03 25 */	bl dKy_tevstr_init__FP12dKy_tevstr_cScUc
lbl_804585CC:
/* 804585CC  3B 5A 00 01 */	addi r26, r26, 1
/* 804585D0  2C 1A 00 06 */	cmpwi r26, 6
/* 804585D4  3B DE 00 14 */	addi r30, r30, 0x14
/* 804585D8  3B 7B 00 0B */	addi r27, r27, 0xb
/* 804585DC  41 80 FD 24 */	blt lbl_80458300
/* 804585E0  7F 83 E3 78 */	mr r3, r28
/* 804585E4  3C 80 80 46 */	lis r4, d_a_bg__stringBase0@ha /* 0x804593A8@ha */
/* 804585E8  38 84 93 A8 */	addi r4, r4, d_a_bg__stringBase0@l /* 0x804593A8@l */
/* 804585EC  38 84 00 0C */	addi r4, r4, 0xc
/* 804585F0  7F A5 EB 78 */	mr r5, r29
/* 804585F4  38 C0 00 40 */	li r6, 0x40
/* 804585F8  4B BE 3D 85 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 804585FC  7C 74 1B 79 */	or. r20, r3, r3
/* 80458600  41 82 00 84 */	beq lbl_80458684
/* 80458604  38 00 00 00 */	li r0, 0
/* 80458608  90 1F 05 EC */	stw r0, 0x5ec(r31)
/* 8045860C  38 60 00 C0 */	li r3, 0xc0
/* 80458610  4B E7 66 3D */	bl __nw__FUl
/* 80458614  7C 60 1B 79 */	or. r0, r3, r3
/* 80458618  41 82 00 0C */	beq lbl_80458624
/* 8045861C  4B C2 33 55 */	bl __ct__4dBgWFv
/* 80458620  7C 60 1B 78 */	mr r0, r3
lbl_80458624:
/* 80458624  90 1F 05 E8 */	stw r0, 0x5e8(r31)
/* 80458628  80 7F 05 E8 */	lwz r3, 0x5e8(r31)
/* 8045862C  28 03 00 00 */	cmplwi r3, 0
/* 80458630  40 82 00 0C */	bne lbl_8045863C
/* 80458634  38 60 00 00 */	li r3, 0
/* 80458638  48 00 01 00 */	b lbl_80458738
lbl_8045863C:
/* 8045863C  7E 84 A3 78 */	mr r4, r20
/* 80458640  38 A0 00 20 */	li r5, 0x20
/* 80458644  38 C0 00 00 */	li r6, 0
/* 80458648  4B C2 18 F1 */	bl Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 8045864C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80458650  41 82 00 0C */	beq lbl_8045865C
/* 80458654  38 60 00 00 */	li r3, 0
/* 80458658  48 00 00 E0 */	b lbl_80458738
lbl_8045865C:
/* 8045865C  80 9F 05 E8 */	lwz r4, 0x5e8(r31)
/* 80458660  3C 60 80 3F */	lis r3, mStatus__20dStage_roomControl_c@ha /* 0x803F6094@ha */
/* 80458664  38 63 60 94 */	addi r3, r3, mStatus__20dStage_roomControl_c@l /* 0x803F6094@l */
/* 80458668  1C 19 04 04 */	mulli r0, r25, 0x404
/* 8045866C  7C 63 02 14 */	add r3, r3, r0
/* 80458670  90 83 04 00 */	stw r4, 0x400(r3)
/* 80458674  38 00 00 00 */	li r0, 0
/* 80458678  80 7F 05 E8 */	lwz r3, 0x5e8(r31)
/* 8045867C  98 03 00 08 */	stb r0, 8(r3)
/* 80458680  48 00 00 B4 */	b lbl_80458734
lbl_80458684:
/* 80458684  7F 83 E3 78 */	mr r3, r28
/* 80458688  3C 80 80 46 */	lis r4, d_a_bg__stringBase0@ha /* 0x804593A8@ha */
/* 8045868C  38 84 93 A8 */	addi r4, r4, d_a_bg__stringBase0@l /* 0x804593A8@l */
/* 80458690  38 84 00 15 */	addi r4, r4, 0x15
/* 80458694  7F A5 EB 78 */	mr r5, r29
/* 80458698  38 C0 00 40 */	li r6, 0x40
/* 8045869C  4B BE 3C E1 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 804586A0  7C 74 1B 78 */	mr r20, r3
/* 804586A4  7F 83 E3 78 */	mr r3, r28
/* 804586A8  3C 80 80 46 */	lis r4, d_a_bg__stringBase0@ha /* 0x804593A8@ha */
/* 804586AC  38 84 93 A8 */	addi r4, r4, d_a_bg__stringBase0@l /* 0x804593A8@l */
/* 804586B0  38 84 00 1E */	addi r4, r4, 0x1e
/* 804586B4  7F A5 EB 78 */	mr r5, r29
/* 804586B8  38 C0 00 40 */	li r6, 0x40
/* 804586BC  4B BE 3C C1 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 804586C0  7C 75 1B 78 */	mr r21, r3
/* 804586C4  28 14 00 00 */	cmplwi r20, 0
/* 804586C8  41 82 00 60 */	beq lbl_80458728
/* 804586CC  28 15 00 00 */	cmplwi r21, 0
/* 804586D0  41 82 00 58 */	beq lbl_80458728
/* 804586D4  38 00 00 00 */	li r0, 0
/* 804586D8  90 1F 05 E8 */	stw r0, 0x5e8(r31)
/* 804586DC  38 60 00 3C */	li r3, 0x3c
/* 804586E0  4B E7 65 6D */	bl __nw__FUl
/* 804586E4  7C 60 1B 79 */	or. r0, r3, r3
/* 804586E8  41 82 00 0C */	beq lbl_804586F4
/* 804586EC  4B C2 60 09 */	bl __ct__8dBgWKColFv
/* 804586F0  7C 60 1B 78 */	mr r0, r3
lbl_804586F4:
/* 804586F4  90 1F 05 EC */	stw r0, 0x5ec(r31)
/* 804586F8  80 7F 05 EC */	lwz r3, 0x5ec(r31)
/* 804586FC  28 03 00 00 */	cmplwi r3, 0
/* 80458700  40 82 00 0C */	bne lbl_8045870C
/* 80458704  38 60 00 00 */	li r3, 0
/* 80458708  48 00 00 30 */	b lbl_80458738
lbl_8045870C:
/* 8045870C  7E 84 A3 78 */	mr r4, r20
/* 80458710  7E A5 AB 78 */	mr r5, r21
/* 80458714  4B C2 60 F1 */	bl create__8dBgWKColFPvPv
/* 80458718  38 00 00 00 */	li r0, 0
/* 8045871C  80 7F 05 EC */	lwz r3, 0x5ec(r31)
/* 80458720  98 03 00 08 */	stb r0, 8(r3)
/* 80458724  48 00 00 10 */	b lbl_80458734
lbl_80458728:
/* 80458728  38 00 00 00 */	li r0, 0
/* 8045872C  90 1F 05 E8 */	stw r0, 0x5e8(r31)
/* 80458730  90 1F 05 EC */	stw r0, 0x5ec(r31)
lbl_80458734:
/* 80458734  38 60 00 01 */	li r3, 1
lbl_80458738:
/* 80458738  39 61 00 40 */	addi r11, r1, 0x40
/* 8045873C  4B F0 9A C9 */	bl _restgpr_20
/* 80458740  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80458744  7C 08 03 A6 */	mtlr r0
/* 80458748  38 21 00 40 */	addi r1, r1, 0x40
/* 8045874C  4E 80 00 20 */	blr 
