lbl_802CD248:
/* 802CD248  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CD24C  7C 08 02 A6 */	mflr r0
/* 802CD250  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CD254  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802CD258  93 C1 00 08 */	stw r30, 8(r1)
/* 802CD25C  7C 7F 1B 78 */	mr r31, r3
/* 802CD260  4B FD E3 ED */	bl __ct__7Z2SeMgrFv
/* 802CD264  38 7F 03 D0 */	addi r3, r31, 0x3d0
/* 802CD268  4B FE 1C 39 */	bl __ct__8Z2SeqMgrFv
/* 802CD26C  38 7F 04 A4 */	addi r3, r31, 0x4a4
/* 802CD270  4B FE 95 D1 */	bl __ct__10Z2SceneMgrFv
/* 802CD274  38 7F 04 C4 */	addi r3, r31, 0x4c4
/* 802CD278  4B FE 8C A5 */	bl __ct__11Z2StatusMgrFv
/* 802CD27C  38 7F 04 F4 */	addi r3, r31, 0x4f4
/* 802CD280  4B FF 26 A1 */	bl __ct__13Z2SoundObjMgrFv
/* 802CD284  3C 60 80 3D */	lis r3, __vt__10Z2AudioMgr@ha /* 0x803CBF38@ha */
/* 802CD288  38 03 BF 38 */	addi r0, r3, __vt__10Z2AudioMgr@l /* 0x803CBF38@l */
/* 802CD28C  90 1F 05 14 */	stw r0, 0x514(r31)
/* 802CD290  38 7F 05 1C */	addi r3, r31, 0x51c
/* 802CD294  4B FC FE 21 */	bl __ct__15JASAudioReseterFv
/* 802CD298  38 7F 05 2C */	addi r3, r31, 0x52c
/* 802CD29C  38 80 00 01 */	li r4, 1
/* 802CD2A0  4B FD D8 F5 */	bl __ct__14Z2SoundStarterFb
/* 802CD2A4  38 7F 05 30 */	addi r3, r31, 0x530
/* 802CD2A8  4B FD CB D9 */	bl __ct__10Z2SoundMgrFv
/* 802CD2AC  3B DF 0D 40 */	addi r30, r31, 0xd40
/* 802CD2B0  7F C3 F3 78 */	mr r3, r30
/* 802CD2B4  38 80 00 01 */	li r4, 1
/* 802CD2B8  4B FD 5A 7D */	bl __ct__12JAISoundInfoFb
/* 802CD2BC  38 9E 00 04 */	addi r4, r30, 4
/* 802CD2C0  90 8D 85 D0 */	stw r4, __OSReport_disable-0x48(r13)
/* 802CD2C4  3C 60 80 3A */	lis r3, __vt__12JAUSoundInfo@ha /* 0x803A2F4C@ha */
/* 802CD2C8  38 03 2F 4C */	addi r0, r3, __vt__12JAUSoundInfo@l /* 0x803A2F4C@l */
/* 802CD2CC  90 1E 00 04 */	stw r0, 4(r30)
/* 802CD2D0  3C 60 80 3D */	lis r3, __vt__16JAIStreamDataMgr@ha /* 0x803C9A1C@ha */
/* 802CD2D4  38 03 9A 1C */	addi r0, r3, __vt__16JAIStreamDataMgr@l /* 0x803C9A1C@l */
/* 802CD2D8  90 1E 00 08 */	stw r0, 8(r30)
/* 802CD2DC  34 7E 00 0C */	addic. r3, r30, 0xc
/* 802CD2E0  41 82 00 08 */	beq lbl_802CD2E8
/* 802CD2E4  38 63 FF F4 */	addi r3, r3, -12
lbl_802CD2E8:
/* 802CD2E8  90 6D 85 CC */	stw r3, __OSReport_disable-0x4C(r13)
/* 802CD2EC  3C 60 80 3D */	lis r3, __vt__11Z2SoundInfo@ha /* 0x803CAC48@ha */
/* 802CD2F0  38 63 AC 48 */	addi r3, r3, __vt__11Z2SoundInfo@l /* 0x803CAC48@l */
/* 802CD2F4  90 7E 00 00 */	stw r3, 0(r30)
/* 802CD2F8  38 03 00 24 */	addi r0, r3, 0x24
/* 802CD2FC  90 1E 00 04 */	stw r0, 4(r30)
/* 802CD300  38 03 00 34 */	addi r0, r3, 0x34
/* 802CD304  90 1E 00 08 */	stw r0, 8(r30)
/* 802CD308  38 7F 0D 4C */	addi r3, r31, 0xd4c
/* 802CD30C  4B FE FE 25 */	bl __ct__10Z2AudienceFv
/* 802CD310  38 7F 0F 2C */	addi r3, r31, 0xf2c
/* 802CD314  4B FF E9 4D */	bl __ct__12Z2SpeechMgr2Fv
/* 802CD318  38 7F 13 70 */	addi r3, r31, 0x1370
/* 802CD31C  4B FE D4 C1 */	bl __ct__11Z2FxLineMgrFv
/* 802CD320  93 ED 8D E8 */	stw r31, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 802CD324  38 00 00 00 */	li r0, 0
/* 802CD328  98 1F 05 18 */	stb r0, 0x518(r31)
/* 802CD32C  98 1F 05 19 */	stb r0, 0x519(r31)
/* 802CD330  7F E3 FB 78 */	mr r3, r31
/* 802CD334  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802CD338  83 C1 00 08 */	lwz r30, 8(r1)
/* 802CD33C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CD340  7C 08 03 A6 */	mtlr r0
/* 802CD344  38 21 00 10 */	addi r1, r1, 0x10
/* 802CD348  4E 80 00 20 */	blr 
