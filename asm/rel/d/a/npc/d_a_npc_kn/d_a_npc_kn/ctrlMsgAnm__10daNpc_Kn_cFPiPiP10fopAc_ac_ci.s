lbl_80A39738:
/* 80A39738  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A3973C  7C 08 02 A6 */	mflr r0
/* 80A39740  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A39744  39 61 00 20 */	addi r11, r1, 0x20
/* 80A39748  4B 92 8A 8C */	b _savegpr_27
/* 80A3974C  7C 7E 1B 78 */	mr r30, r3
/* 80A39750  7C 9B 23 78 */	mr r27, r4
/* 80A39754  7C BC 2B 78 */	mr r28, r5
/* 80A39758  7C DD 33 78 */	mr r29, r6
/* 80A3975C  7C FF 3B 79 */	or. r31, r7, r7
/* 80A39760  38 00 FF FF */	li r0, -1
/* 80A39764  90 04 00 00 */	stw r0, 0(r4)
/* 80A39768  90 05 00 00 */	stw r0, 0(r5)
/* 80A3976C  40 82 00 1C */	bne lbl_80A39788
/* 80A39770  A0 1E 00 F8 */	lhz r0, 0xf8(r30)
/* 80A39774  28 00 00 01 */	cmplwi r0, 1
/* 80A39778  41 82 00 10 */	beq lbl_80A39788
/* 80A3977C  80 1E 0D D4 */	lwz r0, 0xdd4(r30)
/* 80A39780  2C 00 FF FF */	cmpwi r0, -1
/* 80A39784  41 82 00 EC */	beq lbl_80A39870
lbl_80A39788:
/* 80A39788  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A3978C  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80A39790  38 64 4E C8 */	addi r3, r4, 0x4ec8
/* 80A39794  80 84 4F 94 */	lwz r4, 0x4f94(r4)
/* 80A39798  4B 60 9B 54 */	b convPId__14dEvt_control_cFUi
/* 80A3979C  7C 03 E8 40 */	cmplw r3, r29
/* 80A397A0  40 82 00 B4 */	bne lbl_80A39854
/* 80A397A4  4B 7F E9 F8 */	b getActor__12dMsgObject_cFv
/* 80A397A8  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 80A397AC  28 00 00 02 */	cmplwi r0, 2
/* 80A397B0  41 82 00 0C */	beq lbl_80A397BC
/* 80A397B4  28 00 00 03 */	cmplwi r0, 3
/* 80A397B8  40 82 00 10 */	bne lbl_80A397C8
lbl_80A397BC:
/* 80A397BC  38 00 FF FF */	li r0, -1
/* 80A397C0  90 1E 0D D0 */	stw r0, 0xdd0(r30)
/* 80A397C4  48 00 00 AC */	b lbl_80A39870
lbl_80A397C8:
/* 80A397C8  28 00 00 06 */	cmplwi r0, 6
/* 80A397CC  40 82 00 68 */	bne lbl_80A39834
/* 80A397D0  80 83 00 EC */	lwz r4, 0xec(r3)
/* 80A397D4  80 1E 0D D0 */	lwz r0, 0xdd0(r30)
/* 80A397D8  7C 04 00 40 */	cmplw r4, r0
/* 80A397DC  41 82 00 24 */	beq lbl_80A39800
/* 80A397E0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A397E4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80A397E8  88 04 5E 7B */	lbz r0, 0x5e7b(r4)
/* 80A397EC  90 1B 00 00 */	stw r0, 0(r27)
/* 80A397F0  88 04 5E 7A */	lbz r0, 0x5e7a(r4)
/* 80A397F4  90 1C 00 00 */	stw r0, 0(r28)
/* 80A397F8  80 03 00 EC */	lwz r0, 0xec(r3)
/* 80A397FC  90 1E 0D D0 */	stw r0, 0xdd0(r30)
lbl_80A39800:
/* 80A39800  4B 7F EB A4 */	b isMouthCheck__12dMsgObject_cFv
/* 80A39804  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A39808  41 82 00 14 */	beq lbl_80A3981C
/* 80A3980C  80 1E 0D CC */	lwz r0, 0xdcc(r30)
/* 80A39810  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 80A39814  90 1E 0D CC */	stw r0, 0xdcc(r30)
/* 80A39818  48 00 00 10 */	b lbl_80A39828
lbl_80A3981C:
/* 80A3981C  80 1E 0D CC */	lwz r0, 0xdcc(r30)
/* 80A39820  60 00 40 00 */	ori r0, r0, 0x4000
/* 80A39824  90 1E 0D CC */	stw r0, 0xdcc(r30)
lbl_80A39828:
/* 80A39828  38 00 00 14 */	li r0, 0x14
/* 80A3982C  90 1E 0D DC */	stw r0, 0xddc(r30)
/* 80A39830  48 00 00 40 */	b lbl_80A39870
lbl_80A39834:
/* 80A39834  80 7E 0D CC */	lwz r3, 0xdcc(r30)
/* 80A39838  54 60 04 63 */	rlwinm. r0, r3, 0, 0x11, 0x11
/* 80A3983C  41 82 00 0C */	beq lbl_80A39848
/* 80A39840  54 60 04 A0 */	rlwinm r0, r3, 0, 0x12, 0x10
/* 80A39844  90 1E 0D CC */	stw r0, 0xdcc(r30)
lbl_80A39848:
/* 80A39848  38 00 FF FF */	li r0, -1
/* 80A3984C  90 1E 0D D0 */	stw r0, 0xdd0(r30)
/* 80A39850  48 00 00 20 */	b lbl_80A39870
lbl_80A39854:
/* 80A39854  38 00 FF FF */	li r0, -1
/* 80A39858  90 1E 0D D0 */	stw r0, 0xdd0(r30)
/* 80A3985C  80 1E 0D DC */	lwz r0, 0xddc(r30)
/* 80A39860  2C 00 00 00 */	cmpwi r0, 0
/* 80A39864  41 82 00 0C */	beq lbl_80A39870
/* 80A39868  38 00 00 01 */	li r0, 1
/* 80A3986C  90 1E 0D DC */	stw r0, 0xddc(r30)
lbl_80A39870:
/* 80A39870  2C 1F 00 00 */	cmpwi r31, 0
/* 80A39874  40 82 00 0C */	bne lbl_80A39880
/* 80A39878  38 7E 0D DC */	addi r3, r30, 0xddc
/* 80A3987C  48 00 24 CD */	bl func_80A3BD48
lbl_80A39880:
/* 80A39880  80 7E 0D DC */	lwz r3, 0xddc(r30)
/* 80A39884  39 61 00 20 */	addi r11, r1, 0x20
/* 80A39888  4B 92 89 98 */	b _restgpr_27
/* 80A3988C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A39890  7C 08 03 A6 */	mtlr r0
/* 80A39894  38 21 00 20 */	addi r1, r1, 0x20
/* 80A39898  4E 80 00 20 */	blr 
