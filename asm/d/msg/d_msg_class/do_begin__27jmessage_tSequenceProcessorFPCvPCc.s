lbl_8022B658:
/* 8022B658  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8022B65C  7C 08 02 A6 */	mflr r0
/* 8022B660  90 01 00 24 */	stw r0, 0x24(r1)
/* 8022B664  39 61 00 20 */	addi r11, r1, 0x20
/* 8022B668  48 13 6B 71 */	bl _savegpr_28
/* 8022B66C  7C 7C 1B 78 */	mr r28, r3
/* 8022B670  7C 9D 23 78 */	mr r29, r4
/* 8022B674  7C BE 2B 78 */	mr r30, r5
/* 8022B678  93 A3 00 9C */	stw r29, 0x9c(r3)
/* 8022B67C  93 C3 00 A0 */	stw r30, 0xa0(r3)
/* 8022B680  88 04 00 09 */	lbz r0, 9(r4)
/* 8022B684  28 00 00 08 */	cmplwi r0, 8
/* 8022B688  40 82 00 18 */	bne lbl_8022B6A0
/* 8022B68C  3C 60 80 43 */	lis r3, g_MsgObject_HIO_c@ha
/* 8022B690  38 63 02 8C */	addi r3, r3, g_MsgObject_HIO_c@l
/* 8022B694  88 03 03 58 */	lbz r0, 0x358(r3)
/* 8022B698  B0 1C 00 A8 */	sth r0, 0xa8(r28)
/* 8022B69C  48 00 00 14 */	b lbl_8022B6B0
lbl_8022B6A0:
/* 8022B6A0  3C 60 80 43 */	lis r3, g_MsgObject_HIO_c@ha
/* 8022B6A4  38 63 02 8C */	addi r3, r3, g_MsgObject_HIO_c@l
/* 8022B6A8  88 03 03 57 */	lbz r0, 0x357(r3)
/* 8022B6AC  B0 1C 00 A8 */	sth r0, 0xa8(r28)
lbl_8022B6B0:
/* 8022B6B0  A8 1C 00 A8 */	lha r0, 0xa8(r28)
/* 8022B6B4  B0 1C 00 A4 */	sth r0, 0xa4(r28)
/* 8022B6B8  38 60 00 00 */	li r3, 0
/* 8022B6BC  B0 7C 00 A6 */	sth r3, 0xa6(r28)
/* 8022B6C0  98 7C 00 AD */	stb r3, 0xad(r28)
/* 8022B6C4  98 7C 00 B0 */	stb r3, 0xb0(r28)
/* 8022B6C8  98 7C 00 B1 */	stb r3, 0xb1(r28)
/* 8022B6CC  98 7C 00 B2 */	stb r3, 0xb2(r28)
/* 8022B6D0  B0 7C 00 AA */	sth r3, 0xaa(r28)
/* 8022B6D4  98 7C 00 AC */	stb r3, 0xac(r28)
/* 8022B6D8  88 1D 00 08 */	lbz r0, 8(r29)
/* 8022B6DC  98 1C 00 B4 */	stb r0, 0xb4(r28)
/* 8022B6E0  88 1D 00 0E */	lbz r0, 0xe(r29)
/* 8022B6E4  98 1C 00 B3 */	stb r0, 0xb3(r28)
/* 8022B6E8  83 FC 00 04 */	lwz r31, 4(r28)
/* 8022B6EC  B0 7F 05 D8 */	sth r3, 0x5d8(r31)
/* 8022B6F0  98 7F 12 49 */	stb r3, 0x1249(r31)
/* 8022B6F4  98 7F 12 4A */	stb r3, 0x124a(r31)
/* 8022B6F8  98 7F 12 51 */	stb r3, 0x1251(r31)
/* 8022B6FC  98 7F 12 52 */	stb r3, 0x1252(r31)
/* 8022B700  98 7F 12 76 */	stb r3, 0x1276(r31)
/* 8022B704  B0 7F 06 30 */	sth r3, 0x630(r31)
/* 8022B708  B0 7F 06 32 */	sth r3, 0x632(r31)
/* 8022B70C  7F E3 FB 78 */	mr r3, r31
/* 8022B710  4B FF D6 19 */	bl calcDistance__19jmessage_tReferenceFv
/* 8022B714  88 1D 00 10 */	lbz r0, 0x10(r29)
/* 8022B718  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8022B71C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8022B720  98 03 5E 7A */	stb r0, 0x5e7a(r3)
/* 8022B724  88 1D 00 11 */	lbz r0, 0x11(r29)
/* 8022B728  98 03 5E 7B */	stb r0, 0x5e7b(r3)
/* 8022B72C  88 03 5E 8F */	lbz r0, 0x5e8f(r3)
/* 8022B730  28 00 00 02 */	cmplwi r0, 2
/* 8022B734  40 82 00 10 */	bne lbl_8022B744
/* 8022B738  38 00 00 01 */	li r0, 1
/* 8022B73C  98 1F 12 45 */	stb r0, 0x1245(r31)
/* 8022B740  48 00 00 20 */	b lbl_8022B760
lbl_8022B744:
/* 8022B744  28 00 00 03 */	cmplwi r0, 3
/* 8022B748  40 82 00 10 */	bne lbl_8022B758
/* 8022B74C  38 00 00 00 */	li r0, 0
/* 8022B750  98 1F 12 45 */	stb r0, 0x1245(r31)
/* 8022B754  48 00 00 0C */	b lbl_8022B760
lbl_8022B758:
/* 8022B758  88 1D 00 0B */	lbz r0, 0xb(r29)
/* 8022B75C  98 1F 12 45 */	stb r0, 0x1245(r31)
lbl_8022B760:
/* 8022B760  88 1D 00 09 */	lbz r0, 9(r29)
/* 8022B764  98 1F 12 46 */	stb r0, 0x1246(r31)
/* 8022B768  48 00 CD 99 */	bl getMsgOutputType__12dMsgObject_cFv
/* 8022B76C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8022B770  28 00 00 FF */	cmplwi r0, 0xff
/* 8022B774  41 82 00 10 */	beq lbl_8022B784
/* 8022B778  48 00 CD 89 */	bl getMsgOutputType__12dMsgObject_cFv
/* 8022B77C  98 7F 12 47 */	stb r3, 0x1247(r31)
/* 8022B780  48 00 00 0C */	b lbl_8022B78C
lbl_8022B784:
/* 8022B784  88 1D 00 0A */	lbz r0, 0xa(r29)
/* 8022B788  98 1F 12 47 */	stb r0, 0x1247(r31)
lbl_8022B78C:
/* 8022B78C  88 1D 00 0D */	lbz r0, 0xd(r29)
/* 8022B790  98 1F 12 48 */	stb r0, 0x1248(r31)
/* 8022B794  98 1F 12 47 */	stb r0, 0x1247(r31)
/* 8022B798  A0 1D 00 04 */	lhz r0, 4(r29)
/* 8022B79C  B0 1F 05 DE */	sth r0, 0x5de(r31)
/* 8022B7A0  A0 1D 00 06 */	lhz r0, 6(r29)
/* 8022B7A4  28 00 00 00 */	cmplwi r0, 0
/* 8022B7A8  41 82 00 24 */	beq lbl_8022B7CC
/* 8022B7AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8022B7B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8022B7B4  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 8022B7B8  54 00 0B FC */	rlwinm r0, r0, 1, 0xf, 0x1e
/* 8022B7BC  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 8022B7C0  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 8022B7C4  7C 84 02 2E */	lhzx r4, r4, r0
/* 8022B7C8  4B E0 91 C5 */	bl onEventBit__11dSv_event_cFUs
lbl_8022B7CC:
/* 8022B7CC  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 8022B7D0  48 00 A8 D1 */	bl talkStartInit__12dMsgObject_cFv
/* 8022B7D4  80 1C 00 08 */	lwz r0, 8(r28)
/* 8022B7D8  90 1C 00 54 */	stw r0, 0x54(r28)
/* 8022B7DC  93 DC 00 58 */	stw r30, 0x58(r28)
/* 8022B7E0  38 00 00 00 */	li r0, 0
/* 8022B7E4  90 1C 00 5C */	stw r0, 0x5c(r28)
/* 8022B7E8  3C 60 80 2B */	lis r3, process_onCharacterEnd_normal___Q28JMessage10TProcessorFPQ28JMessage10TProcessor@ha
/* 8022B7EC  38 03 82 8C */	addi r0, r3, process_onCharacterEnd_normal___Q28JMessage10TProcessorFPQ28JMessage10TProcessor@l
/* 8022B7F0  90 1C 00 70 */	stw r0, 0x70(r28)
/* 8022B7F4  38 7C 00 4C */	addi r3, r28, 0x4c
/* 8022B7F8  7F C4 F3 78 */	mr r4, r30
/* 8022B7FC  81 9C 00 4C */	lwz r12, 0x4c(r28)
/* 8022B800  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8022B804  7D 89 03 A6 */	mtctr r12
/* 8022B808  4E 80 04 21 */	bctrl 
/* 8022B80C  38 7C 00 4C */	addi r3, r28, 0x4c
/* 8022B810  7F A4 EB 78 */	mr r4, r29
/* 8022B814  7F C5 F3 78 */	mr r5, r30
/* 8022B818  81 9C 00 4C */	lwz r12, 0x4c(r28)
/* 8022B81C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8022B820  7D 89 03 A6 */	mtctr r12
/* 8022B824  4E 80 04 21 */	bctrl 
/* 8022B828  38 7C 00 4C */	addi r3, r28, 0x4c
/* 8022B82C  7F A4 EB 78 */	mr r4, r29
/* 8022B830  7F C5 F3 78 */	mr r5, r30
/* 8022B834  81 9C 00 4C */	lwz r12, 0x4c(r28)
/* 8022B838  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8022B83C  7D 89 03 A6 */	mtctr r12
/* 8022B840  4E 80 04 21 */	bctrl 
/* 8022B844  38 7C 00 4C */	addi r3, r28, 0x4c
/* 8022B848  38 80 00 00 */	li r4, 0
/* 8022B84C  48 07 D2 D5 */	bl process__Q28JMessage19TRenderingProcessorFPCc
/* 8022B850  88 1F 12 75 */	lbz r0, 0x1275(r31)
/* 8022B854  28 00 00 00 */	cmplwi r0, 0
/* 8022B858  41 82 00 14 */	beq lbl_8022B86C
/* 8022B85C  38 00 00 00 */	li r0, 0
/* 8022B860  98 1F 12 75 */	stb r0, 0x1275(r31)
/* 8022B864  7F 83 E3 78 */	mr r3, r28
/* 8022B868  48 00 13 81 */	bl calcStringLength__27jmessage_tSequenceProcessorFv
lbl_8022B86C:
/* 8022B86C  C0 1F 05 A8 */	lfs f0, 0x5a8(r31)
/* 8022B870  FC 40 00 90 */	fmr f2, f0
/* 8022B874  C0 3F 05 AC */	lfs f1, 0x5ac(r31)
/* 8022B878  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8022B87C  40 80 00 08 */	bge lbl_8022B884
/* 8022B880  FC 40 08 90 */	fmr f2, f1
lbl_8022B884:
/* 8022B884  C0 1F 05 B0 */	lfs f0, 0x5b0(r31)
/* 8022B888  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8022B88C  40 80 00 08 */	bge lbl_8022B894
/* 8022B890  FC 40 00 90 */	fmr f2, f0
lbl_8022B894:
/* 8022B894  C0 02 B0 88 */	lfs f0, lit_5490(r2)
/* 8022B898  EC 42 00 2A */	fadds f2, f2, f0
/* 8022B89C  C0 1F 04 48 */	lfs f0, 0x448(r31)
/* 8022B8A0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8022B8A4  40 81 00 08 */	ble lbl_8022B8AC
/* 8022B8A8  D0 5F 04 48 */	stfs f2, 0x448(r31)
lbl_8022B8AC:
/* 8022B8AC  48 00 CC 55 */	bl getMsgOutputType__12dMsgObject_cFv
/* 8022B8B0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8022B8B4  28 00 00 FF */	cmplwi r0, 0xff
/* 8022B8B8  41 82 00 10 */	beq lbl_8022B8C8
/* 8022B8BC  48 00 CC 45 */	bl getMsgOutputType__12dMsgObject_cFv
/* 8022B8C0  98 7C 00 AE */	stb r3, 0xae(r28)
/* 8022B8C4  48 00 00 0C */	b lbl_8022B8D0
lbl_8022B8C8:
/* 8022B8C8  88 1D 00 0A */	lbz r0, 0xa(r29)
/* 8022B8CC  98 1C 00 AE */	stb r0, 0xae(r28)
lbl_8022B8D0:
/* 8022B8D0  88 1C 00 AF */	lbz r0, 0xaf(r28)
/* 8022B8D4  28 00 00 FF */	cmplwi r0, 0xff
/* 8022B8D8  41 82 00 08 */	beq lbl_8022B8E0
/* 8022B8DC  98 1C 00 AE */	stb r0, 0xae(r28)
lbl_8022B8E0:
/* 8022B8E0  C0 62 B0 8C */	lfs f3, lit_5491(r2)
/* 8022B8E4  D0 7F 04 60 */	stfs f3, 0x460(r31)
/* 8022B8E8  C0 42 B0 64 */	lfs f2, lit_4028(r2)
/* 8022B8EC  D0 5F 04 58 */	stfs f2, 0x458(r31)
/* 8022B8F0  D0 5F 04 5C */	stfs f2, 0x45c(r31)
/* 8022B8F4  88 1C 00 AE */	lbz r0, 0xae(r28)
/* 8022B8F8  28 00 00 03 */	cmplwi r0, 3
/* 8022B8FC  40 82 00 44 */	bne lbl_8022B940
/* 8022B900  3C 60 80 43 */	lis r3, g_MsgObject_HIO_c@ha
/* 8022B904  38 63 02 8C */	addi r3, r3, g_MsgObject_HIO_c@l
/* 8022B908  A8 03 03 12 */	lha r0, 0x312(r3)
/* 8022B90C  C8 22 B0 70 */	lfd f1, lit_4198(r2)
/* 8022B910  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8022B914  90 01 00 0C */	stw r0, 0xc(r1)
/* 8022B918  3C 00 43 30 */	lis r0, 0x4330
/* 8022B91C  90 01 00 08 */	stw r0, 8(r1)
/* 8022B920  C8 01 00 08 */	lfd f0, 8(r1)
/* 8022B924  EC 00 08 28 */	fsubs f0, f0, f1
/* 8022B928  EC 02 00 2A */	fadds f0, f2, f0
/* 8022B92C  EC 02 00 24 */	fdivs f0, f2, f0
/* 8022B930  D0 1F 04 58 */	stfs f0, 0x458(r31)
/* 8022B934  C0 02 B0 60 */	lfs f0, lit_4027(r2)
/* 8022B938  D0 1F 04 5C */	stfs f0, 0x45c(r31)
/* 8022B93C  48 00 00 D8 */	b lbl_8022BA14
lbl_8022B940:
/* 8022B940  28 00 00 08 */	cmplwi r0, 8
/* 8022B944  40 82 00 44 */	bne lbl_8022B988
/* 8022B948  3C 60 80 43 */	lis r3, g_MsgObject_HIO_c@ha
/* 8022B94C  38 63 02 8C */	addi r3, r3, g_MsgObject_HIO_c@l
/* 8022B950  A8 03 03 16 */	lha r0, 0x316(r3)
/* 8022B954  C8 22 B0 70 */	lfd f1, lit_4198(r2)
/* 8022B958  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8022B95C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8022B960  3C 00 43 30 */	lis r0, 0x4330
/* 8022B964  90 01 00 08 */	stw r0, 8(r1)
/* 8022B968  C8 01 00 08 */	lfd f0, 8(r1)
/* 8022B96C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8022B970  EC 02 00 2A */	fadds f0, f2, f0
/* 8022B974  EC 02 00 24 */	fdivs f0, f2, f0
/* 8022B978  D0 1F 04 58 */	stfs f0, 0x458(r31)
/* 8022B97C  C0 02 B0 60 */	lfs f0, lit_4027(r2)
/* 8022B980  D0 1F 04 5C */	stfs f0, 0x45c(r31)
/* 8022B984  48 00 00 90 */	b lbl_8022BA14
lbl_8022B988:
/* 8022B988  28 00 00 09 */	cmplwi r0, 9
/* 8022B98C  40 82 00 44 */	bne lbl_8022B9D0
/* 8022B990  3C 60 80 43 */	lis r3, g_MsgObject_HIO_c@ha
/* 8022B994  38 63 02 8C */	addi r3, r3, g_MsgObject_HIO_c@l
/* 8022B998  A8 03 03 18 */	lha r0, 0x318(r3)
/* 8022B99C  C8 22 B0 70 */	lfd f1, lit_4198(r2)
/* 8022B9A0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8022B9A4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8022B9A8  3C 00 43 30 */	lis r0, 0x4330
/* 8022B9AC  90 01 00 08 */	stw r0, 8(r1)
/* 8022B9B0  C8 01 00 08 */	lfd f0, 8(r1)
/* 8022B9B4  EC 00 08 28 */	fsubs f0, f0, f1
/* 8022B9B8  EC 02 00 2A */	fadds f0, f2, f0
/* 8022B9BC  EC 02 00 24 */	fdivs f0, f2, f0
/* 8022B9C0  D0 1F 04 58 */	stfs f0, 0x458(r31)
/* 8022B9C4  C0 02 B0 60 */	lfs f0, lit_4027(r2)
/* 8022B9C8  D0 1F 04 5C */	stfs f0, 0x45c(r31)
/* 8022B9CC  48 00 00 48 */	b lbl_8022BA14
lbl_8022B9D0:
/* 8022B9D0  28 00 00 05 */	cmplwi r0, 5
/* 8022B9D4  40 82 00 40 */	bne lbl_8022BA14
/* 8022B9D8  3C 60 80 43 */	lis r3, g_MsgObject_HIO_c@ha
/* 8022B9DC  38 63 02 8C */	addi r3, r3, g_MsgObject_HIO_c@l
/* 8022B9E0  A8 03 03 14 */	lha r0, 0x314(r3)
/* 8022B9E4  B0 1C 00 A4 */	sth r0, 0xa4(r28)
/* 8022B9E8  A8 1C 00 A4 */	lha r0, 0xa4(r28)
/* 8022B9EC  C8 22 B0 70 */	lfd f1, lit_4198(r2)
/* 8022B9F0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8022B9F4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8022B9F8  3C 00 43 30 */	lis r0, 0x4330
/* 8022B9FC  90 01 00 08 */	stw r0, 8(r1)
/* 8022BA00  C8 01 00 08 */	lfd f0, 8(r1)
/* 8022BA04  EC 00 08 28 */	fsubs f0, f0, f1
/* 8022BA08  EC 02 00 2A */	fadds f0, f2, f0
/* 8022BA0C  EC 03 00 24 */	fdivs f0, f3, f0
/* 8022BA10  D0 1F 04 60 */	stfs f0, 0x460(r31)
lbl_8022BA14:
/* 8022BA14  7F E3 FB 78 */	mr r3, r31
/* 8022BA18  4B FF D5 F5 */	bl resetReference__19jmessage_tReferenceFv
/* 8022BA1C  38 00 00 00 */	li r0, 0
/* 8022BA20  98 1C 00 B5 */	stb r0, 0xb5(r28)
/* 8022BA24  39 61 00 20 */	addi r11, r1, 0x20
/* 8022BA28  48 13 67 FD */	bl _restgpr_28
/* 8022BA2C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8022BA30  7C 08 03 A6 */	mtlr r0
/* 8022BA34  38 21 00 20 */	addi r1, r1, 0x20
/* 8022BA38  4E 80 00 20 */	blr 
