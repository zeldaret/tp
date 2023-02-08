lbl_802A0C04:
/* 802A0C04  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A0C08  7C 08 02 A6 */	mflr r0
/* 802A0C0C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A0C10  39 61 00 20 */	addi r11, r1, 0x20
/* 802A0C14  48 0C 15 C9 */	bl _savegpr_29
/* 802A0C18  7C 7D 1B 78 */	mr r29, r3
/* 802A0C1C  7C 9E 23 78 */	mr r30, r4
/* 802A0C20  7C BF 2B 78 */	mr r31, r5
/* 802A0C24  38 7D 00 A8 */	addi r3, r29, 0xa8
/* 802A0C28  80 9D 03 94 */	lwz r4, 0x394(r29)
/* 802A0C2C  80 BD 03 98 */	lwz r5, 0x398(r29)
/* 802A0C30  4B FF 0D D9 */	bl setSeqData__8JASTrackFPvUl
/* 802A0C34  80 1D 00 08 */	lwz r0, 8(r29)
/* 802A0C38  28 00 00 00 */	cmplwi r0, 0
/* 802A0C3C  41 82 00 14 */	beq lbl_802A0C50
/* 802A0C40  7F A3 EB 78 */	mr r3, r29
/* 802A0C44  38 9D 00 A8 */	addi r4, r29, 0xa8
/* 802A0C48  48 00 1D 95 */	bl initTrack_JAISound___8JAISoundFP8JASTrack
/* 802A0C4C  48 00 00 20 */	b lbl_802A0C6C
lbl_802A0C50:
/* 802A0C50  38 7D 00 A8 */	addi r3, r29, 0xa8
/* 802A0C54  38 80 00 01 */	li r4, 1
/* 802A0C58  4B FF 07 ED */	bl setChannelMgrCount__8JASTrackFUl
/* 802A0C5C  38 7D 00 A8 */	addi r3, r29, 0xa8
/* 802A0C60  38 80 00 00 */	li r4, 0
/* 802A0C64  38 BD 03 80 */	addi r5, r29, 0x380
/* 802A0C68  4B FF 0D 8D */	bl assignExtBuffer__8JASTrackFUlP14JASSoundParams
lbl_802A0C6C:
/* 802A0C6C  88 1F 00 00 */	lbz r0, 0(r31)
/* 802A0C70  98 01 00 08 */	stb r0, 8(r1)
/* 802A0C74  7F A3 EB 78 */	mr r3, r29
/* 802A0C78  7F C4 F3 78 */	mr r4, r30
/* 802A0C7C  38 A1 00 08 */	addi r5, r1, 8
/* 802A0C80  48 00 06 C9 */	bl mixOut___6JAISeqFRC14JASSoundParams16JAISoundActivity
/* 802A0C84  38 7D 00 A8 */	addi r3, r29, 0xa8
/* 802A0C88  4B FF 0D A1 */	bl startSeq__8JASTrackFv
/* 802A0C8C  39 61 00 20 */	addi r11, r1, 0x20
/* 802A0C90  48 0C 15 99 */	bl _restgpr_29
/* 802A0C94  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A0C98  7C 08 03 A6 */	mtlr r0
/* 802A0C9C  38 21 00 20 */	addi r1, r1, 0x20
/* 802A0CA0  4E 80 00 20 */	blr 
