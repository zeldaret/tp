lbl_80A9867C:
/* 80A9867C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A98680  7C 08 02 A6 */	mflr r0
/* 80A98684  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A98688  39 61 00 30 */	addi r11, r1, 0x30
/* 80A9868C  4B 8C 9B 48 */	b _savegpr_27
/* 80A98690  7C 7F 1B 78 */	mr r31, r3
/* 80A98694  3C 60 80 AA */	lis r3, m__24daNpc_Pachi_Maro_Param_c@ha
/* 80A98698  3B A3 B8 8C */	addi r29, r3, m__24daNpc_Pachi_Maro_Param_c@l
/* 80A9869C  38 7F 0F B0 */	addi r3, r31, 0xfb0
/* 80A986A0  38 1F 0F C8 */	addi r0, r31, 0xfc8
/* 80A986A4  7F 83 00 50 */	subf r28, r3, r0
/* 80A986A8  80 7F 09 6C */	lwz r3, 0x96c(r31)
/* 80A986AC  28 03 00 00 */	cmplwi r3, 0
/* 80A986B0  41 82 00 08 */	beq lbl_80A986B8
/* 80A986B4  4B 6A D0 B0 */	b initialize__15daNpcT_MatAnm_cFv
lbl_80A986B8:
/* 80A986B8  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80A986BC  38 80 00 00 */	li r4, 0
/* 80A986C0  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80A986C4  7C A3 00 50 */	subf r5, r3, r0
/* 80A986C8  4B 56 AD 90 */	b memset
/* 80A986CC  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80A986D0  4B 6A D1 C8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A986D4  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80A986D8  4B 6A D1 C0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A986DC  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80A986E0  4B 6A CF F4 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80A986E4  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80A986E8  4B 6A CF EC */	b initialize__18daNpcT_ActorMngr_cFv
/* 80A986EC  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A986F0  4B 6A E5 A8 */	b initialize__15daNpcT_JntAnm_cFv
/* 80A986F4  38 A0 00 00 */	li r5, 0
/* 80A986F8  38 60 00 00 */	li r3, 0
/* 80A986FC  7C A4 2B 78 */	mr r4, r5
/* 80A98700  C0 1D 00 A4 */	lfs f0, 0xa4(r29)
/* 80A98704  38 00 00 02 */	li r0, 2
/* 80A98708  7C 09 03 A6 */	mtctr r0
lbl_80A9870C:
/* 80A9870C  7C DF 22 14 */	add r6, r31, r4
/* 80A98710  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 80A98714  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 80A98718  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 80A9871C  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80A98720  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80A98724  38 63 00 04 */	addi r3, r3, 4
/* 80A98728  38 84 00 06 */	addi r4, r4, 6
/* 80A9872C  42 00 FF E0 */	bdnz lbl_80A9870C
/* 80A98730  38 00 00 00 */	li r0, 0
/* 80A98734  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80A98738  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80A9873C  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80A98740  38 00 FF FF */	li r0, -1
/* 80A98744  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80A98748  38 00 00 01 */	li r0, 1
/* 80A9874C  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80A98750  C0 3D 00 A8 */	lfs f1, 0xa8(r29)
/* 80A98754  4B 7C F2 00 */	b cM_rndF__Ff
/* 80A98758  FC 00 08 1E */	fctiwz f0, f1
/* 80A9875C  D8 01 00 08 */	stfd f0, 8(r1)
/* 80A98760  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80A98764  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80A98768  C0 1D 00 AC */	lfs f0, 0xac(r29)
/* 80A9876C  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80A98770  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80A98774  3B 60 00 00 */	li r27, 0
/* 80A98778  3B C0 00 00 */	li r30, 0
lbl_80A9877C:
/* 80A9877C  38 7E 0F A0 */	addi r3, r30, 0xfa0
/* 80A98780  7C 7F 1A 14 */	add r3, r31, r3
/* 80A98784  4B 6A CF 50 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80A98788  3B 7B 00 01 */	addi r27, r27, 1
/* 80A9878C  2C 1B 00 02 */	cmpwi r27, 2
/* 80A98790  3B DE 00 08 */	addi r30, r30, 8
/* 80A98794  41 80 FF E8 */	blt lbl_80A9877C
/* 80A98798  38 7F 0F B0 */	addi r3, r31, 0xfb0
/* 80A9879C  38 80 00 00 */	li r4, 0
/* 80A987A0  7F 85 E3 78 */	mr r5, r28
/* 80A987A4  4B 56 AC B4 */	b memset
/* 80A987A8  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 80A987AC  2C 00 00 00 */	cmpwi r0, 0
/* 80A987B0  41 82 00 08 */	beq lbl_80A987B8
/* 80A987B4  48 00 00 1C */	b lbl_80A987D0
lbl_80A987B8:
/* 80A987B8  38 00 00 00 */	li r0, 0
/* 80A987BC  98 1F 0F 85 */	stb r0, 0xf85(r31)
/* 80A987C0  C0 1D 00 B8 */	lfs f0, 0xb8(r29)
/* 80A987C4  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80A987C8  C0 1D 00 BC */	lfs f0, 0xbc(r29)
/* 80A987CC  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
lbl_80A987D0:
/* 80A987D0  7F E3 FB 78 */	mr r3, r31
/* 80A987D4  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80A987D8  4B 6B 22 40 */	b setAngle__8daNpcT_cFs
/* 80A987DC  39 61 00 30 */	addi r11, r1, 0x30
/* 80A987E0  4B 8C 9A 40 */	b _restgpr_27
/* 80A987E4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A987E8  7C 08 03 A6 */	mtlr r0
/* 80A987EC  38 21 00 30 */	addi r1, r1, 0x30
/* 80A987F0  4E 80 00 20 */	blr 
