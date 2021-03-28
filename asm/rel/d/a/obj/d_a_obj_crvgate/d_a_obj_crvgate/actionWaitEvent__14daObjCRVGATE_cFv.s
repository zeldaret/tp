lbl_80BD0978:
/* 80BD0978  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BD097C  7C 08 02 A6 */	mflr r0
/* 80BD0980  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BD0984  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80BD0988  7C 7F 1B 78 */	mr r31, r3
/* 80BD098C  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 80BD0990  28 00 00 03 */	cmplwi r0, 3
/* 80BD0994  40 82 00 A4 */	bne lbl_80BD0A38
/* 80BD0998  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80BD099C  38 C4 61 C0 */	addi r6, r4, g_dComIfG_gameInfo@l
/* 80BD09A0  80 86 5D AC */	lwz r4, 0x5dac(r6)
/* 80BD09A4  38 00 00 03 */	li r0, 3
/* 80BD09A8  B0 04 06 04 */	sth r0, 0x604(r4)
/* 80BD09AC  38 00 00 00 */	li r0, 0
/* 80BD09B0  90 04 06 0C */	stw r0, 0x60c(r4)
/* 80BD09B4  38 A0 00 01 */	li r5, 1
/* 80BD09B8  90 A4 06 14 */	stw r5, 0x614(r4)
/* 80BD09BC  90 04 06 0C */	stw r0, 0x60c(r4)
/* 80BD09C0  90 04 06 10 */	stw r0, 0x610(r4)
/* 80BD09C4  B0 04 06 0A */	sth r0, 0x60a(r4)
/* 80BD09C8  90 BF 05 A0 */	stw r5, 0x5a0(r31)
/* 80BD09CC  A8 86 5D C8 */	lha r4, 0x5dc8(r6)
/* 80BD09D0  38 04 FF FF */	addi r0, r4, -1
/* 80BD09D4  B0 06 5D C8 */	sth r0, 0x5dc8(r6)
/* 80BD09D8  98 BF 05 AD */	stb r5, 0x5ad(r31)
/* 80BD09DC  48 00 00 89 */	bl Demo_Set__14daObjCRVGATE_cFv
/* 80BD09E0  3C 60 00 08 */	lis r3, 0x0008 /* 0x000802C2@ha */
/* 80BD09E4  38 03 02 C2 */	addi r0, r3, 0x02C2 /* 0x000802C2@l */
/* 80BD09E8  90 01 00 08 */	stw r0, 8(r1)
/* 80BD09EC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80BD09F0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80BD09F4  80 63 00 00 */	lwz r3, 0(r3)
/* 80BD09F8  38 81 00 08 */	addi r4, r1, 8
/* 80BD09FC  38 BF 05 E0 */	addi r5, r31, 0x5e0
/* 80BD0A00  38 C0 00 00 */	li r6, 0
/* 80BD0A04  38 E0 00 00 */	li r7, 0
/* 80BD0A08  3D 00 80 BD */	lis r8, lit_3937@ha
/* 80BD0A0C  C0 28 31 3C */	lfs f1, lit_3937@l(r8)
/* 80BD0A10  FC 40 08 90 */	fmr f2, f1
/* 80BD0A14  3D 00 80 BD */	lis r8, lit_3938@ha
/* 80BD0A18  C0 68 31 40 */	lfs f3, lit_3938@l(r8)
/* 80BD0A1C  FC 80 18 90 */	fmr f4, f3
/* 80BD0A20  39 00 00 00 */	li r8, 0
/* 80BD0A24  4B 6D AF 60 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BD0A28  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 80BD0A2C  54 00 06 2C */	rlwinm r0, r0, 0, 0x18, 0x16
/* 80BD0A30  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 80BD0A34  48 00 00 1C */	b lbl_80BD0A50
lbl_80BD0A38:
/* 80BD0A38  4B FF FC 65 */	bl checkOpen__14daObjCRVGATE_cFv
/* 80BD0A3C  2C 03 00 00 */	cmpwi r3, 0
/* 80BD0A40  41 82 00 10 */	beq lbl_80BD0A50
/* 80BD0A44  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80BD0A48  60 00 00 04 */	ori r0, r0, 4
/* 80BD0A4C  B0 1F 00 FA */	sth r0, 0xfa(r31)
lbl_80BD0A50:
/* 80BD0A50  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80BD0A54  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BD0A58  7C 08 03 A6 */	mtlr r0
/* 80BD0A5C  38 21 00 20 */	addi r1, r1, 0x20
/* 80BD0A60  4E 80 00 20 */	blr 
