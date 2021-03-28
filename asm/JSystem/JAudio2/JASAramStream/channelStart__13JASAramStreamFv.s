lbl_80297658:
/* 80297658  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8029765C  7C 08 02 A6 */	mflr r0
/* 80297660  90 01 00 74 */	stw r0, 0x74(r1)
/* 80297664  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80297668  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 8029766C  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 80297670  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 80297674  39 61 00 50 */	addi r11, r1, 0x50
/* 80297678  48 0C AB 3D */	bl _savegpr_19
/* 8029767C  7C 7D 1B 78 */	mr r29, r3
/* 80297680  A0 03 01 58 */	lhz r0, 0x158(r3)
/* 80297684  2C 00 00 01 */	cmpwi r0, 1
/* 80297688  41 82 00 1C */	beq lbl_802976A4
/* 8029768C  40 80 00 1C */	bge lbl_802976A8
/* 80297690  2C 00 00 00 */	cmpwi r0, 0
/* 80297694  40 80 00 08 */	bge lbl_8029769C
/* 80297698  48 00 00 10 */	b lbl_802976A8
lbl_8029769C:
/* 8029769C  3B E0 00 00 */	li r31, 0
/* 802976A0  48 00 00 08 */	b lbl_802976A8
lbl_802976A4:
/* 802976A4  3B E0 00 03 */	li r31, 3
lbl_802976A8:
/* 802976A8  3B C0 00 00 */	li r30, 0
/* 802976AC  3B 80 00 00 */	li r28, 0
/* 802976B0  3C 60 80 43 */	lis r3, data_80431B34@ha
/* 802976B4  3B 23 1B 34 */	addi r25, r3, data_80431B34@l
/* 802976B8  CB E2 BC 20 */	lfd f31, lit_533(r2)
/* 802976BC  3F 40 43 30 */	lis r26, 0x4330
/* 802976C0  3C 60 80 3A */	lis r3, OSC_ENV@ha
/* 802976C4  3B 63 B1 74 */	addi r27, r3, OSC_ENV@l
/* 802976C8  48 00 01 6C */	b lbl_80297834
lbl_802976CC:
/* 802976CC  7F A3 EB 78 */	mr r3, r29
/* 802976D0  4B FF F0 41 */	bl getBlockSamples__13JASAramStreamCFv
/* 802976D4  80 1D 01 5C */	lwz r0, 0x15c(r29)
/* 802976D8  7E E0 19 D6 */	mullw r23, r0, r3
/* 802976DC  3B 02 BC 28 */	la r24, one(r2) /* 80455628-_SDA2_BASE_ */
/* 802976E0  88 0D 8C E2 */	lbz r0, struct_80451260+0x2(r13)
/* 802976E4  7C 00 07 75 */	extsb. r0, r0
/* 802976E8  40 82 00 34 */	bne lbl_8029771C
/* 802976EC  3C 60 80 43 */	lis r3, data_80431B34@ha
/* 802976F0  38 63 1B 34 */	addi r3, r3, data_80431B34@l
/* 802976F4  4B FF 91 55 */	bl __ct__17JASGenericMemPoolFv
/* 802976F8  3C 60 80 43 */	lis r3, data_80431B34@ha
/* 802976FC  38 63 1B 34 */	addi r3, r3, data_80431B34@l
/* 80297700  3C 80 80 29 */	lis r4, func_802978DC@ha
/* 80297704  38 84 78 DC */	addi r4, r4, func_802978DC@l
/* 80297708  3C A0 80 43 */	lis r5, lit_792@ha
/* 8029770C  38 A5 1B 28 */	addi r5, r5, lit_792@l
/* 80297710  48 0C A5 15 */	bl __register_global_object
/* 80297714  38 00 00 01 */	li r0, 1
/* 80297718  98 0D 8C E2 */	stb r0, struct_80451260+0x2(r13)
lbl_8029771C:
/* 8029771C  48 0A 5F D9 */	bl OSDisableInterrupts
/* 80297720  90 61 00 08 */	stw r3, 8(r1)
/* 80297724  7F 23 CB 78 */	mr r3, r25
/* 80297728  38 80 01 08 */	li r4, 0x108
/* 8029772C  4B FF 92 1D */	bl alloc__17JASGenericMemPoolFUl
/* 80297730  7C 75 1B 78 */	mr r21, r3
/* 80297734  80 61 00 08 */	lwz r3, 8(r1)
/* 80297738  48 0A 5F E5 */	bl OSRestoreInterrupts
/* 8029773C  28 15 00 00 */	cmplwi r21, 0
/* 80297740  41 82 00 1C */	beq lbl_8029775C
/* 80297744  7E A3 AB 78 */	mr r3, r21
/* 80297748  3C 80 80 29 */	lis r4, channelCallback__13JASAramStreamFUlP10JASChannelPQ26JASDsp8TChannelPv@ha
/* 8029774C  38 84 6D F0 */	addi r4, r4, channelCallback__13JASAramStreamFUlP10JASChannelPQ26JASDsp8TChannelPv@l
/* 80297750  7F A5 EB 78 */	mr r5, r29
/* 80297754  48 00 30 AD */	bl __ct__10JASChannelFPFUlP10JASChannelPQ26JASDsp8TChannelPv_vPv
/* 80297758  7C 75 1B 78 */	mr r21, r3
lbl_8029775C:
/* 8029775C  38 00 7F 7F */	li r0, 0x7f7f
/* 80297760  B0 15 00 98 */	sth r0, 0x98(r21)
/* 80297764  3A 60 00 00 */	li r19, 0
/* 80297768  3A 80 00 00 */	li r20, 0
lbl_8029776C:
/* 8029776C  7E A3 AB 78 */	mr r3, r21
/* 80297770  7E 64 9B 78 */	mr r4, r19
/* 80297774  38 14 01 DC */	addi r0, r20, 0x1dc
/* 80297778  7C BD 02 2E */	lhzx r5, r29, r0
/* 8029777C  48 00 34 1D */	bl setMixConfig__10JASChannelFUlUs
/* 80297780  3A 73 00 01 */	addi r19, r19, 1
/* 80297784  28 13 00 06 */	cmplwi r19, 6
/* 80297788  3A 94 00 02 */	addi r20, r20, 2
/* 8029778C  41 80 FF E0 */	blt lbl_8029776C
/* 80297790  48 00 52 59 */	bl getDacRate__9JASDriverFv
/* 80297794  80 1D 01 64 */	lwz r0, 0x164(r29)
/* 80297798  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029779C  93 41 00 10 */	stw r26, 0x10(r1)
/* 802977A0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802977A4  EC 00 F8 28 */	fsubs f0, f0, f31
/* 802977A8  EC 00 08 24 */	fdivs f0, f0, f1
/* 802977AC  D0 15 00 BC */	stfs f0, 0xbc(r21)
/* 802977B0  7E A3 AB 78 */	mr r3, r21
/* 802977B4  38 80 00 00 */	li r4, 0
/* 802977B8  7F 65 DB 78 */	mr r5, r27
/* 802977BC  48 00 33 A9 */	bl setOscInit__10JASChannelFUlPCQ213JASOscillator4Data
/* 802977C0  9B F5 00 E0 */	stb r31, 0xe0(r21)
/* 802977C4  38 00 00 3C */	li r0, 0x3c
/* 802977C8  98 15 00 E1 */	stb r0, 0xe1(r21)
/* 802977CC  38 00 00 FF */	li r0, 0xff
/* 802977D0  98 15 00 E2 */	stb r0, 0xe2(r21)
/* 802977D4  D3 D5 00 E4 */	stfs f30, 0xe4(r21)
/* 802977D8  92 D5 00 E8 */	stw r22, 0xe8(r21)
/* 802977DC  92 D5 00 EC */	stw r22, 0xec(r21)
/* 802977E0  38 A0 00 00 */	li r5, 0
/* 802977E4  90 B5 00 F0 */	stw r5, 0xf0(r21)
/* 802977E8  92 F5 00 F4 */	stw r23, 0xf4(r21)
/* 802977EC  92 F5 00 F8 */	stw r23, 0xf8(r21)
/* 802977F0  B0 B5 00 FC */	sth r5, 0xfc(r21)
/* 802977F4  B0 B5 00 FE */	sth r5, 0xfe(r21)
/* 802977F8  93 15 01 00 */	stw r24, 0x100(r21)
/* 802977FC  80 9D 01 48 */	lwz r4, 0x148(r29)
/* 80297800  80 6D 8C D8 */	lwz r3, sBlockSize__13JASAramStream(r13)
/* 80297804  80 1D 01 60 */	lwz r0, 0x160(r29)
/* 80297808  7C 03 01 D6 */	mullw r0, r3, r0
/* 8029780C  7C 1E 01 D6 */	mullw r0, r30, r0
/* 80297810  7C 04 02 14 */	add r0, r4, r0
/* 80297814  90 15 01 04 */	stw r0, 0x104(r21)
/* 80297818  90 B5 00 DC */	stw r5, 0xdc(r21)
/* 8029781C  7E A3 AB 78 */	mr r3, r21
/* 80297820  48 00 32 41 */	bl playForce__10JASChannelFv
/* 80297824  38 1C 00 90 */	addi r0, r28, 0x90
/* 80297828  7E BD 01 2E */	stwx r21, r29, r0
/* 8029782C  3B DE 00 01 */	addi r30, r30, 1
/* 80297830  3B 9C 00 04 */	addi r28, r28, 4
lbl_80297834:
/* 80297834  A0 1D 01 5A */	lhz r0, 0x15a(r29)
/* 80297838  7C 1E 00 00 */	cmpw r30, r0
/* 8029783C  41 80 FE 90 */	blt lbl_802976CC
/* 80297840  38 00 00 00 */	li r0, 0
/* 80297844  90 1D 00 A8 */	stw r0, 0xa8(r29)
/* 80297848  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 8029784C  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80297850  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 80297854  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 80297858  39 61 00 50 */	addi r11, r1, 0x50
/* 8029785C  48 0C A9 A5 */	bl _restgpr_19
/* 80297860  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80297864  7C 08 03 A6 */	mtlr r0
/* 80297868  38 21 00 70 */	addi r1, r1, 0x70
/* 8029786C  4E 80 00 20 */	blr 
