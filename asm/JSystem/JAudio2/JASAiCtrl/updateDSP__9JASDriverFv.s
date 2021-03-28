lbl_8029C6C4:
/* 8029C6C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8029C6C8  7C 08 02 A6 */	mflr r0
/* 8029C6CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8029C6D0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8029C6D4  38 60 00 03 */	li r3, 3
/* 8029C6D8  3C 80 80 3A */	lis r4, JASAiCtrl__stringBase0@ha
/* 8029C6DC  38 84 B2 F0 */	addi r4, r4, JASAiCtrl__stringBase0@l
/* 8029C6E0  4B FF 48 05 */	bl start__8JASProbeFlPCc
/* 8029C6E4  48 00 13 BD */	bl invalChannelAll__6JASDspFv
/* 8029C6E8  4B FF 49 79 */	bl execAllCommand__10JASPortCmdFv
/* 8029C6EC  48 00 1B E5 */	bl DSPSyncCallback__9JASDriverFv
/* 8029C6F0  88 0D 8D 54 */	lbz r0, data_804512D4(r13)
/* 8029C6F4  7C 00 07 75 */	extsb. r0, r0
/* 8029C6F8  40 82 00 14 */	bne lbl_8029C70C
/* 8029C6FC  38 00 00 00 */	li r0, 0
/* 8029C700  90 0D 8D 50 */	stw r0, old_time(r13)
/* 8029C704  38 00 00 01 */	li r0, 1
/* 8029C708  98 0D 8D 54 */	stb r0, data_804512D4(r13)
lbl_8029C70C:
/* 8029C70C  48 0A 60 09 */	bl OSGetTick
/* 8029C710  80 0D 8D 50 */	lwz r0, old_time(r13)
/* 8029C714  7F E0 18 50 */	subf r31, r0, r3
/* 8029C718  90 6D 8D 50 */	stw r3, old_time(r13)
/* 8029C71C  48 00 02 D5 */	bl getSubFrames__9JASDriverFv
/* 8029C720  80 AD 8D 58 */	lwz r5, snIntCount__14JASAudioThread(r13)
/* 8029C724  7C 05 18 50 */	subf r0, r5, r3
/* 8029C728  54 00 10 3A */	slwi r0, r0, 2
/* 8029C72C  3C 80 80 3C */	lis r4, history@ha
/* 8029C730  38 84 78 B8 */	addi r4, r4, history@l
/* 8029C734  7F E4 01 2E */	stwx r31, r4, r0
/* 8029C738  7C 03 28 40 */	cmplw r3, r5
/* 8029C73C  41 82 00 58 */	beq lbl_8029C794
/* 8029C740  80 04 00 00 */	lwz r0, 0(r4)
/* 8029C744  C8 42 BD 38 */	lfd f2, lit_278(r2)
/* 8029C748  90 01 00 0C */	stw r0, 0xc(r1)
/* 8029C74C  3C 00 43 30 */	lis r0, 0x4330
/* 8029C750  90 01 00 08 */	stw r0, 8(r1)
/* 8029C754  C8 01 00 08 */	lfd f0, 8(r1)
/* 8029C758  EC 20 10 28 */	fsubs f1, f0, f2
/* 8029C75C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8029C760  90 01 00 10 */	stw r0, 0x10(r1)
/* 8029C764  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8029C768  EC 00 10 28 */	fsubs f0, f0, f2
/* 8029C76C  EC 21 00 24 */	fdivs f1, f1, f0
/* 8029C770  C0 02 BD 2C */	lfs f0, lit_275(r2)
/* 8029C774  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8029C778  40 80 00 1C */	bge lbl_8029C794
/* 8029C77C  3C 60 80 3A */	lis r3, JASAiCtrl__stringBase0@ha
/* 8029C780  38 63 B2 F0 */	addi r3, r3, JASAiCtrl__stringBase0@l
/* 8029C784  38 63 00 0B */	addi r3, r3, 0xb
/* 8029C788  4C C6 31 82 */	crclr 6
/* 8029C78C  4B FF 47 D9 */	bl JASReport__FPCce
/* 8029C790  48 00 11 81 */	bl killActiveChannel__13JASDSPChannelFv
lbl_8029C794:
/* 8029C794  4B FF F4 B5 */	bl receiveBankDisposeMsg__10JASChannelFv
/* 8029C798  48 00 11 05 */	bl updateAll__13JASDSPChannelFv
/* 8029C79C  48 00 1B 0D */	bl subframeCallback__9JASDriverFv
/* 8029C7A0  48 00 02 49 */	bl getDacRate__9JASDriverFv
/* 8029C7A4  C0 02 BD 30 */	lfs f0, lit_276(r2)
/* 8029C7A8  EC 20 08 24 */	fdivs f1, f0, f1
/* 8029C7AC  3C 60 80 43 */	lis r3, sFreeRunLfo__6JASLfo@ha
/* 8029C7B0  38 63 1C 40 */	addi r3, r3, sFreeRunLfo__6JASLfo@l
/* 8029C7B4  4B FF F6 25 */	bl incCounter__6JASLfoFf
/* 8029C7B8  38 60 00 03 */	li r3, 3
/* 8029C7BC  4B FF 47 69 */	bl stop__8JASProbeFl
/* 8029C7C0  80 6D 8D 44 */	lwz r3, sSubFrameCounter__9JASDriver(r13)
/* 8029C7C4  38 03 00 01 */	addi r0, r3, 1
/* 8029C7C8  90 0D 8D 44 */	stw r0, sSubFrameCounter__9JASDriver(r13)
/* 8029C7CC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8029C7D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8029C7D4  7C 08 03 A6 */	mtlr r0
/* 8029C7D8  38 21 00 20 */	addi r1, r1, 0x20
/* 8029C7DC  4E 80 00 20 */	blr 
